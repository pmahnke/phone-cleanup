---
Title: QtQml.qtqml-documents-definetypes
---

# QtQml.qtqml-documents-definetypes

<span class="subtitle"></span>
<!-- $$$qtqml-documents-definetypes.html-description -->
<p>One of the core features of QML is that it enables QML object types to be easily defined in a lightweight manner through QML documents to suit the needs of individual QML applications. The standard Qt Quick module provides various types like Rectangle, Text and Image for building a QML application; beyond these, you can easily define your own QML types to be reused within your application. This ability to create your own types forms the building blocks of any QML application.</p>
<h2>Defining an Object Type with a QML File</h2>
<p>To create an object type, a QML document should be placed into a text file named as <i>&lt;TypeName&gt;.qml</i> where <i>&lt;TypeName&gt;</i> is the desired name of the type, which must be comprised of alphanumeric characters or underscores and beginning with an uppercase letter. This document is then automatically recognized by the engine as a definition of a QML type. Additionally, a type defined in this manner is automatically made available to other QML files within the same directory as the engine searches within the immediate directory when resolving QML type names.</p>
<p>For example, below is a document that declares a Rectangle with a child MouseArea. The document has been saved to file named <tt>SquareButton.qml</tt>:</p>
<pre class="qml"><span class="comment">// SquareButton.qml</span>
import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Button clicked!&quot;</span>)
}
}</pre>
<p>Since the file is named <tt>SquareButton.qml</tt>, <b>this can now be used as a type named <tt>SquareButton</tt> by any other QML file within the same directory</b>. For example, if there was a <tt>myapplication.qml</tt> file in the same directory, it could refer to the <tt>SquareButton</tt> type:</p>
<pre class="qml"><span class="comment">// myapplication.qml</span>
import QtQuick 2.0
<span class="type">SquareButton</span> {}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/d07e3056-0611-4869-8eeb-111fa0aa6d19-../qtqml-documents-definetypes/images/documents-definetypes-simple.png" alt="" /></p><p>This creates a 100 x 100 red Rectangle with an inner MouseArea, as defined in <tt>SquareButton.qml</tt>. When this <tt>myapplication.qml</tt> document is loaded by the engine, it loads the SquareButton.qml document as a component and instantiates it to create a <tt>SquareButton</tt> object.</p>
<p>The <tt>SquareButton</tt> type encapsulates the tree of QML objects declared in <tt>SquareButton.qml</tt>. When the QML engine instantiates a <tt>SquareButton</tt> object from this type, it is instantiating an object from the Rectangle tree declared in <tt>SquareButton.qml</tt>.</p>
<p><b>Note: </b>the letter case of the file name is significant on some (notably UNIX) filesystems. It is recommended the file name case matches the case of the desired QML type name exactly - for example, <tt>Box.qml</tt> and not <tt>BoX.qml</tt> - regardless of the platform to which the QML type will be deployed.</p>
<h3>Importing Types Defined Outside the Current Directory</h3>
<p>If <tt>SquareButton.qml</tt> was not in the same directory as <tt>myapplication.qml</tt>, the <tt>SquareButton</tt> type would need to be specifically made available through an <i>import</i> statement in <tt>myapplication.qml</tt>. It could be imported from a relative path on the file system, or as an installed module; see <a href="QtQml.qtqml-modules-topic.md">module</a> for more details.</p>
<h2>Accessible Attributes of Custom Types</h2>
<p>The <b>root object</b> definition in a .qml file <b>defines the attributes that are available for a QML type</b>. All properties, signals and methods that belong to this root object - whether they are custom declared, or come from the QML type of the root object - are externally accessible and can be read and modified for objects of this type.</p>
<p>For example, the root object type in the <tt>SquareButton.qml</tt> file above is Rectangle. This means any properties defined by the Rectangle type can be modified for a <tt>SquareButton</tt> object. The code below defines three <tt>SquareButton</tt> objects with customized values for some of the properties of the root Rectangle object of the <tt>SquareButton</tt> type:</p>
<pre class="qml"><span class="comment">// application.qml</span>
import QtQuick 2.0
<span class="type">Column</span> {
<span class="type">SquareButton</span> { <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
<span class="type">SquareButton</span> { <span class="name">x</span>: <span class="number">50</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
<span class="type">SquareButton</span> { <span class="name">radius</span>: <span class="number">10</span> }
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/45c973b7-5d7d-4285-8984-5fecace310df-../qtqml-documents-definetypes/images/documents-definetypes-attributes.png" alt="" /></p><p>The attributes that are accessible to objects of the custom QML type include any <a href="QtQml.qtqml-syntax-objectattributes.md#defining-property-attributes">custom properties</a>, <a href="QtQml.qtqml-syntax-objectattributes.md#defining-method-attributes">methods</a> and <a href="QtQml.qtqml-syntax-objectattributes.md#defining-signal-attributes">signals</a> that have additionally been defined for an object. For example, suppose the Rectangle in <tt>SquareButton.qml</tt> had been defined as follows, with additional properties, methods and signals:</p>
<pre class="qml"><span class="comment">// SquareButton.qml</span>
import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">root</span>
property <span class="type">bool</span> <span class="name">pressed</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
signal <span class="type">buttonClicked</span>(real xPos, real yPos)
<span class="keyword">function</span> <span class="name">randomizeColor</span>() {
<span class="name">root</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>)
}
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">root</span>.<span class="name">buttonClicked</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
}
}</pre>
<p>Any <tt>SquareButton</tt> object could make use of the <tt>pressed</tt> property, <tt>buttonClicked</tt> signal and <tt>randomizeColor()</tt> method that have been added to the root Rectangle:</p>
<pre class="qml"><span class="comment">// application.qml</span>
import QtQuick 2.0
<span class="type">SquareButton</span> {
<span class="name">id</span>: <span class="name">squareButton</span>
<span class="name">onButtonClicked</span>: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Clicked&quot;</span>, <span class="name">xPos</span>, <span class="name">yPos</span>)
<span class="name">randomizeColor</span>()
}
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">squareButton</span>.<span class="name">pressed</span> ? <span class="string">&quot;Down&quot;</span> : <span class="string">&quot;Up&quot;</span> }
}</pre>
<p>Note that any of the <tt>id</tt> values defined in <tt>SquareButton.qml</tt> are not accessible to <tt>SquareButton</tt> objects, as id values are only accessible from within the component scope in which a component is declared. The <tt>SquareButton</tt> object definition above cannot refer to <tt>mouseArea</tt> in order to refer to the MouseArea child, and if it had an <tt>id</tt> of <tt>root</tt> rather than <tt>squareButton</tt>, this would not conflict with the <tt>id</tt> of the same value for the root object defined in <tt>SquareButton.qml</tt> as the two would be declared within separate scopes.</p>
<!-- @@@qtqml-documents-definetypes.html -->
