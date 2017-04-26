---
Title: Ubuntu.Components.TabBar
---

# Ubuntu.Components.TabBar

<span class="subtitle"></span>
<!-- $$$TabBar-brief -->
<p>Tab bar that will be shown in the header when Tabs is active. This component does not need to be instantiated by the developer, it is automatically created by the Tabs. More...</p>
<!-- @@@TabBar -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.2</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#alwaysSelectionMode-prop">alwaysSelectionMode</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#animate-prop">animate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : var</li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectedIndex-prop">selectedIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#selectionMode-prop">selectionMode</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
</ul>
<!-- $$$TabBar-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@TabBar -->
<h2>Property Documentation</h2>
<!-- $$$activeFocusOnPress -->
<table class="qmlname"><tr valign="top" id="activeFocusOnPress-prop"><td class="tblQmlPropNode"><p><span class="name">activeFocusOnPress</span> : <span class="type">bool</span></p></td></tr></table><p>The property specifies whether the <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> or derived is having the property value false, the focus will not be gained automatically.</p>
<p>In the following example the <a href="Ubuntu.Components.TextField.md">TextField</a> will stay focused when clicked on the red rectangle.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></span> {
<span class="name">objectName</span>: <span class="string">&quot;passiveScope&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
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
<span class="type"><a href="../sdk-14.10/QtQml.Connections.md">Connections</a></span> {
<span class="name">target</span>: <span class="name">window</span>
<span class="name">onActiveFocusItemChanged</span>: <span class="name">console</span>.<span class="name">debug</span>(<span class="string">&quot;focus on&quot;</span>, <span class="name">window</span>.<span class="name">activeFocusItem</span>)
}
}</pre>
<p>The default value is <code>false</code>.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@activeFocusOnPress -->
<br/>
<!-- $$$alwaysSelectionMode -->
<table class="qmlname"><tr valign="top" id="alwaysSelectionMode-prop"><td class="tblQmlPropNode"><p><span class="name">alwaysSelectionMode</span> : <span class="type">bool</span></p></td></tr></table><p>Do not deactivate the tab bar after a specified idle time or when the user selects a new tab. Off by default.</p>
<!-- @@@alwaysSelectionMode -->
<br/>
<!-- $$$animate -->
<table class="qmlname"><tr valign="top" id="animate-prop"><td class="tblQmlPropNode"><p><span class="name">animate</span> : <span class="type">bool</span></p></td></tr></table><p>Show animations when the state changes. Default: true.</p>
<!-- @@@animate -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>The model containing the tabs to be controlled by the <a href="index.html">TabBar</a>. The tabs are visualized by the style, displaying controlling elements based on the data specified by the roles. The default style mandates the existence of either the <b>title</b> or <b>tab</b> role, but different styles may require to have other roles (e.g&#x2e; image, color). The order the role existence is checked is also determined by the style component, Default style checks the existence of the <b>tab</b> role first, and if not defined will use the <b>title</b> role.</p>
<!-- @@@model -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">pressed</span> : <span class="type">bool</span></p></td></tr></table><p>The user is interacting with the tab bar. Depends on the style pressed property.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$selectedIndex -->
<table class="qmlname"><tr valign="top" id="selectedIndex-prop"><td class="tblQmlPropNode"><p><span class="name">selectedIndex</span> : <span class="type">int</span></p></td></tr></table><p>The property holds the index of the selected Tab item. Note: Setting this property is DEPRECATED. Set the selectedIndex of the model instead.</p>
<!-- @@@selectedIndex -->
<br/>
<!-- $$$selectionMode -->
<table class="qmlname"><tr valign="top" id="selectionMode-prop"><td class="tblQmlPropNode"><p><span class="name">selectionMode</span> : <span class="type">bool</span></p></td></tr></table><p>An inactive tab bar only displays the currently selected tab, and an active tab bar can be interacted with to select a tab.</p>
<!-- @@@selectionMode -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top" id="style-prop"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td></tr></table><p>Component instantiated immediately and placed below everything else.</p>
<!-- @@@style -->
<br/>
