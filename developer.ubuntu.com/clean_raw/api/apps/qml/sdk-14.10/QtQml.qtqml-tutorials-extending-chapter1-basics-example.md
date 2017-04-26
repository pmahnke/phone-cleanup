---
Title: QtQml.qtqml-tutorials-extending-chapter1-basics-example
---

# QtQml.qtqml-tutorials-extending-chapter1-basics-example

<span class="subtitle"></span>
<!-- $$$tutorials/extending/chapter1-basics-description -->
<p>A common task when extending QML is to provide a new QML type that supports some custom functionality beyond what is provided by the built-in Qt Quick types. For example, this could be done to implement particular data models, or provide types with custom painting and drawing capabilities, or access system features like network programming that are not accessible through built-in QML features.</p>
<p>In this tutorial, we will show how to use the C++ classes in the Qt Quick module to extend QML. The end result will be a simple Pie Chart display implemented by several custom QML types connected together through QML features like bindings and signals, and made available to the QML runtime through a plugin.</p>
<p>To begin with, let's create a new QML type called &quot;PieChart&quot; that has two properties: a name and a color. We will make it available in an importable type namespace called &quot;Charts&quot;, with a version of 1.0&#x2e;</p>
<p>We want this <tt>PieChart</tt> type to be usable from QML like this:</p>
<pre class="cpp">import Charts <span class="number">1.0</span>
PieChart {
width: <span class="number">100</span>; height: <span class="number">100</span>
name: <span class="string">&quot;A simple pie chart&quot;</span>
color: <span class="string">&quot;red&quot;</span>
}</pre>
<p>To do this, we need a C++ class that encapsulates this <tt>PieChart</tt> type and its two properties. Since QML makes extensive use of Qt's meta object system, this new class must:</p>
<ul>
<li>Inherit from QObject</li>
<li>Declare its properties using the Q_PROPERTY macro</li>
</ul>
<p>Here is our <tt>PieChart</tt> class, defined in <tt>piechart.h</tt>:</p>
<pre class="cpp"><span class="preprocessor">#include &lt;QtQuick/QQuickPaintedItem&gt;</span>
<span class="preprocessor">#include &lt;QColor&gt;</span>
<span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">QString</span> name READ name WRITE setName)
Q_PROPERTY(<span class="type">QColor</span> color READ color WRITE setColor)
<span class="keyword">public</span>:
PieChart(<span class="type">QQuickItem</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
<span class="type">QString</span> name() <span class="keyword">const</span>;
<span class="type">void</span> setName(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>name);
<span class="type">QColor</span> color() <span class="keyword">const</span>;
<span class="type">void</span> setColor(<span class="keyword">const</span> <span class="type">QColor</span> <span class="operator">&amp;</span>color);
<span class="type">void</span> paint(<span class="type">QPainter</span> <span class="operator">*</span>painter);
<span class="keyword">private</span>:
<span class="type">QString</span> m_name;
<span class="type">QColor</span> m_color;
};</pre>
<p>The class inherits from QQuickPaintedItem because we want to override QQuickPaintedItem::paint() in perform drawing operations with the QPainter API. If the class just represented some data type and was not an item that actually needed to be displayed, it could simply inherit from QObject. Or, if we want to extend the functionality of an existing QObject-based class, it could inherit from that class instead. Alternatively, if we want to create a visual item that doesn't need to perform drawing operations with the QPainter API, we can just subclass QQuickItem.</p>
<p>The <tt>PieChart</tt> class defines the two properties, <tt>name</tt> and <tt>color</tt>, with the Q_PROPERTY macro, and overrides QQuickPaintedItem::paint(). The class implementation in <tt>piechart.cpp</tt> simply sets and returns the <tt>m_name</tt> and <tt>m_color</tt> values as appropriate, and implements <tt>paint()</tt> to draw a simple pie chart. It also turns off the QGraphicsItem::ItemHasNoContents flag to enable painting:</p>
<pre class="cpp">PieChart<span class="operator">::</span>PieChart(<span class="type">QQuickItem</span> <span class="operator">*</span>parent)
: <span class="type">QQuickPaintedItem</span>(parent)
{
}
...
<span class="type">void</span> PieChart<span class="operator">::</span>paint(<span class="type">QPainter</span> <span class="operator">*</span>painter)
{
<span class="type">QPen</span> pen(m_color<span class="operator">,</span> <span class="number">2</span>);
painter<span class="operator">-</span><span class="operator">&gt;</span>setPen(pen);
painter<span class="operator">-</span><span class="operator">&gt;</span>setRenderHints(<span class="type">QPainter</span><span class="operator">::</span>Antialiasing<span class="operator">,</span> <span class="keyword">true</span>);
painter<span class="operator">-</span><span class="operator">&gt;</span>drawPie(boundingRect()<span class="operator">.</span>adjusted(<span class="number">1</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="operator">-</span><span class="number">1</span><span class="operator">,</span> <span class="operator">-</span><span class="number">1</span>)<span class="operator">,</span> <span class="number">90</span> <span class="operator">*</span> <span class="number">16</span><span class="operator">,</span> <span class="number">290</span> <span class="operator">*</span> <span class="number">16</span>);
}</pre>
<p>Now that we have defined the <tt>PieChart</tt> type, we will use it from QML. The <tt>app.qml</tt> file creates a <tt>PieChart</tt> item and display the pie chart's details using a standard QML Text item:</p>
<pre class="qml">import Charts 1.0
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">PieChart</span> {
<span class="name">id</span>: <span class="name">aPieChart</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">name</span>: <span class="string">&quot;A simple pie chart&quot;</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
<span class="type">Text</span> {
<span class="type">anchors</span> { <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>; <span class="name">bottomMargin</span>: <span class="number">20</span> }
<span class="name">text</span>: <span class="name">aPieChart</span>.<span class="name">name</span>
}
}</pre>
<p>Notice that although the color is specified as a string in QML, it is automatically converted to a QColor object for the PieChart <tt>color</tt> property. Automatic conversions are provided for various other <a href="QtQml.qtqml-typesystem-basictypes.md">basic types</a>; for example, a string like &quot;640x480&quot; can be automatically converted to a QSize value.</p>
<p>We'll also create a C++ application that uses a QQuickView to run and display <tt>app.qml</tt>. The application must register the <tt>PieChart</tt> type using the qmlRegisterType() function, to allow it to be used from QML. If you don't register the type, <tt>app.qml</tt> won't be able to create a <tt>PieChart</tt>.</p>
<p>Here is the application <tt>main.cpp</tt>:</p>
<pre class="cpp"><span class="preprocessor">#include &quot;piechart.h&quot;</span>
<span class="preprocessor">#include &lt;QtQuick/QQuickView&gt;</span>
<span class="preprocessor">#include &lt;QGuiApplication&gt;</span>
<span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>)
{
<span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
qmlRegisterType<span class="operator">&lt;</span>PieChart<span class="operator">&gt;</span>(<span class="string">&quot;Charts&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieChart&quot;</span>);
<span class="type">QQuickView</span> view;
view<span class="operator">.</span>setResizeMode(<span class="type">QQuickView</span><span class="operator">::</span>SizeRootObjectToView);
view<span class="operator">.</span>setSource(<span class="type">QUrl</span>(<span class="string">&quot;qrc:///app.qml&quot;</span>));
view<span class="operator">.</span>show();
<span class="keyword">return</span> app<span class="operator">.</span>exec();
}</pre>
<p>This call to qmlRegisterType() registers the <tt>PieChart</tt> type as a type called &quot;PieChart&quot;, in a type namespace called &quot;Charts&quot;, with a version of 1.0&#x2e;</p>
<p>Lastly, we write a <tt>.pro</tt> project file that includes the files and the <tt>declarative</tt> library:</p>
<pre class="cpp">QT += qml quick
HEADERS += piechart.h
SOURCES += piechart.cpp \
main.cpp
RESOURCES += chapter1-basics.qrc
DESTPATH = $$[QT_INSTALL_EXAMPLES]/qml/tutorials/extending/chapter1-basics
target.path = $$DESTPATH
qml.files = *.qml
qml.path = $$DESTPATH
INSTALLS += target qml</pre>
<p>Now we can build and run the application:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/a7037478-6c28-46e4-a646-2858489c0b02-../qtqml-tutorials-extending-chapter1-basics-example/images/extending-tutorial-chapter1.png" alt="" /></p><p>Try it yourself with the code in Qt's <tt>examples/qml/tutorials/extending/chapter1-basics</tt> directory.</p>
<p>Files:</p>
<ul>
<li>tutorials/extending/chapter1-basics/app.qml</li>
<li>tutorials/extending/chapter1-basics/piechart.cpp</li>
<li>tutorials/extending/chapter1-basics/piechart.h</li>
<li>tutorials/extending/chapter1-basics/main.cpp</li>
<li>tutorials/extending/chapter1-basics/chapter1-basics.pro</li>
<li>tutorials/extending/chapter1-basics/chapter1-basics.qrc</li>
</ul>
<!-- @@@tutorials/extending/chapter1-basics -->
