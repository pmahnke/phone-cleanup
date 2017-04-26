---
Title: Ubuntu.Components.Label
---

# Ubuntu.Components.Label

<span class="subtitle"></span>
<!-- $$$Label-brief -->
<p>Text with Ubuntu styling. More...</p>
<!-- @@@Label -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Text.md">Text</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#fontSize-prop">fontSize</a></b></b> : string</li>
</ul>
<!-- $$$Label-description -->
<h2>Detailed Description</h2>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">coolGrey</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="type">Label</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Hello, world!&quot;</span>
<span class="name">fontSize</span>: <span class="string">&quot;large&quot;</span>
}
}</pre>
<!-- @@@Label -->
<h2>Property Documentation</h2>
<!-- $$$fontSize -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">fontSize</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p>The size of the text. One of the following strings (from smallest to largest):</p>
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
