---
Title: Ubuntu.Components.Scrollbar
---

# Ubuntu.Components.Scrollbar

<span class="subtitle"></span>
<!-- $$$Scrollbar-brief -->
<p>The ScrollBar component provides scrolling functionality for scrollable views (i.e&#x2e; Flickable, ListView). More...</p>
<!-- @@@Scrollbar -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#align-prop">align</a></b></b> : int<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#flickableItem-prop">flickableItem</a></b></b> : Flickable<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
</ul>
<!-- $$$Scrollbar-description -->
<h2>Detailed Description</h2>
<p>The ScrollBar can be set to any flickable and has built-in anchoring setup to the attached flickable's front, rear, top or bottom. the scrollbar can also be aligned using anchors, however the built-in align functionality makes sure to have the proper alignemt applied based on theme and layout direction (RTL or LTR).</p>
<p>The content position is driven through the attached Flickable. Therefore every style implementation should drive the position through contentX/contentY properties, depending on whether the orientation is vertical or horizontal.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">list</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">37</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">37</span>)
<span class="name">model</span>: <span class="number">30</span>
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Item &quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
}
}
}
<span class="type">Scrollbar</span> {
<span class="name">flickableItem</span>: <span class="name">list</span>
<span class="name">align</span>: <span class="name">Qt</span>.<span class="name">AlignTrailing</span>
}
}</pre>
<!-- @@@Scrollbar -->
<h2>Property Documentation</h2>
<!-- $$$activeFocusOnPress -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">activeFocusOnPress</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p>The property specifies whether the <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> or derived is having the property value false, the focus will not be gained automatically.</p>
<p>In the following example the <a href="Ubuntu.Components.TextField.md">TextField</a> will stay focused when clicked on the red rectangle.</p>
<pre class="qml">import QtQuick 2.2
import Ubuntu.Components 1.1
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></span> {
<span class="name">objectName</span>: <span class="string">&quot;passiveScope&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></span> {
<span class="name">objectName</span>: <span class="string">&quot;activeScope&quot;</span>
<span class="name">activeFocusOnPress</span>: <span class="number">true</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
}
}
<span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">text</span>: <span class="string">&quot;The input stays focus even if red box is clicked&quot;</span>
}
<span class="name">Component</span>.onCompleted: <span class="name">input</span>.<span class="name">forceActiveFocus</span>()
<span class="type"><a href="QtQml.Connections.md">Connections</a></span> {
<span class="name">target</span>: <span class="name">window</span>
<span class="name">onActiveFocusItemChanged</span>: <span class="name">console</span>.<span class="name">debug</span>(<span class="string">&quot;focus on&quot;</span>, <span class="name">window</span>.<span class="name">activeFocusItem</span>)
}
}</pre>
<p>The default value is <tt>false</tt>.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@activeFocusOnPress -->
<br/>
<!-- $$$align -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">align</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>The property defines the alignment of the scrollbar to the <a href="#flickableItem-prop">flickableItem</a>. The implementation handles the alignment as follows:</p>
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
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">flickableItem</span> : <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>This property holds the flickable item (Flickable, <a href="QtQuick.ListView.md">ListView</a> or <a href="QtQuick.GridView.md">GridView</a>) the Scrollbar is attached to.</p>
<!-- @@@flickableItem -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>Component instantiated immediately and placed below everything else.</p>
<!-- @@@style -->
<br/>
