---
Title: QtQuick.PropertyAnimation
---

# QtQuick.PropertyAnimation

<span class="subtitle"></span>
<!-- $$$PropertyAnimation-brief -->
<p>Animates changes in property values More...</p>
<!-- @@@PropertyAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Animation.md">Animation</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.ColorAnimation.md">ColorAnimation</a>, <a href="QtQuick.NumberAnimation.md">NumberAnimation</a>, <a href="QtQuick.RotationAnimation.md">RotationAnimation</a>, and <a href="QtQuick.Vector3dAnimation.md">Vector3dAnimation</a>.</p>
</td></tr></table><ul>
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
<li class="fn"><b><b><a href="#exclude-prop">exclude</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#from-prop">from</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#properties-prop">properties</a></b></b> : string</li>
<li class="fn"><b><b><a href="#property-prop">property</a></b></b> : string</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Object</li>
<li class="fn"><b><b><a href="#targets-prop">targets</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : variant</li>
</ul>
<!-- $$$PropertyAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.4/QtQuick.animation/#propertyanimation">PropertyAnimation</a> provides a way to animate changes to a property's value.</p>
<p>It can be used to define animations in a number of ways:</p>
<ul>
<li>In a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a><p>For example, to animate any objects that have changed their <code>x</code> or <code>y</code> properties as a result of a state change, using an <code>InOutQuad</code> easing curve:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;moved&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">x</span>: <span class="number">50</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
}
}</pre>
</li>
<li>In a <a href="QtQuick.Behavior.md">Behavior</a><p>For example, to animate all changes to a rectangle's <code>x</code> property:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
Behavior on <span class="name">x</span> { <span class="type"><a href="index.html">PropertyAnimation</a></span> {} }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">parent</span>.<span class="name">x</span> <span class="operator">=</span> <span class="number">50</span> }
}</pre>
</li>
<li>As a property value source<p>For example, to repeatedly animate the rectangle's <code>x</code> property:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
SequentialAnimation on <span class="name">x</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">to</span>: <span class="number">50</span> }
<span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">to</span>: <span class="number">0</span> }
}
}</pre>
</li>
<li>In a signal handler<p>For example, to fade out <code>theObject</code> when clicked:</p>
<pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">theObject</span>
<span class="name">onClicked</span>: <span class="name">PropertyAnimation</span> { <span class="name">target</span>: <span class="name">theObject</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">to</span>: <span class="number">0</span> }
}</pre>
</li>
<li>Standalone<p>For example, to animate <code>rect</code>'s <code>width</code> property over 500ms, from its current width to 30:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="comment">// this is a standalone animation, it's not running by default</span>
<span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">id</span>: <span class="name">animation</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;width&quot;</span>; <span class="name">to</span>: <span class="number">30</span>; <span class="name">duration</span>: <span class="number">500</span> }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">animation</span>.<span class="name">running</span> <span class="operator">=</span> <span class="number">true</span> }
}</pre>
</li>
</ul>
<p>Depending on how the animation is used, the set of properties normally used will be different. For more information see the individual property documentation, as well as the <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> introduction.</p>
<p>Note that <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.4/QtQuick.animation/#propertyanimation">PropertyAnimation</a> inherits the abstract <a href="QtQuick.Animation.md">Animation</a> type. This includes additional properties and methods for controlling the animation.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.4/QtQuick.animation/">Qt Quick Examples - Animation</a>.</p>
<!-- @@@PropertyAnimation -->
<h2>Property Documentation</h2>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the duration of the animation, in milliseconds.</p>
<p>The default value is 250.</p>
<!-- @@@duration -->
<br/>
<!-- $$$easing -->
<table class="qmlname"><tr valign="top" id="easing-prop"><th class="centerAlign"><p><b>easing group</b></p></th></tr><tr valign="top" id="easing.type-prop"><td class="tblQmlPropNode"><p><span class="name">easing.type</span> : <span class="type">enumeration</span></p></td></tr><tr valign="top" id="easing.amplitude-prop"><td class="tblQmlPropNode"><p><span class="name">easing.amplitude</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.overshoot-prop"><td class="tblQmlPropNode"><p><span class="name">easing.overshoot</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.period-prop"><td class="tblQmlPropNode"><p><span class="name">easing.period</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.bezierCurve-prop"><td class="tblQmlPropNode"><p><span class="name">easing.bezierCurve</span> : <span class="type">list</span>&lt;<span class="type">real</span>&gt;</p></td></tr></table><p>//! propertyanimation.easing</p>
<p>Specifies the easing curve used for the animation</p>
<p>To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period and/or overshoot (more details provided after the table). The default easing curve is <code>Easing.Linear</code>.</p>
<pre class="qml"><span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutElastic</span>; <span class="name">easing</span>.amplitude: <span class="number">2.0</span>; <span class="name">easing</span>.period: <span class="number">1.5</span> }</pre>
<p>Available types are:</p>
<table class="generic">
<tr valign="top"><td ><code>Easing.Linear</code></td><td >Easing curve for a linear (t) function: velocity is constant.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/51bcda3a-a029-49ec-bcad-ec2b5fab40aa-../QtQuick.PropertyAnimation/images/qeasingcurve-linear.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuad</code></td><td >Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/8554e171-9f75-468c-844a-79c391d77c87-../QtQuick.PropertyAnimation/images/qeasingcurve-inquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuad</code></td><td >Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/11e33a91-8e85-4eef-9910-bc30f1a1c230-../QtQuick.PropertyAnimation/images/qeasingcurve-outquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuad</code></td><td >Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/64b647bb-7b29-47a2-a982-3f6ba410d157-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuad</code></td><td >Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/3c756ccb-ade4-4af3-8493-b0d49bd29fdf-../QtQuick.PropertyAnimation/images/qeasingcurve-outinquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InCubic</code></td><td >Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/f0c0b7b3-7690-4ff1-95da-431a0cd2aaa5-../QtQuick.PropertyAnimation/images/qeasingcurve-incubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutCubic</code></td><td >Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/6df4d7c0-d99a-4977-9cc6-a9b7cc27921d-../QtQuick.PropertyAnimation/images/qeasingcurve-outcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutCubic</code></td><td >Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/edcbe1f4-6a99-4e11-a1c9-218cbc90fbe8-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInCubic</code></td><td >Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/2e6b0dad-62f9-49bb-81b3-59409f462c86-../QtQuick.PropertyAnimation/images/qeasingcurve-outincubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuart</code></td><td >Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/49bb80e5-9465-41da-aa7a-e5fadc759722-../QtQuick.PropertyAnimation/images/qeasingcurve-inquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuart</code></td><td >Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/49528688-b50a-45d5-ad44-8b629fc0faaa-../QtQuick.PropertyAnimation/images/qeasingcurve-outquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuart</code></td><td >Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/658699fa-1588-49b9-9e7e-a6db1b6a10de-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuart</code></td><td >Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/bea449d6-8fbf-4592-8cb2-add3b1316cd0-../QtQuick.PropertyAnimation/images/qeasingcurve-outinquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuint</code></td><td >Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/1fb6c923-8b97-4df3-8195-36eed8a0af0d-../QtQuick.PropertyAnimation/images/qeasingcurve-inquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuint</code></td><td >Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e12f586a-9caf-42eb-8b12-158926cf0810-../QtQuick.PropertyAnimation/images/qeasingcurve-outquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuint</code></td><td >Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/7149c79b-2315-4e44-ba3b-51284b2c9de8-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuint</code></td><td >Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/420ce5ba-3e78-4d24-bb4a-2fe0a25c4ec1-../QtQuick.PropertyAnimation/images/qeasingcurve-outinquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/d434ccda-dc46-4587-af94-5d01c6367259-../QtQuick.PropertyAnimation/images/qeasingcurve-insine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/644b3d91-ab10-4cd2-9ab8-69803a17dd43-../QtQuick.PropertyAnimation/images/qeasingcurve-outsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/6aff9d01-25f6-4223-818e-f9812b2c190f-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/a864778d-db5f-451b-9c96-8294639404f6-../QtQuick.PropertyAnimation/images/qeasingcurve-outinsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InExpo</code></td><td >Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/91687b0d-c573-47c4-963f-1b1d46a5bd74-../QtQuick.PropertyAnimation/images/qeasingcurve-inexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutExpo</code></td><td >Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/60f9f85a-1a9b-4bb1-9ab3-9497804119ba-../QtQuick.PropertyAnimation/images/qeasingcurve-outexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutExpo</code></td><td >Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/85823d58-ca2f-437b-a9e4-25ed59eb2a1c-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInExpo</code></td><td >Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/6db54fc7-c0ad-4c37-81fa-5288094ef362-../QtQuick.PropertyAnimation/images/qeasingcurve-outinexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/dc2c507f-45aa-4aac-a518-3889d081a53a-../QtQuick.PropertyAnimation/images/qeasingcurve-incirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/2693bc65-db91-4205-9a47-9c1896595d30-../QtQuick.PropertyAnimation/images/qeasingcurve-outcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/8502f84f-ff3b-4fa9-8e88-8b17fbfc8044-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/6efb3e6a-4d1c-45e7-b831-813d2d87420a-../QtQuick.PropertyAnimation/images/qeasingcurve-outincirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity. <br />
The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/29960ac1-94ac-4343-b429-ce3ebe9302fb-../QtQuick.PropertyAnimation/images/qeasingcurve-inelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity. <br />
The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/8e906171-5cfd-4ddc-b9af-a88064e024c9-../QtQuick.PropertyAnimation/images/qeasingcurve-outelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/5dcc7abc-5e77-46bc-81ee-c58031b7d68f-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/894789e1-4a81-4781-8c90-f14860af7ade-../QtQuick.PropertyAnimation/images/qeasingcurve-outinelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/2912044e-9c71-452f-b638-9164049da306-../QtQuick.PropertyAnimation/images/qeasingcurve-inback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/49da6a0f-a17d-48c9-b5c5-824e9721e714-../QtQuick.PropertyAnimation/images/qeasingcurve-outback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/10afaf9f-111b-434e-9a4a-6eba7abe5279-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInBack</code></td><td >Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/d63d0d15-1694-4eb1-9f02-9852c170e9c5-../QtQuick.PropertyAnimation/images/qeasingcurve-outinback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/6b829da0-b407-446e-bc6d-2b85447584e0-../QtQuick.PropertyAnimation/images/qeasingcurve-inbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/79ebaaca-7cd6-45dc-a723-3d5d8d926418-../QtQuick.PropertyAnimation/images/qeasingcurve-outbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/9555f541-8934-4256-be87-0dab110a55cd-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/bccf2e5d-a2de-4b68-8cb4-406f89033ba1-../QtQuick.PropertyAnimation/images/qeasingcurve-outinbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.Bezier</code></td><td >Custom easing curve defined by the easing.bezierCurve property.</td><td ></td></tr>
</table>
<p><code>easing.amplitude</code> is only applicable for bounce and elastic curves (curves of type <code>Easing.InBounce</code>, <code>Easing.OutBounce</code>, <code>Easing.InOutBounce</code>, <code>Easing.OutInBounce</code>, <code>Easing.InElastic</code>, <code>Easing.OutElastic</code>, <code>Easing.InOutElastic</code> or <code>Easing.OutInElastic</code>).</p>
<p><code>easing.overshoot</code> is only applicable if <code>easing.type</code> is: <code>Easing.InBack</code>, <code>Easing.OutBack</code>, <code>Easing.InOutBack</code> or <code>Easing.OutInBack</code>.</p>
<p><code>easing.period</code> is only applicable if easing.type is: <code>Easing.InElastic</code>, <code>Easing.OutElastic</code>, <code>Easing.InOutElastic</code> or <code>Easing.OutInElastic</code>.</p>
<p><code>easing.bezierCurve</code> is only applicable if easing.type is: <code>Easing.Bezier</code>. This property is a list&lt;real&gt; containing groups of three points defining a curve from 0,0 to 1,1 - control1, control2, end point: [cx1, cy1, cx2, cy2, endx, endy, ..&#x2e;]&#x2e; The last point must be 1,1.</p>
<p>See the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.4/QtQuick.animation/#easing-curves">Easing Curves</a> for a demonstration of the different easing settings. //! propertyanimation.easing</p>
<!-- @@@easing -->
<br/>
<!-- $$$exclude -->
<table class="qmlname"><tr valign="top" id="exclude-prop"><td class="tblQmlPropNode"><p><span class="name">exclude</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>This property holds the items not to be affected by this animation.</p>
<p><b>See also </b><a href="#targets-prop">PropertyAnimation::targets</a>.</p>
<!-- @@@exclude -->
<br/>
<!-- $$$from -->
<table class="qmlname"><tr valign="top" id="from-prop"><td class="tblQmlPropNode"><p><span class="name">from</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the starting value for the animation.</p>
<p>If the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.4/QtQuick.animation/#propertyanimation">PropertyAnimation</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the starting state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the current value of the property at the moment the <a href="QtQuick.Behavior.md">Behavior</a> is triggered.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@from -->
<br/>
<!-- $$$properties -->
<table class="qmlname"><tr valign="top" id="properties-prop"><td class="tblQmlPropNode"><p><span class="name">properties</span> : <span class="type">string</span></p></td></tr></table><p>These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g&#x2e;</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>has the same meaning as</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.</p>
<p>The <code>targets</code> property allows multiple targets to be set. For example, this animates the <code>x</code> property of both <code>itemA</code> and <code>itemB</code>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:</p>
<table class="generic" width="80%">
<tr valign="top"><td >Value Source / Behavior</td><td >When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
}</pre>
</td></tr>
<tr valign="top"><td >Transition</td><td >When used in a transition, a property animation is assumed to match <i>all</i> targets but <i>no</i> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
<span class="comment">//animate theRect's z to its final value</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
}
}</pre>
</td></tr>
<tr valign="top"><td >Standalone</td><td >When an animation is used standalone, both the target and property need to be explicitly specified.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="comment">//need to explicitly specify target and property</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
}
}</pre>
</td></tr>
</table>
<p>As seen in the above example, properties is specified as a comma-separated string of property names to animate.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@properties -->
<br/>
<!-- $$$property -->
<table class="qmlname"><tr valign="top" id="property-prop"><td class="tblQmlPropNode"><p><span class="name">property</span> : <span class="type">string</span></p></td></tr></table><p>These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g&#x2e;</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>has the same meaning as</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.</p>
<p>The <code>targets</code> property allows multiple targets to be set. For example, this animates the <code>x</code> property of both <code>itemA</code> and <code>itemB</code>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:</p>
<table class="generic" width="80%">
<tr valign="top"><td >Value Source / Behavior</td><td >When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
}</pre>
</td></tr>
<tr valign="top"><td >Transition</td><td >When used in a transition, a property animation is assumed to match <i>all</i> targets but <i>no</i> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
<span class="comment">//animate theRect's z to its final value</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
}
}</pre>
</td></tr>
<tr valign="top"><td >Standalone</td><td >When an animation is used standalone, both the target and property need to be explicitly specified.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="comment">//need to explicitly specify target and property</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
}
}</pre>
</td></tr>
</table>
<p>As seen in the above example, properties is specified as a comma-separated string of property names to animate.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@property -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type">Object</span></p></td></tr></table><p>These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g&#x2e;</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>has the same meaning as</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.</p>
<p>The <code>targets</code> property allows multiple targets to be set. For example, this animates the <code>x</code> property of both <code>itemA</code> and <code>itemB</code>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:</p>
<table class="generic" width="80%">
<tr valign="top"><td >Value Source / Behavior</td><td >When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
}</pre>
</td></tr>
<tr valign="top"><td >Transition</td><td >When used in a transition, a property animation is assumed to match <i>all</i> targets but <i>no</i> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
<span class="comment">//animate theRect's z to its final value</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
}
}</pre>
</td></tr>
<tr valign="top"><td >Standalone</td><td >When an animation is used standalone, both the target and property need to be explicitly specified.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="comment">//need to explicitly specify target and property</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
}
}</pre>
</td></tr>
</table>
<p>As seen in the above example, properties is specified as a comma-separated string of property names to animate.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@target -->
<br/>
<!-- $$$targets -->
<table class="qmlname"><tr valign="top" id="targets-prop"><td class="tblQmlPropNode"><p><span class="name">targets</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g&#x2e;</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>has the same meaning as</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.</p>
<p>The <code>targets</code> property allows multiple targets to be set. For example, this animates the <code>x</code> property of both <code>itemA</code> and <code>itemB</code>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:</p>
<table class="generic" width="80%">
<tr valign="top"><td >Value Source / Behavior</td><td >When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
}</pre>
</td></tr>
<tr valign="top"><td >Transition</td><td >When used in a transition, a property animation is assumed to match <i>all</i> targets but <i>no</i> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
<span class="comment">//animate theRect's z to its final value</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
}
}</pre>
</td></tr>
<tr valign="top"><td >Standalone</td><td >When an animation is used standalone, both the target and property need to be explicitly specified.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="comment">//need to explicitly specify target and property</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
}
}</pre>
</td></tr>
</table>
<p>As seen in the above example, properties is specified as a comma-separated string of property names to animate.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@targets -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top" id="to-prop"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the end value for the animation.</p>
<p>If the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.4/QtQuick.animation/#propertyanimation">PropertyAnimation</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the end state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the value of the property change that triggered the <a href="QtQuick.Behavior.md">Behavior</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@to -->
<br/>
