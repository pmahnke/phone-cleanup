---
Title: QtQml.qtqml-cppintegration-exposecppattributes
---

# QtQml.qtqml-cppintegration-exposecppattributes

<span class="subtitle"></span>
<!-- $$$qtqml-cppintegration-exposecppattributes.html-description -->
<p>QML can easily be extended with functionality defined in C++ code. Due to the tight integration of the QML engine with the Qt meta-object system, any functionality that is appropriately exposed by a QObject-derived class is accessible from QML code. This enables C++ data and functions to be accessible directly from QML, often with little or no modification.</p>
<p>The QML engine has the ability to introspect QObject instances through the meta-object system. This means any QML code can access the following members of an instance of a QObject-derived class:</p>
<ul>
<li>Properties</li>
<li>Methods (providing they are public slots or flagged with Q_INVOKABLE)</li>
<li>Signals</li>
</ul>
<p>(Additionally, enums are available if they have been declared with Q_ENUMS. See <a href="QtQml.qtqml-cppintegration-data.md">Data Type Conversion Between QML and C++</a> for more details.)</p>
<p>In general, these are accessible from QML regardless of whether a QObject-derived class has been <a href="QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system">registered with the QML type system</a>. However, if if a class is to be used in a way that requires the engine to access additional type information — for example, if the class itself is to be used as a method parameter or property, or if one of its enum types is to be used in this way — then the class may need to be registered.</p>
<p>Also note that a number of the important concepts covered in this document are demonstrated in the <a href="QtQml.qml-extending-tutorial-index.md">Writing QML Extensions with C++</a> tutorial.</p>
<h2>Data Type Handling and Ownership</h2>
<p>Any data that is transferred from C++ to QML, whether as a property value, a method parameter or return value, or a signal parameter value, must be of a type that is supported by the QML engine.</p>
<p>By default, the engine supports a number of Qt C++ types and can automatically convert them as appropriately when used from QML. Additionally, C++ classes that are <a href="QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system">registered</a> with the QML type system can be can be used as data types, as can their enums if appropriately registered. See <a href="QtQml.qtqml-cppintegration-data.md">Data Type Conversion Between QML and C++</a> for details for further information.</p>
<p>Additionally, data ownership rules are taken into consideration when data is transferred from C++ to QML. See <a href="QtQml.qtqml-cppintegration-data.md#data-ownership">Data Ownership</a> for more details.</p>
<h2>Exposing Properties</h2>
<p>A <i>property</i> can be specified for any QObject-derived class using the Q_PROPERTY() macro. A property is a class data member with an associated read function and optional write function.</p>
<p>All properties of a QObject-derived class are accessible from QML.</p>
<p>For example, below is a <tt>Message</tt> class with an <tt>author</tt> property. As specified by the Q_PROPERTY macro call, this property is readable through the <tt>author()</tt> method, and writable through the <tt>setAuthor()</tt> method:</p>
<pre class="cpp"><span class="keyword">class</span> Message : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">QString</span> author READ author WRITE setAuthor NOTIFY authorChanged)
<span class="keyword">public</span>:
<span class="type">void</span> setAuthor(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>a) {
<span class="keyword">if</span> (a <span class="operator">!</span><span class="operator">=</span> m_author) {
m_author <span class="operator">=</span> a;
<span class="keyword">emit</span> authorChanged();
}
}
<span class="type">QString</span> author() <span class="keyword">const</span> {
<span class="keyword">return</span> m_author;
}
<span class="keyword">private</span>:
<span class="type">QString</span> m_author;
};</pre>
<p>If an instance of this class was <a href="QtQml.qtqml-cppintegration-contextproperties.md">set as a context property</a> when loading a file named <tt>MyItem.qml</tt> from C++:</p>
<pre class="cpp"> <span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>) {
<span class="type">QCoreApplication</span> app(argc<span class="operator">,</span> argv);
<span class="type">QQmlEngine</span> engine;
Message msg;
engine<span class="operator">.</span>rootContext()<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;msg&quot;</span><span class="operator">,</span> <span class="operator">&amp;</span>msg);
<span class="type">QQmlComponent</span> component(<span class="operator">&amp;</span>engine<span class="operator">,</span> <span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
component<span class="operator">.</span>create();
<span class="keyword">return</span> app<span class="operator">.</span>exec();
}</pre>
<p>Then, the <tt>author</tt> property could be read from <tt>MyItem.qml</tt>:</p>
<pre class="qml"><span class="comment">// MyItem.qml</span>
import QtQuick 2.0
<span class="type">Text</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">text</span>: <span class="name">msg</span>.<span class="name">author</span>    <span class="comment">// invokes Message::author() to get this value</span>
<span class="name">Component</span>.onCompleted: {
<span class="name">msg</span>.<span class="name">author</span> <span class="operator">=</span> <span class="string">&quot;Jonah&quot;</span>  <span class="comment">// invokes Message::setAuthor()</span>
}
}</pre>
<p>For maximum interoperability with QML, <b>any property that is writable should have an associated NOTIFY signal</b> that is emitted whenever the property value has changed. This allows the property to be used with <a href="QtQml.qtqml-syntax-propertybinding.md">property binding</a>, which is an essential feature of QML that enables specific values to be updated whenever an associated property changes.</p>
<p>In the above example, the associated NOTIFY signal for the <tt>author</tt> property is <tt>authorChanged</tt>, as specified in the Q_PROPERTY() macro call. This means that whenever the signal is emitted — as it is when the author changes in Message::setAuthor() — this notifies the QML engine that any bindings involving the <tt>author</tt> property must be updated, and in turn, the engine will update the <tt>text</tt> property by calling <tt>Message::author()</tt> again.</p>
<p>If the <tt>author</tt> property was writable but did not have an associated NOTIFY signal, the <tt>text</tt> value would be initialized with the initial value returned by <tt>Message::author()</tt> but would not be updated with any later changes to this property. In addition, any attempts to bind to the property from QML will produce a runtime warning from the engine.</p>
<p><b>Note: </b>It is recommended that the NOTIFY signal be named <i>&lt;property&gt;Changed</i> where <tt>&lt;property&gt;</tt> is the name of the property. The associated property change signal handler generated by the QML engine will always take the form <tt>on&lt;Property&gt;Changed</tt>, regardless of the name of the related C++ signal, so it is recommended that the signal name follows this convention to avoid any confusion.</p>
<h4>Notes on Use of Notify Signals</h4>
<p>To prevent loops or excessive evaluation, developers should ensure that the property change signal is only emitted when the property value has actually changed. Also, if a property or group of properties is infrequently used, it is permitted to use the same NOTIFY signal for several properties. This should be done with care to ensure that performance doesn't suffer.</p>
<p>The presence of a NOTIFY signal does incur a small overhead. There are cases where a property's value is set at object construction time, and does not subsequently change. The most common case of this is when a type uses Grouped Properties, and the grouped property object is allocated once, and only freed when the object is deleted. In these cases, the CONSTANT attribute may be added to the property declaration instead of a NOTIFY signal.</p>
<p>The CONSTANT attribute should only be used for properties whose value is set, and finalized, only in the class constructor. All other properties that want to be used in bindings should have a NOTIFY signal instead.</p>
<h3>Properties with Object Types</h3>
<p>Object-type properties are accessible from QML providing that the object type has been appropriately <a href="QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system">registered</a> with the QML type system.</p>
<p>For example, the <tt>Message</tt> type might have a <tt>body</tt> property of type <tt>MessageBody*</tt>:</p>
<pre class="cpp"><span class="keyword">class</span> Message : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_PROPERTY(MessageBody<span class="operator">*</span> body READ body WRITE setBody NOTIFY bodyChanged)
<span class="keyword">public</span>:
MessageBody<span class="operator">*</span> body() <span class="keyword">const</span>;
<span class="type">void</span> setBody(MessageBody<span class="operator">*</span> body);
};
<span class="keyword">class</span> MessageBody : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">QString</span> text READ text WRITE text NOTIFY textChanged)
<span class="comment">// ...</span>
}</pre>
<p>Suppose the <tt>Message</tt> type was <a href="QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system">registered</a> with the QML type system, allowing it to be used as an object type from QML code:</p>
<pre class="qml"><span class="type">Message</span> {
<span class="comment">// ...</span>
}</pre>
<p>If the <tt>MessageBody</tt> type was also registered with the type system, it would be possible to assign <tt>MessageBody</tt> to the <tt>body</tt> property of a <tt>Message</tt>, all from within QML code:</p>
<pre class="qml"><span class="type">Message</span> {
<span class="name">body</span>: <span class="name">MessageBody</span> {
<span class="name">text</span>: <span class="string">&quot;Hello, world!&quot;</span>
}
}</pre>
<h3>Properties with Object-List Types</h3>
<p>Properties containing lists of QObject-derived types can also be exposed to QML. For this purpose, however, one should use QQmlListProperty rather than QList&lt;T&gt; as the property type. This is because QList is not a QObject-derived type, and so cannot provide the necessary QML property characteristics through the Qt meta object system, such as signal notifications when a list is modified.</p>
<p>QQmlListProperty is a template class that can be conveniently constructed from a QList value.</p>
<p>For example, the <tt>MessageBoard</tt> class below has a <tt>messages</tt> property of type QQmlListProperty that stores a list of <tt>Message</tt> instances:</p>
<pre class="cpp"><span class="keyword">class</span> MessageBoard : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> messages READ messages)
<span class="keyword">public</span>:
<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> messages() <span class="keyword">const</span>;
<span class="keyword">private</span>:
<span class="keyword">static</span> <span class="type">void</span> append_message(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> <span class="operator">*</span>list<span class="operator">,</span> Message <span class="operator">*</span>msg);
<span class="type">QList</span><span class="operator">&lt;</span>Message <span class="operator">*</span><span class="operator">&gt;</span> m_messages;
};</pre>
<p>The MessageBoard::messages() function simply creates and returns a QQmlListProperty from its QList&lt;T&gt; <tt>m_messages</tt> member, passing the appropriate list modification functions as required by the QQmlListProperty constructor:</p>
<pre class="cpp"><span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> MessageBoard<span class="operator">::</span>messages()
{
<span class="keyword">return</span> <span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span>(<span class="keyword">this</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="operator">&amp;</span>MessageBoard<span class="operator">::</span>append_message);
}
<span class="type">void</span> MessageBoard<span class="operator">::</span>append_message(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Message<span class="operator">&gt;</span> <span class="operator">*</span>list<span class="operator">,</span> Message <span class="operator">*</span>msg)
{
MessageBoard <span class="operator">*</span>msgBoard <span class="operator">=</span> qobject_cast<span class="operator">&lt;</span>MessageBoard <span class="operator">*</span><span class="operator">&gt;</span>(list<span class="operator">-</span><span class="operator">&gt;</span>object);
<span class="keyword">if</span> (msg)
msgBoard<span class="operator">-</span><span class="operator">&gt;</span>m_messages<span class="operator">.</span>append(msg);
}</pre>
<p>Note that the template class type for the QQmlListProperty — in this case, <tt>Message</tt> — must be registered with the QML type system.</p>
<h3>Grouped Properties</h3>
<p>Any read-only object-type property is accessible from QML code as a <i>grouped property</i>. This can be used to expose a group of related properties that describe a set of attributes for a type.</p>
<p>For example, suppose the <tt>Message::author</tt> property was of type <tt>MessageAuthor</tt> rather than a simple string, with sub-properties of <tt>name</tt> and <tt>email</tt>:</p>
<pre class="cpp"><span class="keyword">class</span> MessageAuthor : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_PROPERTY(<span class="type">QString</span> name READ name WRITE setName)
Q_PROPERTY(<span class="type">QString</span> email READ email WRITE setEmail)
<span class="keyword">public</span>:
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
};
<span class="keyword">class</span> Message : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_PROPERTY(MessageAuthor<span class="operator">*</span> author READ author)
<span class="keyword">public</span>:
Message(<span class="type">QObject</span> <span class="operator">*</span>parent)
: <span class="type">QObject</span>(parent)<span class="operator">,</span> m_author(<span class="keyword">new</span> MessageAuthor(<span class="keyword">this</span>))
{
}
Message <span class="operator">*</span>author() <span class="keyword">const</span> {
<span class="keyword">return</span> m_author;
}
<span class="keyword">private</span>:
Message <span class="operator">*</span>m_author;
};</pre>
<p>The <tt>author</tt> property could be written to using the <a href="QtQml.qtqml-syntax-objectattributes.md#grouped-properties">grouped property syntax</a> in QML, like this:</p>
<pre class="qml"><span class="type">Message</span> {
<span class="name">author</span>.name: <span class="string">&quot;Alexandra&quot;</span>
<span class="name">author</span>.email: <span class="string">&quot;alexandra@mail.com&quot;</span>
}</pre>
<p>A type that is exposed as a grouped property differs from an object-type property in that the grouped property is read-only, and is initialized to a valid value by the parent object at construction. The grouped property's sub-properties may be modified from QML but the grouped property object itself will never change, whereas an object-type property may be assigned a new object value from QML at any time. Thus, the lifetime of a grouped property object is controlled strictly by the C++ parent implementation, whereas an object-type property can be freely created and destroyed through QML code.</p>
<h2>Exposing Methods (including Qt Slots)</h2>
<p>Any method of a QObject-derived type is accessible from QML code if it is:</p>
<ul>
<li>A public method flagged with the Q_INVOKABLE() macro</li>
<li>A method that is a public Qt slot</li>
</ul>
<p>For example, the <tt>MessageBoard</tt> class below has a <tt>postMessage()</tt> method that has been flagged with the Q_INVOKABLE macro, as well as a <tt>refresh()</tt> method that is a public slot:</p>
<pre class="cpp"> <span class="keyword">class</span> MessageBoard : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
<span class="keyword">public</span>:
Q_INVOKABLE bool postMessage(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>msg) {
qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Called the C++ method with&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> msg;
<span class="keyword">return</span> <span class="keyword">true</span>;
}
<span class="keyword">public</span> <span class="keyword">slots</span>:
<span class="type">void</span> refresh() {
qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Called the C++ slot&quot;</span>;
}
};</pre>
<p>If an instance of <tt>MessageBoard</tt> was set as the context data for a file <tt>MyItem.qml</tt>, as shown below left, then <tt>MyItem.qml</tt> could invoke the two methods, as shown below right:</p>
<table class="generic">
<tr valign="top"><td ><pre class="cpp"> <span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>) {
<span class="type">QCoreApplication</span> app(argc<span class="operator">,</span> argv);
<span class="type">QQmlEngine</span> engine;
Message msg;
engine<span class="operator">.</span>rootContext()<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;msg&quot;</span><span class="operator">,</span> <span class="operator">&amp;</span>msg);
<span class="type">QQmlComponent</span> component(<span class="operator">&amp;</span>engine<span class="operator">,</span> <span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
component<span class="operator">.</span>create();
<span class="keyword">return</span> app<span class="operator">.</span>exec();
}</pre>
</td><td ><pre class="qml"><span class="comment">// MyItem.qml</span>
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
var <span class="name">result</span> = <span class="name">msgBoard</span>.<span class="name">postMessage</span>(<span class="string">&quot;Hello from QML&quot;</span>)
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Result of postMessage():&quot;</span>, <span class="name">result</span>)
<span class="name">msgBoard</span>.<span class="name">refresh</span>();
}
}
}</pre>
</td></tr>
</table>
<p>If a C++ method has a parameter with a <tt>QObject*</tt> type, the parameter value can be passed from QML using an object <tt>id</tt> or a JavaScript var value that references the object.</p>
<p>QML supports the calling of overloaded C++ functions. If there are multiple C++ functions with the same name but different arguments, the correct function will be called according to the number and the types of arguments that are provided.</p>
<p>Values returned from C++ methods are converted to JavaScript values when accessed from JavaScript expressions in QML.</p>
<h2>Exposing Signals</h2>
<p>Any public signal of a QObject-derived type is accessible from QML code.</p>
<p>The QML engine automatically creates a <a href="QtQml.qtqml-syntax-signals.md">signal handler</a> for any signal of a QObject-derived type that is used from QML. Signal handlers are always named <i>on&lt;Signal&gt;</i> where <tt>&lt;Signal&gt;</tt> is the name of the signal, with the first letter capitalized. All parameters passed by the signal are available in the signal handler through the parameter names.</p>
<p>For example, suppose the <tt>MessageBoard</tt> class has a <tt>newMessagePosted()</tt> signal with a single parameter, <tt>subject</tt>:</p>
<pre class="cpp"> <span class="keyword">class</span> MessageBoard : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
<span class="keyword">public</span>:
<span class="comment">// ...</span>
<span class="keyword">signals</span>:
<span class="type">void</span> newMessagePosted(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>subject);
};</pre>
<p>If the <tt>MessageBoard</tt> type was <a href="QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system">registered</a> with the QML type system, then a <tt>MessageBoard</tt> object declared in QML could receive the <tt>newMessagePosted()</tt> signal using a signal handler named <tt>onNewMessagePosted</tt>, and examine the <tt>subject</tt> parameter value:</p>
<pre class="qml"><span class="type">MessageBoard</span> {
<span class="name">onNewMessagePosted</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;New message received:&quot;</span>, <span class="name">subject</span>)
}</pre>
<p>As with property values and method parameters, a signal parameter must have a type that is supported by the QML engine; see <a href="QtQml.qtqml-cppintegration-data.md">Data Type Conversion Between QML and C++</a>. (Using an unregistered type will not generate an error, but the parameter value will not be accessible from the handler.)</p>
<p>Classes may have multiple signals with the same name, but only the final signal is accessible as a QML signal. Note that signals with the same name but different parameters cannot be distinguished from one another.</p>
<!-- @@@qtqml-cppintegration-exposecppattributes.html -->
