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
<tr valign="top"><td ><code>Easing.Linear</code></td><td >Easing curve for a linear (t) function: velocity is constant.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/2ee17eb9-7dac-4787-8094-e77651cf5301-../QtQuick.Animator/images/qeasingcurve-linear.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuad</code></td><td >Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/b33c8c80-36ba-43dd-a602-8c853aba8d68-../QtQuick.Animator/images/qeasingcurve-inquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuad</code></td><td >Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/995e15cb-9a3e-4b53-96d1-fce966d33380-../QtQuick.Animator/images/qeasingcurve-outquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuad</code></td><td >Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/d01c1eeb-c362-4df2-809b-b17aaddfbe50-../QtQuick.Animator/images/qeasingcurve-inoutquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuad</code></td><td >Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/a435825d-31ce-4d09-9aa1-67d14cb6932b-../QtQuick.Animator/images/qeasingcurve-outinquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InCubic</code></td><td >Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/fede605b-5c80-4bcd-a783-b92089fd6e4e-../QtQuick.Animator/images/qeasingcurve-incubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutCubic</code></td><td >Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/b7e03a4a-278f-4802-9aa0-dcb95111648f-../QtQuick.Animator/images/qeasingcurve-outcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutCubic</code></td><td >Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/adf2af7e-6ac8-4329-b3e2-fea7f13108ef-../QtQuick.Animator/images/qeasingcurve-inoutcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInCubic</code></td><td >Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/aa7c9cdd-0b20-4b6d-abb3-829c8ffd08f4-../QtQuick.Animator/images/qeasingcurve-outincubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuart</code></td><td >Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/b775d264-d454-462e-865b-d4ef25349c84-../QtQuick.Animator/images/qeasingcurve-inquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuart</code></td><td >Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/493f8bc4-1474-4495-8832-770324ef9514-../QtQuick.Animator/images/qeasingcurve-outquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuart</code></td><td >Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/b9341f88-66f4-4674-921e-649c48bcecef-../QtQuick.Animator/images/qeasingcurve-inoutquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuart</code></td><td >Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/82054186-4b6e-40cb-95c9-99ec15fc7da9-../QtQuick.Animator/images/qeasingcurve-outinquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuint</code></td><td >Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/86db4b5e-e279-4fee-b201-5b288432e443-../QtQuick.Animator/images/qeasingcurve-inquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuint</code></td><td >Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/afac003b-27be-4b6a-a7ac-c403cd4b8b2b-../QtQuick.Animator/images/qeasingcurve-outquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuint</code></td><td >Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/a79bfb87-ebfc-4ca5-b57b-2f8a82d37761-../QtQuick.Animator/images/qeasingcurve-inoutquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuint</code></td><td >Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/21e6cdf2-8d9f-4b0e-ae71-8d1e673a6e6e-../QtQuick.Animator/images/qeasingcurve-outinquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/312c6a3d-b869-4c1c-a37a-f6532a273526-../QtQuick.Animator/images/qeasingcurve-insine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/65ef7d5b-2679-44dd-96a9-cea6ad3d3a83-../QtQuick.Animator/images/qeasingcurve-outsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/f1d361df-16f2-4996-96b9-31205f9e9d7e-../QtQuick.Animator/images/qeasingcurve-inoutsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e3c9b83e-58f6-47a6-8086-f29b4c67b4e7-../QtQuick.Animator/images/qeasingcurve-outinsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InExpo</code></td><td >Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/fc7dfd66-2215-47f4-bd92-c4fab6460d4b-../QtQuick.Animator/images/qeasingcurve-inexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutExpo</code></td><td >Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/36937e2b-f284-4ae3-852f-eeaaac8b1326-../QtQuick.Animator/images/qeasingcurve-outexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutExpo</code></td><td >Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/afe76032-8485-40ff-bfda-6e1f5f5d64df-../QtQuick.Animator/images/qeasingcurve-inoutexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInExpo</code></td><td >Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/f6fa10fa-9340-4a1e-aeee-c53aa10f6235-../QtQuick.Animator/images/qeasingcurve-outinexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/a6c77e65-8d06-4db6-9f96-35fcbc403886-../QtQuick.Animator/images/qeasingcurve-incirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/46bd8d62-b1f5-46da-b401-6747e93bb6e2-../QtQuick.Animator/images/qeasingcurve-outcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/04db7b2a-de04-4f5a-a935-04e89fa618f9-../QtQuick.Animator/images/qeasingcurve-inoutcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/659661d2-f2cb-4978-a252-f0b7ea35dbac-../QtQuick.Animator/images/qeasingcurve-outincirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity. <br />
The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/34e6c505-5d00-4484-9018-97b8dbb2d866-../QtQuick.Animator/images/qeasingcurve-inelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity. <br />
The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/67a20439-55dc-469f-9ed7-6160f653aa44-../QtQuick.Animator/images/qeasingcurve-outelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/1561447a-6ad2-4c16-a8d0-78f992ff26c9-../QtQuick.Animator/images/qeasingcurve-inoutelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/b61029ca-ce21-4c63-a5d3-76a29fa62ff0-../QtQuick.Animator/images/qeasingcurve-outinelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/7138f5ea-eafb-4a45-aa94-8616e2481fe1-../QtQuick.Animator/images/qeasingcurve-inback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/56ad20e0-bcab-4f5d-9c77-58b22893a08d-../QtQuick.Animator/images/qeasingcurve-outback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/94e09351-cbf4-41c3-a183-890cb3d323cc-../QtQuick.Animator/images/qeasingcurve-inoutback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInBack</code></td><td >Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/075d0f52-df10-4c05-b310-74d761b37236-../QtQuick.Animator/images/qeasingcurve-outinback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/6b77e7cc-ad1e-4abe-91c4-6689dd3810da-../QtQuick.Animator/images/qeasingcurve-inbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e1ac66d5-d404-490d-a225-c846d9f19eeb-../QtQuick.Animator/images/qeasingcurve-outbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/93da660c-2896-4b52-969f-07225aa24609-../QtQuick.Animator/images/qeasingcurve-inoutbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/528bdce7-bf14-4fe0-a0b6-f26a2dc6d7eb-../QtQuick.Animator/images/qeasingcurve-outinbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.Bezier</code></td><td >Custom easing curve defined by the easing.bezierCurve property.</td><td ></td></tr>
</table>
<p><code>easing.amplitude</code> is only applicable for bounce and elastic curves (curves of type <code>Easing.InBounce</code>, <code>Easing.OutBounce</code>, <code>Easing.InOutBounce</code>, <code>Easing.OutInBounce</code>, <code>Easing.InElastic</code>, <code>Easing.OutElastic</code>, <code>Easing.InOutElastic</code> or <code>Easing.OutInElastic</code>).</p>
<p><code>easing.overshoot</code> is only applicable if <code>easing.type</code> is: <code>Easing.InBack</code>, <code>Easing.OutBack</code>, <code>Easing.InOutBack</code> or <code>Easing.OutInBack</code>.</p>
<p><code>easing.period</code> is only applicable if easing.type is: <code>Easing.InElastic</code>, <code>Easing.OutElastic</code>, <code>Easing.InOutElastic</code> or <code>Easing.OutInElastic</code>.</p>
<p><code>easing.bezierCurve</code> is only applicable if easing.type is: <code>Easing.Bezier</code>. This property is a list&lt;real&gt; containing groups of three points defining a curve from 0,0 to 1,1 - control1, control2, end point: [cx1, cy1, cx2, cy2, endx, endy, ..&#x2e;]&#x2e; The last point must be 1,1.</p>
<p>See the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04/QtQuick.animation/#easing-curves">Easing Curves</a> for a demonstration of the different easing settings.</p>
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
