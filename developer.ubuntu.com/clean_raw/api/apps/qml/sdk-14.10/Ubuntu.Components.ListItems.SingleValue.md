---
Title: Ubuntu.Components.ListItems.SingleValue
---

# Ubuntu.Components.ListItems.SingleValue

<span class="subtitle"></span>
<!-- $$$SingleValue-brief -->
<p>A list item displaying a single value More...</p>
<!-- @@@SingleValue -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components.ListItems 1.0</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Base.md">Base</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : string<tt> (preliminary)</tt></li>
</ul>
<!-- $$$SingleValue-description -->
<h2>Detailed Description</h2>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components.ListItems 1.0 as ListItem
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type">ListItem</span>.SingleValue {
<span class="name">text</span>: <span class="string">&quot;Label&quot;</span>
<span class="name">value</span>: <span class="string">&quot;Status&quot;</span>
<span class="name">onClicked</span>: <span class="name">selected</span> <span class="operator">=</span> !<span class="name">selected</span>
}
<span class="type">ListItem</span>.SingleValue {
<span class="name">text</span>: <span class="string">&quot;Label&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">value</span>: <span class="string">&quot;Parameter&quot;</span>
<span class="name">progression</span>: <span class="number">true</span>
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked&quot;</span>)
}
}</pre>
<p><b>This component is under heavy development.</b></p>
<!-- @@@SingleValue -->
<h2>Property Documentation</h2>
<!-- $$$value -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>The values that will be shown next to the label text</p>
<!-- @@@value -->
<br/>
