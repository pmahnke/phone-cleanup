---
Title: QtQuick.Animator
---

# QtQuick.Animator

<span class="subtitle"></span>
<!-- $$$Animator-brief -->
<p>Is the base of all QML animators. More...</p>
<!-- @@@Animator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
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
<h2 id="details">Detailed Description</h2>
</p>
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
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the duration of the animation in milliseconds.</p>
<p>The default value is 250.</p>
<!-- @@@duration -->
<br/>
<!-- $$$easing -->
<table class="qmlname"><tr valign="top" id="easing-prop"><th class="centerAlign"><p><b>easing group</b></p></th></tr><tr valign="top" id="easing.type-prop"><td class="tblQmlPropNode"><p><span class="name">easing.type</span> : <span class="type">enumeration</span></p></td></tr><tr valign="top" id="easing.amplitude-prop"><td class="tblQmlPropNode"><p><span class="name">easing.amplitude</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.overshoot-prop"><td class="tblQmlPropNode"><p><span class="name">easing.overshoot</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.period-prop"><td class="tblQmlPropNode"><p><span class="name">easing.period</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.bezierCurve-prop"><td class="tblQmlPropNode"><p><span class="name">easing.bezierCurve</span> : <span class="type">list</span>&lt;<span class="type">real</span>&gt;</p></td></tr></table><p>Specifies the easing curve used for the animation</p>
<p>To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period and/or overshoot (more details provided after the table). The default easing curve is <code>Easing.Linear</code>.</p>
<pre class="qml"><span class="type"><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutElastic</span>; <span class="name">easing</span>.amplitude: <span class="number">2.0</span>; <span class="name">easing</span>.period: <span class="number">1.5</span> }</pre>
<p>Available types are:</p>
<table class="generic">
<tr valign="top"><td ><code>Easing.Linear</code></td><td >Easing curve for a linear (t) function: velocity is constant.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/6780c2d4-2009-4b60-a377-a1e4f698c837-../QtQuick.Animator/images/qeasingcurve-linear.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuad</code></td><td >Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/65fa8efa-5e7d-4635-a646-4e9229bfe1bc-../QtQuick.Animator/images/qeasingcurve-inquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuad</code></td><td >Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/be9ff58c-4eb4-4ede-a979-d63630220302-../QtQuick.Animator/images/qeasingcurve-outquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuad</code></td><td >Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/d9a4a629-4285-4252-a2cb-43c1cf3c2c24-../QtQuick.Animator/images/qeasingcurve-inoutquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuad</code></td><td >Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/bc806f47-45b1-4a94-8b8e-bf727dfbf062-../QtQuick.Animator/images/qeasingcurve-outinquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InCubic</code></td><td >Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/06d84f30-853d-44e5-a6e8-676ea37e04e1-../QtQuick.Animator/images/qeasingcurve-incubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutCubic</code></td><td >Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/940dafbf-792d-4fd9-b6bc-7f52b32ebece-../QtQuick.Animator/images/qeasingcurve-outcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutCubic</code></td><td >Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/17d82cef-a66b-420a-9aaf-2eb4ec19670e-../QtQuick.Animator/images/qeasingcurve-inoutcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInCubic</code></td><td >Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/a1e0a3e6-65bc-4430-9dd0-dd5f7205554f-../QtQuick.Animator/images/qeasingcurve-outincubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuart</code></td><td >Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/fb3fde2f-1ddc-4f34-86d2-7ab1d4b2d329-../QtQuick.Animator/images/qeasingcurve-inquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuart</code></td><td >Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/0fd10736-d0df-4e5e-9247-7cbaafc2144a-../QtQuick.Animator/images/qeasingcurve-outquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuart</code></td><td >Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/16000180-a32f-46e8-935c-55ddabf42cc7-../QtQuick.Animator/images/qeasingcurve-inoutquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuart</code></td><td >Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/8801ffa9-ba3b-4492-b53f-2ed9c120a901-../QtQuick.Animator/images/qeasingcurve-outinquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuint</code></td><td >Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/661e6e6f-6906-4746-8499-8d45ad2561ab-../QtQuick.Animator/images/qeasingcurve-inquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuint</code></td><td >Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/6097c73d-d2fb-490f-b37e-f3e753027699-../QtQuick.Animator/images/qeasingcurve-outquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuint</code></td><td >Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/79d27faf-958e-47ed-a868-4ddd4d7e18cc-../QtQuick.Animator/images/qeasingcurve-inoutquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuint</code></td><td >Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/fd5f776a-3550-449e-b655-58984a7e251b-../QtQuick.Animator/images/qeasingcurve-outinquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/d129ce93-75bc-42c0-a90a-c34d86355cc7-../QtQuick.Animator/images/qeasingcurve-insine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/3a110773-de93-4edc-9e7d-c541f5f72293-../QtQuick.Animator/images/qeasingcurve-outsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/50dcb927-b42b-4c14-ab69-340df78853a6-../QtQuick.Animator/images/qeasingcurve-inoutsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/9da8e52b-e086-4579-9d10-22cefc98194d-../QtQuick.Animator/images/qeasingcurve-outinsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InExpo</code></td><td >Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/c9826d3a-bf58-44a5-9147-9e6d90d22df4-../QtQuick.Animator/images/qeasingcurve-inexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutExpo</code></td><td >Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/96823ddc-7e9b-48eb-a102-ed67e2558c45-../QtQuick.Animator/images/qeasingcurve-outexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutExpo</code></td><td >Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/180168f8-dd8b-4b4e-b49e-a6e963adede3-../QtQuick.Animator/images/qeasingcurve-inoutexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInExpo</code></td><td >Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/ecf8fd38-5ee6-4845-b540-09cdc4da8d8a-../QtQuick.Animator/images/qeasingcurve-outinexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/072bfa3e-bf43-47b7-99a3-f504ac096285-../QtQuick.Animator/images/qeasingcurve-incirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/0aefcc7a-9b28-472d-8ebc-3fa348a1046c-../QtQuick.Animator/images/qeasingcurve-outcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e3973154-b6d3-4cb4-a928-71080052b7d1-../QtQuick.Animator/images/qeasingcurve-inoutcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/987c68ee-dec5-4986-b80f-64a940a934b2-../QtQuick.Animator/images/qeasingcurve-outincirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity. <br />
The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e131cc21-153d-4e03-bdf4-d3b310168f77-../QtQuick.Animator/images/qeasingcurve-inelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity. <br />
The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/fda8e313-f6e7-4a47-8a92-5e4f8b9cf200-../QtQuick.Animator/images/qeasingcurve-outelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/46983226-ac5b-49ef-b6d1-ba6e991ef356-../QtQuick.Animator/images/qeasingcurve-inoutelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/f94fbb7b-90dc-453e-ac32-9ec56547ca56-../QtQuick.Animator/images/qeasingcurve-outinelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/cbb4ea40-144d-4a77-973c-5f2a9617289c-../QtQuick.Animator/images/qeasingcurve-inback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/425a3b70-adc5-4ea8-be42-1514208e8d48-../QtQuick.Animator/images/qeasingcurve-outback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/d118aa20-bcae-407e-8a18-918a6d439179-../QtQuick.Animator/images/qeasingcurve-inoutback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInBack</code></td><td >Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/ec8204c6-b6fd-45fb-926e-bf50381d6a6f-../QtQuick.Animator/images/qeasingcurve-outinback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/cc461b69-f720-402b-8afb-96f0b1f5ff3b-../QtQuick.Animator/images/qeasingcurve-inbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/335588d9-8612-4e75-861a-fca0bd87472f-../QtQuick.Animator/images/qeasingcurve-outbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/29ede3ca-ee06-413d-968c-296b7b564f28-../QtQuick.Animator/images/qeasingcurve-inoutbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/c0992212-ba3d-469a-b369-798282a558ac-../QtQuick.Animator/images/qeasingcurve-outinbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.Bezier</code></td><td >Custom easing curve defined by the easing.bezierCurve property.</td><td ></td></tr>
</table>
<p><code>easing.amplitude</code> is only applicable for bounce and elastic curves (curves of type <code>Easing.InBounce</code>, <code>Easing.OutBounce</code>, <code>Easing.InOutBounce</code>, <code>Easing.OutInBounce</code>, <code>Easing.InElastic</code>, <code>Easing.OutElastic</code>, <code>Easing.InOutElastic</code> or <code>Easing.OutInElastic</code>).</p>
<p><code>easing.overshoot</code> is only applicable if <code>easing.type</code> is: <code>Easing.InBack</code>, <code>Easing.OutBack</code>, <code>Easing.InOutBack</code> or <code>Easing.OutInBack</code>.</p>
<p><code>easing.period</code> is only applicable if easing.type is: <code>Easing.InElastic</code>, <code>Easing.OutElastic</code>, <code>Easing.InOutElastic</code> or <code>Easing.OutInElastic</code>.</p>
<p><code>easing.bezierCurve</code> is only applicable if easing.type is: <code>Easing.Bezier</code>. This property is a list&lt;real&gt; containing groups of three points defining a curve from 0,0 to 1,1 - control1, control2, end point: [cx1, cy1, cx2, cy2, endx, endy, ..&#x2e;]&#x2e; The last point must be 1,1.</p>
<p>See the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtQuick.animation/#easing-curves">Easing Curves</a> for a demonstration of the different easing settings.</p>
<!-- @@@easing -->
<br/>
<!-- $$$from -->
<table class="qmlname"><tr valign="top" id="from-prop"><td class="tblQmlPropNode"><p><span class="name">from</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the starting value for the animation.</p>
<p>If the Animator is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the starting state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the current value of the property at the moment the <a href="QtQuick.Behavior.md">Behavior</a> is triggered.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@from -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type"><a href="QtQuick.Item.md">QtQuick::Item</a></span></p></td></tr></table><p>This property holds the target item of the animator.</p>
<p><b>Note: </b>Animator targets must be Item based types.</p><!-- @@@target -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top" id="to-prop"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the end value for the animation.</p>
<p>If the Animator is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the end state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the value of the property change that triggered the <a href="QtQuick.Behavior.md">Behavior</a>.</p>
<!-- @@@to -->
<br/>
