---
Title: Ubuntu.Components.Label
---

# Ubuntu.Components.Label

<span class="subtitle"></span>
<!-- $$$Label-brief -->
<p>Text with Ubuntu styling. More...</p>
<!-- @@@Label -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.2</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="../sdk-14.10/QtQuick.Text.md">Text</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#fontSize-prop">fontSize</a></b></b> : string</li>
</ul>
<!-- $$$Label-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">coolGrey</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="type"><a href="index.html">Label</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Hello, world!&quot;</span>
<span class="name">fontSize</span>: <span class="string">&quot;large&quot;</span>
}
}</pre>
<!-- @@@Label -->
<h2>Property Documentation</h2>
<!-- $$$fontSize -->
<table class="qmlname"><tr valign="top" id="fontSize-prop"><td class="tblQmlPropNode"><p><span class="name">fontSize</span> : <span class="type">string</span></p></td></tr></table><p>The size of the text. One of the following strings (from smallest to largest):</p>
<ul>
<li>&quot;xx-small&quot;</li>
<li>&quot;x-small&quot;</li>
<li>&quot;small&quot;</li>
<li>&quot;medium&quot;</li>
<li>&quot;large&quot;</li>
<li>&quot;x-large&quot;</li>
</ul>
<p>Default value is &quot;medium&quot;.</p>
<!-- @@@fontSize -->
<br/>
