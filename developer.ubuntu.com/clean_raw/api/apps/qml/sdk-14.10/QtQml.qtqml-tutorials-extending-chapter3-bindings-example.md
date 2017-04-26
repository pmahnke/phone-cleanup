---
Title: QtQml.qtqml-tutorials-extending-chapter3-bindings-example
---

# QtQml.qtqml-tutorials-extending-chapter3-bindings-example

<span class="subtitle"></span>
<!-- $$$tutorials/extending/chapter3-bindings-description -->
<p>Property binding is a powerful feature of QML that allows values of different types to be synchronized automatically. It uses signals to notify and update other types' values when property values are changed.</p>
<p>Let's enable property bindings for the <tt>color</tt> property. That means if we have code like this:</p>
<pre class="qml">import Charts 1.0
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">Row</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">spacing</span>: <span class="number">20</span>
<span class="type">PieChart</span> {
<span class="name">id</span>: <span class="name">chartA</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
<span class="type">PieChart</span> {
<span class="name">id</span>: <span class="name">chartB</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">chartA</span>.<span class="name">color</span>
}
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: { <span class="name">chartA</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;blue&quot;</span> }
}
<span class="type">Text</span> {
<span class="type">anchors</span> { <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>; <span class="name">bottomMargin</span>: <span class="number">20</span> }
<span class="name">text</span>: <span class="string">&quot;Click anywhere to change the chart color&quot;</span>
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/2f843da2-1fb5-414c-ac47-f887a08681e3-../qtqml-tutorials-extending-chapter3-bindings-example/images/extending-tutorial-chapter3.png" alt="" /></p><p>The &quot;color: chartA.color&quot; statement binds the <tt>color</tt> value of <tt>chartB</tt> to the <tt>color</tt> of <tt>chartA</tt>. Whenever <tt>chartA</tt>'s <tt>color</tt> value changes, <tt>chartB</tt>'s <tt>color</tt> value updates to the same value. When the window is clicked, the <tt>onClicked</tt> handler in the MouseArea changes the color of <tt>chartA</tt>, thereby changing both charts to the color blue.</p>
<p>It's easy to enable property binding for the <tt>color</tt> property. We add a NOTIFY feature to its Q_PROPERTY() declaration to indicate that a &quot;colorChanged&quot; signal is emitted whenever the value changes.</p>
<pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
{
...
Q_PROPERTY(<span class="type">QColor</span> color READ color WRITE setColor NOTIFY colorChanged)
<span class="keyword">public</span>:
...
<span class="keyword">signals</span>:
<span class="type">void</span> colorChanged();
...
};</pre>
<p>Then, we emit this signal in <tt>setPieSlice()</tt>:</p>
<pre class="cpp"><span class="type">void</span> PieChart<span class="operator">::</span>setColor(<span class="keyword">const</span> <span class="type">QColor</span> <span class="operator">&amp;</span>color)
{
<span class="keyword">if</span> (color <span class="operator">!</span><span class="operator">=</span> m_color) {
m_color <span class="operator">=</span> color;
update();   <span class="comment">// repaint with the new color</span>
<span class="keyword">emit</span> colorChanged();
}
}</pre>
<p>It's important for <tt>setColor()</tt> to check that the color value has actually changed before emitting <tt>colorChanged()</tt>. This ensures the signal is not emitted unnecessarily and also prevents loops when other types respond to the value change.</p>
<p>The use of bindings is essential to QML. You should always add NOTIFY signals for properties if they are able to be implemented, so that your properties can be used in bindings. Properties that cannot be bound cannot be automatically updated and cannot be used as flexibly in QML. Also, since bindings are invoked so often and relied upon in QML usage, users of your custom QML types may see unexpected behavior if bindings are not implemented.</p>
<p>Files:</p>
<ul>
<li>tutorials/extending/chapter3-bindings/app.qml</li>
<li>tutorials/extending/chapter3-bindings/piechart.cpp</li>
<li>tutorials/extending/chapter3-bindings/piechart.h</li>
<li>tutorials/extending/chapter3-bindings/main.cpp</li>
<li>tutorials/extending/chapter3-bindings/chapter3-binding.qrc</li>
<li>tutorials/extending/chapter3-bindings/chapter3-bindings.pro</li>
</ul>
<!-- @@@tutorials/extending/chapter3-bindings -->
