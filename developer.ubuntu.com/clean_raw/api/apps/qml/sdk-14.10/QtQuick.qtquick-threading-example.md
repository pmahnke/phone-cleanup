---
Title: QtQuick.qtquick-threading-example
---

# QtQuick.qtquick-threading-example

<span class="subtitle"></span>
<!-- $$$threading-description -->
<p>This is a collection of QML Multithreading examples.<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/7e191942-25e1-4081-b6e0-b93fcc9cf9c0-../qtquick-threading-example/images/qml-threading-example.png" alt="" /></p><p>Threaded <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a> contains a <a href="QtQuick.ListView.md">ListView</a> and a <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a>. The <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a> is updated asynchronusly in another thread, and the results propagate back to the main thread. A timer requests updates from the worker thread periodically:</p>
<pre class="qml">        <span class="type">Timer</span> {
<span class="name">id</span>: <span class="name">timer</span>
<span class="name">interval</span>: <span class="number">2000</span>; <span class="name">repeat</span>: <span class="number">true</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="name">triggeredOnStart</span>: <span class="number">true</span>
<span class="name">onTriggered</span>: {
var <span class="name">msg</span> = {'action': <span class="string">'appendCurrentTime'</span>, 'model': <span class="name">listModel</span>};
<span class="name">worker</span>.<span class="name">sendMessage</span>(<span class="name">msg</span>);
}
}</pre>
<p>Inside the worker thread, the <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a> is synchronized once the data is finished loading:</p>
<pre class="js"><span class="name">WorkerScript</span>.<span class="name">onMessage</span> <span class="operator">=</span> <span class="keyword">function</span>(<span class="name">msg</span>) {
<span class="keyword">if</span> (<span class="name">msg</span>.<span class="name">action</span> <span class="operator">==</span> <span class="string">'appendCurrentTime'</span>) {
var <span class="name">data</span> = {'time': new <span class="name">Date</span>().<span class="name">toTimeString</span>()};
<span class="name">msg</span>.<span class="name">model</span>.<span class="name">append</span>(<span class="name">data</span>);
<span class="name">msg</span>.<span class="name">model</span>.<span class="name">sync</span>();   <span class="comment">// updates the changes to the list</span>
}
}</pre>
<p>WorkerScript contains an example of using a WorkerScript to offload expensive calculations into another thread. This keeps the UI from being blocked. This example calculates numbers in Pascal's Triangle, and not in a very optimal way, so it will often take several seconds to complete the calculation. By doing this in a WorkerScript in another thread, the UI is not blocked during this time.</p>
<p>When the UI needs another value, a request is sent to the WorkerScript:</p>
<pre class="qml">        <span class="type">Spinner</span> {
<span class="name">id</span>: <span class="name">rowSpinner</span>
<span class="name">label</span>: <span class="string">&quot;Row&quot;</span>
<span class="name">onValueChanged</span>: {
<span class="name">resultText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Loading...&quot;</span>;
<span class="name">myWorker</span>.<span class="name">sendMessage</span>( { row: <span class="name">rowSpinner</span>.<span class="name">value</span>, column: <span class="name">columnSpinner</span>.<span class="name">value</span> } );
}
}</pre>
<p>The workerscript then is free to take a really long time to calculate it:</p>
<pre class="js"><span class="name">WorkerScript</span>.<span class="name">onMessage</span> <span class="operator">=</span> <span class="keyword">function</span>(<span class="name">message</span>) {
<span class="comment">//Calculate result (may take a while, using a naive algorithm)</span>
var <span class="name">calculatedResult</span> = <span class="name">triangle</span>(<span class="name">message</span>.<span class="name">row</span>, <span class="name">message</span>.<span class="name">column</span>);
<span class="comment">//Send result back to main thread</span>
<span class="name">WorkerScript</span>.<span class="name">sendMessage</span>( { row: <span class="name">message</span>.<span class="name">row</span>,
column: <span class="name">message</span>.<span class="name">column</span>,
result: <span class="name">calculatedResult</span>} );
}</pre>
<p>When it's done, the result returns to the main scene via the WorkerScript type:</p>
<pre class="qml">    <span class="type">WorkerScript</span> {
<span class="name">id</span>: <span class="name">myWorker</span>
<span class="name">source</span>: <span class="string">&quot;workerscript.js&quot;</span>
<span class="name">onMessage</span>: {
<span class="keyword">if</span> (<span class="name">messageObject</span>.<span class="name">row</span> <span class="operator">==</span> <span class="name">rowSpinner</span>.<span class="name">value</span> <span class="operator">&amp;&amp;</span> <span class="name">messageObject</span>.<span class="name">column</span> <span class="operator">==</span> <span class="name">columnSpinner</span>.<span class="name">value</span>){ <span class="comment">//Not an old result</span>
<span class="keyword">if</span> (<span class="name">messageObject</span>.<span class="name">result</span> <span class="operator">==</span> -<span class="number">1</span>)
<span class="name">resultText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Column must be &lt;= Row&quot;</span>;
<span class="keyword">else</span>
<span class="name">resultText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">messageObject</span>.<span class="name">result</span>;
}
}
}</pre>
<p>Files:</p>
<ul>
<li>threading/threading.qml</li>
<li>threading/threadedlistmodel/dataloader.js</li>
<li>threading/threadedlistmodel/timedisplay.qml</li>
<li>threading/workerscript/Spinner.qml</li>
<li>threading/workerscript/workerscript.js</li>
<li>threading/workerscript/workerscript.qml</li>
<li>threading/main.cpp</li>
<li>threading/threading.pro</li>
<li>threading/threading.qmlproject</li>
<li>threading/threading.qrc</li>
<li>threading/threadedlistmodel/threadedlistmodel.qmlproject</li>
<li>threading/workerscript/workerscript.qmlproject</li>
</ul>
<!-- @@@threading -->
