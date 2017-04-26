---
Title: Ubuntu.Components.Pickers.DialerHand
---

# Ubuntu.Components.Pickers.DialerHand

<span class="subtitle"></span>
<!-- $$$DialerHand-brief -->
<p>DialerHand represents a value selector on a Dialer. More...</p>
<!-- @@@DialerHand -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Pickers 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#dialer-prop">dialer</a></b></b> : Dialer</li>
<li class="fn"><b><b><a href="#hand-prop">hand</a></b></b> : DialerHandGroup</li>
<li class="fn"><b><b><a href="#hand.draggable-prop">hand.draggable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#hand.height-prop">hand.height</a></b></b> : real</li>
<li class="fn"><b><b><a href="#hand.toCenterItem-prop">hand.toCenterItem</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#hand.visible-prop">hand.visible</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#hand.width-prop">hand.width</a></b></b> : real</li>
<li class="fn"><b><b><a href="#index-prop">index</a></b></b> : int</li>
<li class="fn"><b><b><a href="#overlay-prop">overlay</a></b></b> : list&lt;QtObject&gt;</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : real</li>
</ul>
<!-- $$$DialerHand-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">DialerHand</a> components have meaning only if those are placed inside Dialer components. The dialer hand presents a value selection from the given dialer's minimum and maximum values.</p>
<p>By default all hands are placed on the dialer's hand space, on the outer dialer disk. By default all hands have teh same size, 0.5GU width and height same as the handSpace specified in <a href="Ubuntu.Components.Pickers.Dialer.md">Dialer</a>, however themes can specify preset values for each hand.</p>
<p>Hands can also be placed onto the inner disk by setting <i>hand.toCenterItem</i> property to true.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Pickers.Dialer.md">Dialer</a></span> {
<span class="type"><a href="index.html">DialerHand</a></span> {
<span class="comment">// this dialer hand will take the space as defined by the theme.</span>
}
<span class="type"><a href="index.html">DialerHand</a></span> {
<span class="name">hand</span>.height: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">3</span>)
<span class="comment">// this hand will have its width as defined by the theme</span>
<span class="comment">// but height as 3 GU</span>
}
}</pre>
<p>Items declared as children will be placed over the hands. These items will not be rotated togehther with the hand, these will always be shown horizontally. The hand can be hidden by setting false to <i>hand.visible</i> property, but that does not hide the overlay content.</p>
<p>The following example demonstrates how to create a hidden dialer hand having an overlay component on the hand.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Pickers.Dialer.md">Dialer</a></span> {
<span class="type"><a href="index.html">DialerHand</a></span> {
<span class="name">id</span>: <span class="name">selector</span>
<span class="name">hand</span>.visible: <span class="number">false</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">width</span>: <span class="name">height</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">3</span>)
<span class="name">radius</span>: <span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">color</span>: <span class="name">Theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">background</span>
<span class="name">antialiasing</span>: <span class="number">true</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="name">Math</span>.<span class="name">round</span>(<span class="name">selector</span>.<span class="name">value</span>)
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
}
}
}
}</pre>
<!-- @@@DialerHand -->
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
<!-- $$$dialer -->
<table class="qmlname"><tr valign="top" id="dialer-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">dialer</span> : <span class="type"><a href="Ubuntu.Components.Pickers.Dialer.md">Dialer</a></span></p></td></tr></table><p>The property holds the dialer instance the hand is assigned to. This is a helper property to enable access to the dialer component hosting the hand.</p>
<!-- @@@dialer -->
<br/>
<!-- $$$hand -->
<table class="qmlname"><tr valign="top" id="hand-prop"><td class="tblQmlPropNode"><p><span class="name">hand</span> : <span class="type"><a href="https://developer.ubuntu.comapps/qml/sdk-15.04/Ubuntu.Components.DialerHandGroup/">DialerHandGroup</a></span></p></td></tr></table><p>The <b>hand.width</b> and <b>hand.height</b> properties define the size of the hand. The height of the hand must be in the [0..dialer.handSpace] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.</p>
<p><b>draggable</b> property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.</p>
<p><b>toCenterItem</b> property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.</p>
<p><b>visible</b> property specifies whether to show the hand marker or not. The default value is true.</p>
<!-- @@@hand -->
<br/>
<!-- $$$hand.draggable -->
<table class="qmlname"><tr valign="top" id="hand.draggable-prop"><td class="tblQmlPropNode"><p><span class="name">hand.draggable</span> : <span class="type">bool</span></p></td></tr></table><p>The <b>hand.width</b> and <b>hand.height</b> properties define the size of the hand. The height of the hand must be in the [0..dialer.handSpace] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.</p>
<p><b>draggable</b> property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.</p>
<p><b>toCenterItem</b> property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.</p>
<p><b>visible</b> property specifies whether to show the hand marker or not. The default value is true.</p>
<!-- @@@hand.draggable -->
<br/>
<!-- $$$hand.height -->
<table class="qmlname"><tr valign="top" id="hand.height-prop"><td class="tblQmlPropNode"><p><span class="name">hand.height</span> : <span class="type">real</span></p></td></tr></table><p>The <b>hand.width</b> and <b>hand.height</b> properties define the size of the hand. The height of the hand must be in the [0..dialer.handSpace] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.</p>
<p><b>draggable</b> property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.</p>
<p><b>toCenterItem</b> property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.</p>
<p><b>visible</b> property specifies whether to show the hand marker or not. The default value is true.</p>
<!-- @@@hand.height -->
<br/>
<!-- $$$hand.toCenterItem -->
<table class="qmlname"><tr valign="top" id="hand.toCenterItem-prop"><td class="tblQmlPropNode"><p><span class="name">hand.toCenterItem</span> : <span class="type">bool</span></p></td></tr></table><p>The <b>hand.width</b> and <b>hand.height</b> properties define the size of the hand. The height of the hand must be in the [0..dialer.handSpace] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.</p>
<p><b>draggable</b> property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.</p>
<p><b>toCenterItem</b> property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.</p>
<p><b>visible</b> property specifies whether to show the hand marker or not. The default value is true.</p>
<!-- @@@hand.toCenterItem -->
<br/>
<!-- $$$hand.visible -->
<table class="qmlname"><tr valign="top" id="hand.visible-prop"><td class="tblQmlPropNode"><p><span class="name">hand.visible</span> : <span class="type">bool</span></p></td></tr></table><p>The <b>hand.width</b> and <b>hand.height</b> properties define the size of the hand. The height of the hand must be in the [0..dialer.handSpace] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.</p>
<p><b>draggable</b> property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.</p>
<p><b>toCenterItem</b> property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.</p>
<p><b>visible</b> property specifies whether to show the hand marker or not. The default value is true.</p>
<!-- @@@hand.visible -->
<br/>
<!-- $$$hand.width -->
<table class="qmlname"><tr valign="top" id="hand.width-prop"><td class="tblQmlPropNode"><p><span class="name">hand.width</span> : <span class="type">real</span></p></td></tr></table><p>The <b>hand.width</b> and <b>hand.height</b> properties define the size of the hand. The height of the hand must be in the [0..dialer.handSpace] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.</p>
<p><b>draggable</b> property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.</p>
<p><b>toCenterItem</b> property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.</p>
<p><b>visible</b> property specifies whether to show the hand marker or not. The default value is true.</p>
<!-- @@@hand.width -->
<br/>
<!-- $$$index -->
<table class="qmlname"><tr valign="top" id="index-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">index</span> : <span class="type">int</span></p></td></tr></table><p>The property holds the index of the hand. Note that this is not the child index of the dialer children, this represents the index of the <a href="index.html">DialerHand</a> component added to the <a href="#dialer-prop">dialer</a>.</p>
<!-- @@@index -->
<br/>
<!-- $$$overlay -->
<table class="qmlname"><tr valign="top" id="overlay-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">default</span><span class="name">overlay</span> : <span class="type">list</span>&lt;<span class="type"><a href="../sdk-14.10/QtQml.QtObject.md">QtObject</a></span>&gt;</p></td></tr></table><p>The property holds the items that can be added on top of the hand. Note that these items will not be rotated together with the hand pointer and pointer visibility does not affect the overlay items visibility.</p>
<!-- @@@overlay -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top" id="style-prop"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td></tr></table><p>Component instantiated immediately and placed below everything else.</p>
<!-- @@@style -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the selected value the dialer hand points to.</p>
<!-- @@@value -->
<br/>
