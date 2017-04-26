---
Title: QtSensors.qtsensors-cubehouse-example
---

# QtSensors.qtsensors-cubehouse-example

<span class="subtitle"></span>
<!-- $$$cubehouse-description -->
<p>The Cube House example demonstrates the use of the accelerometer to drive a camera to create a pseudo-3D effect.<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/b32d214a-6a79-4db9-ae5f-3350956e6a07-../qtsensors-cubehouse-example/images/cubehouse.png" alt="" /></p>
<h2>Overview</h2>
<p>To write a QML application that will use the QML Accelerometer type from the QtSensors import you need to to the following steps:</p>
<p>Import the QtSensors declarative plugin:</p>
<pre class="qml">import QtSensors 5.0</pre>
<p>Add the Accelerometer QML types into your qml file.</p>
<pre class="qml">    <span class="type"><a href="QtSensors.Accelerometer.md">Accelerometer</a></span> {
<span class="name">id</span>: <span class="name">accel</span>
<span class="name">active</span>: <span class="number">true</span>
<span class="name">dataRate</span>: <span class="number">20</span></pre>
<p>In additional two properties are added to save the calculated pitch and roll values:</p>
<pre class="qml">        property <span class="type">double</span> <span class="name">pitch</span>: <span class="number">0.0</span>
property <span class="type">double</span> <span class="name">roll</span>: <span class="number">0.0</span></pre>
<p>Reading out the Accelerometer data can be done by implementing the 'onReadingChanged' slot and accessing the 'reading' property from the Accelerometer type:</p>
<pre class="qml">        <span class="name">onReadingChanged</span>: {
<span class="name">pitch</span> <span class="operator">=</span> -(<span class="name">Math</span>.<span class="name">atan2</span>(<span class="name">reading</span>.<span class="name">x</span>, <span class="name">Math</span>.<span class="name">sqrt</span>(<span class="name">reading</span>.<span class="name">y</span> <span class="operator">*</span> <span class="name">reading</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">reading</span>.<span class="name">z</span> <span class="operator">*</span> <span class="name">reading</span>.<span class="name">z</span>)) <span class="operator">*</span> <span class="number">180</span>) <span class="operator">/</span> <span class="name">Math</span>.<span class="name">PI</span>;
<span class="name">roll</span> <span class="operator">=</span> (<span class="name">Math</span>.<span class="name">atan2</span>(<span class="name">reading</span>.<span class="name">y</span>, <span class="name">Math</span>.<span class="name">sqrt</span>(<span class="name">reading</span>.<span class="name">x</span> <span class="operator">*</span> <span class="name">reading</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">reading</span>.<span class="name">z</span> <span class="operator">*</span> <span class="name">reading</span>.<span class="name">z</span>)) <span class="operator">*</span> <span class="number">180</span>) <span class="operator">/</span> <span class="name">Math</span>.<span class="name">PI</span>;
}
}</pre>
<p>By using a timer the view can be rotated using the pitch and roll properties from the Accelerometer type:</p>
<pre class="qml">    <span class="type">Timer</span> {
<span class="name">interval</span>: <span class="number">50</span>; <span class="name">running</span>: <span class="number">true</span>; <span class="name">repeat</span>: <span class="number">true</span>
<span class="name">onTriggered</span>: {
<span class="name">view</span>.<span class="name">rotateY</span>(<span class="name">accel</span>.<span class="name">pitch</span>);
<span class="name">view</span>.<span class="name">rotateX</span>(<span class="name">accel</span>.<span class="name">roll</span>);
}
}</pre>
<p>Files:</p>
<ul>
<li>cubehouse/Cube.qml</li>
<li>cubehouse/Room.qml</li>
<li>cubehouse/Table.qml</li>
<li>cubehouse/cubehouse.qml</li>
<li>cubehouse/main.cpp</li>
<li>cubehouse/cubehouse.pro</li>
<li>cubehouse/cubehouse.qrc</li>
</ul>
<!-- @@@cubehouse -->
