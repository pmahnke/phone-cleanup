---
Title: Ubuntu.Components.ProgressBar10
---

# Ubuntu.Components.ProgressBar10

<span class="subtitle"></span>
<!-- $$$ProgressBar10-brief -->
<p>The ProgressBar component visually indicates the progress of a process of determinate or indeterminate duration. More...</p>
<!-- @@@ProgressBar10 -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#indeterminate-prop">indeterminate</a></b></b> : bool<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#maximumValue-prop">maximumValue</a></b></b> : real<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#minimumValue-prop">minimumValue</a></b></b> : real<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : real<tt> (preliminary)</tt></li>
</ul>
<!-- $$$ProgressBar10-description -->
<h2>Detailed Description</h2>
<p><b>This component is under heavy development.</b></p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type">ProgressBar</span> {
<span class="name">id</span>: <span class="name">indeterminateBar</span>
<span class="name">indeterminate</span>: <span class="number">true</span>
}
<span class="type">ProgressBar</span> {
<span class="name">id</span>: <span class="name">determinateBar</span>
<span class="name">minimumValue</span>: -<span class="number">3.0</span>
<span class="name">maximumValue</span>: <span class="number">15</span>
}
}</pre>
<!-- @@@ProgressBar10 -->
<h2>Property Documentation</h2>
<!-- $$$indeterminate -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">indeterminate</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>Specifies whether the progress interval is unknown. When set, altering other properties do not have any effect on the component's behavior. By default the property is set to false.</p>
<!-- @@@indeterminate -->
<br/>
<!-- $$$maximumValue -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">maximumValue</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>Specifies the maximum value of the progress.</p>
<!-- @@@maximumValue -->
<br/>
<!-- $$$minimumValue -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">minimumValue</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>Specifies the minimum value of the progress.</p>
<!-- @@@minimumValue -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>Specifies the current value of the progress</p>
<!-- @@@value -->
<br/>
