---
Title: QtQml.qtqml-tutorials-extending-chapter2-methods-example
---

# QtQml.qtqml-tutorials-extending-chapter2-methods-example

<span class="subtitle"></span>
<!-- $$$tutorials/extending/chapter2-methods-description -->
<p>Suppose we want <tt>PieChart</tt> to have a &quot;clearChart()&quot; method that erases the chart and then emits a &quot;chartCleared&quot; signal. Our <tt>app.qml</tt> would be able to call <tt>clearChart()</tt> and receive <tt>chartCleared()</tt> signals like this:</p>
<pre class="qml">import Charts 1.0
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">PieChart</span> {
<span class="name">id</span>: <span class="name">aPieChart</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">onChartCleared</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The chart has been cleared&quot;</span>)
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">aPieChart</span>.<span class="name">clearChart</span>()
}
<span class="type">Text</span> {
<span class="type">anchors</span> { <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>; <span class="name">bottomMargin</span>: <span class="number">20</span> }
<span class="name">text</span>: <span class="string">&quot;Click anywhere to clear the chart&quot;</span>
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/497714c7-90e1-4715-8d2d-aa27fa2fffda-../qtqml-tutorials-extending-chapter2-methods-example/images/extending-tutorial-chapter2.png" alt="" /></p><p>To do this, we add a <tt>clearChart()</tt> method and a <tt>chartCleared()</tt> signal to our C++ class:</p>
<pre class="cpp"><span class="keyword">class</span> PieChart : <span class="keyword">public</span> <span class="type">QQuickPaintedItem</span>
{
...
<span class="keyword">public</span>:
...
Q_INVOKABLE <span class="type">void</span> clearChart();
<span class="keyword">signals</span>:
<span class="type">void</span> chartCleared();
...
};</pre>
<p>The use of Q_INVOKABLE makes the <tt>clearChart()</tt> method available to the Qt Meta-Object system, and in turn, to QML. Note that it could have been declared as as a Qt slot instead of using Q_INVOKABLE, as slots are also callable from QML. Both of these approaches are valid.</p>
<p>The <tt>clearChart()</tt> method simply changes the color to Qt::transparent, repaints the chart, then emits the <tt>chartCleared()</tt> signal:</p>
<pre class="cpp"><span class="type">void</span> PieChart<span class="operator">::</span>clearChart()
{
setColor(<span class="type">QColor</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">::</span>transparent));
update();
<span class="keyword">emit</span> chartCleared();
}</pre>
<p>Now when we run the application and click the window, the pie chart disappears, and the application outputs:</p>
<pre class="cpp">The chart has been cleared</pre>
<p>Try out the example yourself with the updated code in Qt's <tt>examples/qml/tutorials/extending/chapter2-methods</tt> directory.</p>
<p>Files:</p>
<ul>
<li>tutorials/extending/chapter2-methods/app.qml</li>
<li>tutorials/extending/chapter2-methods/piechart.cpp</li>
<li>tutorials/extending/chapter2-methods/piechart.h</li>
<li>tutorials/extending/chapter2-methods/main.cpp</li>
<li>tutorials/extending/chapter2-methods/chapter2-methods.pro</li>
<li>tutorials/extending/chapter2-methods/chapter2-methods.qrc</li>
</ul>
<!-- @@@tutorials/extending/chapter2-methods -->
