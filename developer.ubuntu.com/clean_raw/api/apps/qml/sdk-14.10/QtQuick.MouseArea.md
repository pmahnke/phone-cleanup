---
Title: QtQuick.MouseArea
---

# QtQuick.MouseArea

<span class="subtitle"></span>
<!-- $$$MouseArea-brief -->
<p>Enables simple mouse handling More...</p>
<!-- @@@MouseArea -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#acceptedButtons-prop">acceptedButtons</a></b></b> : Qt::MouseButtons</li>
<li class="fn"><b><b><a href="#containsMouse-prop">containsMouse</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#cursorShape-prop">cursorShape</a></b></b> : Qt::CursorShape</li>
<li class="fn"><b><b><a href="#drag-prop">drag</a></b></b><ul>
<li class="fn"><b><b><a href="#drag.target-prop">drag.target</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#drag.active-prop">drag.active</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#drag.axis-prop">drag.axis</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#drag.minimumX-prop">drag.minimumX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#drag.maximumX-prop">drag.maximumX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#drag.minimumY-prop">drag.minimumY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#drag.maximumY-prop">drag.maximumY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#drag.filterChildren-prop">drag.filterChildren</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#drag.threshold-prop">drag.threshold</a></b></b> : real</li>
</ul>
</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#hoverEnabled-prop">hoverEnabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#mouseX-prop">mouseX</a></b></b> : real</li>
<li class="fn"><b><b><a href="#mouseY-prop">mouseY</a></b></b> : real</li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#pressedButtons-prop">pressedButtons</a></b></b> : MouseButtons</li>
<li class="fn"><b><b><a href="#preventStealing-prop">preventStealing</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#propagateComposedEvents-prop">propagateComposedEvents</a></b></b> : bool</li>
</ul>
<h2>Signals</h2>
<ul>
<li class="fn"><b><b><a href="#canceled-signal">canceled</a></b></b>()</li>
<li class="fn"><b><b><a href="#clicked-signal">clicked</a></b></b>(MouseEvent <i>mouse</i>)</li>
<li class="fn"><b><b><a href="#doubleClicked-signal">doubleClicked</a></b></b>(MouseEvent <i>mouse</i>)</li>
<li class="fn"><b><b><a href="#entered-signal">entered</a></b></b>()</li>
<li class="fn"><b><b><a href="#exited-signal">exited</a></b></b>()</li>
<li class="fn"><b><b><a href="#positionChanged-signal">positionChanged</a></b></b>(MouseEvent <i>mouse</i>)</li>
<li class="fn"><b><b><a href="#pressAndHold-signal">pressAndHold</a></b></b>(MouseEvent <i>mouse</i>)</li>
<li class="fn"><b><b><a href="#pressed-signal">pressed</a></b></b>(MouseEvent <i>mouse</i>)</li>
<li class="fn"><b><b><a href="#released-signal">released</a></b></b>(MouseEvent <i>mouse</i>)</li>
<li class="fn"><b><b><a href="#wheel-signal">wheel</a></b></b>(WheelEvent <i>wheel</i>)</li>
</ul>
<!-- $$$MouseArea-description -->
<h2>Detailed Description</h2>
<p>A MouseArea is an invisible item that is typically used in conjunction with a visible item in order to provide mouse handling for that item. By effectively acting as a proxy, the logic for mouse handling can be contained within a MouseArea item.</p>
<p>The <a href="#enabled-prop">enabled</a> property is used to enable and disable mouse handling for the proxied item. When disabled, the mouse area becomes transparent to mouse events.</p>
<p>The <a href="#pressed-prop">pressed</a> read-only property indicates whether or not the user is holding down a mouse button over the mouse area. This property is often used in bindings between properties in a user interface. The <a href="#containsMouse-prop">containsMouse</a> read-only property indicates the presence of the mouse cursor over the mouse area but, by default, only when a mouse button is held down; see the <a href="#containsMouse-prop">containsMouse</a> documentation for details.</p>
<p>Information about the mouse position and button clicks are provided via signals for which event handler properties are defined. The most commonly used involved handling mouse presses and clicks: onClicked, onDoubleClicked, onPressed, onReleased and onPressAndHold. It's also possible to handle mouse wheel events via the onWheel signal.</p>
<p>If a MouseArea overlaps with the area of other MouseArea items, you can choose to propagate <tt>clicked</tt>, <tt>doubleClicked</tt> and <tt>pressAndHold</tt> events to these other items by setting <a href="#propagateComposedEvents-prop">propagateComposedEvents</a> to true and rejecting events that should be propagated. See the <a href="#propagateComposedEvents-prop">propagateComposedEvents</a> documentation for details.</p>
<p>By default, MouseArea items only report mouse clicks and not changes to the position of the mouse cursor. Setting the <a href="#hoverEnabled-prop">hoverEnabled</a> property ensures that handlers defined for onPositionChanged, onEntered and onExited are used and that the <a href="#containsMouse-prop">containsMouse</a> property is updated even when no mouse buttons are pressed.</p>
<h2>Example Usage</h2>
<p><img src="https://developer.ubuntu.com/static/devportal_uploaded/3a8460d3-688b-4ea2-bbb8-611bf25da062-../QtQuick.MouseArea/images/qml-mousearea-snippet.png" alt="" /></p>
<p>The following example uses a MouseArea in a <a href="QtQuick.Rectangle.md">Rectangle</a> that changes the <a href="QtQuick.Rectangle.md">Rectangle</a> color to red when clicked:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: { <span class="name">parent</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">'red'</span> }
}
}</pre>
<br style="clear: both" /><p>Many MouseArea signals pass a <a href="QtQuick.MouseEvent.md">mouse</a> parameter that contains additional information about the mouse event, such as the position, button, and any key modifiers.</p>
<p>Here is an extension of the previous example that produces a different color when the area is right clicked:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">acceptedButtons</span>: <span class="name">Qt</span>.<span class="name">LeftButton</span> <span class="operator">|</span> <span class="name">Qt</span>.<span class="name">RightButton</span>
<span class="name">onClicked</span>: {
<span class="keyword">if</span> (<span class="name">mouse</span>.<span class="name">button</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">RightButton</span>)
<span class="name">parent</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">'blue'</span>;
<span class="keyword">else</span>
<span class="name">parent</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">'red'</span>;
}
}
}</pre>
<p><b>See also </b><a href="QtQuick.MouseEvent.md">MouseEvent</a>, MouseArea example, and <a href="QtQuick.qtquick-input-topic.md">Important Concepts In Qt Quick - User Input</a>.</p>
<!-- @@@MouseArea -->
<h2>Property Documentation</h2>
<!-- $$$acceptedButtons -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">acceptedButtons</span> : <span class="type">Qt::MouseButtons</span></p></td></tr></table><p>This property holds the mouse buttons that the mouse area reacts to.</p>
<p>To specify that the <a href="index.html">MouseArea</a> will react to multiple buttons, Qt::MouseButtons flag values are combined using the &quot;|&quot; (or) operator:</p>
<pre class="cpp">MouseArea { acceptedButtons: <span class="type">Qt</span><span class="operator">.</span>LeftButton <span class="operator">|</span> <span class="type">Qt</span><span class="operator">.</span>RightButton }</pre>
<p>To indicate that all possible mouse buttons are to be accepted, the special value 'Qt.AllButtons' may be used:</p>
<pre class="cpp">MouseArea { acceptedButtons: <span class="type">Qt</span><span class="operator">.</span>AllButtons }</pre>
<p>The default value is <tt>Qt.LeftButton</tt>.</p>
<!-- @@@acceptedButtons -->
<br/>
<!-- $$$containsMouse -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">containsMouse</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the mouse is currently inside the mouse area.</p>
<p><b>Warning:</b> This property is not updated if the area moves under the mouse: <i>containsMouse</i> will not change. In addition, if <a href="#hoverEnabled-prop">hoverEnabled</a> is false, containsMouse will only be valid when the mouse is pressed while the mouse cursor is inside the <a href="index.html">MouseArea</a>.</p>
<!-- @@@containsMouse -->
<br/>
<!-- $$$cursorShape -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">cursorShape</span> : <span class="type">Qt::CursorShape</span></p></td></tr></table><p>This property holds the cursor shape for this mouse area. Note that on platforms that do not display a mouse cursor this may have no effect.</p>
<p>The available cursor shapes are:</p>
<ul>
<li>Qt.ArrowCursor</li>
<li>Qt.UpArrowCursor</li>
<li>Qt.CrossCursor</li>
<li>Qt.WaitCursor</li>
<li>Qt.IBeamCursor</li>
<li>Qt.SizeVerCursor</li>
<li>Qt.SizeHorCursor</li>
<li>Qt.SizeBDiagCursor</li>
<li>Qt.SizeFDiagCursor</li>
<li>Qt.SizeAllCursor</li>
<li>Qt.BlankCursor</li>
<li>Qt.SplitVCursor</li>
<li>Qt.SplitHCursor</li>
<li>Qt.PointingHandCursor</li>
<li>Qt.ForbiddenCursor</li>
<li>Qt.WhatsThisCursor</li>
<li>Qt.BusyCursor</li>
<li>Qt.OpenHandCursor</li>
<li>Qt.ClosedHandCursor</li>
<li>Qt.DragCopyCursor</li>
<li>Qt.DragMoveCursor</li>
<li>Qt.DragLinkCursor</li>
</ul>
<p>In order to only set a mouse cursor shape for a region without reacting to mouse events set the <a href="#acceptedButtons-prop">acceptedButtons</a> to none:</p>
<pre class="cpp">MouseArea { cursorShape: <span class="type">Qt</span><span class="operator">.</span>IBeamCursor; acceptedButtons: <span class="type">Qt</span><span class="operator">.</span>NoButton }</pre>
<p>The default value is <tt>Qt.ArrowCursor</tt>.</p>
<p><b>See also </b>Qt::CursorShape.</p>
<!-- @@@cursorShape -->
<br/>
<!-- $$$drag -->
<table class="qmlname"><tr valign="top"><th class="centerAlign"><p><b>drag group</b></p></th></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">drag.target</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">drag.active</span> : <span class="type">bool</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">drag.axis</span> : <span class="type">enumeration</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">drag.minimumX</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">drag.maximumX</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">drag.minimumY</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">drag.maximumY</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">drag.filterChildren</span> : <span class="type">bool</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">drag.threshold</span> : <span class="type">real</span></p></td></tr></table><p><tt>drag</tt> provides a convenient way to make an item draggable.</p>
<ul>
<li><tt>drag.target</tt> specifies the id of the item to drag.</li>
<li><tt>drag.active</tt> specifies if the target item is currently being dragged.</li>
<li><tt>drag.axis</tt> specifies whether dragging can be done horizontally (<tt>Drag.XAxis</tt>), vertically (<tt>Drag.YAxis</tt>), or both (<tt>Drag.XAndYAxis</tt>)</li>
<li><tt>drag.minimum</tt> and <tt>drag.maximum</tt> limit how far the target can be dragged along the corresponding axes.</li>
</ul>
<p>The following example displays a <a href="QtQuick.Rectangle.md">Rectangle</a> that can be dragged along the X-axis. The opacity of the rectangle is reduced when it is dragged to the right.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">container</span>
<span class="name">width</span>: <span class="number">600</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">opacity</span>: (<span class="number">600.0</span> <span class="operator">-</span> <span class="name">rect</span>.<span class="name">x</span>) <span class="operator">/</span> <span class="number">600</span>
<span class="type"><a href="index.html">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">drag</span>.target: <span class="name">rect</span>
<span class="name">drag</span>.axis: <span class="name">Drag</span>.<span class="name">XAxis</span>
<span class="name">drag</span>.minimumX: <span class="number">0</span>
<span class="name">drag</span>.maximumX: <span class="name">container</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">rect</span>.<span class="name">width</span>
}
}
}</pre>
<p><b>Note: </b>Items cannot be dragged if they are anchored for the requested <tt>drag.axis</tt>. For example, if <tt>anchors.left</tt> or <tt>anchors.right</tt> was set for <tt>rect</tt> in the above example, it cannot be dragged along the X-axis. This can be avoided by settng the anchor value to <tt>undefined</tt> in an <a href="#pressed-prop">onPressed</a> handler.</p><p>If <tt>drag.filterChildren</tt> is set to true, a drag can override descendant MouseAreas. This enables a parent <a href="index.html">MouseArea</a> to handle drags, for example, while descendants handle clicks:</p>
<p><tt>drag.threshold</tt> determines the threshold in pixels of when the drag operation should start. By default this is bound to a platform dependent value. This property was added in Qt Quick 2.2&#x2e;</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">480</span>
<span class="name">height</span>: <span class="number">320</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">x</span>: <span class="number">30</span>; <span class="name">y</span>: <span class="number">30</span>
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">240</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="type"><a href="index.html">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">drag</span>.target: <span class="name">parent</span>;
<span class="name">drag</span>.axis: <span class="string">&quot;XAxis&quot;</span>
<span class="name">drag</span>.minimumX: <span class="number">30</span>
<span class="name">drag</span>.maximumX: <span class="number">150</span>
<span class="name">drag</span>.filterChildren: <span class="number">true</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
<span class="name">x</span>: <span class="number">50</span>; <span class="name">y</span> : <span class="number">50</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="index.html">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Clicked&quot;</span>)
}
}
}
}
}</pre>
<!-- @@@drag -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the item accepts mouse events.</p>
<p>By default, this property is true.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$hoverEnabled -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">hoverEnabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether hover events are handled.</p>
<p>By default, mouse events are only handled in response to a button event, or when a button is pressed. Hover enables handling of all mouse events even when no mouse button is pressed.</p>
<p>This property affects the <a href="#containsMouse-prop">containsMouse</a> property and the onEntered, onExited and onPositionChanged signals.</p>
<!-- @@@hoverEnabled -->
<br/>
<!-- $$$mouseX -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">mouseX</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the coordinates of the mouse cursor.</p>
<p>If the <a href="#hoverEnabled-prop">hoverEnabled</a> property is false then these properties will only be valid while a button is pressed, and will remain valid as long as the button is held down even if the mouse is moved outside the area.</p>
<p>By default, this property is false.</p>
<p>If <a href="#hoverEnabled-prop">hoverEnabled</a> is true then these properties will be valid when:</p>
<ul>
<li>no button is pressed, but the mouse is within the <a href="index.html">MouseArea</a> (<a href="#containsMouse-prop">containsMouse</a> is true).</li>
<li>a button is pressed and held, even if it has since moved out of the area.</li>
</ul>
<p>The coordinates are relative to the <a href="index.html">MouseArea</a>.</p>
<!-- @@@mouseX -->
<br/>
<!-- $$$mouseY -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">mouseY</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the coordinates of the mouse cursor.</p>
<p>If the <a href="#hoverEnabled-prop">hoverEnabled</a> property is false then these properties will only be valid while a button is pressed, and will remain valid as long as the button is held down even if the mouse is moved outside the area.</p>
<p>By default, this property is false.</p>
<p>If <a href="#hoverEnabled-prop">hoverEnabled</a> is true then these properties will be valid when:</p>
<ul>
<li>no button is pressed, but the mouse is within the <a href="index.html">MouseArea</a> (<a href="#containsMouse-prop">containsMouse</a> is true).</li>
<li>a button is pressed and held, even if it has since moved out of the area.</li>
</ul>
<p>The coordinates are relative to the <a href="index.html">MouseArea</a>.</p>
<!-- @@@mouseY -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">pressed</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether any of the <a href="#acceptedButtons-prop">acceptedButtons</a> are currently pressed.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$pressedButtons -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">pressedButtons</span> : <span class="type">MouseButtons</span></p></td></tr></table><p>This property holds the mouse buttons currently pressed.</p>
<p>It contains a bitwise combination of:</p>
<ul>
<li>Qt.LeftButton</li>
<li>Qt.RightButton</li>
<li>Qt.MiddleButton</li>
</ul>
<p>The code below displays &quot;right&quot; when the right mouse buttons is pressed:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="name">mouseArea</span>.<span class="name">pressedButtons</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">RightButton</span> ? <span class="string">&quot;right&quot;</span> : <span class="string">&quot;&quot;</span>
<span class="name">horizontalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignHCenter</span>
<span class="name">verticalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignVCenter</span>
<span class="type"><a href="index.html">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">acceptedButtons</span>: <span class="name">Qt</span>.<span class="name">LeftButton</span> <span class="operator">|</span> <span class="name">Qt</span>.<span class="name">RightButton</span>
}
}</pre>
<p><b>Note: </b>this property only handles buttons specified in <a href="#acceptedButtons-prop">acceptedButtons</a>.</p><p><b>See also </b><a href="#acceptedButtons-prop">acceptedButtons</a>.</p>
<!-- @@@pressedButtons -->
<br/>
<!-- $$$preventStealing -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">preventStealing</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the mouse events may be stolen from this <a href="index.html">MouseArea</a>.</p>
<p>If a <a href="index.html">MouseArea</a> is placed within an item that filters child mouse events, such as Flickable, the mouse events may be stolen from the <a href="index.html">MouseArea</a> if a gesture is recognized by the parent item, e.g&#x2e; a flick gesture. If preventStealing is set to true, no item will steal the mouse events.</p>
<p>Note that setting preventStealing to true once an item has started stealing events will have no effect until the next press event.</p>
<p>By default this property is false.</p>
<!-- @@@preventStealing -->
<br/>
<!-- $$$propagateComposedEvents -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">propagateComposedEvents</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether composed mouse events will automatically propagate to other MouseAreas that overlap with this <a href="index.html">MouseArea</a> but are lower in the visual stacking order. By default, this property is false.</p>
<p><a href="index.html">MouseArea</a> contains several composed events: <tt>clicked</tt>, <tt>doubleClicked</tt> and <tt>pressAndHold</tt>. These are composed of basic mouse events, like <tt>pressed</tt>, and can be propagated differently in comparison to basic events.</p>
<p>If propagateComposedEvents is set to true, then composed events will be automatically propagated to other MouseAreas in the same location in the scene. Each event is propagated to the next <a href="#enabled-prop">enabled</a> <a href="index.html">MouseArea</a> beneath it in the stacking order, propagating down this visual hierarchy until a <a href="index.html">MouseArea</a> accepts the event. Unlike <tt>pressed</tt> events, composed events will not be automatically accepted if no handler is present.</p>
<p>For example, below is a yellow <a href="QtQuick.Rectangle.md">Rectangle</a> that contains a blue <a href="QtQuick.Rectangle.md">Rectangle</a>. The blue rectangle is the top-most item in the hierarchy of the visual stacking order; it will visually rendered above the yellow rectangle. Since the blue rectangle sets propagateComposedEvents to true, and also sets <a href="QtQuick.MouseEvent.md#accepted-prop">MouseEvent::accepted</a> to false for all received <tt>clicked</tt> events, any <tt>clicked</tt> events it receives are propagated to the <a href="index.html">MouseArea</a> of the yellow rectangle beneath it.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="index.html">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked yellow&quot;</span>)
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="type"><a href="index.html">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">propagateComposedEvents</span>: <span class="number">true</span>
<span class="name">onClicked</span>: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked blue&quot;</span>)
<span class="name">mouse</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">false</span>
}
}
}
}</pre>
<p>Clicking on the blue rectangle will cause the <tt>onClicked</tt> handler of its child <a href="index.html">MouseArea</a> to be invoked; the event will then be propagated to the <a href="index.html">MouseArea</a> of the yellow rectangle, causing its own <tt>onClicked</tt> handler to be invoked.</p>
<p>This property greatly simplifies the usecase of when you want to have overlapping MouseAreas handling the composed events together. For example: if you want one <a href="index.html">MouseArea</a> to handle <tt>clicked</tt> signals and the other to handle <tt>pressAndHold</tt>, or if you want one <a href="index.html">MouseArea</a> to handle <tt>clicked</tt> most of the time, but pass it through when certain conditions are met.</p>
<!-- @@@propagateComposedEvents -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$canceled -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">canceled</span>()</p></td></tr></table><p>This signal is emitted when mouse events have been canceled, either because an event was not accepted, or because another item stole the mouse event handling.</p>
<p>This signal is for advanced use: it is useful when there is more than one <a href="index.html">MouseArea</a> that is handling input, or when there is a <a href="index.html">MouseArea</a> inside a <a href="QtQuick.Flickable.md">Flickable</a>. In the latter case, if you execute some logic in the <tt>onPressed</tt> signal handler and then start dragging, the <a href="QtQuick.Flickable.md">Flickable</a> will steal the mouse handling from the <a href="index.html">MouseArea</a>. In these cases, to reset the logic when the <a href="index.html">MouseArea</a> has lost the mouse handling to the <a href="QtQuick.Flickable.md">Flickable</a>, <tt>canceled</tt> should be handled in addition to <a href="#released-signal">released</a>.</p>
<p>The corresponding handler is <tt>onCanceled</tt>.</p>
<!-- @@@canceled -->
<br/>
<!-- $$$clicked -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">clicked</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> mouse</i>)</p></td></tr></table><p>This signal is emitted when there is a click. A click is defined as a press followed by a release, both inside the <a href="index.html">MouseArea</a> (pressing, moving outside the <a href="index.html">MouseArea</a>, and then moving back inside and releasing is also considered a click).</p>
<p>The <a href="QtQuick.MouseEvent.md">mouse</a> parameter provides information about the click, including the x and y position of the release of the click, and whether the click was held.</p>
<p>When handling this signal, changing the <a href="QtQuick.MouseEvent.md#accepted-prop">accepted</a> property of the <i>mouse</i> parameter has no effect.</p>
<p>The corresponding handler is <tt>onClicked</tt>.</p>
<!-- @@@clicked -->
<br/>
<!-- $$$doubleClicked -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">doubleClicked</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> mouse</i>)</p></td></tr></table><p>This signal is emitted when there is a double-click (a press followed by a release followed by a press). The <a href="QtQuick.MouseEvent.md">mouse</a> parameter provides information about the click, including the x and y position of the release of the click, and whether the click was held.</p>
<p>When handling this signal, if the <a href="QtQuick.MouseEvent.md#accepted-prop">accepted</a> property of the <i>mouse</i> parameter is set to false, the pressed/released/clicked signals will be emitted for the second click; otherwise they are suppressed. The <tt>accepted</tt> property defaults to true.</p>
<p>The corresponding handler is <tt>onDoubleClicked</tt>.</p>
<!-- @@@doubleClicked -->
<br/>
<!-- $$$entered -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">entered</span>()</p></td></tr></table><p>This signal is emitted when the mouse enters the mouse area.</p>
<p>By default this signal is only emitted if a button is currently pressed. Set <a href="#hoverEnabled-prop">hoverEnabled</a> to true to emit this signal even when no mouse button is pressed.</p>
<p>The corresponding handler is <tt>onEntered</tt>.</p>
<p><b>See also </b><a href="#hoverEnabled-prop">hoverEnabled</a>.</p>
<!-- @@@entered -->
<br/>
<!-- $$$exited -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">exited</span>()</p></td></tr></table><p>This signal is emitted when the mouse exits the mouse area.</p>
<p>By default this signal is only emitted if a button is currently pressed. Set <a href="#hoverEnabled-prop">hoverEnabled</a> to true to emit this signal even when no mouse button is pressed.</p>
<p>The example below shows a fairly typical relationship between two MouseAreas, with <tt>mouseArea2</tt> on top of <tt>mouseArea1</tt>. Moving the mouse into <tt>mouseArea2</tt> from <tt>mouseArea1</tt> will cause <tt>mouseArea1</tt> to emit the <tt>exited</tt> signal.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">400</span>
<span class="type"><a href="index.html">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">mouseArea1</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">hoverEnabled</span>: <span class="number">true</span>
}
<span class="type"><a href="index.html">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">mouseArea2</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">hoverEnabled</span>: <span class="number">true</span>
}
}</pre>
<p>If instead you give the two MouseAreas a parent-child relationship, moving the mouse into <tt>mouseArea2</tt> from <tt>mouseArea1</tt> will <b>not</b> cause <tt>mouseArea1</tt> to emit <tt>exited</tt>. Instead, they will both be considered to be simultaneously hovered.</p>
<p>The corresponding handler is <tt>onExited</tt>.</p>
<p><b>See also </b><a href="#hoverEnabled-prop">hoverEnabled</a>.</p>
<!-- @@@exited -->
<br/>
<!-- $$$positionChanged -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">positionChanged</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> mouse</i>)</p></td></tr></table><p>This signal is emitted when the mouse position changes.</p>
<p>The <a href="QtQuick.MouseEvent.md">mouse</a> parameter provides information about the mouse, including the x and y position, and any buttons currently pressed.</p>
<p>By default this signal is only emitted if a button is currently pressed. Set <a href="#hoverEnabled-prop">hoverEnabled</a> to true to emit this signal even when no mouse button is pressed.</p>
<p>When handling this signal, changing the <a href="QtQuick.MouseEvent.md#accepted-prop">accepted</a> property of the <i>mouse</i> parameter has no effect.</p>
<p>The corresponding handler is <tt>onPositionChanged</tt>.</p>
<!-- @@@positionChanged -->
<br/>
<!-- $$$pressAndHold -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">pressAndHold</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> mouse</i>)</p></td></tr></table><p>This signal is emitted when there is a long press (currently 800ms). The <a href="QtQuick.MouseEvent.md">mouse</a> parameter provides information about the press, including the x and y position of the press, and which button is pressed.</p>
<p>When handling this signal, changing the <a href="QtQuick.MouseEvent.md#accepted-prop">accepted</a> property of the <i>mouse</i> parameter has no effect.</p>
<p>The corresponding handler is <tt>onPressAndHold</tt>.</p>
<!-- @@@pressAndHold -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">pressed</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> mouse</i>)</p></td></tr></table><p>This signal is emitted when there is a press. The <a href="QtQuick.MouseEvent.md">mouse</a> parameter provides information about the press, including the x and y position and which button was pressed.</p>
<p>When handling this signal, use the <a href="QtQuick.MouseEvent.md#accepted-prop">accepted</a> property of the <i>mouse</i> parameter to control whether this <a href="index.html">MouseArea</a> handles the press and all future mouse events until release. The default is to accept the event and not allow other MouseAreas beneath this one to handle the event. If <i>accepted</i> is set to false, no further events will be sent to this <a href="index.html">MouseArea</a> until the button is next pressed.</p>
<p>The corresponding handler is <tt>onPressed</tt>.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$released -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">released</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> mouse</i>)</p></td></tr></table><p>This signal is emitted when there is a release. The <a href="QtQuick.MouseEvent.md">mouse</a> parameter provides information about the click, including the x and y position of the release of the click, and whether the click was held.</p>
<p>When handling this signal, changing the <a href="QtQuick.MouseEvent.md#accepted-prop">accepted</a> property of the <i>mouse</i> parameter has no effect.</p>
<p>The corresponding handler is <tt>onReleased</tt>.</p>
<p><b>See also </b><a href="#canceled-signal">canceled</a>.</p>
<!-- @@@released -->
<br/>
<!-- $$$wheel -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">wheel</span>(<span class="type"><a href="QtQuick.WheelEvent.md">WheelEvent</a></span><i> wheel</i>)</p></td></tr></table><p>This signal is emitted in response to both mouse wheel and trackpad scroll gestures.</p>
<p>The <a href="QtQuick.WheelEvent.md">wheel</a> parameter provides information about the event, including the x and y position, any buttons currently pressed, and information about the wheel movement, including angleDelta and pixelDelta.</p>
<p>The corresponding handler is <tt>onWheel</tt>.</p>
<!-- @@@wheel -->
<br/>
