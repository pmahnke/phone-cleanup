---
Title: Ubuntu.Components.ProgressBar10
---

# Ubuntu.Components.ProgressBar10

<span class="subtitle"></span>
<!-- $$$ProgressBar10-brief -->
<p>The ProgressBar component visually indicates the progress of a process of determinate or indeterminate duration. More...</p>
<!-- @@@ProgressBar10 -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#indeterminate-prop">indeterminate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#maximumValue-prop">maximumValue</a></b></b> : real</li>
<li class="fn"><b><b><a href="#minimumValue-prop">minimumValue</a></b></b> : real</li>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : real</li>
</ul>
<!-- $$$ProgressBar10-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
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
<table class="qmlname"><tr valign="top" id="indeterminate-prop"><td class="tblQmlPropNode"><p><span class="name">indeterminate</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the progress interval is unknown. When set, altering other properties do not have any effect on the component's behavior. By default the property is set to false.</p>
<!-- @@@indeterminate -->
<br/>
<!-- $$$maximumValue -->
<table class="qmlname"><tr valign="top" id="maximumValue-prop"><td class="tblQmlPropNode"><p><span class="name">maximumValue</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the maximum value of the progress.</p>
<!-- @@@maximumValue -->
<br/>
<!-- $$$minimumValue -->
<table class="qmlname"><tr valign="top" id="minimumValue-prop"><td class="tblQmlPropNode"><p><span class="name">minimumValue</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the minimum value of the progress.</p>
<!-- @@@minimumValue -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the current value of the progress</p>
<!-- @@@value -->
<br/>
