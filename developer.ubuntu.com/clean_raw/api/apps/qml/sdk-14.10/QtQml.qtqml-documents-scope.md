---
Title: QtQml.qtqml-documents-scope
---

# QtQml.qtqml-documents-scope

<span class="subtitle"></span>
<!-- $$$qtqml-documents-scope.html-description -->
<p>QML property bindings, inline functions, and imported JavaScript files all run in a JavaScript scope. Scope controls which variables an expression can access, and which variable takes precedence when two or more names conflict.</p>
<p>As JavaScript's built-in scope mechanism is very simple, QML enhances it to fit more naturally with the QML language extensions.</p>
<h2>JavaScript Scope</h2>
<p>QML's scope extensions do not interfere with JavaScript's natural scoping. JavaScript programmers can reuse their existing knowledge when programming functions, property bindings or imported JavaScript files in QML.</p>
<p>In the following example, the <tt>addConstant()</tt> method will add 13 to the parameter passed just as the programmer would expect irrespective of the value of the QML object's <tt>a</tt> and <tt>b</tt> properties.</p>
<pre class="cpp"><span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> {
property <span class="type">int</span> a: <span class="number">3</span>
property <span class="type">int</span> b: <span class="number">9</span>
function addConstant(b) {
var a <span class="operator">=</span> <span class="number">13</span>;
<span class="keyword">return</span> b <span class="operator">+</span> a;
}
}</pre>
<p>That QML respects JavaScript's normal scoping rules even applies in bindings. This totally evil, abomination of a binding will assign 12 to the QML object's <tt>a</tt> property.</p>
<pre class="cpp"><span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> {
property <span class="type">int</span> a
a: { var a <span class="operator">=</span> <span class="number">12</span>; a; }
}</pre>
<p>Every JavaScript expression, function or file in QML has its own unique variable object. Local variables declared in one will never conflict with local variables declared in another.</p>
<h2>Type Names and Imported JavaScript Files</h2>
<p><a href="QtQml.qtqml-documents-topic.md">QML Documents</a> include import statements that define the type names and JavaScript files visible to the document. In addition to their use in the QML declaration itself, type names are used by JavaScript code when accessing <a href="QtQml.qtqml-syntax-objectattributes.md#attached-properties-and-attached-signal-handlers">attached properties</a> and enumeration values.</p>
<p>The effect of an import applies to every property binding, and JavaScript function in the QML document, even those in nested inline components. The following example shows a simple QML file that accesses some enumeration values and calls an imported JavaScript function.</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
import <span class="string">&quot;code.js&quot;</span> as Code
ListView {
snapMode: ListView<span class="operator">.</span>SnapToItem
delegate: Component {
Text {
elide: Text<span class="operator">.</span>ElideMiddle
text: <span class="string">&quot;A really, really long string that will require eliding.&quot;</span>
color: Code<span class="operator">.</span>defaultColor()
}
}
}</pre>
<h2>Binding Scope Object</h2>
<p>Property bindings are the most common use of JavaScript in QML. Property bindings associate the result of a JavaScript expression with a property of an object. The object to which the bound property belongs is known as the binding's scope object. In this QML simple declaration the Item object is the binding's scope object.</p>
<pre class="cpp">Item {
anchors<span class="operator">.</span>left: parent<span class="operator">.</span>left
}</pre>
<p>Bindings have access to the scope object's properties without qualification. In the previous example, the binding accesses the Item's <tt>parent</tt> property directly, without needing any form of object prefix. QML introduces a more structured, object-oriented approach to JavaScript, and consequently does not require the use of the JavaScript <tt>this</tt> property.</p>
<p>Care must be used when accessing <a href="QtQml.qtqml-syntax-objectattributes.md#attached-properties-and-attached-signal-handlers">attached properties</a> from bindings due to their interaction with the scope object. Conceptually attached properties exist on <i>all</i> objects, even if they only have an effect on a subset of those. Consequently unqualified attached property reads will always resolve to an attached property on the scope object, which is not always what the programmer intended.</p>
<p>For example, the PathView type attaches interpolated value properties to its delegates depending on their position in the path. As PathView only meaningfully attaches these properties to the root object in the delegate, any sub-object that accesses them must explicitly qualify the root object, as shown below.</p>
<pre class="cpp">PathView {
delegate: Component {
Rectangle {
id: root
Image {
scale: root<span class="operator">.</span>PathView<span class="operator">.</span>scale
}
}
}
}</pre>
<p>If the Image object omitted the <tt>root</tt> prefix, it would inadvertently access the unset <tt>PathView.scale</tt> attached property on itself.</p>
<h2>Component Scope</h2>
<p>Each QML component in a QML document defines a logical scope. Each document has at least one root component, but can also have other inline sub-components. The component scope is the union of the object ids within the component and the component's root object's properties.</p>
<pre class="cpp">Item {
property string title
Text {
id: title
text: <span class="string">&quot;&lt;b&gt;&quot;</span> <span class="operator">+</span> title <span class="operator">+</span> <span class="string">&quot;&lt;/b&gt;&quot;</span>
font<span class="operator">.</span>pixelSize: <span class="number">22</span>
anchors<span class="operator">.</span>top: parent<span class="operator">.</span>top
}
Text {
text: title<span class="operator">.</span>text
font<span class="operator">.</span>pixelSize: <span class="number">18</span>
anchors<span class="operator">.</span>bottom: parent<span class="operator">.</span>bottom
}
}</pre>
<p>The example above shows a simple QML component that displays a rich text title string at the top, and a smaller copy of the same text at the bottom. The first <tt>Text</tt> type directly accesses the component's <tt>title</tt> property when forming the text to display. That the root type's properties are directly accessible makes it trivial to distribute data throughout the component.</p>
<p>The second <tt>Text</tt> type uses an id to access the first's text directly. IDs are specified explicitly by the QML programmer so they always take precedence over other property names (except for those in the JavaScript Scope). For example, in the unlikely event that the binding's scope object had a <tt>titletype</tt> property in the previous example, the <tt>titletype</tt> id would still take precedence.</p>
<h2>Component Instance Hierarchy</h2>
<p>In QML, component instances connect their component scopes together to form a scope hierarchy. Component instances can directly access the component scopes of their ancestors.</p>
<p>The easiest way to demonstrate this is with inline sub-components whose component scopes are implicitly scoped as children of the outer component.</p>
<pre class="cpp">Item {
property color defaultColor: <span class="string">&quot;blue&quot;</span>
ListView {
delegate: Component {
Rectangle {
color: defaultColor
}
}
}
}</pre>
<p>The component instance hierarchy allows instances of the delegate component to access the <tt>defaultColor</tt> property of the <tt>Item</tt> type. Of course, had the delegate component had a property called <tt>defaultColor</tt> that would have taken precedence.</p>
<p>The component instance scope hierarchy extends to out-of-line components, too. In the following example, the <tt>TitlePage.qml</tt> component creates two <tt>TitleText</tt> instances. Even though the <tt>TitleText</tt> type is in a separate file, it still has access to the <tt>title</tt> property when it is used from within the <tt>TitlePage</tt>. QML is a dynamically scoped language - depending on where it is used, the <tt>title</tt> property may resolve differently.</p>
<pre class="cpp"><span class="comment">// TitlePage.qml</span>
import <span class="type">QtQuick</span> <span class="number">2.0</span>
Item {
property string title
TitleText {
size: <span class="number">22</span>
anchors<span class="operator">.</span>top: parent<span class="operator">.</span>top
}
TitleText {
size: <span class="number">18</span>
anchors<span class="operator">.</span>bottom: parent<span class="operator">.</span>bottom
}
}
<span class="comment">// TitleText.qml</span>
import <span class="type">QtQuick</span> <span class="number">2.0</span>
Text {
property <span class="type">int</span> size
text: <span class="string">&quot;&lt;b&gt;&quot;</span> <span class="operator">+</span> title <span class="operator">+</span> <span class="string">&quot;&lt;/b&gt;&quot;</span>
font<span class="operator">.</span>pixelSize: size
}</pre>
<p>Dynamic scoping is very powerful, but it must be used cautiously to prevent the behavior of QML code from becoming difficult to predict. In general it should only be used in cases where the two components are already tightly coupled in another way. When building reusable components, it is preferable to use property interfaces, like this:</p>
<pre class="cpp"><span class="comment">// TitlePage.qml</span>
import <span class="type">QtQuick</span> <span class="number">2.0</span>
Item {
id: root
property string title
TitleText {
title: root<span class="operator">.</span>title
size: <span class="number">22</span>
anchors<span class="operator">.</span>top: parent<span class="operator">.</span>top
}
TitleText {
title: root<span class="operator">.</span>title
size: <span class="number">18</span>
anchors<span class="operator">.</span>bottom: parent<span class="operator">.</span>bottom
}
}
<span class="comment">// TitleText.qml</span>
import <span class="type">QtQuick</span> <span class="number">2.0</span>
Text {
property string title
property <span class="type">int</span> size
text: <span class="string">&quot;&lt;b&gt;&quot;</span> <span class="operator">+</span> title <span class="operator">+</span> <span class="string">&quot;&lt;/b&gt;&quot;</span>
font<span class="operator">.</span>pixelSize: size
}</pre>
<h2>Overridden Properties</h2>
<p>QML permits property names defined in an object declaration to be overridden by properties declared within another object declaration that extends the first. For example:</p>
<pre class="cpp"><span class="comment">// Displayable.qml</span>
import <span class="type">QtQuick</span> <span class="number">2.0</span>
Item {
property string title
property string detail
Text {
text: <span class="string">&quot;&lt;b&gt;&quot;</span> <span class="operator">+</span> title <span class="operator">+</span> <span class="string">&quot;&lt;/b&gt;&lt;br&gt;&quot;</span> <span class="operator">+</span> detail
}
function getTitle() { <span class="keyword">return</span> title }
function setTitle(newTitle) { title <span class="operator">=</span> newTitle }
}
<span class="comment">// Person.qml</span>
import <span class="type">QtQuick</span> <span class="number">2.0</span>
Displayable {
property string title
property string firstName
property string lastName
function fullName()  { <span class="keyword">return</span> title <span class="operator">+</span> <span class="string">&quot; &quot;</span> <span class="operator">+</span> firstName <span class="operator">+</span> <span class="string">&quot; &quot;</span> <span class="operator">+</span> lastName }
}</pre>
<p>Here, the name <tt>title</tt> is given to both the heading of the output text for Displayable, and also to the honorific title of the Person object.</p>
<p>An overridden property is resolved according to the scope in which it is referenced. Inside the scope of the Person component, or from an external scope that refers to an instance of the Person component, <tt>title</tt> resolves to the property declared inside Person.qml. The <tt>fullName</tt> function will refer to the <tt>title</tt> property declared inside Person.</p>
<p>Inside the Displayable component, however, <tt>title</tt> refers to the property declared in Displayable.qml. The getTitle() and setTitle() functions, and the binding for the <tt>text</tt> property of the Text object will all refer to the <tt>title</tt> property declared in the Displayable component.</p>
<p>Despite sharing the same name, the two properties are entirely separate. An onChanged signal handler for one of the properties will not be triggered by a change to the other property with the same name. An alias to either property will refer to one or the other, but not both.</p>
<h2>JavaScript Global Object</h2>
<p>QML disallows type, id and property names that conflict with the properties on the global object to prevent any confusion. Programmers can be confident that <tt>Math.min(10, 9)</tt> will always work as expected!</p>
<p>See <a href="QtQml.qtqml-javascript-hostenvironment.md">JavaScript Host Environment</a> for more information.</p>
<!-- @@@qtqml-documents-scope.html -->
