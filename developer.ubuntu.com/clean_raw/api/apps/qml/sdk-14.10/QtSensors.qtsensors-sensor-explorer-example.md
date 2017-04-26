---
Title: QtSensors.qtsensors-sensor-explorer-example
---

# QtSensors.qtsensors-sensor-explorer-example

<span class="subtitle"></span>
<!-- $$$sensor_explorer-description -->
<p>Demonstrates how to read the meta-data of available sensors.<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/4efb6a77-4659-4a0c-be49-0ba0ec29aa12-../qtsensors-sensor-explorer-example/images/qtsensors-examples-explorer.png" alt="" /></p><p>This example is divided into two parts:</p>
<ul>
<li>A C++ plugin that provides QML alternatives for <tt>QSensorExplorer</tt>, <tt>QPropertyInfo</tt> and <tt>QSensorItem</tt> C++ classes.</li>
<li>A QML Application that uses the QML types to read the sensor meta-data and present it.</li>
</ul>
<p>This example is built as an executable with C++ code that runs the QML, but it can also be launched directly using the <tt>qmlscene</tt> tool. You should build the top-level <i>sensor_explorer</i> project before trying to run this example or it will not be able to find its dependencies.</p>
<pre class="cpp">qmlscene <span class="operator">-</span>I <span class="operator">.</span> sensor_explorer<span class="operator">.</span>qml</pre>
<p>Above, the -I . parameter adds the current directory as a module import path to locate the Explorer QML module.</p>
<h2>Sensor Explorer QML Import</h2>
<p>The Sensor Explorer QML import defines the <i>Explorer</i> QML module, exporting <tt>QSensorExplorer</tt>, <tt>QPropertyInfo</tt> and <tt>QSensorItem</tt> C++ classes as QML types. The source code is available in the <tt>sensor_explorer/import</tt> subdirectory.</p>
<h2>Sensor Explorer QML Application</h2>
<p>To write a QML application that will use the QML types exposed by the Explorer module, following steps are needed:</p>
<p>Import the Explorer 1.0 declarative plugin:</p>
<pre class="qml">import Explorer 1.0</pre>
<p>Create a SensorExplorer QML item:</p>
<pre class="qml"><span class="type">SensorExplorer</span> {
<span class="name">id</span>: <span class="name">explorer</span>
}</pre>
<p>You can retrieve a list of all available sensors using <tt>SensorExplorer.availableSensors</tt>:</p>
<pre class="qml"><span class="name">model</span>: <span class="name">explorer</span>.<span class="name">availableSensors</span></pre>
<p>The example uses the returned list as a model to populate a view of available sensors.</p>
<p>To retrieve the properties of a sensor, use <tt>SensorItem.properties</tt>:</p>
<pre class="qml"><span class="name">propertyList</span>.<span class="name">model</span> <span class="operator">=</span> <span class="name">explorer</span>.<span class="name">selectedSensorItem</span>.<span class="name">properties</span></pre>
<p>The property list is used as a model for another view that displays the property names and values.</p>
<p>It is possible to edit the values of certain sensor properties. Selecting a writable property value will open an editor. <tt>SensorExplorer</tt> QML type allows you to pass a new value for a sensor property value as follows:</p>
<pre class="qml"><span class="name">explorer</span>.<span class="name">selectedSensorItem</span>.<span class="name">changePropertyValue</span>(<span class="name">propertyList</span>.<span class="name">selectedItem</span>, <span class="name">loaderEditor</span>.<span class="name">item</span>.<span class="name">text</span>);</pre>
<p>Starting and stopping a sensor can be done by setting the <tt>SensorItem.start</tt> property:</p>
<pre class="qml"><span class="keyword">if</span> (<span class="name">text</span> <span class="operator">===</span> <span class="string">&quot;Start&quot;</span>) {
<span class="name">explorer</span>.<span class="name">selectedSensorItem</span>.<span class="name">start</span> <span class="operator">=</span> <span class="number">true</span>;
<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Stop&quot;</span>;
}
<span class="keyword">else</span> {
<span class="name">explorer</span>.<span class="name">selectedSensorItem</span>.<span class="name">start</span> <span class="operator">=</span> <span class="number">false</span>;
<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Start&quot;</span>;
}</pre>
<p>Files:</p>
<ul>
<li>sensor_explorer/Makefile.qml</li>
<li>sensor_explorer/sensor_explorer.qml</li>
<li>sensor_explorer/import/explorer.cpp</li>
<li>sensor_explorer/import/explorer.h</li>
<li>sensor_explorer/import/propertyinfo.cpp</li>
<li>sensor_explorer/import/propertyinfo.h</li>
<li>sensor_explorer/import/sensoritem.cpp</li>
<li>sensor_explorer/import/sensoritem.h</li>
<li>sensor_explorer/main.cpp</li>
<li>sensor_explorer/qml.pro</li>
<li>sensor_explorer/qml.qrc</li>
<li>sensor_explorer/sensor_explorer.pro</li>
<li>sensor_explorer/import/import.pro</li>
<li>sensor_explorer/import/qmldir</li>
</ul>
<!-- @@@sensor_explorer -->
