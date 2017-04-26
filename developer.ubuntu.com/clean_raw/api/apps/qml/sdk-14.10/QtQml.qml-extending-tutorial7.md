---
Title: QtQml.qml-extending-tutorial7
---

# QtQml.qml-extending-tutorial7

<span class="subtitle"></span>
<!-- $$$qml-extending-tutorial7.html-description -->
<p>In this tutorial, we've shown the basic steps for creating a QML extension:</p>
<ul>
<li>Define new QML types by subclassing QObject and registering them with qmlRegisterType()</li>
<li>Add callable methods using Q_INVOKABLE or Qt slots, and connect to Qt signals with an <tt>onSignal</tt> syntax</li>
<li>Add property bindings by defining NOTIFY signals</li>
<li>Define custom property types if the built-in types are not sufficient</li>
<li>Define list property types using QQmlListProperty</li>
<li>Create a plugin library by defining a Qt plugin and writing a <tt>qmldir</tt> file</li>
</ul>
<p>The <a href="QtQml.qtqml-cppintegration-topic.md">Integrating QML and C++</a> documentation shows other useful features that can be added to QML extensions. For example, we could use <a href="QtQml.qtqml-syntax-objectattributes.md#default-properties">default properties</a> to allow slices to be added without using the <tt>slices</tt> property:</p>
<pre class="cpp">PieChart {
PieSlice { <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
PieSlice { <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
PieSlice { <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
}</pre>
<p>Or randomly add and remove slices from time to time using <a href="QtQml.qtqml-cppintegration-definetypes.md#property-value-sources">property value sources</a>:</p>
<pre class="cpp">PieChart {
PieSliceRandomizer on slices {}
}</pre>
<p>See the <a href="QtQml.qtqml-cppintegration-topic.md">Integrating QML and C++</a> documentation for more information.</p>
<!-- @@@qml-extending-tutorial7.html -->
