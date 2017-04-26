---
Title: Ubuntu.Components.ToolbarButton
---

# Ubuntu.Components.ToolbarButton

<span class="subtitle"></span>
<!-- $$$ToolbarButton-brief -->
<p>An ActionItem that represents a button in the toolbar. ToolbarButtons should be included in ToolbarItems to define the tools of a Page. The behavior and look of the toolbar button can be specified by setting an Action for the button, or by setting the other properties inherited by the ActionItem. More...</p>
<!-- @@@ToolbarButton -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ActionItem.md">ActionItem</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#action-prop">action</a></b></b> : Action</li>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#iconName-prop">iconName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#iconSource-prop">iconSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
</ul>
<h2>Signals</h2>
<ul>
<li class="fn"><b><b><a href="#triggered-signal">triggered</a></b></b>(var <i>value</i>)</li>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn"><b><b><a href="#trigger-method">trigger</a></b></b>(<i>value</i>)</li>
</ul>
<!-- $$$ToolbarButton-description -->
<h2>Detailed Description</h2>
<p>Example of different ways to define the toolbar button:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.1
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">id</span>: <span class="name">action1</span>
<span class="name">text</span>: <span class="string">&quot;action 1&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;one!&quot;</span>)
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;test page&quot;</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Hello, world&quot;</span>
}
<span class="name">tools</span>: <span class="name">ToolbarItems</span> {
<span class="comment">// reference to an action:</span>
<span class="type">ToolbarButton</span> {
<span class="name">action</span>: <span class="name">action1</span>
}
<span class="comment">// define the action:</span>
<span class="type">ToolbarButton</span> {
<span class="name">action</span>: <span class="name">Action</span> {
<span class="name">text</span>: <span class="string">&quot;Second action&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;add&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;two!&quot;</span>)
}
<span class="comment">// override the text of the action:</span>
<span class="name">text</span>: <span class="string">&quot;action 2&quot;</span>
}
<span class="comment">// no associated action:</span>
<span class="type">ToolbarButton</span> {
<span class="name">iconName</span>: <span class="string">&quot;cancel&quot;</span>
<span class="name">text</span>: <span class="string">&quot;button&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;three!&quot;</span>)
}
}
}
}</pre>
<p>See <a href="Ubuntu.Components.ToolbarItems.md">ToolbarItems</a> for more information on how to use ToolbarButton.</p>
<!-- @@@ToolbarButton -->
<h2>Property Documentation</h2>
<!-- $$$action -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">action</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>The <a href="Ubuntu.Components.Action.md">Action</a> associated with this <a href="Ubuntu.Components.ActionItem.md">ActionItem</a>. If action is set, the values of the Action properties are copied to the values of the <a href="Ubuntu.Components.ActionItem.md">ActionItem</a> properties.</p>
<!-- @@@action -->
<br/>
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
<!-- $$$iconName -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">iconName</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p>The icon associated with the <a href="Ubuntu.Components.ActionItem.md">actionItem</a> in the suru icon theme. Default value: action.iconName.</p>
<p><b>Note: </b>The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:</p><ul>
<li>Ubuntu Touch: /usr/share/icons/suru</li>
<li>Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark</li>
</ul>
<p>These 2 separate icon themes will be merged soon.</p>
<p>If both <a href="Ubuntu.Components.ActionItem.md#iconSource-prop">iconSource</a> and iconName are defined, iconName will be ignored.</p>
<!-- @@@iconName -->
<br/>
<!-- $$$iconSource -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">iconSource</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-url.html">url</a></span></p></td></tr></table><p>The image associated with the <a href="Ubuntu.Components.ActionItem.md">actionItem</a>. Default value: action.iconSource.</p>
<p>This is the URL of any image file If both iconSource and <a href="Ubuntu.Components.ActionItem.md#iconName-prop">iconName</a> are defined, <a href="Ubuntu.Components.ActionItem.md#iconName-prop">iconName</a> will be ignored.</p>
<!-- @@@iconSource -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>Component instantiated immediately and placed below everything else.</p>
<!-- @@@style -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p>The title of the <a href="Ubuntu.Components.ActionItem.md">actionItem</a>. Default value: action.text</p>
<!-- @@@text -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$triggered -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">triggered</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-var.html">var</a></span><i> value</i>)</p></td></tr></table><p>Called when the <a href="Ubuntu.Components.ActionItem.md">actionItem</a> is triggered.</p>
<!-- @@@triggered -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$trigger -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">trigger</span>(<i> value</i>)</p></td></tr></table><p>Trigger this action item if it is enabled.</p>
<!-- @@@trigger -->
<br/>
