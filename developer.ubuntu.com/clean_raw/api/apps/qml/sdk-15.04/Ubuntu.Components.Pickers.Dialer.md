---
Title: Ubuntu.Components.Pickers.Dialer
---

# Ubuntu.Components.Pickers.Dialer

<span class="subtitle"></span>
<!-- $$$Dialer-brief -->
<p>Dialer is a phone dialer style picker component. More...</p>
<!-- @@@Dialer -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Pickers 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#centerContent-prop">centerContent</a></b></b> : list&lt;var&gt;</li>
<li class="fn"><b><b><a href="#centerItem-prop">centerItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#handSpace-prop">handSpace</a></b></b> : real</li>
<li class="fn"><b><b><a href="#hands-prop">hands</a></b></b> : list&lt;DialerHands&gt;</li>
<li class="fn"><b><b><a href="https://developer.ubuntu.com../qml-ubuntu-components-pickers-dialer.html#maximumValue:-prop">maximumValue:</a></b></b> : real</li>
<li class="fn"><b><b><a href="#minimumValue-prop">minimumValue</a></b></b> : real</li>
<li class="fn"><b><b><a href="https://developer.ubuntu.com../qml-ubuntu-components-pickers-dialer.html#minimumValue:-prop">minimumValue:</a></b></b> : real</li>
<li class="fn"><b><b><a href="#size-prop">size</a></b></b> : real</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#handUpdated-signal">handUpdated</a></b></b>(var <i>hand</i>)</li>
</ul>
<!-- $$$Dialer-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Dialer component is dedicated for value selection where the value is compound of several sections, i.e&#x2e; hour, minute and second, or integral and decimal values. Each section is defined by a <a href="Ubuntu.Components.Pickers.DialerHand.md">DialerHand</a>, which shares the same range as the dialer is having. Dialer hand visuals are placed on the same dialer disk, however this can be altered by setting different values to <a href="Ubuntu.Components.Pickers.DialerHand.md">DialerHand</a> propertries.</p>
<p>The following example shows how to create a dialer component to select a value between 0 and 50.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components.Pickers 1.0
<span class="type"><a href="index.html">Dialer</a></span> {
<span class="name">size</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">minimumValue</span>: <span class="number">0</span>
<span class="name">maximumValue</span>: <span class="number">50</span>
<span class="type"><a href="Ubuntu.Components.Pickers.DialerHand.md">DialerHand</a></span> {
<span class="name">id</span>: <span class="name">mainHand</span>
<span class="name">onValueChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">value</span>)
}
}</pre>
<p><b>See also </b><a href="Ubuntu.Components.Pickers.DialerHand.md">DialerHand</a>.</p>
<!-- @@@Dialer -->
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
<!-- $$$centerContent -->
<table class="qmlname"><tr valign="top" id="centerContent-prop"><td class="tblQmlPropNode"><p><span class="name">centerContent</span> : <span class="type">list</span>&lt;<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span>&gt;</p></td></tr></table><p>The property holds the list of items to be placed inside of the center disk. Items placed inside the center disk can either be listed in this property or reparented to <a href="#centerItem-prop">centerItem</a> property.</p>
<pre class="qml"><span class="type"><a href="index.html">Dialer</a></span> {
<span class="type"><a href="Ubuntu.Components.Pickers.DialerHand.md">DialerHand</a></span> {
<span class="name">id</span>: <span class="name">hand</span>
<span class="name">centerContent</span>: [
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="comment">// [...]</span>
}
<span class="comment">// [...]</span>
]
}
<span class="comment">// [...]</span>
}</pre>
<!-- @@@centerContent -->
<br/>
<!-- $$$centerItem -->
<table class="qmlname"><tr valign="top" id="centerItem-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">centerItem</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The property holds the component from the center of the Dialer. Items wanted to be placed into the center of the Dialer must be reparented to this component, or listed in the <a href="#centerContent-prop">centerContent</a> property.</p>
<p>Beside that, the property helps anchoring the center disk content to the item.</p>
<pre class="qml"><span class="type"><a href="index.html">Dialer</a></span> {
<span class="type"><a href="Ubuntu.Components.Pickers.DialerHand.md">DialerHand</a></span> {
<span class="name">id</span>: <span class="name">hand</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">parent</span>: <span class="name">hand</span>.<span class="name">centerItem</span>
<span class="comment">// [...]</span>
}
}
<span class="comment">// [...]</span>
}</pre>
<!-- @@@centerItem -->
<br/>
<!-- $$$handSpace -->
<table class="qmlname"><tr valign="top" id="handSpace-prop"><td class="tblQmlPropNode"><p><span class="name">handSpace</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the height reserved for the dialer hands, being the distance between the outer and the inner dialer disks. This value cannot be higher than the half of the dialer <a href="#size-prop">size</a>.</p>
<!-- @@@handSpace -->
<br/>
<!-- $$$hands -->
<table class="qmlname"><tr valign="top" id="hands-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">hands</span> : <span class="type">list</span>&lt;<span class="type">DialerHands</span>&gt;</p></td></tr></table><p>The property holds the list of DialerHands added to Dialer. This may be the same as the children, however will contain only <a href="Ubuntu.Components.Pickers.DialerHand.md">DialerHand</a> objects.</p>
<!-- @@@hands -->
<br/>
<!-- $$$maximumValue: -->
<table class="qmlname"><tr valign="top" id="maximumValue:-prop"><td class="tblQmlPropNode"><p><span class="name">maximumValue:</span> : <span class="type">real</span></p></td></tr></table><p>These properties define the value range the dialer hand values can take. The default values are 0 and 360.</p>
<!-- @@@maximumValue: -->
<br/>
<!-- $$$minimumValue -->
<table class="qmlname"><tr valign="top" id="minimumValue-prop"><td class="tblQmlPropNode"><p><span class="name">minimumValue</span> : <span class="type">real</span></p></td></tr></table><p>These properties define the value range the dialer hand values can take. The default values are 0 and 360.</p>
<!-- @@@minimumValue -->
<br/>
<!-- $$$minimumValue: -->
<table class="qmlname"><tr valign="top" id="minimumValue:-prop"><td class="tblQmlPropNode"><p><span class="name">minimumValue:</span> : <span class="type">real</span></p></td></tr></table><p>These properties define the value range the dialer hand values can take. The default values are 0 and 360.</p>
<!-- @@@minimumValue: -->
<br/>
<!-- $$$size -->
<table class="qmlname"><tr valign="top" id="size-prop"><td class="tblQmlPropNode"><p><span class="name">size</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the size of the dialer. The component should be sized using this property instead of using width and/or height properties. Sizing with this property it is made sure that the component will scale evenly.</p>
<!-- @@@size -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top" id="style-prop"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td></tr></table><p>Component instantiated immediately and placed below everything else.</p>
<!-- @@@style -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$handUpdated -->
<table class="qmlname"><tr valign="top" id="handUpdated-signal"><td class="tblQmlFuncNode"><p><span class="name">handUpdated</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span><i> hand</i>)</p></td></tr></table><p>The signal is emited when the hand value is updated.</p>
<!-- @@@handUpdated -->
<br/>
