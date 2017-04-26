---
Title: Ubuntu.Layouts.ItemLayout
---

# Ubuntu.Layouts.ItemLayout

<span class="subtitle"></span>
<!-- $$$ItemLayout-brief -->
<p>ItemLayout defines a new size &amp; position of a single Item, for the purposes of specifying layouts. This is to be used within a ConditionalLayout definition. More...</p>
<!-- @@@ItemLayout -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Layouts 1.0</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#item-prop">item</a></b></b> : string</li>
</ul>
<!-- $$$ItemLayout-description -->
<h2>Detailed Description</h2>
<p>Use ItemLayout to define the size and position of a single item within a layout. The item name to be positioned should be specified in item property, which should correspond to the string specified in <b>Layouts.item</b> attached to an Item in the default layout. The Item with Layouts.item attached is reparented into ItemLayout and it is anchor filled to it.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Layouts 0.1
<span class="type"><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></span> {
<span class="name">id</span>: <span class="name">layouts</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">layouts</span>: [
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="type">ItemLayout</span> {
<span class="name">item</span>: <span class="string">&quot;input&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Components.TextArea.md">TextArea</a></span> {
<span class="name">text</span>: <span class="string">&quot;extra component&quot;</span>
}
}
}
]
<span class="comment">// default layout</span>
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;input&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;input&quot;</span>
}
}</pre>
<!-- @@@ItemLayout -->
<h2>Property Documentation</h2>
<!-- $$$item -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">item</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p>The property holds the item name to be positioned in the fragment.</p>
<!-- @@@item -->
<br/>
