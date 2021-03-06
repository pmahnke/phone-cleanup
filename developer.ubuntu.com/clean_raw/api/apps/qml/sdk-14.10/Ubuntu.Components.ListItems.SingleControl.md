---
Title: Ubuntu.Components.ListItems.SingleControl
---

# Ubuntu.Components.ListItems.SingleControl

<span class="subtitle"></span>
<!-- $$$SingleControl-brief -->
<p>A list item containing a single control More...</p>
<!-- @@@SingleControl -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components.ListItems 1.0</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#control-prop">control</a></b></b> : Item<tt> (preliminary)</tt></li>
</ul>
<!-- $$$SingleControl-description -->
<h2>Detailed Description</h2>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 1.0 as ListItem
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type">ListItem</span>.SingleControl {
<span class="name">control</span>: <span class="name">Button</span> {
<span class="type">anchors</span> {
<span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="name">fill</span>: <span class="name">parent</span>
}
<span class="name">text</span>: <span class="string">&quot;Large button&quot;</span>
}
}
}</pre>
<p><b>This component is under heavy development.</b></p>
<!-- @@@SingleControl -->
<h2>Property Documentation</h2>
<!-- $$$control -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">control</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>The control of this <a href="index.html">SingleControl</a> list item. The control will automatically be re-parented to, and centered in, this list item.</p>
<!-- @@@control -->
<br/>
