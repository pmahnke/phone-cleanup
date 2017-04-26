---
Title: QtQml.qtqml-tutorials-extending-chapter4-custompropertytypes-example
---

# QtQml.qtqml-tutorials-extending-chapter4-custompropertytypes-example

<span class="subtitle"></span>
<!-- $$$tutorials/extending/chapter4-customPropertyTypes-description -->
<p>The <tt>PieChart</tt> type currently has a string-type property and a color-type property. It could have many other types of properties. For example, it could have an int-type property to store an identifier for each chart:</p>
<pre class="cpp"><span class="comment">// C++</span>
<span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
{
Q_PROPERTY(<span class="type">int</span> chartId READ chartId WRITE setChartId NOTIFY chartIdChanged)
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
<span class="keyword">public</span>:
<span class="type">void</span> setChartId(<span class="type">int</span> chartId);
<span class="type">int</span> chartId() <span class="keyword">const</span>;
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
<span class="keyword">signals</span>:
<span class="type">void</span> chartIdChanged();
};
<span class="comment">// QML</span>
PieChart {
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
chartId: <span class="number">100</span>
}</pre>
<p>Aside from <tt>int</tt>, we could use various other property types. Many of the Qt data types such as QColor, QSize and QRect are automatically supported from QML. (See <a href="QtQml.qtqml-cppintegration-data.md">Data Type Conversion Between QML and C++</a> documentation for a full list.)</p>
<p>If we want to create a property whose type is not supported by QML by default, we need to register the type with the QML engine.</p>
<p>For example, let's replace the use of the <tt>property</tt> with a type called &quot;PieSlice&quot; that has a <tt>color</tt> property. Instead of assigning a color, we assign an <tt>PieSlice</tt> value which itself contains a <tt>color</tt>:</p>
<pre class="qml">import Charts 1.0
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">PieChart</span> {
<span class="name">id</span>: <span class="name">chart</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">pieSlice</span>: <span class="name">PieSlice</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
}
<span class="name">Component</span>.onCompleted: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The pie is colored &quot;</span> <span class="operator">+</span> <span class="name">chart</span>.<span class="name">pieSlice</span>.<span class="name">color</span>)
}</pre>
<p>Like <tt>PieChart</tt>, this new <tt>PieSlice</tt> type inherits from QQuickPaintedItem and declares its properties with Q_PROPERTY():</p>
<pre class="cpp"><span class="keyword">class</span> PieSlice : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">QColor</span> color READ color WRITE setColor)
<span class="keyword">public</span>:
PieSlice(<span class="type">QQuickItem</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
<span class="type">QColor</span> color() <span class="keyword">const</span>;
<span class="type">void</span> setColor(<span class="keyword">const</span> <span class="type">QColor</span> <span class="operator">&amp;</span>color);
<span class="type">void</span> paint(<span class="type">QPainter</span> <span class="operator">*</span>painter);
<span class="keyword">private</span>:
<span class="type">QColor</span> m_color;
};</pre>
<p>To use it in <tt>PieChart</tt>, we modify the <tt>color</tt> property declaration and associated method signatures:</p>
<pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickItem</span>
{
Q_OBJECT
Q_PROPERTY(PieSlice<span class="operator">*</span> pieSlice READ pieSlice WRITE setPieSlice)
...
<span class="keyword">public</span>:
...
PieSlice <span class="operator">*</span>pieSlice() <span class="keyword">const</span>;
<span class="type">void</span> setPieSlice(PieSlice <span class="operator">*</span>pieSlice);
...
};</pre>
<p>There is one thing to be aware of when implementing <tt>setPieSlice()</tt>. The <tt>PieSlice</tt> is a visual item, so it must be set as a child of the <tt>PieChart</tt> using QQuickItem::setParentItem() so that the <tt>PieChart</tt> knows to paint this child item when its contents are drawn:</p>
<pre class="cpp"><span class="type">void</span> PieChart<span class="operator">::</span>setPieSlice(PieSlice <span class="operator">*</span>pieSlice)
{
m_pieSlice <span class="operator">=</span> pieSlice;
pieSlice<span class="operator">-</span><span class="operator">&gt;</span>setParentItem(<span class="keyword">this</span>);
}</pre>
<p>Like the <tt>PieChart</tt> type, the <tt>PieSlice</tt> type has to be registered using qmlRegisterType() to be used from QML. As with <tt>PieChart</tt>, we'll add the type to the &quot;Charts&quot; type namespace, version 1.0:</p>
<pre class="cpp"><span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>)
{
...
qmlRegisterType<span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span>(<span class="string">&quot;Charts&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieSlice&quot;</span>);
...
}</pre>
<p>Try it out with the code in Qt's <tt>examples/qml/tutorials/extending/chapter4-customPropertyTypes</tt> directory.</p>
<p>Files:</p>
<ul>
<li>tutorials/extending/chapter4-customPropertyTypes/app.qml</li>
<li>tutorials/extending/chapter4-customPropertyTypes/piechart.cpp</li>
<li>tutorials/extending/chapter4-customPropertyTypes/piechart.h</li>
<li>tutorials/extending/chapter4-customPropertyTypes/pieslice.cpp</li>
<li>tutorials/extending/chapter4-customPropertyTypes/pieslice.h</li>
<li>tutorials/extending/chapter4-customPropertyTypes/main.cpp</li>
<li>tutorials/extending/chapter4-customPropertyTypes/chapter4-customPropertyTypes.pro</li>
<li>tutorials/extending/chapter4-customPropertyTypes/chapter4-customPropertyTypes.qrc</li>
</ul>
<!-- @@@tutorials/extending/chapter4-customPropertyTypes -->
