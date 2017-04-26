---
Title: Ubuntu.Test.TestExtras
---

# Ubuntu.Test.TestExtras

<span class="subtitle"></span>
<!-- $$$TestExtras-brief -->
<p>Singleton type providing additional test functions. More...</p>
<!-- @@@TestExtras -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Test .</tt></td></tr></table><ul>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn"><b><b><a href="#registerTouchDevice-method">registerTouchDevice</a></b></b>()</li>
<li class="fn"><b><b><a href="#touchClick-method">touchClick</a></b></b>(touchId, item, point)</li>
<li class="fn"><b><b><a href="#touchDevicePresent-method">touchDevicePresent</a></b></b>()</li>
<li class="fn"><b><b><a href="#touchDoubleClick-method">touchDoubleClick</a></b></b>(touchId, item, point)</li>
<li class="fn"><b><b><a href="#touchDrag-method">touchDrag</a></b></b>(touchId, item, from, delta, steps)</li>
<li class="fn"><b><b><a href="#touchLongPress-method">touchLongPress</a></b></b>(touchId, item, point)</li>
<li class="fn"><b><b><a href="#touchMove-method">touchMove</a></b></b>(touchId, item, point)</li>
<li class="fn"><b><b><a href="#touchPress-method">touchPress</a></b></b>(touchId, item, point)</li>
<li class="fn"><b><b><a href="#touchRelease-method">touchRelease</a></b></b>(touchId, item, point)</li>
</ul>
<!-- $$$TestExtras-description -->
<h2>Detailed Description</h2>
<p>The component provides additional test functions like touch handling, registering touch device on non-touch screen enabled environment.</p>
<!-- @@@TestExtras -->
<h2>Method Documentation</h2>
<!-- $$$registerTouchDevice -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">registerTouchDevice</span>()</p></td></tr></table><p>Registers a touch device if there's none registered. Calling the function in touch enabled environment has no effect. The function must be called in initTestCase() in order to perform touch related tests.</p>
<!-- @@@registerTouchDevice -->
<br/>
<!-- $$$touchClick -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">touchClick</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-point.html">point</a></span>)</p></td></tr></table><p>The function performs a pair of <a href="#touchPress-method">touchPress</a> and <a href="#touchRelease-method">touchRelease</a> calls on the same point resulting in a click like event.</p>
<!-- @@@touchClick -->
<br/>
<!-- $$$touchDevicePresent -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">touchDevicePresent</span>()</p></td></tr></table><p>Returns true if the system has a touch device registered.</p>
<!-- @@@touchDevicePresent -->
<br/>
<!-- $$$touchDoubleClick -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">touchDoubleClick</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-point.html">point</a></span>)</p></td></tr></table><p>The function performs two consecutive <a href="#touchClick-method">touchClick</a> events with a slight delay in between each click event.</p>
<!-- @@@touchDoubleClick -->
<br/>
<!-- $$$touchDrag -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">touchDrag</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type">from</span>, <span class="type">delta</span>, <span class="type">steps</span> = 5)</p></td></tr></table><p>The function performs a drag gesture on a touch point identified by <i>touchId</i> over an <i>item</i> from the starting point <i>from</i> with a <i>delta</i>. The gesture is realized with a touch press, <i>step</i> moves and a release event.</p>
<p>By default the function uses 5 steps to produce the gesture. This value can be any positive number, driving the gesture appliance to be faster (less than 5 moves) or slower (more than 5 moves). If a negative or 0 value is given, the function will use the default 5 steps to produce the gesture.</p>
<!-- @@@touchDrag -->
<br/>
<!-- $$$touchLongPress -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">touchLongPress</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-point.html">point</a></span>)</p></td></tr></table><p>The function produces a <a href="#touchPress-method">touchPress</a> event with a timeout equivalent to the mouse <tt>pressAndHold</tt> timeout, after which the function returns.</p>
<!-- @@@touchLongPress -->
<br/>
<!-- $$$touchMove -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">touchMove</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-point.html">point</a></span>)</p></td></tr></table><p>The function moves the touch point identified by the <i>touchId</i> to the destination <i>point</i>. The point is in <i>item</i> coordinates. The touch point identified by the <i>touchId</i> must be pressed before calling this function in order to produce the desired functionality. The event can be captured in a <tt>MultiPointTouchArea</tt> through <tt>updated()</tt> signal.</p>
<!-- @@@touchMove -->
<br/>
<!-- $$$touchPress -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">touchPress</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-point.html">point</a></span>)</p></td></tr></table><p>The function triggers a touch press event for a given <i>touchId</i> on a specific <i>item</i>. The <i>point</i> contains the (x,y) coordinates of the event in <i>item</i> coordinates.</p>
<!-- @@@touchPress -->
<br/>
<!-- $$$touchRelease -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">touchRelease</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-point.html">point</a></span>)</p></td></tr></table><p>The function produces a touch release event on a given <i>touchId</i> performed on <i>item</i> at a <i>point</i>.</p>
<!-- @@@touchRelease -->
<br/>
