---
Title: QtQuick.Animation
---

# QtQuick.Animation

<span class="subtitle"></span>
<!-- $$$Animation-brief -->
<p>Is the base of all QML animations More...</p>
<!-- @@@Animation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a>, <a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a>, <a href="QtQuick.ParentAnimation.md">ParentAnimation</a>, <a href="QtQuick.PathAnimation.md">PathAnimation</a>, <a href="QtQuick.PauseAnimation.md">PauseAnimation</a>, <a href="QtQuick.PropertyAction.md">PropertyAction</a>, <a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a>, <a href="QtQuick.ScriptAction.md">ScriptAction</a>, and <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a>.</p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#alwaysRunToEnd-prop">alwaysRunToEnd</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#loops-prop">loops</a></b></b> : int</li>
<li class="fn"><b><b><a href="#paused-prop">paused</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#running-prop">running</a></b></b> : bool</li>
</ul>
<h2>Signals</h2>
<ul>
<li class="fn"><b><b><a href="#started-signal">started</a></b></b>()</li>
<li class="fn"><b><b><a href="#stopped-signal">stopped</a></b></b>()</li>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn"><b><b><a href="#complete-method">complete</a></b></b>()</li>
<li class="fn"><b><b><a href="#pause-method">pause</a></b></b>()</li>
<li class="fn"><b><b><a href="#restart-method">restart</a></b></b>()</li>
<li class="fn"><b><b><a href="#resume-method">resume</a></b></b>()</li>
<li class="fn"><b><b><a href="#start-method">start</a></b></b>()</li>
<li class="fn"><b><b><a href="#stop-method">stop</a></b></b>()</li>
</ul>
<!-- $$$Animation-description -->
<h2>Detailed Description</h2>
<p>The Animation type cannot be used directly in a QML file. It exists to provide a set of common properties and methods, available across all the other animation types that inherit from it. Attempting to use the Animation type directly will result in an error.</p>
<!-- @@@Animation -->
<h2>Property Documentation</h2>
<!-- $$$alwaysRunToEnd -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">alwaysRunToEnd</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the animation should run to completion when it is stopped.</p>
<p>If this true the animation will complete its current iteration when it is stopped - either by setting the <tt>running</tt> property to false, or by calling the <tt>stop()</tt> method. The <tt>complete()</tt> method is not effected by this value.</p>
<p>This behavior is most useful when the <tt>loops</tt> property is set, as the animation will finish playing normally but not restart.</p>
<p>By default, the alwaysRunToEnd property is not set.</p>
<p><b>Note: </b>alwaysRunToEnd has no effect on animations in a Transition.</p><!-- @@@alwaysRunToEnd -->
<br/>
<!-- $$$loops -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">loops</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of times the animation should play.</p>
<p>By default, <tt>loops</tt> is 1: the animation will play through once and then stop.</p>
<p>If set to Animation.Infinite, the animation will continuously repeat until it is explicitly stopped - either by setting the <tt>running</tt> property to false, or by calling the <tt>stop()</tt> method.</p>
<p>In the following example, the rectangle will spin indefinitely.</p>
<pre class="cpp">Rectangle {
width: <span class="number">100</span>; height: <span class="number">100</span>; color: <span class="string">&quot;green&quot;</span>
RotationAnimation on rotation {
loops: Animation<span class="operator">.</span>Infinite
from: <span class="number">0</span>
to: <span class="number">360</span>
}
}</pre>
<!-- @@@loops -->
<br/>
<!-- $$$paused -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">paused</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the animation is currently paused.</p>
<p>The <tt>paused</tt> property can be set to declaratively control whether or not an animation is paused.</p>
<p>Animations can also be paused and resumed imperatively from JavaScript using the <tt>pause()</tt> and <tt>resume()</tt> methods.</p>
<p>By default, animations are not paused.</p>
<!-- @@@paused -->
<br/>
<!-- $$$running -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">running</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the animation is currently running.</p>
<p>The <tt>running</tt> property can be set to declaratively control whether or not an animation is running. The following example will animate a rectangle whenever the <a href="QtQuick.MouseArea.md">MouseArea</a> is pressed.</p>
<pre class="cpp">Rectangle {
width: <span class="number">100</span>; height: <span class="number">100</span>
NumberAnimation on x {
running: myMouse<span class="operator">.</span>pressed
from: <span class="number">0</span>; to: <span class="number">100</span>
}
MouseArea { id: myMouse }
}</pre>
<p>Likewise, the <tt>running</tt> property can be read to determine if the animation is running. In the following example the Text item will indicate whether or not the animation is running.</p>
<pre class="cpp">NumberAnimation { id: myAnimation }
Text { text: myAnimation<span class="operator">.</span>running <span class="operator">?</span> <span class="string">&quot;Animation is running&quot;</span> : <span class="string">&quot;Animation is not running&quot;</span> }</pre>
<p>Animations can also be started and stopped imperatively from JavaScript using the <tt>start()</tt> and <tt>stop()</tt> methods.</p>
<p>By default, animations are not running. Though, when the animations are assigned to properties, as property value sources using the <i>on</i> syntax, they are set to running by default.</p>
<!-- @@@running -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$started -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">started</span>()</p></td></tr></table><p>This signal is emitted when the animation begins.</p>
<p>It is only triggered for top-level, standalone animations. It will not be triggered for animations in a Behavior or Transition, or animations that are part of an animation group.</p>
<p>The corresponding handler is <tt>onStarted</tt>.</p>
<!-- @@@started -->
<br/>
<!-- $$$stopped -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">stopped</span>()</p></td></tr></table><p>This signal is emitted when the animation ends.</p>
<p>The animation may have been stopped manually, or may have run to completion.</p>
<p>It is only triggered for top-level, standalone animations. It will not be triggered for animations in a Behavior or Transition, or animations that are part of an animation group.</p>
<p>If <a href="#alwaysRunToEnd-prop">alwaysRunToEnd</a> is true, this signal will not be emitted until the animation has completed its current iteration.</p>
<p>The corresponding handler is <tt>onStopped</tt>.</p>
<!-- @@@stopped -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$complete -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">complete</span>()</p></td></tr></table><p>Stops the animation, jumping to the final property values</p>
<p>If the animation is not running, calling this method has no effect. The <tt>running</tt> property will be false following a call to <tt>complete()</tt>.</p>
<p>Unlike <tt>stop()</tt>, <tt>complete()</tt> immediately fast-forwards the animation to its end. In the following example,</p>
<pre class="cpp">Rectangle {
NumberAnimation on x { from: <span class="number">0</span>; to: <span class="number">100</span>; duration: <span class="number">500</span> }
}</pre>
<p>calling <tt>stop()</tt> at time 250ms will result in the <tt>x</tt> property having a value of 50, while calling <tt>complete()</tt> will set the <tt>x</tt> property to 100, exactly as though the animation had played the whole way through.</p>
<!-- @@@complete -->
<br/>
<!-- $$$pause -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">pause</span>()</p></td></tr></table><p>Pauses the animation</p>
<p>If the animation is already paused or not <tt>running</tt>, calling this method has no effect. The <tt>paused</tt> property will be true following a call to <tt>pause()</tt>.</p>
<!-- @@@pause -->
<br/>
<!-- $$$restart -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">restart</span>()</p></td></tr></table><p>Restarts the animation</p>
<p>This is a convenience method, and is equivalent to calling <tt>stop()</tt> and then <tt>start()</tt>.</p>
<!-- @@@restart -->
<br/>
<!-- $$$resume -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">resume</span>()</p></td></tr></table><p>Resumes a paused animation</p>
<p>If the animation is not paused or not <tt>running</tt>, calling this method has no effect. The <tt>paused</tt> property will be false following a call to <tt>resume()</tt>.</p>
<!-- @@@resume -->
<br/>
<!-- $$$start -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">start</span>()</p></td></tr></table><p>Starts the animation</p>
<p>If the animation is already running, calling this method has no effect. The <tt>running</tt> property will be true following a call to <tt>start()</tt>.</p>
<!-- @@@start -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">stop</span>()</p></td></tr></table><p>Stops the animation</p>
<p>If the animation is not running, calling this method has no effect. Both the <tt>running</tt> and <tt>paused</tt> properties will be false following a call to <tt>stop()</tt>.</p>
<p>Normally <tt>stop()</tt> stops the animation immediately, and the animation has no further influence on property values. In this example animation</p>
<pre class="cpp">Rectangle {
NumberAnimation on x { from: <span class="number">0</span>; to: <span class="number">100</span>; duration: <span class="number">500</span> }
}</pre>
<p>was stopped at time 250ms, the <tt>x</tt> property will have a value of 50.</p>
<p>However, if the <tt>alwaysRunToEnd</tt> property is set, the animation will continue running until it completes and then stop. The <tt>running</tt> property will still become false immediately.</p>
<!-- @@@stop -->
<br/>
