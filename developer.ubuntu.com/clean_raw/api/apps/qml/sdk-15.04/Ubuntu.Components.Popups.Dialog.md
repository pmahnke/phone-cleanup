---
Title: Ubuntu.Components.Popups.Dialog
---

# Ubuntu.Components.Popups.Dialog

<span class="subtitle"></span>
<!-- $$$Dialog-brief -->
<p>The Dialog caters for cases in which the application requires the user to determine between optional actions. The Dialog will interrupt the user flow and lock the view for further interaction before the user has selected a desired action. It can only be closed by selecting an optional action confirming or cancelling the operation. More...</p>
<!-- @@@Dialog -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Popups 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Popups.PopupBase.md">PopupBase</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#caller-prop">caller</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#callerMargin-prop">callerMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#contents-prop">contents</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#edgeMargins-prop">edgeMargins</a></b></b> : real</li>
<li class="fn"><b><b><a href="#modal-prop">modal</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#pointerTarget-prop">pointerTarget</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : string</li>
</ul>
<!-- $$$Dialog-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="http://design.ubuntu.com/apps/building-blocks/dialog">See also the Design Guidelines on Dialogs</a>.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.Popups 1.0
<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">dialog</span>
<span class="type"><a href="index.html">Dialog</a></span> {
<span class="name">id</span>: <span class="name">dialogue</span>
<span class="name">title</span>: <span class="string">&quot;Save file&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Are you sure that you want to save this file?&quot;</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;cancel&quot;</span>
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialogue</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;overwrite previous version&quot;</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialogue</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;save a copy&quot;</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialogue</span>)
}
}
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">id</span>: <span class="name">saveButton</span>
<span class="name">text</span>: <span class="string">&quot;save&quot;</span>
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">open</span>(<span class="name">dialog</span>)
}
}</pre>
<!-- @@@Dialog -->
<h2>Property Documentation</h2>
<!-- $$$caller -->
<table class="qmlname"><tr valign="top" id="caller-prop"><td class="tblQmlPropNode"><p><span class="name">caller</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The Item such as a <a href="Ubuntu.Components.Button.md">Button</a> that the user interacted with to open the Dialog. This property will be used for the automatic positioning of the Dialog next to the caller, if possible.</p>
<!-- @@@caller -->
<br/>
<!-- $$$callerMargin -->
<table class="qmlname"><tr valign="top" id="callerMargin-prop"><td class="tblQmlPropNode"><p><span class="name">callerMargin</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the margin from the dialog's caller. The property is themed.</p>
<!-- @@@callerMargin -->
<br/>
<!-- $$$contents -->
<table class="qmlname"><tr valign="top" id="contents-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">default</span><span class="name">contents</span> : <span class="type">list</span>&lt;<span class="type"><a href="https://developer.ubuntu.comapps/qml/sdk-15.04/Ubuntu.Components.Object/">Object</a></span>&gt;</p></td></tr></table><p>Content will be put inside a column in the foreround of the Dialog.</p>
<!-- @@@contents -->
<br/>
<!-- $$$edgeMargins -->
<table class="qmlname"><tr valign="top" id="edgeMargins-prop"><td class="tblQmlPropNode"><p><span class="name">edgeMargins</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the margins from the dialog's dismissArea. The property is themed.</p>
<!-- @@@edgeMargins -->
<br/>
<!-- $$$modal -->
<table class="qmlname"><tr valign="top" id="modal-prop"><td class="tblQmlPropNode"><p><span class="name">modal</span> : <span class="type">bool</span></p></td></tr></table><p>The property controls whether the dialog is modal or not. Modal dialogs block event propagation to items under dismissArea, when non-modal ones let these events passed to these items. In addition, non-modal dialogs do not dim the dismissArea.</p>
<p>The default value is true.</p>
<!-- @@@modal -->
<br/>
<!-- $$$pointerTarget -->
<table class="qmlname"><tr valign="top" id="pointerTarget-prop"><td class="tblQmlPropNode"><p><span class="name">pointerTarget</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The property holds the item to which the pointer should be anchored to. This can be same as the caller or any child of the caller. By default the property is set to caller.</p>
<!-- @@@pointerTarget -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The question to the user.</p>
<!-- @@@text -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top" id="title-prop"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type">string</span></p></td></tr></table><p>The title of the question to ask the user.</p>
<!-- @@@title -->
<br/>
