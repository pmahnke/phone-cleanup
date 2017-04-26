---
Title: QtQuick.qtquick-canvas-example
---

# QtQuick.qtquick-canvas-example

<span class="subtitle"></span>
<!-- $$$canvas-description -->
<p>This is a collection of QML Canvas examples.<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/03bf67de-a264-4600-91cd-4c7651ae1ef5-../qtquick-canvas-example/images/qml-canvas-example.png" alt="" /></p><p>This is a collection of small QML examples relating to Canvas item. Each example is a small QML file emphasizing a particular type or feature.</p>
<p>Red heart demonstrates using a bezierCurve API to stroke and fill a red heart.</p>
<pre class="qml"><span class="name">ctx</span>.<span class="name">beginPath</span>();
<span class="name">ctx</span>.<span class="name">moveTo</span>(<span class="number">75</span>,<span class="number">40</span>);
<span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">75</span>,<span class="number">37</span>,<span class="number">70</span>,<span class="number">25</span>,<span class="number">50</span>,<span class="number">25</span>);
<span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">20</span>,<span class="number">25</span>,<span class="number">20</span>,<span class="number">62.5</span>,<span class="number">20</span>,<span class="number">62.5</span>);
<span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">20</span>,<span class="number">80</span>,<span class="number">40</span>,<span class="number">102</span>,<span class="number">75</span>,<span class="number">120</span>);
<span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">110</span>,<span class="number">102</span>,<span class="number">130</span>,<span class="number">80</span>,<span class="number">130</span>,<span class="number">62.5</span>);
<span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">130</span>,<span class="number">62.5</span>,<span class="number">130</span>,<span class="number">25</span>,<span class="number">100</span>,<span class="number">25</span>);
<span class="name">ctx</span>.<span class="name">bezierCurveTo</span>(<span class="number">85</span>,<span class="number">25</span>,<span class="number">75</span>,<span class="number">37</span>,<span class="number">75</span>,<span class="number">40</span>);
<span class="name">ctx</span>.<span class="name">closePath</span>();</pre>
<p>Talk bubble demonstrates using a quadraticCurveTo API to stroke and fill a customized talk bubble:</p>
<pre class="qml"><span class="name">ctx</span>.<span class="name">beginPath</span>();
<span class="name">ctx</span>.<span class="name">moveTo</span>(<span class="number">75</span>,<span class="number">25</span>);
<span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">25</span>,<span class="number">25</span>,<span class="number">25</span>,<span class="number">62.5</span>);
<span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">25</span>,<span class="number">100</span>,<span class="number">50</span>,<span class="number">100</span>);
<span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">50</span>,<span class="number">120</span>,<span class="number">30</span>,<span class="number">125</span>);
<span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">60</span>,<span class="number">120</span>,<span class="number">65</span>,<span class="number">100</span>);
<span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">125</span>,<span class="number">100</span>,<span class="number">125</span>,<span class="number">62.5</span>);
<span class="name">ctx</span>.<span class="name">quadraticCurveTo</span>(<span class="number">125</span>,<span class="number">25</span>,<span class="number">75</span>,<span class="number">25</span>);
<span class="name">ctx</span>.<span class="name">closePath</span>();</pre>
<p>This example also demonstrates the fillText API:</p>
<pre class="qml"><span class="name">ctx</span>.<span class="name">fillStyle</span> <span class="operator">=</span> <span class="string">&quot;white&quot;</span>;
<span class="name">ctx</span>.<span class="name">font</span> <span class="operator">=</span> <span class="string">&quot;bold 17px sans-serif&quot;</span>;
<span class="name">ctx</span>.<span class="name">fillText</span>(<span class="string">&quot;Qt Quick&quot;</span>, <span class="number">40</span>, <span class="number">70</span>);</pre>
<p>Squircle demonstrates using a collection of simple moveTo/lineTo path APIs to draw a smooth squircle.</p>
<p>Rounded rectangle demonstrates using a collection if lineTo/arcTo path APIs to draw a rounded rectangle.</p>
<p>Smile face demonstrates using several complex path APIs to draw an fill a smile face.</p>
<p>Clip demonstrates using clip API to clip a given image.</p>
<pre class="qml"><span class="name">ctx</span>.<span class="name">clip</span>();
<span class="name">ctx</span>.<span class="name">drawImage</span>(<span class="name">canvas</span>.<span class="name">imagefile</span>, <span class="number">0</span>, <span class="number">0</span>);</pre>
<p>Tiger demonstrates using SVG path API to draw a tiger with a collection of SVG path strings.</p>
<pre class="qml"><span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="name">Tiger</span>.<span class="name">tiger</span>.<span class="name">length</span>; i++) {
<span class="keyword">if</span> (<span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">width</span> <span class="operator">!=</span> <span class="name">undefined</span>)
<span class="name">ctx</span>.<span class="name">lineWidth</span> <span class="operator">=</span> <span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">width</span>;
<span class="keyword">if</span> (<span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">path</span> <span class="operator">!=</span> <span class="name">undefined</span>)
<span class="name">ctx</span>.<span class="name">path</span> <span class="operator">=</span> <span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">path</span>;
<span class="keyword">if</span> (<span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">fill</span> <span class="operator">!=</span> <span class="name">undefined</span>) {
<span class="name">ctx</span>.<span class="name">fillStyle</span> <span class="operator">=</span> <span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">fill</span>;
<span class="name">ctx</span>.<span class="name">fill</span>();
}
<span class="keyword">if</span> (<span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">stroke</span> <span class="operator">!=</span> <span class="name">undefined</span>) {
<span class="name">ctx</span>.<span class="name">strokeStyle</span> <span class="operator">=</span> <span class="name">Tiger</span>.<span class="name">tiger</span>[<span class="name">i</span>].<span class="name">stroke</span>;
<span class="name">ctx</span>.<span class="name">stroke</span>();
}
}</pre>
<p>Files:</p>
<ul>
<li>canvas/canvas.qml</li>
<li>canvas/bezierCurve/bezierCurve.qml</li>
<li>canvas/clip/clip.qml</li>
<li>canvas/quadraticCurveTo/quadraticCurveTo.qml</li>
<li>canvas/roundedrect/roundedrect.qml</li>
<li>canvas/smile/smile.qml</li>
<li>canvas/squircle/squircle.qml</li>
<li>canvas/tiger/tiger.js</li>
<li>canvas/tiger/tiger.qml</li>
<li>canvas/main.cpp</li>
<li>canvas/canvas.pro</li>
<li>canvas/canvas.qrc</li>
</ul>
<!-- @@@canvas -->
