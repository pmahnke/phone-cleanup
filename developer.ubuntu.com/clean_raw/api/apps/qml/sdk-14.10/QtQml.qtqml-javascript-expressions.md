---
Title: QtQml.qtqml-javascript-expressions
---

# QtQml.qtqml-javascript-expressions

<span class="subtitle"></span>
<!-- $$$qtqml-javascript-expressions.html-description -->
<p>The <a href="QtQml.qtqml-javascript-hostenvironment.md">JavaScript Host Environment</a> provided by QML can run valid standard JavaScript constructs such as conditional operators, arrays, variable setting, loops. In addition to the standard JavaScript properties, the <a href="QtQml.qtqml-javascript-qmlglobalobject.md">QML Global Object</a> includes a number of helper methods that simplify building UIs and interacting with the QML environment.</p>
<p>The JavaScript environment provided by QML is stricter than that in a web browser. For example, in QML you cannot add, or modify, members of the JavaScript global object. In regular JavaScript, it is possible to do this accidentally by using a variable without declaring it. In QML this will throw an exception, so all local variables should be explicitly declared. See <a href="QtQml.qtqml-javascript-hostenvironment.md#javascript-environment-restrictions">JavaScript Environment Restrictions</a> for a complete description of the restrictions on JavaScript code executed from QML.</p>
<p>There are various ways in which JavaScript expressions may be defined and used in QML, including property bindings, signal handlers, custom methods and JavaScript imports.</p>
<h2>JavaScript Expressions in QML Objects</h2>
<p>QML <a href="QtQml.qtqml-typesystem-objecttypes.md">object types</a> defined in <a href="QtQml.qtqml-documents-topic.md">QML documents</a> can make use of JavaScript expressions which implement program logic. There are four ways that JavaScript can be used in a QML document:</p>
<ul>
<li>properties can be assigned bindings which are defined with JavaScript expressions, and which are automatically evaluated by the QML engine when any properties accessed in the binding change, in order to ensure always-up-to-date property values. Binding expressions can also perform function evaluation as an explicit side effect</li>
<li><a href="QtQml.qtqml-syntax-objectattributes.md#signal-attributes">signal handlers</a> can be defined which are automatically evaluated when the object emits the associated signal</li>
<li><a href="QtQml.qtqml-syntax-objectattributes.md#method-attributes">custom methods</a> can be defined in QML files as JavaScript functions</li>
<li>JavaScript files providing functions and variables can be <a href="QtQml.qtqml-javascript-imports.md">imported</a> in a QML document</li>
</ul>
<h3>Property Bindings</h3>
<p>During startup, the QML engine will set up and initialize the property bindings. The JavaScript conditional operator is a valid property binding.</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">colorbutton</span>
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">80</span>;
<span class="name">color</span>: <span class="name">mousearea</span>.<span class="name">pressed</span> ? <span class="string">&quot;steelblue&quot;</span> : <span class="string">&quot;lightsteelblue&quot;</span>
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">mousearea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
}</pre>
<p>In fact, any JavaScript expression (no matter how complex) may be used in a property binding definition, as long as the result of the expression is a value whose type can be assigned to the property.</p>
<p>There are two ways to define a property binding: the first (and most common) is, as previously shown, in a <a href="QtQml.qtqml-syntax-objectattributes.md#value-assignment-on-initialization">property initialization</a>. The second (and much rarer) way is to assign the property a function returned from the <a href="QtQml.Qt.md#binding-method">Qt.binding()</a> function, from within imperative JavaScript code, as shown below:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">colorbutton</span>
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">80</span>;
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">mousearea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
<span class="name">Component</span>.onCompleted: {
<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">mousearea</span>.<span class="name">pressed</span> ? <span class="string">&quot;steelblue&quot;</span> : <span class="string">&quot;lightsteelblue&quot;</span> });
}
}</pre>
<p>See the <a href="QtQml.qtqml-syntax-propertybinding.md">property bindings</a> documentation for more information about how to define property bindings, and see the documentation about <a href="QtQml.qtqml-syntax-propertybinding.md#qml-javascript-assignment">Property Assignment versus Property Binding</a> for information about how bindings differ from value assignments.</p>
<h3>Signal Handlers</h3>
<p>QML object types can emit signals in reaction to certain events occurring. Those signals can be handled by signal handler functions, which can be defined by clients to implement custom program logic.</p>
<p>Suppose that a button represented by a Rectangle type has a MouseArea and a Text label. The MouseArea will emit its pressed signal when the user presses the defined interactive area, which will automatically trigger the <tt>onPressed</tt> handler, which can be defined by clients. The QML engine will execute the JavaScript expressions defined in the <tt>onPressed</tt> and <tt>onReleased</tt> handlers, as required. Typically, a signal handler is bound to JavaScript expressions to initiate other events or to simply assign property values.</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">80</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">mousearea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: {
<span class="comment">// arbitrary JavaScript expression</span>
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;I am Pressed!&quot;</span>
}
<span class="name">onReleased</span>: {
<span class="comment">// arbitrary JavaScript expression</span>
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Click Me!&quot;</span>
}
}
<span class="type">Text</span> {
<span class="name">id</span>: <span class="name">label</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Press Me!&quot;</span>
}
}</pre>
<p>Please see the <a href="QtQml.qtqml-syntax-signals.md">Signal and Handler Event System</a> documentation for in-depth discussion of signals and signal handlers, and see the <a href="QtQml.qtqml-syntax-objectattributes.md">QML Object Attributes</a> documentation for in-depth discussion of how to define the implementation of signal handlers in QML with JavaScript.</p>
<h3>JavaScript Expressions in Functions</h3>
<p>Program logic can also be defined in JavaScript functions. These functions can be defined inline in QML documents (as custom methods) or externally in imported JavaScript files.</p>
<h4>Custom Methods</h4>
<p>Custom methods can be defined in QML documents and may be called from signal handlers, property bindings, or functions in other QML objects. Methods defined in this way are often referred to as &quot;inline JavaScript functions&quot; as their implementation is included in the QML object type definition (QML document), as opposed to an external JavaScript file.</p>
<p>An example of an inline custom method is as follows:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Item</span> {
<span class="keyword">function</span> <span class="name">factorial</span>(<span class="name">a</span>) {
<span class="name">a</span> <span class="operator">=</span> <span class="name">parseInt</span>(<span class="name">a</span>);
<span class="keyword">if</span> (<span class="name">a</span> <span class="operator">&lt;=</span> <span class="number">0</span>)
<span class="keyword">return</span> <span class="number">1</span>;
<span class="keyword">else</span>
<span class="keyword">return</span> <span class="name">a</span> <span class="operator">*</span> <span class="name">factorial</span>(<span class="name">a</span> <span class="operator">-</span> <span class="number">1</span>);
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">factorial</span>(<span class="number">10</span>))
}
}</pre>
<p>The factorial function will run whenever the MouseArea detects a clicked signal.</p>
<p>Importantly, custom methods defined inline in a QML document are exposed to other objects, and therefore inline functions on the root object in a QML component can be invoked by callers outside the component. If this is not desired, the method can be added to a non-root object or, preferably, written in an external JavaScript file.</p>
<p>See the <a href="QtQml.qtqml-syntax-objectattributes.md">QML Object Attributes</a> documentation for in-depth discussion of how to define custom methods in QML with JavaScript code implementations.</p>
<h4>Functions in Imported JavaScript Files</h4>
<p>Non-trivial program logic is best separated into external JavaScript files. These files can be imported into QML files using an <tt>import</tt> statement, in the same way that <a href="QtQml.qtqml-modules-topic.md">modules</a> are imported.</p>
<p>For example, the <tt>factorial()</tt> method in the above example could be moved into an external file named <tt>factorial.js</tt>, and accessed like this:</p>
<pre class="qml">import &quot;factorial.js&quot; as MathFunctions
<span class="type">Item</span> {
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">MathFunctions</span>.<span class="name">factorial</span>(<span class="number">10</span>))
}
}</pre>
<p>For more information about loading external JavaScript files into QML, read the section about <a href="QtQml.qtqml-javascript-imports.md">Importing JavaScript Resources in QML</a>.</p>
<h4>Connecting Signals to JavaScript Functions</h4>
<p>QML object types which emit signals also provide default signal handlers for their signals, as described in a previous section. Sometimes, however, a client will want to cause a signal emitted from one object to trigger a function defined in another object; and in that case, a signal connection is often preferable.</p>
<p>A signal emitted by a QML object may be connected to a JavaScript function by calling the signal's <tt>connect()</tt> method and passing the JavaScript function as an argument. For example, the following code connects the MouseArea <tt>clicked</tt> signal to the <tt>jsFunction()</tt> in <tt>script.js</tt>:</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml">import QtQuick 2.0
import &quot;script.js&quot; as MyScript
<span class="type">Item</span> {
<span class="name">id</span>: <span class="name">item</span>
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
<span class="name">Component</span>.onCompleted: {
<span class="name">mouseArea</span>.<span class="name">clicked</span>.<span class="name">connect</span>(<span class="name">MyScript</span>.<span class="name">jsFunction</span>)
}
}</pre>
</td><td ><pre class="js"><span class="comment">// script.js</span>
<span class="keyword">function</span> <span class="name">jsFunction</span>() {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Called JavaScript function!&quot;</span>)
}</pre>
</td></tr>
</table>
<p>The <tt>jsFunction()</tt> will now be called whenever MouseArea's <tt>clicked</tt> signal is emitted.</p>
<p>See <a href="QtQml.qtqml-syntax-signals.md">Connecting Signals to Methods and Signals</a> for more information.</p>
<h2>Running JavaScript at Startup</h2>
<p>It is occasionally necessary to run some imperative code at application (or component instance) startup. While it is tempting to just include the startup script as <i>global code</i> in an external script file, this can have severe limitations as the QML environment may not have been fully established. For example, some objects might not have been created or some <a href="QtQml.qtqml-syntax-propertybinding.md">property bindings</a> may not have been run. <a href="QtQml.qtqml-javascript-hostenvironment.md#javascript-environment-restrictions">JavaScript Environment Restrictions</a> covers the exact limitations of global script code.</p>
<p>Every QML object has an <i>attached</i> <a href="QtQml.Component.md">Component</a> property that references the component within which the object was instantiated. Every <a href="QtQml.Component.md">Component</a> will emit a <tt>completed</tt> signal, and thus every object can define an implementation for the <tt>onCompleted()</tt> handler which can be used to trigger the execution of script code at startup after the QML environment has been completely established. For example:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="keyword">function</span> <span class="name">startupFunction</span>() {
<span class="comment">// ... startup code</span>
}
<span class="name">Component</span>.onCompleted: <span class="name">startupFunction</span>();
}</pre>
<p>Any object in a QML file - including nested objects and nested QML component instances - can use this attached property. If there is more than one <tt>onCompleted()</tt> handler to execute at startup, they are run sequentially in an undefined order.</p>
<p>Likewise, every <tt>Component</tt> will emit a <a href="QtQml.Component.md#destruction-signal">destruction()</a> signal just before being destroyed.</p>
<!-- @@@qtqml-javascript-expressions.html -->
