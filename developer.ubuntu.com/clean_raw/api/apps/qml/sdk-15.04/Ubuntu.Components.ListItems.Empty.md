---
Title: Ubuntu.Components.ListItems.Empty
---

# Ubuntu.Components.ListItems.Empty

<span class="subtitle"></span>
<!-- $$$Empty-brief -->
<p>A list item with no contents. More...</p>
<!-- @@@Empty -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Base.md">Base</a>, <a href="Ubuntu.Components.ListItems.Expandable.md">Expandable</a>, <a href="Ubuntu.Components.ListItems.SingleControl.md">SingleControl</a>, <a href="Ubuntu.Components.ListItems.Standard.md">Standard</a>, and <a href="Ubuntu.Components.ListItems.ValueSelector.md">ValueSelector</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#action-prop">action</a></b></b> : Action</li>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#backgroundIndicator-prop">backgroundIndicator</a></b></b> : list&lt;Item&gt;</li>
<li class="fn"><b><b><a href="#confirmRemoval-prop">confirmRemoval</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#divider-prop">divider</a></b></b> : ThinDivider</li>
<li class="fn"><b><b><a href="#highlightWhenPressed-prop">highlightWhenPressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#hovered-prop">hovered</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#iconName-prop">iconName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#iconSource-prop">iconSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#removable-prop">removable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selected-prop">selected</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#showDivider-prop">showDivider</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#swipingState-prop">swipingState</a></b></b> : string</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#waitingConfirmationForRemoval-prop">waitingConfirmationForRemoval</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#clicked-signal">clicked</a></b></b>()</li>
<li class="fn"><b><b><a href="#itemRemoved-signal">itemRemoved</a></b></b>()</li>
<li class="fn"><b><b><a href="#pressAndHold-signal">pressAndHold</a></b></b>()</li>
<li class="fn"><b><b><a href="#triggered-signal">triggered</a></b></b>(var <i>value</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#cancelItemRemoval-method">cancelItemRemoval</a></b></b>()</li>
<li class="fn"><b><b><a href="#trigger-method">trigger</a></b></b>(<i>value</i>)</li>
</ul>
<!-- $$$Empty-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>Note: </b><b>The component is deprecated. Use <a href="Ubuntu.Components.ListItem.md">ListItem</a> component instead.</b> The Empty class can be used for generic list items containing other components such as buttons. It is selectable and can take mouse clicks. It will attempt to detect if a thin dividing line at the bottom of the item is suitable, but this behaviour can be overridden (using <a href="#showDivider-prop">showDivider</a>). For specific types of list items, see its subclasses.</p><p>The item will still remain in memory after being removed from the list so it is up to the application to destroy it. This can be handled by the signal <a href="#itemRemoved-signal">itemRemoved</a> that is fired after all animation is done.</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.2
import Ubuntu.Components.ListItems 1.0 as ListItem
<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type">Model</span> {
<span class="name">id</span>: <span class="name">contactModel</span>
<span class="type"><a href="../sdk-14.10/QtQml.ListElement.md">ListElement</a></span> {
<span class="name">name</span>: <span class="string">&quot;Bill Smith&quot;</span>
<span class="name">number</span>: <span class="string">&quot;555 3264&quot;</span>
}
<span class="type"><a href="../sdk-14.10/QtQml.ListElement.md">ListElement</a></span> {
<span class="name">name</span>: <span class="string">&quot;John Brown&quot;</span>
<span class="name">number</span>: <span class="string">&quot;555 8426&quot;</span>
}
}
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">model</span>: <span class="name">contactModel</span>
<span class="name">delegate</span>: <span class="name">ListItem</span>.Empty {
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">6</span>)
<span class="name">removable</span>: <span class="number">true</span>
<span class="name">onItemRemoved</span>: <span class="name">contactModel</span>.<span class="name">remove</span>(<span class="name">index</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="name">name</span> <span class="operator">+</span> <span class="string">&quot; &quot;</span> <span class="operator">+</span> <span class="name">number</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
}
}
}
}</pre>
<p>See the documentation of the derived classes of Empty for more examples.</p>
<!-- @@@Empty -->
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
<!-- $$$backgroundIndicator -->
<table class="qmlname"><tr valign="top" id="backgroundIndicator-prop"><td class="tblQmlPropNode"><p><span class="name">backgroundIndicator</span> : <span class="type">list</span>&lt;<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span>&gt;</p></td></tr></table><p>Defines the item background item to be showed during the item swiping</p>
<!-- @@@backgroundIndicator -->
<br/>
<!-- $$$confirmRemoval -->
<table class="qmlname"><tr valign="top" id="confirmRemoval-prop"><td class="tblQmlPropNode"><p><span class="name">confirmRemoval</span> : <span class="type">bool</span></p></td></tr></table><p>Defines if the item needs confirmation before removing by swiping.</p>
<!-- @@@confirmRemoval -->
<br/>
<!-- $$$divider -->
<table class="qmlname"><tr valign="top" id="divider-prop"><td class="tblQmlPropNode"><p><span class="name">divider</span> : <span class="type"><a href="Ubuntu.Components.ListItems.ThinDivider.md">ThinDivider</a></span></p></td></tr></table><p>Exposes our the bottom line divider.</p>
<!-- @@@divider -->
<br/>
<!-- $$$highlightWhenPressed -->
<table class="qmlname"><tr valign="top" id="highlightWhenPressed-prop"><td class="tblQmlPropNode"><p><span class="name">highlightWhenPressed</span> : <span class="type">bool</span></p></td></tr></table><p>Highlight the list item when it is pressed. This is used to disable the highlighting of the full list item when custom highlighting needs to be implemented (for example in <a href="Ubuntu.Components.ListItem.md">ListItem</a>.Standard which can have a split).</p>
<!-- @@@highlightWhenPressed -->
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
<!-- $$$iconSource -->
<table class="qmlname"><tr valign="top" id="iconSource-prop"><td class="tblQmlPropNode"><p><span class="name">iconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>The image associated with the actionItem. Default value: action.iconSource.</p>
<p>This is the URL of any image file If both iconSource and <a href="Ubuntu.Components.ActionItem.md#iconName-prop">iconName</a> are defined, <a href="Ubuntu.Components.ActionItem.md#iconName-prop">iconName</a> will be ignored.</p>
<!-- @@@iconSource -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-prop"><td class="tblQmlPropNode"><p><span class="name">pressed</span> : <span class="type">bool</span></p></td></tr></table><p>True if the user presses a mouse button in the button's mouse area.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$removable -->
<table class="qmlname"><tr valign="top" id="removable-prop"><td class="tblQmlPropNode"><p><span class="name">removable</span> : <span class="type">bool</span></p></td></tr></table><p>Defines if this item can be removed or not.</p>
<!-- @@@removable -->
<br/>
<!-- $$$selected -->
<table class="qmlname"><tr valign="top" id="selected-prop"><td class="tblQmlPropNode"><p><span class="name">selected</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the list item is selected.</p>
<!-- @@@selected -->
<br/>
<!-- $$$showDivider -->
<table class="qmlname"><tr valign="top" id="showDivider-prop"><td class="tblQmlPropNode"><p><span class="name">showDivider</span> : <span class="type">bool</span></p></td></tr></table><p>Set to show or hide the thin bottom divider line (drawn by the <a href="Ubuntu.Components.ListItems.ThinDivider.md">ThinDivider</a> component). This line is shown by default except in cases where this item is the delegate of a <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>.</p>
<!-- @@@showDivider -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top" id="style-prop"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td></tr></table><p>Component instantiated immediately and placed below everything else.</p>
<!-- @@@style -->
<br/>
<!-- $$$swipingState -->
<table class="qmlname"><tr valign="top" id="swipingState-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">swipingState</span> : <span class="type">string</span></p></td></tr></table><p>The current swiping state (&quot;SwipingRight&quot; or &quot;&quot;)</p>
<!-- @@@swipingState -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The title of the actionItem. Default value: action.text</p>
<!-- @@@text -->
<br/>
<!-- $$$waitingConfirmationForRemoval -->
<table class="qmlname"><tr valign="top" id="waitingConfirmationForRemoval-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">waitingConfirmationForRemoval</span> : <span class="type">bool</span></p></td></tr></table><p>Defines if the item is waiting for the user interaction during the swipe to delete</p>
<!-- @@@waitingConfirmationForRemoval -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$clicked -->
<table class="qmlname"><tr valign="top" id="clicked-signal"><td class="tblQmlFuncNode"><p><span class="name">clicked</span>()</p></td></tr></table><p>This handler is called when there is a mouse click on the button and the button is not disabled. If <b>action</b> is defined, the action will be triggered.</p>
<!-- @@@clicked -->
<br/>
<!-- $$$itemRemoved -->
<table class="qmlname"><tr valign="top" id="itemRemoved-signal"><td class="tblQmlFuncNode"><p><span class="name">itemRemoved</span>()</p></td></tr></table><p>This handler is called when the item is removed from the list</p>
<!-- @@@itemRemoved -->
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
<!-- $$$cancelItemRemoval -->
<table class="qmlname"><tr valign="top" id="cancelItemRemoval-method"><td class="tblQmlFuncNode"><p><span class="name">cancelItemRemoval</span>()</p></td></tr></table><p>Cancel item romoval</p>
<!-- @@@cancelItemRemoval -->
<br/>
<!-- $$$trigger -->
<table class="qmlname"><tr valign="top" id="trigger-method"><td class="tblQmlFuncNode"><p><span class="name">trigger</span>(<i> value</i>)</p></td></tr></table><p>Trigger this action item if it is enabled.</p>
<!-- @@@trigger -->
<br/>
