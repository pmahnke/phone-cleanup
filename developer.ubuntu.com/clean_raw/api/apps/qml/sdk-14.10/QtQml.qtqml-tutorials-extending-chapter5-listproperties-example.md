---
Title: QtQml.qtqml-tutorials-extending-chapter5-listproperties-example
---

# QtQml.qtqml-tutorials-extending-chapter5-listproperties-example

<span class="subtitle"></span>
<!-- $$$tutorials/extending/chapter5-listproperties-description -->
<p>Right now, a <tt>PieChart</tt> can only have one <tt>PieSlice</tt>. Ideally a chart would have multiple slices, with different colors and sizes. To do this, we could have a <tt>slices</tt> property that accepts a list of <tt>PieSlice</tt> items:</p>
<pre class="qml">import Charts 1.0
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">PieChart</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">slices</span>: [
<span class="type">PieSlice</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">fromAngle</span>: <span class="number">0</span>; <span class="name">angleSpan</span>: <span class="number">110</span>
},
<span class="type">PieSlice</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;black&quot;</span>
<span class="name">fromAngle</span>: <span class="number">110</span>; <span class="name">angleSpan</span>: <span class="number">50</span>
},
<span class="type">PieSlice</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">fromAngle</span>: <span class="number">160</span>; <span class="name">angleSpan</span>: <span class="number">100</span>
}
]
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/c2613711-7649-4299-942e-9e5cebf58573-../qtqml-tutorials-extending-chapter5-listproperties-example/images/extending-tutorial-chapter5.png" alt="" /></p><p>To do this, we replace the <tt>pieSlice</tt> property in <tt>PieChart</tt> with a <tt>slices</tt> property, declared as a QQmlListProperty type. The QQmlListProperty class enables the creation of list properties in QML extensions. We replace the <tt>pieSlice()</tt> function with a <tt>slices()</tt> function that returns a list of slices, and add an internal <tt>append_slice()</tt> function (discussed below). We also use a QList to store the internal list of slices as <tt>m_slices</tt>:</p>
<pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickItem</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> slices READ slices)
...
<span class="keyword">public</span>:
...
<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> slices();
<span class="keyword">private</span>:
<span class="keyword">static</span> <span class="type">void</span> append_slice(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> <span class="operator">*</span>list<span class="operator">,</span> PieSlice <span class="operator">*</span>slice);
<span class="type">QString</span> m_name;
<span class="type">QList</span><span class="operator">&lt;</span>PieSlice <span class="operator">*</span><span class="operator">&gt;</span> m_slices;
};</pre>
<p>Although the <tt>slices</tt> property does not have an associated <tt>WRITE</tt> function, it is still modifiable because of the way QQmlListProperty works. In the <tt>PieChart</tt> implementation, we implement <tt>PieChart::slices()</tt> to return a QQmlListProperty value and indicate that the internal <tt>PieChart::append_slice()</tt> function is to be called whenever a request is made from QML to add items to the list:</p>
<pre class="cpp"><span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> PieChart<span class="operator">::</span>slices()
{
<span class="keyword">return</span> <span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span>(<span class="keyword">this</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="operator">&amp;</span>PieChart<span class="operator">::</span>append_slice<span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span>);
}
<span class="type">void</span> PieChart<span class="operator">::</span>append_slice(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span> <span class="operator">*</span>list<span class="operator">,</span> PieSlice <span class="operator">*</span>slice)
{
PieChart <span class="operator">*</span>chart <span class="operator">=</span> qobject_cast<span class="operator">&lt;</span>PieChart <span class="operator">*</span><span class="operator">&gt;</span>(list<span class="operator">-</span><span class="operator">&gt;</span>object);
<span class="keyword">if</span> (chart) {
slice<span class="operator">-</span><span class="operator">&gt;</span>setParentItem(chart);
chart<span class="operator">-</span><span class="operator">&gt;</span>m_slices<span class="operator">.</span>append(slice);
}
}</pre>
<p>The <tt>append_slice()</tt> function simply sets the parent item as before, and adds the new item to the <tt>m_slices</tt> list. As you can see, the append function for a QQmlListProperty is called with two arguments: the list property, and the item that is to be appended.</p>
<p>The <tt>PieSlice</tt> class has also been modified to include <tt>fromAngle</tt> and <tt>angleSpan</tt> properties and to draw the slice according to these values. This is a straightforward modification if you have read the previous pages in this tutorial, so the code is not shown here.</p>
<p>The complete code can be seen in the updated <tt>examples/qml/tutorials/extending/chapter5-listproperties</tt> directory.</p>
<p>Files:</p>
<ul>
<li>tutorials/extending/chapter5-listproperties/app.qml</li>
<li>tutorials/extending/chapter5-listproperties/piechart.cpp</li>
<li>tutorials/extending/chapter5-listproperties/piechart.h</li>
<li>tutorials/extending/chapter5-listproperties/pieslice.cpp</li>
<li>tutorials/extending/chapter5-listproperties/pieslice.h</li>
<li>tutorials/extending/chapter5-listproperties/main.cpp</li>
<li>tutorials/extending/chapter5-listproperties/chapter5-listproperties.pro</li>
<li>tutorials/extending/chapter5-listproperties/chapter5-listproperties.qrc</li>
</ul>
<!-- @@@tutorials/extending/chapter5-listproperties -->
