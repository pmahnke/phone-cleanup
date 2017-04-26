---
Title: QtQuick.Item
---

# QtQuick.Item

<span class="subtitle"></span>
<!-- $$$Item-brief -->
<p>A basic visual QML type More...</p>
<!-- @@@Item -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiates:</td><td class="memItemRight bottomAlign"> QQuickItem</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p>AnimatedSprite, BorderImage, Canvas, Column, Flickable, Flipable, Flow, FocusScope, Grid, Image, Loader, MouseArea, MultiPointTouchArea, ParticlePainter, PathView, PinchArea, Rectangle, Repeater, Row, ShaderEffect, ShaderEffectSource, SignalSpy, SpriteSequence, TestCase, Text, TextEdit, and TextInput.</p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocus-prop">activeFocus</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#activeFocusOnTab-prop">activeFocusOnTab</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#anchors-prop">anchors</a></b></b><ul>
<li class="fn"><b><b><a href="#anchors.top-prop">anchors.top</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.bottom-prop">anchors.bottom</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.left-prop">anchors.left</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.right-prop">anchors.right</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.horizontalCenter-prop">anchors.horizontalCenter</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.verticalCenter-prop">anchors.verticalCenter</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.baseline-prop">anchors.baseline</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.fill-prop">anchors.fill</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#anchors.centerIn-prop">anchors.centerIn</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#anchors.margins-prop">anchors.margins</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.topMargin-prop">anchors.topMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.bottomMargin-prop">anchors.bottomMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.leftMargin-prop">anchors.leftMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.rightMargin-prop">anchors.rightMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.horizontalCenterOffset-prop">anchors.horizontalCenterOffset</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.verticalCenterOffset-prop">anchors.verticalCenterOffset</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.baselineOffset-prop">anchors.baselineOffset</a></b></b> : real</li>
<li class="fn"><b><b><a href="#anchors.alignWhenCentered-prop">anchors.alignWhenCentered</a></b></b> : bool</li>
</ul>
</li>
<li class="fn"><b><b><a href="#antialiasing-prop">antialiasing</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#baselineOffset-prop">baselineOffset</a></b></b> : int</li>
<li class="fn"><b><b><a href="#children-prop">children</a></b></b> : list&lt;Item&gt;</li>
<li class="fn"><b><b><a href="#childrenRect-prop">childrenRect</a></b></b><ul>
<li class="fn"><b><b><a href="#childrenRect.x-prop">childrenRect.x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#childrenRect.y-prop">childrenRect.y</a></b></b> : real</li>
<li class="fn"><b><b><a href="#childrenRect.width-prop">childrenRect.width</a></b></b> : real</li>
<li class="fn"><b><b><a href="#childrenRect.height-prop">childrenRect.height</a></b></b> : real</li>
</ul>
</li>
<li class="fn"><b><b><a href="#clip-prop">clip</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#data-prop">data</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#focus-prop">focus</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#height-prop">height</a></b></b> : real</li>
<li class="fn"><b><b><a href="#implicitHeight-prop">implicitHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#implicitWidth-prop">implicitWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#layer.effect-prop">layer.effect</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#layer.enabled-prop">layer.enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#layer.format-prop">layer.format</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#layer.mipmap-prop">layer.mipmap</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#layer.samplerName-prop">layer.samplerName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#layer.smooth-prop">layer.smooth</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#layer.sourceRect-prop">layer.sourceRect</a></b></b> : rect</li>
<li class="fn"><b><b><a href="#layer.textureSize-prop">layer.textureSize</a></b></b> : size</li>
<li class="fn"><b><b><a href="#layer.wrapMode-prop">layer.wrapMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#opacity-prop">opacity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#parent-prop">parent</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#resources-prop">resources</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#rotation-prop">rotation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#scale-prop">scale</a></b></b> : real</li>
<li class="fn"><b><b><a href="#smooth-prop">smooth</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#state-prop">state</a></b></b> : string</li>
<li class="fn"><b><b><a href="#states-prop">states</a></b></b> : list&lt;State&gt;</li>
<li class="fn"><b><b><a href="#transform-prop">transform</a></b></b> : list&lt;Transform&gt;</li>
<li class="fn"><b><b><a href="#transformOrigin-prop">transformOrigin</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#transitions-prop">transitions</a></b></b> : list&lt;Transition&gt;</li>
<li class="fn"><b><b><a href="#visible-prop">visible</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#visibleChildren-prop">visibleChildren</a></b></b> : list&lt;Item&gt;</li>
<li class="fn"><b><b><a href="#width-prop">width</a></b></b> : real</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
<li class="fn"><b><b><a href="#z-prop">z</a></b></b> : real</li>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn"><b><b><a href="#childAt-method">childAt</a></b></b>(real <i>x</i>, real <i>y</i>)</li>
<li class="fn">object <b><b><a href="#contains-method">contains</a></b></b>(point <i>point</i>)</li>
<li class="fn"><b><b><a href="#forceActiveFocus-method-2">forceActiveFocus</a></b></b>(Qt::FocusReason <i>reason</i>)</li>
<li class="fn"><b><b><a href="#forceActiveFocus-method">forceActiveFocus</a></b></b>()</li>
<li class="fn">object <b><b><a href="#mapFromItem-method-2">mapFromItem</a></b></b>(Item <i>item</i>, real <i>x</i>, real <i>y</i>, real <i>width</i>, real <i>height</i>)</li>
<li class="fn">object <b><b><a href="#mapFromItem-method">mapFromItem</a></b></b>(Item <i>item</i>, real <i>x</i>, real <i>y</i>)</li>
<li class="fn">object <b><b><a href="#mapToItem-method-2">mapToItem</a></b></b>(Item <i>item</i>, real <i>x</i>, real <i>y</i>, real <i>width</i>, real <i>height</i>)</li>
<li class="fn">object <b><b><a href="#mapToItem-method">mapToItem</a></b></b>(Item <i>item</i>, real <i>x</i>, real <i>y</i>)</li>
<li class="fn"><b><b><a href="#nextItemInFocusChain-method">nextItemInFocusChain</a></b></b>(bool <i>forward</i>)</li>
</ul>
<!-- $$$Item-description -->
<h2>Detailed Description</h2>
<p>The Item type is the base type for all visual items in Qt Quick.</p>
<p>All visual items in Qt Quick inherit from Item. Although an Item object has no visual appearance, it defines all the attributes that are common across visual items, such as x and y position, width and height, <a href="QtQuick.qtquick-positioning-anchors.md">anchoring</a> and key handling support.</p>
<p>The Item type can be useful for grouping several items under a single root visual item. For example:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Item</span> {
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;tile.png&quot;</span>
}
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">x</span>: <span class="number">80</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">source</span>: <span class="string">&quot;tile.png&quot;</span>
}
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">x</span>: <span class="number">190</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">Tile</span>
<span class="name">source</span>: <span class="string">&quot;tile.png&quot;</span>
}
}</pre>
<h3>Key Handling</h3>
<p>Key handling is available to all Item-based visual types via the <a href="QtQuick.Keys.md">Keys</a> attached property. The <i>Keys</i> attached property provides basic signals such as <a href="QtQuick.Keys.md#pressed-signal">pressed</a> and <a href="QtQuick.Keys.md#released-signal">released</a>, as well as signals for specific keys, such as <a href="QtQuick.Keys.md#spacePressed-signal">spacePressed</a>. The example below assigns <a href="QtQuick.qtquick-input-focus.md">keyboard focus</a> to the item and handles the left key via the general <tt>onPressed</tt> handler and the return key via the <tt>onReturnPressed</tt> handler:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Left</span>) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;move left&quot;</span>);
<span class="name">event</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">true</span>;
}
}
<span class="name">Keys</span>.onReturnPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Pressed return&quot;</span>);
}</pre>
<p>See the <a href="QtQuick.Keys.md">Keys</a> attached property for detailed documentation.</p>
<h3>Layout Mirroring</h3>
<p>Item layouts can be mirrored using the <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a> attached property. This causes <a href="#anchors.top-prop">anchors</a> to be horizontally reversed, and also causes items that lay out or position their children (such as <a href="QtQuick.ListView.md">ListView</a> or <a href="QtQuick.Row.md">Row</a>) to horizontally reverse the direction of their layouts.</p>
<p>See <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a> for more details.</p>
<!-- @@@Item -->
<h2>Property Documentation</h2>
<!-- $$$activeFocus -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">activeFocus</span> : <span class="type">bool</span></p></td></tr></table><p>This read-only property indicates whether the item has active focus.</p>
<p>If activeFocus is true, either this item is the one that currently receives keyboard input, or it is a <a href="QtQuick.FocusScope.md">FocusScope</a> ancestor of the item that currently receives keyboard input.</p>
<p>Usually, activeFocus is gained by setting <a href="#focus-prop">focus</a> on an item and its enclosing <a href="QtQuick.FocusScope.md">FocusScope</a> objects. In the following example, the <tt>input</tt> and <tt>focusScope</tt> objects will have active focus, while the root rectangle object will not.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.FocusScope.md">FocusScope</a></span> {
<span class="name">id</span>: <span class="name">focusScope</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">focus</span>: <span class="number">true</span>
}
}
}</pre>
<p><b>See also </b><a href="#focus-prop">focus</a> and <a href="QtQuick.qtquick-input-focus.md">Keyboard Focus in Qt Quick</a>.</p>
<!-- @@@activeFocus -->
<br/>
<!-- $$$activeFocusOnTab -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">activeFocusOnTab</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the item wants to be in tab focus chain. By default this is set to false.</p>
<p>The tab focus chain traverses elements by visiting first the parent, and then its children in the order they occur in the children property. Pressing the tab key on an item in the tab focus chain will move keyboard focus to the next item in the chain. Pressing BackTab (normally Shift+Tab) will move focus to the previous item.</p>
<p>To set up a manual tab focus chain, see <a href="QtQuick.KeyNavigation.md">KeyNavigation</a>. Tab key events used by Keys or <a href="QtQuick.KeyNavigation.md">KeyNavigation</a> have precedence over focus chain behavior, ignore the events in other key handlers to allow it to propagate.</p>
<!-- @@@activeFocusOnTab -->
<br/>
<!-- $$$anchors -->
<table class="qmlname"><tr valign="top"><th class="centerAlign"><p><b>anchors group</b></p></th></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.top</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.bottom</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.left</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.right</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.horizontalCenter</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.verticalCenter</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.baseline</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.fill</span> : <span class="type">Item</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.centerIn</span> : <span class="type">Item</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.margins</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.topMargin</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.bottomMargin</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.leftMargin</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.rightMargin</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.horizontalCenterOffset</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.verticalCenterOffset</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.baselineOffset</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchors.alignWhenCentered</span> : <span class="type">bool</span></p></td></tr></table><p>Anchors provide a way to position an item by specifying its relationship with other items.</p>
<p>Margins apply to top, bottom, left, right, and fill anchors. The <a href="#anchors.margins-prop">anchors.margins</a> property can be used to set all of the various margins at once, to the same value. It will not override a specific margin that has been previously set; to clear an explicit margin set its value to <tt>undefined</tt>. Note that margins are anchor-specific and are not applied if an item does not use anchors.</p>
<p>Offsets apply for horizontal center, vertical center, and baseline anchors.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/f7ed0c28-98e8-4ab8-9a68-9c60a7876589-../QtQuick.Item/images/declarative-anchors_example.png" alt="" /></p></td><td >Text anchored to Image, horizontally centered and vertically below, with a margin.<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">pic</span>
<span class="comment">// ...</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">label</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">pic</span>.<span class="name">horizontalCenter</span>
<span class="name">anchors</span>.top: <span class="name">pic</span>.<span class="name">bottom</span>
<span class="name">anchors</span>.topMargin: <span class="number">5</span>
<span class="comment">// ...</span>
}
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/10bfc9f1-cf57-42aa-88d4-ec775c025baf-../QtQuick.Item/images/declarative-anchors_example2.png" alt="" /></p></td><td >Left of Text anchored to right of Image, with a margin. The y property of both defaults to 0.<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">pic</span>
<span class="comment">// ...</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">label</span>
<span class="name">anchors</span>.left: <span class="name">pic</span>.<span class="name">right</span>
<span class="name">anchors</span>.leftMargin: <span class="number">5</span>
<span class="comment">// ...</span>
}
}</pre>
</td></tr>
</table>
<p><a href="#anchors.fill-prop">anchors.fill</a> provides a convenient way for one item to have the same geometry as another item, and is equivalent to connecting all four directional anchors.</p>
<p>To clear an anchor value, set it to <tt>undefined</tt>.</p>
<p><a href="#anchors.alignWhenCentered-prop">anchors.alignWhenCentered</a> (default <tt>true</tt>) forces centered anchors to align to a whole pixel; if the item being centered has an odd <a href="#width-prop">width</a> or <a href="#height-prop">height</a>, the item will be positioned on a whole pixel rather than being placed on a half-pixel. This ensures the item is painted crisply. There are cases where this is not desirable, for example when rotating the item jitters may be apparent as the center is rounded.</p>
<p><b>Note: </b>You can only anchor an item to siblings or a parent.</p><p>For more information see <a href="QtQuick.qtquick-positioning-anchors.md#anchor-layout">Anchor Layouts</a>.</p>
<!-- @@@anchors -->
<br/>
<!-- $$$antialiasing -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">antialiasing</span> : <span class="type">bool</span></p></td></tr></table><p>Used by visual elements to decide if the item should use antialiasing or not. In some cases items with antialiasing require more memory and are potentially slower to render (see <a href="QtQuick.qtquick-visualcanvas-scenegraph-renderer.md#antialiasing">Antialiasing</a> for more details).</p>
<p>The default is false, but may be overridden by derived elements.</p>
<!-- @@@antialiasing -->
<br/>
<!-- $$$baselineOffset -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">baselineOffset</span> : <span class="type">int</span></p></td></tr></table><p>Specifies the position of the item's baseline in local coordinates.</p>
<p>The baseline of a <a href="QtQuick.Text.md">Text</a> item is the imaginary line on which the text sits. Controls containing text usually set their baseline to the baseline of their text.</p>
<p>For non-text items, a default baseline offset of 0 is used.</p>
<!-- @@@baselineOffset -->
<br/>
<!-- $$$children -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">children</span> : <span class="type">list</span>&lt;<span class="type">Item</span>&gt;</p></td></tr></table><p>The children property contains the list of visual children of this item. The resources property contains non-visual resources that you want to reference by name.</p>
<p>It is not generally necessary to refer to these properties when adding child items or resources, as the default <a href="#data-prop">data</a> property will automatically assign child objects to the <tt>children</tt> and <tt>resources</tt> properties as appropriate. See the <a href="#data-prop">data</a> documentation for details.</p>
<!-- @@@children -->
<br/>
<!-- $$$childrenRect -->
<table class="qmlname"><tr valign="top"><th class="centerAlign"><p><b>childrenRect group</b></p></th></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">childrenRect.x</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">childrenRect.y</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">childrenRect.width</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">childrenRect.height</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the collective position and size of the item's children.</p>
<p>This property is useful if you need to access the collective geometry of an item's children in order to correctly size the item.</p>
<!-- @@@childrenRect -->
<br/>
<!-- $$$clip -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">clip</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether clipping is enabled. The default clip value is <tt>false</tt>.</p>
<p>If clipping is enabled, an item will clip its own painting, as well as the painting of its children, to its bounding rectangle.</p>
<!-- @@@clip -->
<br/>
<!-- $$$data -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmldefault">default</span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>The data property allows you to freely mix visual children and resources in an item. If you assign a visual item to the data list it becomes a child and if you assign any other object type, it is added as a resource.</p>
<p>So you can write:</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {}
<span class="type">Timer</span> {}
}</pre>
<p>instead of:</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="name">children</span>: [
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {},
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {}
]
<span class="name">resources</span>: [
<span class="type">Timer</span> {}
]
}</pre>
<p>It should not generally be necessary to refer to the <tt>data</tt> property, as it is the default property for Item and thus all child items are automatically assigned to this property.</p>
<!-- @@@data -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the item receives mouse and keyboard events. By default this is true.</p>
<p>Setting this property directly affects the <tt>enabled</tt> value of child items. When set to <tt>false</tt>, the <tt>enabled</tt> values of all child items also become <tt>false</tt>. When set to <tt>true</tt>, the <tt>enabled</tt> values of child items are returned to <tt>true</tt>, unless they have explicitly been set to <tt>false</tt>.</p>
<p>Setting this property to <tt>false</tt> automatically causes <a href="#activeFocus-prop">activeFocus</a> to be set to <tt>false</tt>, and this item will longer receive keyboard events.</p>
<p><b>See also </b><a href="#visible-prop">visible</a>.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$focus -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">focus</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the item has focus within the enclosing <a href="QtQuick.FocusScope.md">FocusScope</a>. If true, this item will gain active focus when the enclosing <a href="QtQuick.FocusScope.md">FocusScope</a> gains active focus.</p>
<p>In the following example, <tt>input</tt> will be given active focus when <tt>scope</tt> gains active focus:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.FocusScope.md">FocusScope</a></span> {
<span class="name">id</span>: <span class="name">scope</span>
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">focus</span>: <span class="number">true</span>
}
}
}</pre>
<p>For the purposes of this property, the scene as a whole is assumed to act like a focus scope. On a practical level, that means the following QML will give active focus to <tt>input</tt> on startup.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">focus</span>: <span class="number">true</span>
}
}</pre>
<p><b>See also </b><a href="#activeFocus-prop">activeFocus</a> and <a href="QtQuick.qtquick-input-focus.md">Keyboard Focus in Qt Quick</a>.</p>
<!-- @@@focus -->
<br/>
<!-- $$$height -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">height</span> : <span class="type">real</span></p></td></tr></table><p>Defines the item's position and size.</p>
<p>The (x,y) position is relative to the <a href="#parent-prop">parent</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<!-- @@@height -->
<br/>
<!-- $$$implicitHeight -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">implicitHeight</span> : <span class="type">real</span></p></td></tr></table><p>Defines the natural width or height of the Item if no <a href="#width-prop">width</a> or <a href="#height-prop">height</a> is specified.</p>
<p>The default implicit size for most items is 0x0, however some items have an inherent implicit size which cannot be overridden, e.g&#x2e; Image, Text.</p>
<p>Setting the implicit size is useful for defining components that have a preferred size based on their content, for example:</p>
<pre class="qml"><span class="comment">// Label.qml</span>
import QtQuick 2.0
<span class="type"><a href="index.html">Item</a></span> {
property <span class="type">alias</span> <span class="name">icon</span>: <span class="name">image</span>.<span class="name">source</span>
property <span class="type">alias</span> <span class="name">label</span>: <span class="name">text</span>.<span class="name">text</span>
<span class="name">implicitWidth</span>: <span class="name">text</span>.<span class="name">implicitWidth</span> <span class="operator">+</span> <span class="name">image</span>.<span class="name">implicitWidth</span>
<span class="name">implicitHeight</span>: <span class="name">Math</span>.<span class="name">max</span>(<span class="name">text</span>.<span class="name">implicitHeight</span>, <span class="name">image</span>.<span class="name">implicitHeight</span>)
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">image</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">text</span>
<span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">Wrap</span>
<span class="name">anchors</span>.left: <span class="name">image</span>.<span class="name">right</span>; <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
}
}</pre>
<p><b>Note</b>: using <a href="#implicitWidth-prop">implicitWidth</a> of Text or <a href="QtQuick.TextEdit.md">TextEdit</a> and setting the width explicitly incurs a performance penalty as the text must be laid out twice.</p>
<!-- @@@implicitHeight -->
<br/>
<!-- $$$implicitWidth -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">implicitWidth</span> : <span class="type">real</span></p></td></tr></table><p>Defines the natural width or height of the Item if no <a href="#width-prop">width</a> or <a href="#height-prop">height</a> is specified.</p>
<p>The default implicit size for most items is 0x0, however some items have an inherent implicit size which cannot be overridden, e.g&#x2e; Image, Text.</p>
<p>Setting the implicit size is useful for defining components that have a preferred size based on their content, for example:</p>
<pre class="qml"><span class="comment">// Label.qml</span>
import QtQuick 2.0
<span class="type"><a href="index.html">Item</a></span> {
property <span class="type">alias</span> <span class="name">icon</span>: <span class="name">image</span>.<span class="name">source</span>
property <span class="type">alias</span> <span class="name">label</span>: <span class="name">text</span>.<span class="name">text</span>
<span class="name">implicitWidth</span>: <span class="name">text</span>.<span class="name">implicitWidth</span> <span class="operator">+</span> <span class="name">image</span>.<span class="name">implicitWidth</span>
<span class="name">implicitHeight</span>: <span class="name">Math</span>.<span class="name">max</span>(<span class="name">text</span>.<span class="name">implicitHeight</span>, <span class="name">image</span>.<span class="name">implicitHeight</span>)
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">image</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">text</span>
<span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">Wrap</span>
<span class="name">anchors</span>.left: <span class="name">image</span>.<span class="name">right</span>; <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
}
}</pre>
<p><b>Note</b>: using implicitWidth of Text or <a href="QtQuick.TextEdit.md">TextEdit</a> and setting the width explicitly incurs a performance penalty as the text must be laid out twice.</p>
<!-- @@@implicitWidth -->
<br/>
<!-- $$$layer.effect -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">layer.effect</span> : <span class="type">Component</span></p></td></tr></table><p>Holds the effect that is applied to this layer.</p>
<p>The effect is typically a <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> component, although any <a href="index.html">Item</a> component can be assigned. The effect should have a source texture property with a name matching <a href="#layer.samplerName-prop">layer.samplerName</a>.</p>
<p><b>See also </b><a href="#layer.samplerName-prop">layer.samplerName</a>.</p>
<!-- @@@layer.effect -->
<br/>
<!-- $$$layer.enabled -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">layer.enabled</span> : <span class="type">bool</span></p></td></tr></table><p>Holds whether the item is layered or not. Layering is disabled by default.</p>
<p>A layered item is rendered into an offscreen surface and cached until it is changed. Enabling layering for complex QML item hierarchies can sometimes be an optimization.</p>
<p>None of the other layer properties have any effect when the layer is disabled.</p>
<!-- @@@layer.enabled -->
<br/>
<!-- $$$layer.format -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">layer.format</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines the internal OpenGL format of the texture. Modifying this property makes most sense when the <i>layer.effect</i> is also specified. Depending on the OpenGL implementation, this property might allow you to save some texture memory.</p>
<ul>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.Alpha - GL_ALPHA</li>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.RGB - GL_RGB</li>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.RGBA - GL_RGBA</li>
</ul>
<p><b>Note: </b>Some OpenGL implementations do not support the GL_ALPHA format.</p><!-- @@@layer.format -->
<br/>
<!-- $$$layer.mipmap -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">layer.mipmap</span> : <span class="type">bool</span></p></td></tr></table><p>If this property is true, mipmaps are generated for the texture.</p>
<p><b>Note: </b>Some OpenGL ES 2 implementations do not support mipmapping of non-power-of-two textures.</p><!-- @@@layer.mipmap -->
<br/>
<!-- $$$layer.samplerName -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">layer.samplerName</span> : <span class="type">string</span></p></td></tr></table><p>Holds the name of the effect's source texture property.</p>
<p>This value must match the name of the effect's source texture property so that the Item can pass the layer's offscreen surface to the effect correctly.</p>
<p><b>See also </b><a href="#layer.effect-prop">layer.effect</a> and <a href="QtQuick.ShaderEffect.md">ShaderEffect</a>.</p>
<!-- @@@layer.samplerName -->
<br/>
<!-- $$$layer.smooth -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">layer.smooth</span> : <span class="type">bool</span></p></td></tr></table><p>Holds whether the layer is smoothly transformed.</p>
<!-- @@@layer.smooth -->
<br/>
<!-- $$$layer.sourceRect -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">layer.sourceRect</span> : <span class="type">rect</span></p></td></tr></table><p>This property defines the rectangular area of the item that should be rendered into the texture. The source rectangle can be larger than the item itself. If the rectangle is null, which is the default, then the whole item is rendered to the texture.</p>
<!-- @@@layer.sourceRect -->
<br/>
<!-- $$$layer.textureSize -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">layer.textureSize</span> : <span class="type">size</span></p></td></tr></table><p>This property holds the requested pixel size of the layers texture. If it is empty, which is the default, the size of the item is used.</p>
<p><b>Note: </b>Some platforms have a limit on how small framebuffer objects can be, which means the actual texture size might be larger than the requested size.</p><!-- @@@layer.textureSize -->
<br/>
<!-- $$$layer.wrapMode -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">layer.wrapMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines the OpenGL wrap modes associated with the texture. Modifying this property makes most sense when the <i>layer.effect</i> is specified.</p>
<ul>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.ClampToEdge - GL_CLAMP_TO_EDGE both horizontally and vertically</li>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.RepeatHorizontally - GL_REPEAT horizontally, GL_CLAMP_TO_EDGE vertically</li>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.RepeatVertically - GL_CLAMP_TO_EDGE horizontally, GL_REPEAT vertically</li>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.Repeat - GL_REPEAT both horizontally and vertically</li>
</ul>
<p><b>Note: </b>Some OpenGL ES 2 implementations do not support the GL_REPEAT wrap mode with non-power-of-two textures.</p><!-- @@@layer.wrapMode -->
<br/>
<!-- $$$opacity -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">opacity</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the opacity of the item. Opacity is specified as a number between 0.0 (fully transparent) and 1.0 (fully opaque). The default value is 1.0&#x2e;</p>
<p>When this property is set, the specified opacity is also applied individually to child items. This may have an unintended effect in some circumstances. For example in the second set of rectangles below, the red rectangle has specified an opacity of 0.5, which affects the opacity of its blue child rectangle even though the child has not specified an opacity.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/af4e453e-991e-4a68-a97a-c09ab2a2d63f-../QtQuick.Item/images/declarative-item_opacity1.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/d048cc5e-77e5-4ed4-a7b8-29673cfe7c0a-../QtQuick.Item/images/declarative-item_opacity2.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">opacity</span>: <span class="number">0.5</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}
}</pre>
</td></tr>
</table>
<p>Changing an item's opacity does not affect whether the item receives user input events. (In contrast, setting <a href="#visible-prop">visible</a> property to <tt>false</tt> stops mouse events, and setting the <a href="#enabled-prop">enabled</a> property to <tt>false</tt> stops mouse and keyboard events, and also removes active focus from the item.)</p>
<p><b>See also </b><a href="#visible-prop">visible</a>.</p>
<!-- @@@opacity -->
<br/>
<!-- $$$parent -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">parent</span> : <span class="type">Item</span></p></td></tr></table><p>This property holds the visual parent of the item.</p>
<p><b>Note: </b>The concept of the <i>visual parent</i> differs from that of the <i>QObject parent</i>. An item's visual parent may not necessarily be the same as its object parent. See <a href="QtQuick.qtquick-visualcanvas-visualparent.md">Concepts - Visual Parent in Qt Quick</a> for more details.</p><!-- @@@parent -->
<br/>
<!-- $$$resources -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">resources</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>The children property contains the list of visual children of this item. The resources property contains non-visual resources that you want to reference by name.</p>
<p>It is not generally necessary to refer to these properties when adding child items or resources, as the default <a href="#data-prop">data</a> property will automatically assign child objects to the <tt>children</tt> and <tt>resources</tt> properties as appropriate. See the <a href="#data-prop">data</a> documentation for details.</p>
<!-- @@@resources -->
<br/>
<!-- $$$rotation -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">rotation</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the rotation of the item in degrees clockwise around its <a href="#transformOrigin-prop">transformOrigin</a>.</p>
<p>The default value is 0 degrees (that is, no rotation).</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/1125585d-fdfb-4360-9b19-fd9c97125a1b-../QtQuick.Item/images/declarative-rotation.png" alt="" /></p></td><td ><pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">x</span>: <span class="number">25</span>; <span class="name">y</span>: <span class="number">25</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">rotation</span>: <span class="number">30</span>
}
}</pre>
</td></tr>
</table>
<p><b>See also </b><a href="#transform-prop">transform</a> and <a href="QtQuick.Rotation.md">Rotation</a>.</p>
<!-- @@@rotation -->
<br/>
<!-- $$$scale -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">scale</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the scale factor for this item.</p>
<p>A scale of less than 1.0 causes the item to be rendered at a smaller size, and a scale greater than 1.0 renders the item at a larger size. A negative scale causes the item to be mirrored when rendered.</p>
<p>The default value is 1.0&#x2e;</p>
<p>Scaling is applied from the <a href="#transformOrigin-prop">transformOrigin</a>.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/9ae06d20-1591-4f13-b8e2-6dfff5b51224-../QtQuick.Item/images/declarative-scale.png" alt="" /></p></td><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="number">25</span>; <span class="name">height</span>: <span class="number">25</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">x</span>: <span class="number">25</span>; <span class="name">y</span>: <span class="number">25</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">scale</span>: <span class="number">1.4</span>
}
}</pre>
</td></tr>
</table>
<p><b>See also </b><a href="#transform-prop">transform</a> and <a href="QtQuick.Scale.md">Scale</a>.</p>
<!-- @@@scale -->
<br/>
<!-- $$$smooth -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">smooth</span> : <span class="type">bool</span></p></td></tr></table><p>Primarily used in image based items to decide if the item should use smooth sampling or not. Smooth sampling is performed using linear interpolation, while non-smooth is performed using nearest neighbor.</p>
<p>In Qt Quick 2.0, this property has minimal impact on performance.</p>
<p>By default is true.</p>
<!-- @@@smooth -->
<br/>
<!-- $$$state -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">state</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the current state of the item.</p>
<p>If the item is in its default state, that is, no explicit state has been set, then this property holds an empty string. Likewise, you can return an item to its default state by setting this property to an empty string.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a>.</p>
<!-- @@@state -->
<br/>
<!-- $$$states -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">states</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.State.md">State</a></span>&gt;</p></td></tr></table><p>This property holds the list of possible states for this item. To change the state of this item, set the <a href="#state-prop">state</a> property to one of these states, or set the <a href="#state-prop">state</a> property to an empty string to revert the item to its default state.</p>
<p>This property is specified as a list of <a href="QtQuick.State.md">State</a> objects. For example, below is an item with &quot;red_color&quot; and &quot;blue_color&quot; states:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">states</span>: [
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;red_color&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">root</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
},
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;blue_color&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">root</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
}
]
}</pre>
<p>See <a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> for more details on using states and transitions.</p>
<p><b>See also </b><a href="#transitions-prop">transitions</a>.</p>
<!-- @@@states -->
<br/>
<!-- $$$transform -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">transform</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Transform.md">Transform</a></span>&gt;</p></td></tr></table><p>This property holds the list of transformations to apply.</p>
<p>For more information see <a href="QtQuick.Transform.md">Transform</a>.</p>
<!-- @@@transform -->
<br/>
<!-- $$$transformOrigin -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">transformOrigin</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the origin point around which scale and rotation transform.</p>
<p>Nine transform origins are available, as shown in the image below. The default transform origin is <tt>Item.Center</tt>.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/873bf70e-d9eb-441a-a34a-2ae22c6431ab-../QtQuick.Item/images/declarative-transformorigin.png" alt="" /></p><p>This example rotates an image around its bottom-right corner.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;myimage.png&quot;</span>
<span class="name">transformOrigin</span>: <span class="name">Item</span>.<span class="name">BottomRight</span>
<span class="name">rotation</span>: <span class="number">45</span>
}</pre>
<p>To set an arbitrary transform origin point use the <a href="QtQuick.Scale.md">Scale</a> or <a href="QtQuick.Rotation.md">Rotation</a> transform types with <a href="#transform-prop">transform</a>.</p>
<!-- @@@transformOrigin -->
<br/>
<!-- $$$transitions -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">transitions</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Transition.md">Transition</a></span>&gt;</p></td></tr></table><p>This property holds the list of transitions for this item. These define the transitions to be applied to the item whenever it changes its <a href="#state-prop">state</a>.</p>
<p>This property is specified as a list of <a href="QtQuick.Transition.md">Transition</a> objects. For example:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Item</a></span> {
<span class="name">transitions</span>: [
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="comment">//...</span>
},
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="comment">//...</span>
}
]
}</pre>
<p>See <a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> for more details on using states and transitions.</p>
<p><b>See also </b><a href="#states-prop">states</a>.</p>
<!-- @@@transitions -->
<br/>
<!-- $$$visible -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">visible</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the item is visible. By default this is true.</p>
<p>Setting this property directly affects the <tt>visible</tt> value of child items. When set to <tt>false</tt>, the <tt>visible</tt> values of all child items also become <tt>false</tt>. When set to <tt>true</tt>, the <tt>visible</tt> values of child items are returned to <tt>true</tt>, unless they have explicitly been set to <tt>false</tt>.</p>
<p>(Because of this flow-on behavior, using the <tt>visible</tt> property may not have the intended effect if a property binding should only respond to explicit property changes. In such cases it may be better to use the <a href="#opacity-prop">opacity</a> property instead.)</p>
<p>If this property is set to <tt>false</tt>, the item will no longer receive mouse events, but will continue to receive key events and will retain the keyboard <a href="#focus-prop">focus</a> if it has been set. (In contrast, setting the <a href="#enabled-prop">enabled</a> property to <tt>false</tt> stops both mouse and keyboard events, and also removes focus from the item.)</p>
<p><b>Note: </b>This property's value is only affected by changes to this property or the parent's <tt>visible</tt> property. It does not change, for example, if this item moves off-screen, or if the <a href="#opacity-prop">opacity</a> changes to 0.</p><p><b>See also </b><a href="#opacity-prop">opacity</a> and <a href="#enabled-prop">enabled</a>.</p>
<!-- @@@visible -->
<br/>
<!-- $$$visibleChildren -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">visibleChildren</span> : <span class="type">list</span>&lt;<span class="type">Item</span>&gt;</p></td></tr></table><p>This read-only property lists all of the item's children that are currently visible. Note that a child's visibility may have changed explicitly, or because the visibility of this (it's parent) item or another grandparent changed.</p>
<!-- @@@visibleChildren -->
<br/>
<!-- $$$width -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">width</span> : <span class="type">real</span></p></td></tr></table><p>Defines the item's position and size.</p>
<p>The (x,y) position is relative to the <a href="#parent-prop">parent</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<!-- @@@width -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">real</span></p></td></tr></table><p>Defines the item's position and size.</p>
<p>The (x,y) position is relative to the <a href="#parent-prop">parent</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">real</span></p></td></tr></table><p>Defines the item's position and size.</p>
<p>The (x,y) position is relative to the <a href="#parent-prop">parent</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">Item</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<!-- @@@y -->
<br/>
<!-- $$$z -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">z</span> : <span class="type">real</span></p></td></tr></table><p>Sets the stacking order of sibling items. By default the stacking order is 0.</p>
<p>Items with a higher stacking value are drawn on top of siblings with a lower stacking order. Items with the same stacking value are drawn bottom up in the order they appear. Items with a negative stacking value are drawn under their parent's content.</p>
<p>The following example shows the various effects of stacking order.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/0f58cbdf-faa2-4919-a17d-4b4eba19e983-../QtQuick.Item/images/declarative-item_stacking1.png" alt="" /></p></td><td >Same <tt>z</tt> - later children above earlier children:<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/fffa68f8-0489-489e-b523-e8314e446eb9-../QtQuick.Item/images/declarative-item_stacking2.png" alt="" /></p></td><td >Higher <tt>z</tt> on top:<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">z</span>: <span class="number">1</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/9799b113-7670-49fb-b6e3-058fde20756e-../QtQuick.Item/images/declarative-item_stacking3.png" alt="" /></p></td><td >Same <tt>z</tt> - children above parents:<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}
}</pre>
</td></tr>
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/94e455ac-ae1c-4b8c-8417-86c4c5c13f2c-../QtQuick.Item/images/declarative-item_stacking4.png" alt="" /></p></td><td >Lower <tt>z</tt> below:<pre class="qml"><span class="type"><a href="index.html">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">z</span>: -<span class="number">1</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}
}
}</pre>
</td></tr>
</table>
<!-- @@@z -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$childAt -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">childAt</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Returns the first visible child item found at point (<i>x</i>, <i>y</i>) within the coordinate system of this item.</p>
<p>Returns <tt>null</tt> if there is no such item.</p>
<!-- @@@childAt -->
<br/>
<!-- $$$contains -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">contains</span>(<span class="type">point</span><i> point</i>)</p></td></tr></table><p>Returns true if this item contains <i>point</i>, which is in local coordinates; returns false otherwise.</p>
<!-- @@@contains -->
<br/>
<!-- $$$forceActiveFocus -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">forceActiveFocus</span>(<span class="type">Qt::FocusReason</span><i> reason</i>)</p></td></tr></table><p>Forces active focus on the item with the given <i>reason</i>.</p>
<p>This method sets focus on the item and ensures that all ancestor <a href="QtQuick.FocusScope.md">FocusScope</a> objects in the object hierarchy are also given <a href="#focus-prop">focus</a>.</p>
<p>This QML method was introduced in  Qt 5.1.</p>
<p><b>See also </b><a href="#activeFocus-prop">activeFocus</a> and Qt::FocusReason.</p>
<!-- @@@forceActiveFocus -->
<br/>
<!-- $$$forceActiveFocus -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">forceActiveFocus</span>()</p></td></tr></table><p>This is an overloaded function.</p>
<p>Forces active focus on the item.</p>
<p>This method sets focus on the item and ensures that all ancestor <a href="QtQuick.FocusScope.md">FocusScope</a> objects in the object hierarchy are also given <a href="#focus-prop">focus</a>.</p>
<p>The reason for the focus change will be <i>Qt::OtherFocusReason</i>. Use the overloaded method to specify the focus reason to enable better handling of the focus change.</p>
<p><b>See also </b><a href="#activeFocus-prop">activeFocus</a>.</p>
<!-- @@@forceActiveFocus -->
<br/>
<!-- $$$mapFromItem -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">mapFromItem</span>(<span class="type">Item</span><i> item</i>, <span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> width</i>, <span class="type">real</span><i> height</i>)</p></td></tr></table><p>Maps the point (<i>x</i>, <i>y</i>) or rect (<i>x</i>, <i>y</i>, <i>width</i>, <i>height</i>), which is in <i>item</i>'s coordinate system, to this item's coordinate system, and returns an object with <tt>x</tt> and <tt>y</tt> (and optionally <tt>width</tt> and <tt>height</tt>) properties matching the mapped coordinate.</p>
<p>If <i>item</i> is a <tt>null</tt> value, this maps the point or rect from the coordinate system of the root QML view.</p>
<!-- @@@mapFromItem -->
<br/>
<!-- $$$mapFromItem -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">mapFromItem</span>(<span class="type">Item</span><i> item</i>, <span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Maps the point (<i>x</i>, <i>y</i>) or rect (<i>x</i>, <i>y</i>, <i>width</i>, <i>height</i>), which is in <i>item</i>'s coordinate system, to this item's coordinate system, and returns an object with <tt>x</tt> and <tt>y</tt> (and optionally <tt>width</tt> and <tt>height</tt>) properties matching the mapped coordinate.</p>
<p>If <i>item</i> is a <tt>null</tt> value, this maps the point or rect from the coordinate system of the root QML view.</p>
<!-- @@@mapFromItem -->
<br/>
<!-- $$$mapToItem -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">mapToItem</span>(<span class="type">Item</span><i> item</i>, <span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>, <span class="type">real</span><i> width</i>, <span class="type">real</span><i> height</i>)</p></td></tr></table><p>Maps the point (<i>x</i>, <i>y</i>) or rect (<i>x</i>, <i>y</i>, <i>width</i>, <i>height</i>), which is in this item's coordinate system, to <i>item</i>'s coordinate system, and returns an object with <tt>x</tt> and <tt>y</tt> (and optionally <tt>width</tt> and <tt>height</tt>) properties matching the mapped coordinate.</p>
<p>If <i>item</i> is a <tt>null</tt> value, this maps the point or rect to the coordinate system of the root QML view.</p>
<!-- @@@mapToItem -->
<br/>
<!-- $$$mapToItem -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">mapToItem</span>(<span class="type">Item</span><i> item</i>, <span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Maps the point (<i>x</i>, <i>y</i>) or rect (<i>x</i>, <i>y</i>, <i>width</i>, <i>height</i>), which is in this item's coordinate system, to <i>item</i>'s coordinate system, and returns an object with <tt>x</tt> and <tt>y</tt> (and optionally <tt>width</tt> and <tt>height</tt>) properties matching the mapped coordinate.</p>
<p>If <i>item</i> is a <tt>null</tt> value, this maps the point or rect to the coordinate system of the root QML view.</p>
<!-- @@@mapToItem -->
<br/>
<!-- $$$nextItemInFocusChain -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">nextItemInFocusChain</span>(<span class="type">bool</span><i> forward</i>)</p></td></tr></table><p>Returns the item in the focus chain which is next to this item. If <i>forward</i> is <tt>true</tt>, or not supplied, it is the next item in the forwards direction. If <i>forward</i> is <tt>false</tt>, it is the next item in the backwards direction.</p>
<p>This QML method was introduced in  Qt 5.1.</p>
<!-- @@@nextItemInFocusChain -->
<br/>
