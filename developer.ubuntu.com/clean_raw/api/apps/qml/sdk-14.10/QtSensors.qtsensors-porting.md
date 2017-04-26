---
Title: QtSensors.qtsensors-porting
---

# QtSensors.qtsensors-porting

<span class="subtitle"></span>
<!-- $$$qtsensors-porting.html-description -->
<h2>Overview</h2>
<p>The initial release of Qt Sensors (5.0) is generally expected to be source compatible with QtMobility Sensors 1.2&#x2e; This document attempts to explain where things need to be changed in order to port applications to Qt Sensors.</p>
<h2>QML</h2>
<p>In <tt>QtMobility</tt>, the C++ classes like <tt>QAccelerometer</tt> were directly used as QML types. In Qt Sensors, there are now separate classes for the QML types, which have no public C++ API.</p>
<p>The new QML types in Qt Sensors fix some issues the former QtMobility QML types had, for example:</p>
<ul>
<li>The reading types now have proper change notifications.</li>
<li><tt>availableDataRates</tt> and <tt>outputRanges</tt> of the <tt>Sensor</tt> type are now proper list types.</li>
<li>The <tt>identifier</tt> and <tt>type</tt> properties of <tt>Sensor</tt> can now be used.</li>
<li>The <tt>lux</tt> property of <tt>LightSensorReading</tt> has been renamed to <tt>illuminance</tt>.</li>
<li>The <tt>QmlSensors</tt> singleton now allows to query for sensor types.</li>
</ul>
<p>For more information, see the QML API documentation.</p>
<h2>C++</h2>
<p>The C++ API mainly remained the same as in QtMobility.</p>
<h3>Includes</h3>
<p>QtMobility Sensors installed headers into a <tt>Qt</tt> Sensors directory. This is also the directory that Qt Sensors uses. It is therefore expected that includes that worked with QtMobility Sensors should continue to work.</p>
<p>For example:</p>
<pre class="cpp"><span class="preprocessor">#include &lt;QAccelerometer&gt;</span>
<span class="preprocessor">#include &lt;qaccelerometer.h&gt;</span>
<span class="preprocessor">#include &lt;QtSensors/QAccelerometer&gt;</span>
<span class="preprocessor">#include &lt;QtSensors/qaccelerometer.h&gt;</span></pre>
<h3>Macros and Namespace</h3>
<p>QtMobility Sensors was built in a <tt>QtMobility</tt> namespace. This was enabled by the use of various macros. Qt Sensors does not normally build into a namespace and the macros from QtMobility no longer exist.</p>
<ul>
<li>QTM_BEGIN_NAMESPACE</li>
<li>QTM_END_NAMESPACE</li>
<li>QTM_USE_NAMESPACE</li>
<li>QTM_PREPEND_NAMESPACE(x)</li>
</ul>
<p>Note that Qt can be configured to build into a namespace. If Qt is built in this way then Qt Sensors is also built into the nominated namespace. However, as this is optional, the macros for this are typically defined to do nothing.</p>
<ul>
<li>QT_BEGIN_NAMESPACE</li>
<li>QT_END_NAMESPACE</li>
<li>QT_USE_NAMESPACE</li>
<li>QT_PREPEND_NAMESPACE(x)</li>
</ul>
<h3>qtimestamp</h3>
<p>qtimestamp was previously defined as an opaque type equivalent to a quint64. It existed as a class due to an implementation detail.</p>
<p>In Qt Sensors, the API uses quint64 instead of qtimestamp. qtimestamp still exists as a typedef so that applications that refer to qtimestamp can be compiled.</p>
<h2>Project Files</h2>
<p>QtMobility Sensors applications used this in their project files to enable the Sensors API.</p>
<pre class="cpp">CONFIG <span class="operator">+</span><span class="operator">=</span> mobility
MOBILITY <span class="operator">+</span><span class="operator">=</span> sensors</pre>
<p>Applications should remove these lines and instead use the following statement to enable the Qt Sensors API:</p>
<pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> sensors</pre>
<!-- @@@qtsensors-porting.html -->
