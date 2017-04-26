---
Title: QtQuick.PinchEvent
---

# QtQuick.PinchEvent

<span class="subtitle"></span>
<!-- $$$PinchEvent-brief -->
<p>For specifying information about a pinch event More...</p>
<!-- @@@PinchEvent -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accepted-prop">accepted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#angle-prop">angle</a></b></b> : real</li>
<li class="fn"><b><b><a href="#center-prop">center</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#point1-prop">point1</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#point2-prop">point2</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#pointCount-prop">pointCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#previousAngle-prop">previousAngle</a></b></b> : real</li>
<li class="fn"><b><b><a href="#previousCenter-prop">previousCenter</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#previousScale-prop">previousScale</a></b></b> : real</li>
<li class="fn"><b><b><a href="#rotation-prop">rotation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#scale-prop">scale</a></b></b> : real</li>
<li class="fn"><b><b><a href="#startCenter-prop">startCenter</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#startPoint1-prop">startPoint1</a></b></b> : QPointF</li>
<li class="fn"><b><b><a href="#startPoint2-prop">startPoint2</a></b></b> : QPointF</li>
</ul>
<!-- $$$PinchEvent-description -->
<h2>Detailed Description</h2>
<p><b>The PinchEvent type was added in QtQuick 1.1</b></p>
<p>The <tt>center</tt>, <tt>startCenter</tt>, <tt>previousCenter</tt> properties provide the center position between the two touch points.</p>
<p>The <tt>scale</tt> and <tt>previousScale</tt> properties provide the scale factor.</p>
<p>The <tt>angle</tt>, <tt>previousAngle</tt> and <tt>rotation</tt> properties provide the angle between the two points and the amount of rotation.</p>
<p>The <tt>point1</tt>, <tt>point2</tt>, <tt>startPoint1</tt>, <tt>startPoint2</tt> properties provide the positions of the touch points.</p>
<p>The <tt>accepted</tt> property may be set to false in the <tt>onPinchStarted</tt> handler if the gesture should not be handled.</p>
<p><b>See also </b><a href="QtQuick.PinchArea.md">PinchArea</a>.</p>
<!-- @@@PinchEvent -->
<h2>Property Documentation</h2>
<!-- $$$accepted -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">accepted</span> : <span class="type">bool</span></p></td></tr></table><p>Setting this property to false in the <tt>PinchArea::onPinchStarted</tt> handler will result in no further pinch events being generated, and the gesture ignored.</p>
<!-- @@@accepted -->
<br/>
<!-- $$$angle -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">angle</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the angle between the two touch points.</p>
<ul>
<li><tt>angle</tt> is the current angle between the two points in the range -180 to 180.</li>
<li><tt>previousAngle</tt> is the angle of the previous event.</li>
<li><tt>rotation</tt> is the total rotation since the pinch gesture started.</li>
</ul>
<p>When a pinch gesture is started, the rotation is <tt>0.0</tt>.</p>
<!-- @@@angle -->
<br/>
<!-- $$$center -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">center</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties hold the position of the center point between the two touch points.</p>
<ul>
<li><tt>center</tt> is the current center point</li>
<li><tt>previousCenter</tt> is the center point of the previous event.</li>
<li><tt>startCenter</tt> is the center point when the gesture began</li>
</ul>
<!-- @@@center -->
<br/>
<!-- $$$point1 -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">point1</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties provide the actual touch points generating the pinch.</p>
<ul>
<li><tt>point1</tt> and <tt>point2</tt> hold the current positions of the points.</li>
<li><tt>startPoint1</tt> and <tt>startPoint2</tt> hold the positions of the points when the second point was touched.</li>
</ul>
<!-- @@@point1 -->
<br/>
<!-- $$$point2 -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">point2</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties provide the actual touch points generating the pinch.</p>
<ul>
<li><tt>point1</tt> and <tt>point2</tt> hold the current positions of the points.</li>
<li><tt>startPoint1</tt> and <tt>startPoint2</tt> hold the positions of the points when the second point was touched.</li>
</ul>
<!-- @@@point2 -->
<br/>
<!-- $$$pointCount -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">pointCount</span> : <span class="type">int</span></p></td></tr></table><p>Holds the number of points currently touched. The <a href="QtQuick.PinchArea.md">PinchArea</a> will not react until two touch points have initited a gesture, but will remain active until all touch points have been released.</p>
<!-- @@@pointCount -->
<br/>
<!-- $$$previousAngle -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">previousAngle</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the angle between the two touch points.</p>
<ul>
<li><tt>angle</tt> is the current angle between the two points in the range -180 to 180.</li>
<li><tt>previousAngle</tt> is the angle of the previous event.</li>
<li><tt>rotation</tt> is the total rotation since the pinch gesture started.</li>
</ul>
<p>When a pinch gesture is started, the rotation is <tt>0.0</tt>.</p>
<!-- @@@previousAngle -->
<br/>
<!-- $$$previousCenter -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">previousCenter</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties hold the position of the center point between the two touch points.</p>
<ul>
<li><tt>center</tt> is the current center point</li>
<li><tt>previousCenter</tt> is the center point of the previous event.</li>
<li><tt>startCenter</tt> is the center point when the gesture began</li>
</ul>
<!-- @@@previousCenter -->
<br/>
<!-- $$$previousScale -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">previousScale</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the scale factor determined by the change in distance between the two touch points.</p>
<ul>
<li><tt>scale</tt> is the current scale factor.</li>
<li><tt>previousScale</tt> is the scale factor of the previous event.</li>
</ul>
<p>When a pinch gesture is started, the scale is <tt>1.0</tt>.</p>
<!-- @@@previousScale -->
<br/>
<!-- $$$rotation -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">rotation</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the angle between the two touch points.</p>
<ul>
<li><tt>angle</tt> is the current angle between the two points in the range -180 to 180.</li>
<li><tt>previousAngle</tt> is the angle of the previous event.</li>
<li><tt>rotation</tt> is the total rotation since the pinch gesture started.</li>
</ul>
<p>When a pinch gesture is started, the rotation is <tt>0.0</tt>.</p>
<!-- @@@rotation -->
<br/>
<!-- $$$scale -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">scale</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the scale factor determined by the change in distance between the two touch points.</p>
<ul>
<li><tt>scale</tt> is the current scale factor.</li>
<li><tt>previousScale</tt> is the scale factor of the previous event.</li>
</ul>
<p>When a pinch gesture is started, the scale is <tt>1.0</tt>.</p>
<!-- @@@scale -->
<br/>
<!-- $$$startCenter -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">startCenter</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties hold the position of the center point between the two touch points.</p>
<ul>
<li><tt>center</tt> is the current center point</li>
<li><tt>previousCenter</tt> is the center point of the previous event.</li>
<li><tt>startCenter</tt> is the center point when the gesture began</li>
</ul>
<!-- @@@startCenter -->
<br/>
<!-- $$$startPoint1 -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">startPoint1</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties provide the actual touch points generating the pinch.</p>
<ul>
<li><tt>point1</tt> and <tt>point2</tt> hold the current positions of the points.</li>
<li><tt>startPoint1</tt> and <tt>startPoint2</tt> hold the positions of the points when the second point was touched.</li>
</ul>
<!-- @@@startPoint1 -->
<br/>
<!-- $$$startPoint2 -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">startPoint2</span> : <span class="type">QPointF</span></p></td></tr></table><p>These properties provide the actual touch points generating the pinch.</p>
<ul>
<li><tt>point1</tt> and <tt>point2</tt> hold the current positions of the points.</li>
<li><tt>startPoint1</tt> and <tt>startPoint2</tt> hold the positions of the points when the second point was touched.</li>
</ul>
<!-- @@@startPoint2 -->
<br/>
