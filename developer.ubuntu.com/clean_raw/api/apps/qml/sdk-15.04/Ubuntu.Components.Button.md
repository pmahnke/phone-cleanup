---
Title: Ubuntu.Components.Button
---

# Ubuntu.Components.Button

<span class="subtitle"></span>
<!-- $$$Button-brief -->
<p>Standard Ubuntu button. More...</p>
<!-- @@@Button -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.2</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ComboButton.md">ComboButton</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#action-prop">action</a></b></b> : Action</li>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#font-prop">font</a></b></b> : font</li>
<li class="fn"><b><b><a href="#gradient-prop">gradient</a></b></b> : Gradient</li>
<li class="fn"><b><b><a href="#hovered-prop">hovered</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#iconName-prop">iconName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#iconPosition-prop">iconPosition</a></b></b> : string</li>
<li class="fn"><b><b><a href="#iconSource-prop">iconSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#strokeColor-prop">strokeColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#clicked-signal">clicked</a></b></b>()</li>
<li class="fn"><b><b><a href="#pressAndHold-signal">pressAndHold</a></b></b>()</li>
<li class="fn"><b><b><a href="#triggered-signal">triggered</a></b></b>(var <i>value</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#trigger-method">trigger</a></b></b>(<i>value</i>)</li>
</ul>
<!-- $$$Button-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="http://design.ubuntu.com/apps/building-blocks/buttons">See also the Design Guidelines on Buttons</a>.</p>
<p>Examples:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="index.html">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Send&quot;</span>
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked text-only Button&quot;</span>)
}
<span class="type"><a href="index.html">Button</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">gradient</span>: <span class="name">UbuntuColors</span>.<span class="name">greyGradient</span>
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked icon-only Button&quot;</span>)
}
<span class="type"><a href="index.html">Button</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Icon on left&quot;</span>
<span class="name">iconPosition</span>: <span class="string">&quot;left&quot;</span>
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked text and icon Button&quot;</span>)
}
}</pre>
<p>An <a href="Ubuntu.Components.Action.md">Action</a> can be used to specify <b>clicked</b>, iconSource and text. Example:</p>
<pre class="qml"> <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">id</span>: <span class="name">action1</span>
<span class="name">text</span>: <span class="string">&quot;Click me&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;action!&quot;</span>)
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
}
<span class="type"><a href="index.html">Button</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">action</span>: <span class="name">action1</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">warmGrey</span>
}
}</pre>
<!-- @@@Button -->
<h2>Property Documentation</h2>
<!-- $$$action -->
<table class="qmlname"><tr valign="top" id="action-prop"><td class="tblQmlPropNode"><p><span class="name">action</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>The <a href="Ubuntu.Components.Action.md">Action</a> associated with this <a href="Ubuntu.Components.ActionItem.md">ActionItem</a>. If action is set, the values of the Action properties are copied to the values of the <a href="Ubuntu.Components.ActionItem.md">ActionItem</a> properties.</p>
<!-- @@@action -->
<br/>
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
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>The background color of the button.</p>
<p><b>See also </b><a href="#gradient-prop">gradient</a>.</p>
<!-- @@@color -->
<br/>
<!-- $$$font -->
<table class="qmlname"><tr valign="top" id="font-prop"><td class="tblQmlPropNode"><p><span class="name">font</span> : <span class="type"><a href="#font-prop">font</a></span></p></td></tr></table><p>The font used for the button's text.</p>
<!-- @@@font -->
<br/>
<!-- $$$gradient -->
<table class="qmlname"><tr valign="top" id="gradient-prop"><td class="tblQmlPropNode"><p><span class="name">gradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td></tr></table><p>The gradient used to fill the background of the button.</p>
<p>Standard Ubuntu gradients are defined in <a href="Ubuntu.Components.UbuntuColors.md">UbuntuColors</a>.</p>
<p>If both a gradient and a color are specified, the gradient will be used.</p>
<p><b>See also </b><a href="#color-prop">color</a>.</p>
<!-- @@@gradient -->
<br/>
<!-- $$$hovered -->
<table class="qmlname"><tr valign="top" id="hovered-prop"><td class="tblQmlPropNode"><p><span class="name">hovered</span> : <span class="type">bool</span></p></td></tr></table><p>True if the mouse cursor hovers over the button's mouse area.</p>
<!-- @@@hovered -->
<br/>
<!-- $$$iconName -->
<table class="qmlname"><tr valign="top" id="iconName-prop"><td class="tblQmlPropNode"><p><span class="name">iconName</span> : <span class="type">string</span></p></td></tr></table><p>The icon associated with the actionItem in the suru icon theme. Default value: action.iconName.</p>
<p><b>Note: </b>The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:</p><ul>
<li>Ubuntu Touch: /usr/share/icons/suru</li>
<li>Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark</li>
</ul>
<p>These 2 separate icon themes will be merged soon.</p>
<p>If both <a href="Ubuntu.Components.ActionItem.md#iconSource-prop">iconSource</a> and iconName are defined, iconName will be ignored.</p>
<!-- @@@iconName -->
<br/>
<!-- $$$iconPosition -->
<table class="qmlname"><tr valign="top" id="iconPosition-prop"><td class="tblQmlPropNode"><p><span class="name">iconPosition</span> : <span class="type">string</span></p></td></tr></table><p>The position of the icon relative to the text. Options are &quot;left&quot; and &quot;right&quot;. The default value is &quot;left&quot;.</p>
<p>If only text or only an icon is defined, this property is ignored and the text or icon is centered horizontally and vertically in the button.</p>
<p>Currently this is a string value. We are waiting for support for enums: https://bugreports.qt-project.org/browse/QTBUG-14861</p>
<!-- @@@iconPosition -->
<br/>
<!-- $$$iconSource -->
<table class="qmlname"><tr valign="top" id="iconSource-prop"><td class="tblQmlPropNode"><p><span class="name">iconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>The image associated with the actionItem. Default value: action.iconSource.</p>
<p>This is the URL of any image file If both iconSource and <a href="Ubuntu.Components.ActionItem.md#iconName-prop">iconName</a> are defined, <a href="Ubuntu.Components.ActionItem.md#iconName-prop">iconName</a> will be ignored.</p>
<!-- @@@iconSource -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-prop"><td class="tblQmlPropNode"><p><span class="name">pressed</span> : <span class="type">bool</span></p></td></tr></table><p>True if the user presses a mouse button in the button's mouse area.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$strokeColor -->
<table class="qmlname"><tr valign="top" id="strokeColor-prop"><td class="tblQmlPropNode"><p><span class="name">strokeColor</span> : <span class="type">color</span></p></td></tr></table><p>If set to a color, the button has a stroke border instead of a filled shape.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@strokeColor -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top" id="style-prop"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td></tr></table><p>Component instantiated immediately and placed below everything else.</p>
<!-- @@@style -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The title of the actionItem. Default value: action.text</p>
<!-- @@@text -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$clicked -->
<table class="qmlname"><tr valign="top" id="clicked-signal"><td class="tblQmlFuncNode"><p><span class="name">clicked</span>()</p></td></tr></table><p>This handler is called when there is a mouse click on the button and the button is not disabled. If <b>action</b> is defined, the action will be triggered.</p>
<!-- @@@clicked -->
<br/>
<!-- $$$pressAndHold -->
<table class="qmlname"><tr valign="top" id="pressAndHold-signal"><td class="tblQmlFuncNode"><p><span class="name">pressAndHold</span>()</p></td></tr></table><p>This handler is called when there is a long press.</p>
<!-- @@@pressAndHold -->
<br/>
<!-- $$$triggered -->
<table class="qmlname"><tr valign="top" id="triggered-signal"><td class="tblQmlFuncNode"><p><span class="name">triggered</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span><i> value</i>)</p></td></tr></table><p>Called when the actionItem is triggered.</p>
<!-- @@@triggered -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$trigger -->
<table class="qmlname"><tr valign="top" id="trigger-method"><td class="tblQmlFuncNode"><p><span class="name">trigger</span>(<i> value</i>)</p></td></tr></table><p>Trigger this action item if it is enabled.</p>
<!-- @@@trigger -->
<br/>
