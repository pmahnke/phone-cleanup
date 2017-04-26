---
Title: QtQuick.Animator
---

# QtQuick.Animator

<span class="subtitle"></span>
<!-- $$$Animator-brief -->
<p>Is the base of all QML animators. More...</p>
<!-- @@@Animator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.2</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#duration-prop">duration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#easing-prop">easing</a></b></b><ul>
<li class="fn"><b><b><a href="#easing.type-prop">easing.type</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#easing.amplitude-prop">easing.amplitude</a></b></b> : real</li>
<li class="fn"><b><b><a href="#easing.overshoot-prop">easing.overshoot</a></b></b> : real</li>
<li class="fn"><b><b><a href="#easing.period-prop">easing.period</a></b></b> : real</li>
<li class="fn"><b><b><a href="#easing.bezierCurve-prop">easing.bezierCurve</a></b></b> : list&lt;real&gt;</li>
</ul>
</li>
<li class="fn"><b><b><a href="#from-prop">from</a></b></b> : real</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : QtQuick::Item</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : real</li>
</ul>
<!-- $$$Animator-description -->
<h2>Detailed Description</h2>
<p>Animator types are a special type of animation which operate directly on Qt Quick's scene graph, rather than the QML objects and their properties like regular Animation types do. This has the benefit that Animator based animations can animate on the <a href="QtQuick.qtquick-visualcanvas-scenegraph.md#threaded-render-loop">scene graph's rendering thread</a> even when the UI thread is blocked.</p>
<p>The value of the QML property will be updated after the animation has finished. The property is not updated while the animation is running.</p>
<p>The Animator types can be used just like any other Animation type.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">mixBox</span>
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="type"><a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a></span> {
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> {
<span class="name">target</span>: <span class="name">mixBox</span>
<span class="name">property</span>: <span class="string">&quot;color&quot;</span>
<span class="name">from</span>: <span class="string">&quot;forestgreen&quot;</span>
<span class="name">to</span>: <span class="string">&quot;lightsteelblue&quot;</span>;
<span class="name">duration</span>: <span class="number">1000</span>
}
<span class="type"><a href="QtQuick.ScaleAnimator.md">ScaleAnimator</a></span> {
<span class="name">target</span>: <span class="name">mixBox</span>
<span class="name">from</span>: <span class="number">2</span>
<span class="name">to</span>: <span class="number">1</span>
<span class="name">duration</span>: <span class="number">1000</span>
}
<span class="name">running</span>: <span class="number">true</span>
}
}</pre>
<p>If all sub-animations of <a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a> and <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> are Animator types, the <a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a> and <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> will also be treated as an Animator and be run on the scene graph's rendering thread when possible.</p>
<p>The Animator types can be used for animations during transitions, but they do not support the <a href="QtQuick.Transition.md#reversible-prop">reversible</a> property.</p>
<p>The Animator type cannot be used directly in a QML file. It exists to provide a set of common properties and methods, available across all the other animator types that inherit from it. Attempting to use the Animator type directly will result in an error.</p>
<!-- @@@Animator -->
<h2>Property Documentation</h2>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the duration of the animation in milliseconds.</p>
<p>The default value is 250.</p>
<!-- @@@duration -->
<br/>
<!-- $$$easing -->
<table class="qmlname"><tr valign="top"><th class="centerAlign"><p><b>easing group</b></p></th></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">easing.type</span> : <span class="type">enumeration</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">easing.amplitude</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">easing.overshoot</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">easing.period</span> : <span class="type">real</span></p></td></tr><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">easing.bezierCurve</span> : <span class="type">list</span>&lt;<span class="type">real</span>&gt;</p></td></tr></table><p>Specifies the easing curve used for the animation</p>
<p>To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period and/or overshoot (more details provided after the table). The default easing curve is <tt>Easing.Linear</tt>.</p>
<pre class="qml"><span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutElastic</span>; <span class="name">easing</span>.amplitude: <span class="number">2.0</span>; <span class="name">easing</span>.period: <span class="number">1.5</span> }</pre>
<p>Available types are:</p>
<table class="generic">
<tr valign="top"><td ><tt>Easing.Linear</tt></td><td >Easing curve for a linear (t) function: velocity is constant.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/b10c9093-6126-4c8c-be1e-9ef8068ca877-../QtQuick.Animator/images/qeasingcurve-linear.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InQuad</tt></td><td >Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/21693491-bff4-497c-a3d6-ea91e515ab99-../QtQuick.Animator/images/qeasingcurve-inquad.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutQuad</tt></td><td >Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/43890b14-39b6-40d3-90c6-b89993633eaa-../QtQuick.Animator/images/qeasingcurve-outquad.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InOutQuad</tt></td><td >Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/2b236f59-956f-4264-9fb4-8e3bdacef4c4-../QtQuick.Animator/images/qeasingcurve-inoutquad.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutInQuad</tt></td><td >Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/0cdfe1b7-7131-41dc-b85b-f6a8098c5707-../QtQuick.Animator/images/qeasingcurve-outinquad.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InCubic</tt></td><td >Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/7103aadf-09c9-4b96-8b64-a0a24869fc7e-../QtQuick.Animator/images/qeasingcurve-incubic.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutCubic</tt></td><td >Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/8cbd8adf-37ee-4c73-853b-bef7e12d47cb-../QtQuick.Animator/images/qeasingcurve-outcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InOutCubic</tt></td><td >Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/5f45931c-7eec-43be-b240-8958c4358841-../QtQuick.Animator/images/qeasingcurve-inoutcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutInCubic</tt></td><td >Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e73dd125-30e7-44bf-a99d-b07c8da90dd9-../QtQuick.Animator/images/qeasingcurve-outincubic.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InQuart</tt></td><td >Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/694aa067-e218-46a2-94b2-ec54c0e5db1c-../QtQuick.Animator/images/qeasingcurve-inquart.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutQuart</tt></td><td >Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/875cc211-433b-4385-910f-d4a357678d81-../QtQuick.Animator/images/qeasingcurve-outquart.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InOutQuart</tt></td><td >Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/3a408cee-082e-499f-86a2-6be1ef48d134-../QtQuick.Animator/images/qeasingcurve-inoutquart.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutInQuart</tt></td><td >Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/93c330b4-0dc6-42b3-a9fe-1d6fd584b35d-../QtQuick.Animator/images/qeasingcurve-outinquart.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InQuint</tt></td><td >Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e81e6f71-662c-4192-b0ce-1f08cfbbb961-../QtQuick.Animator/images/qeasingcurve-inquint.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutQuint</tt></td><td >Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/32760ca0-f5ee-40be-85d4-b932086d16ee-../QtQuick.Animator/images/qeasingcurve-outquint.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InOutQuint</tt></td><td >Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/bf892d07-6902-4609-9bb2-bbc803e8b8f7-../QtQuick.Animator/images/qeasingcurve-inoutquint.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutInQuint</tt></td><td >Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/b0b92847-0c53-463d-ad90-abd890d558ea-../QtQuick.Animator/images/qeasingcurve-outinquint.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InSine</tt></td><td >Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/dabba5fe-58a7-4c4d-82d9-9f3678fc236f-../QtQuick.Animator/images/qeasingcurve-insine.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutSine</tt></td><td >Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/960e5cf9-2360-4fa6-a691-45147fbfba34-../QtQuick.Animator/images/qeasingcurve-outsine.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InOutSine</tt></td><td >Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/11e9f952-06ce-4d54-9756-4a993b8b5ee7-../QtQuick.Animator/images/qeasingcurve-inoutsine.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutInSine</tt></td><td >Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/8809aada-32ef-4d04-b69d-b67809d5c8cf-../QtQuick.Animator/images/qeasingcurve-outinsine.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InExpo</tt></td><td >Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e393ed7f-4d16-4323-92e6-a61f1cf1c779-../QtQuick.Animator/images/qeasingcurve-inexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutExpo</tt></td><td >Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/9a8a3e0f-9950-48ec-87af-38d7eac4efca-../QtQuick.Animator/images/qeasingcurve-outexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InOutExpo</tt></td><td >Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/08e61e24-1de7-44ec-9d03-8f5521aae4d0-../QtQuick.Animator/images/qeasingcurve-inoutexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutInExpo</tt></td><td >Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/7a0d4c2e-14cb-40e1-bd6f-e68784d3a594-../QtQuick.Animator/images/qeasingcurve-outinexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InCirc</tt></td><td >Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/9f139430-f2f9-4a0a-aa1f-f419152274e8-../QtQuick.Animator/images/qeasingcurve-incirc.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutCirc</tt></td><td >Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/92f0c48c-461b-4aef-97c1-5322c7245a1b-../QtQuick.Animator/images/qeasingcurve-outcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InOutCirc</tt></td><td >Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/91f0a17f-1c36-4619-ab6f-8c0c05763eb6-../QtQuick.Animator/images/qeasingcurve-inoutcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutInCirc</tt></td><td >Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/48f56c26-4aca-47ef-9421-5ab72cb5da8f-../QtQuick.Animator/images/qeasingcurve-outincirc.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InElastic</tt></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity.<br />
<p>The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</p>
</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/919bdc16-6014-4c00-942f-640073cfb733-../QtQuick.Animator/images/qeasingcurve-inelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutElastic</tt></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity.<br />
<p>The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</p>
</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/08814ed8-aa77-45f0-abd8-206f5d1a386e-../QtQuick.Animator/images/qeasingcurve-outelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InOutElastic</tt></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/71a0c8ff-1fd2-416c-ba92-50ac479a1139-../QtQuick.Animator/images/qeasingcurve-inoutelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutInElastic</tt></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/3fec7eb3-c078-4262-bc0a-cd5e6502bc79-../QtQuick.Animator/images/qeasingcurve-outinelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InBack</tt></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/4f1b6558-ac5a-4c69-90cb-b0e57bdedb4a-../QtQuick.Animator/images/qeasingcurve-inback.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutBack</tt></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/772e4a6c-1285-431e-869d-201dbf4c3724-../QtQuick.Animator/images/qeasingcurve-outback.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InOutBack</tt></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/d4f6b1b1-2e32-40ac-b3b0-6cb6df838b2e-../QtQuick.Animator/images/qeasingcurve-inoutback.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutInBack</tt></td><td >Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/367c21ab-b351-4147-9b78-b517e9ae2fa3-../QtQuick.Animator/images/qeasingcurve-outinback.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InBounce</tt></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/5536f7cf-33fe-4893-91c1-aa6325991985-../QtQuick.Animator/images/qeasingcurve-inbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutBounce</tt></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/7527f4f8-4cfe-4452-98b0-bcbf755500c7-../QtQuick.Animator/images/qeasingcurve-outbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.InOutBounce</tt></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/8185c217-36b7-4163-aaf2-844b90353570-../QtQuick.Animator/images/qeasingcurve-inoutbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.OutInBounce</tt></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/9aa8b06e-15a8-4e22-b285-75ecbbadc8f5-../QtQuick.Animator/images/qeasingcurve-outinbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><tt>Easing.Bezier</tt></td><td >Custom easing curve defined by the easing.bezierCurve property.</td><td ></td></tr>
</table>
<p><tt>easing.amplitude</tt> is only applicable for bounce and elastic curves (curves of type <tt>Easing.InBounce</tt>, <tt>Easing.OutBounce</tt>, <tt>Easing.InOutBounce</tt>, <tt>Easing.OutInBounce</tt>, <tt>Easing.InElastic</tt>, <tt>Easing.OutElastic</tt>, <tt>Easing.InOutElastic</tt> or <tt>Easing.OutInElastic</tt>).</p>
<p><tt>easing.overshoot</tt> is only applicable if <tt>easing.type</tt> is: <tt>Easing.InBack</tt>, <tt>Easing.OutBack</tt>, <tt>Easing.InOutBack</tt> or <tt>Easing.OutInBack</tt>.</p>
<p><tt>easing.period</tt> is only applicable if easing.type is: <tt>Easing.InElastic</tt>, <tt>Easing.OutElastic</tt>, <tt>Easing.InOutElastic</tt> or <tt>Easing.OutInElastic</tt>.</p>
<p><tt>easing.bezierCurve</tt> is only applicable if easing.type is: <tt>Easing.Bezier</tt>. This property is a list&lt;real&gt; containing groups of three points defining a curve from 0,0 to 1,1 - control1, control2, end point: [cx1, cy1, cx2, cy2, endx, endy, ..&#x2e;]&#x2e; The last point must be 1,1.</p>
<p>See the easing example for a demonstration of the different easing settings.</p>
<!-- @@@easing -->
<br/>
<!-- $$$from -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">from</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the starting value for the animation.</p>
<p>If the Animator is defined within a <a href="QtQuick.Transition.md">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the starting state of the <a href="QtQuick.Transition.md">Transition</a>, or the current value of the property at the moment the <a href="QtQuick.Behavior.md">Behavior</a> is triggered.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@from -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type"><a href="QtQuick.Item.md">QtQuick::Item</a></span></p></td></tr></table><p>This property holds the target item of the animator.</p>
<p><b>Note: </b>Animator targets must be Item based types.</p><!-- @@@target -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the end value for the animation.</p>
<p>If the Animator is defined within a <a href="QtQuick.Transition.md">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the end state of the <a href="QtQuick.Transition.md">Transition</a>, or the value of the property change that triggered the <a href="QtQuick.Behavior.md">Behavior</a>.</p>
<!-- @@@to -->
<br/>
