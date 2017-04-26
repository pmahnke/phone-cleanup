---
Title: Ubuntu.Components.Scrollbar
---

# Ubuntu.Components.Scrollbar

<span class="subtitle"></span>
<!-- $$$Scrollbar-brief -->
<p>The ScrollBar component provides scrolling functionality for scrollable views (i.e&#x2e; Flickable, ListView). More...</p>
<!-- @@@Scrollbar -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#align-prop">align</a></b></b> : int</li>
<li class="fn"><b><b><a href="#flickableItem-prop">flickableItem</a></b></b> : Flickable</li>
</ul>
<!-- $$$Scrollbar-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The ScrollBar can be set to any flickable and has built-in anchoring setup to the attached flickable's front, rear, top or bottom. the scrollbar can also be aligned using anchors, however the built-in align functionality makes sure to have the proper alignemt applied based on theme and layout direction (RTL or LTR).</p>
<p>The content position is driven through the attached Flickable. Therefore every style implementation should drive the position through contentX/contentY properties, depending on whether the orientation is vertical or horizontal.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">list</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">37</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">37</span>)
<span class="name">model</span>: <span class="number">30</span>
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Text.md">Text</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Item &quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
}
}
}
<span class="type"><a href="index.html">Scrollbar</a></span> {
<span class="name">flickableItem</span>: <span class="name">list</span>
<span class="name">align</span>: <span class="name">Qt</span>.<span class="name">AlignTrailing</span>
}
}</pre>
<!-- @@@Scrollbar -->
<h2>Property Documentation</h2>
<!-- $$$align -->
<table class="qmlname"><tr valign="top" id="align-prop"><td class="tblQmlPropNode"><p><span class="name">align</span> : <span class="type">int</span></p></td></tr></table><p>The property defines the alignment of the scrollbar to the <a href="#flickableItem-prop">flickableItem</a>. The implementation handles the alignment as follows:</p>
<ul>
<li>Qt.AlignLeading anchors to the left on LTR and to the right on RTL layouts</li>
<li>Qt.AlignTrailing anchors to the right on LTR and to the left on RTL layouts</li>
<li>Qt.AlignTop anchors to the top</li>
<li>Qt.AlignBottom anchors to the bottom</li>
</ul>
<p>The default value is <b>Qt.AlignTrailing</b>.</p>
<!-- @@@align -->
<br/>
<!-- $$$flickableItem -->
<table class="qmlname"><tr valign="top" id="flickableItem-prop"><td class="tblQmlPropNode"><p><span class="name">flickableItem</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span></p></td></tr></table><p>This property holds the flickable item (Flickable, <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a> or <a href="../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview">GridView</a>) the Scrollbar is attached to.</p>
<!-- @@@flickableItem -->
<br/>
