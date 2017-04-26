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
<p><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation">PropertyAnimation</a> provides a way to animate changes to a property's value.</p>
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
<p>Note that <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation">PropertyAnimation</a> inherits the abstract <a href="QtQuick.Animation.md">Animation</a> type. This includes additional properties and methods for controlling the animation.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtQuick.animation/">Qt Quick Examples - Animation</a>.</p>
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
<tr valign="top"><td ><code>Easing.Linear</code></td><td >Easing curve for a linear (t) function: velocity is constant.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/5c4d4769-2d3e-448d-84cb-8d6384dc9663-../QtQuick.PropertyAnimation/images/qeasingcurve-linear.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuad</code></td><td >Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/49dec3a6-b916-4a36-9b2d-5708b978a790-../QtQuick.PropertyAnimation/images/qeasingcurve-inquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuad</code></td><td >Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/efa4378a-ca9c-4f9a-bf75-1fbc730b2364-../QtQuick.PropertyAnimation/images/qeasingcurve-outquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuad</code></td><td >Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/21285fc5-4e27-4ee0-9226-79d5370664e2-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuad</code></td><td >Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/39cdeffb-7f60-4383-b473-c0ee04b069f3-../QtQuick.PropertyAnimation/images/qeasingcurve-outinquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InCubic</code></td><td >Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/3e55adc4-605c-40c3-8058-2495efb12469-../QtQuick.PropertyAnimation/images/qeasingcurve-incubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutCubic</code></td><td >Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/c749e91a-6f62-4351-a2b6-f8d4a85e6e2a-../QtQuick.PropertyAnimation/images/qeasingcurve-outcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutCubic</code></td><td >Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/30fdab59-8c25-4bc8-b85b-69c012b166c9-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInCubic</code></td><td >Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/aa7cfb21-b4d0-484d-bd8b-f5524f56e767-../QtQuick.PropertyAnimation/images/qeasingcurve-outincubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuart</code></td><td >Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/d789932d-3a85-4cea-b205-befe7247e8c4-../QtQuick.PropertyAnimation/images/qeasingcurve-inquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuart</code></td><td >Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/745a1a0e-75d8-45ca-907e-5e42860bc56b-../QtQuick.PropertyAnimation/images/qeasingcurve-outquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuart</code></td><td >Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/96f1e2fd-0cd3-49ba-96bd-150af8d6737f-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuart</code></td><td >Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/19f58c5c-756a-434a-949f-d239dd346213-../QtQuick.PropertyAnimation/images/qeasingcurve-outinquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuint</code></td><td >Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/1ddc0e7b-c05a-4d65-91e6-f0cfcf01874c-../QtQuick.PropertyAnimation/images/qeasingcurve-inquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuint</code></td><td >Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/9c96df18-d5fd-4107-93b2-9d926e2c33c6-../QtQuick.PropertyAnimation/images/qeasingcurve-outquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuint</code></td><td >Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/fea273a2-5387-432e-bb94-7c3abf0b8caa-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuint</code></td><td >Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/70c52e96-13fe-4a35-8bbf-71dc620e466a-../QtQuick.PropertyAnimation/images/qeasingcurve-outinquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e21b57b7-b547-4a89-bbea-b95a80cddb31-../QtQuick.PropertyAnimation/images/qeasingcurve-insine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/1f8377fd-b830-400f-8d5c-725b4bcf572d-../QtQuick.PropertyAnimation/images/qeasingcurve-outsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/cfe77931-85e6-434a-9609-4c5c5d46da80-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/0dd21457-d797-4d20-8e77-544932076a69-../QtQuick.PropertyAnimation/images/qeasingcurve-outinsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InExpo</code></td><td >Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/b9d44604-9fb9-4a7f-b5eb-ad1358448382-../QtQuick.PropertyAnimation/images/qeasingcurve-inexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutExpo</code></td><td >Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/99faa203-dbbc-4834-8455-a7851559691b-../QtQuick.PropertyAnimation/images/qeasingcurve-outexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutExpo</code></td><td >Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/5a0e1a0a-bf11-48bc-99b3-af41a9613b05-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInExpo</code></td><td >Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/6ef823ce-a898-4f25-952b-22da5db9224a-../QtQuick.PropertyAnimation/images/qeasingcurve-outinexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/518d4e6a-d719-41c2-806f-709a1a9288d9-../QtQuick.PropertyAnimation/images/qeasingcurve-incirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/2d63eaec-5209-47c1-9e4a-cb346654fb47-../QtQuick.PropertyAnimation/images/qeasingcurve-outcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/c2439fef-47b6-4890-bf0c-cd6c7065eb6d-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/41b3fa68-824b-4d5e-bdd6-a0abec248bb5-../QtQuick.PropertyAnimation/images/qeasingcurve-outincirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity. <br />
The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/452be567-fea3-42ec-80e1-3128c6d03360-../QtQuick.PropertyAnimation/images/qeasingcurve-inelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity. <br />
The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/6d84c2db-28b3-4894-abcf-117fd49b70de-../QtQuick.PropertyAnimation/images/qeasingcurve-outelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/b4a151f7-4924-497d-b69c-be9c523d2b16-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/7abf8eee-82d1-4b6f-ad9e-7356c379058f-../QtQuick.PropertyAnimation/images/qeasingcurve-outinelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/28ee02b7-803e-4a20-b76d-895254934239-../QtQuick.PropertyAnimation/images/qeasingcurve-inback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/20dff1a5-48a8-4627-8e0c-170d735eef90-../QtQuick.PropertyAnimation/images/qeasingcurve-outback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/d1074a33-b34d-41cb-9d44-b9a9fad34163-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInBack</code></td><td >Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e39b99da-40b4-4b5f-bbea-53eceeb77a2e-../QtQuick.PropertyAnimation/images/qeasingcurve-outinback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/7d4f350b-2283-403b-83cd-47e4a73ad87a-../QtQuick.PropertyAnimation/images/qeasingcurve-inbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/b7a701a6-d1e9-4c41-9119-8cdcb52b5451-../QtQuick.PropertyAnimation/images/qeasingcurve-outbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/7316ace5-8d96-47d5-8d0d-5715239b46d9-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/71e1d9e0-0a98-441f-b644-12a3d3b3d4bb-../QtQuick.PropertyAnimation/images/qeasingcurve-outinbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.Bezier</code></td><td >Custom easing curve defined by the easing.bezierCurve property.</td><td ></td></tr>
</table>
<p><code>easing.amplitude</code> is only applicable for bounce and elastic curves (curves of type <code>Easing.InBounce</code>, <code>Easing.OutBounce</code>, <code>Easing.InOutBounce</code>, <code>Easing.OutInBounce</code>, <code>Easing.InElastic</code>, <code>Easing.OutElastic</code>, <code>Easing.InOutElastic</code> or <code>Easing.OutInElastic</code>).</p>
<p><code>easing.overshoot</code> is only applicable if <code>easing.type</code> is: <code>Easing.InBack</code>, <code>Easing.OutBack</code>, <code>Easing.InOutBack</code> or <code>Easing.OutInBack</code>.</p>
<p><code>easing.period</code> is only applicable if easing.type is: <code>Easing.InElastic</code>, <code>Easing.OutElastic</code>, <code>Easing.InOutElastic</code> or <code>Easing.OutInElastic</code>.</p>
<p><code>easing.bezierCurve</code> is only applicable if easing.type is: <code>Easing.Bezier</code>. This property is a list&lt;real&gt; containing groups of three points defining a curve from 0,0 to 1,1 - control1, control2, end point: [cx1, cy1, cx2, cy2, endx, endy, ..&#x2e;]&#x2e; The last point must be 1,1.</p>
<p>See the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtQuick.animation/#easing-curves">Easing Curves</a> for a demonstration of the different easing settings. //! propertyanimation.easing</p>
<!-- @@@easing -->
<br/>
<!-- $$$exclude -->
<table class="qmlname"><tr valign="top" id="exclude-prop"><td class="tblQmlPropNode"><p><span class="name">exclude</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>This property holds the items not to be affected by this animation.</p>
<p><b>See also </b><a href="#targets-prop">PropertyAnimation::targets</a>.</p>
<!-- @@@exclude -->
<br/>
<!-- $$$from -->
<table class="qmlname"><tr valign="top" id="from-prop"><td class="tblQmlPropNode"><p><span class="name">from</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the starting value for the animation.</p>
<p>If the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation">PropertyAnimation</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the starting state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the current value of the property at the moment the <a href="QtQuick.Behavior.md">Behavior</a> is triggered.</p>
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
<p>If the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation">PropertyAnimation</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the end state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the value of the property change that triggered the <a href="QtQuick.Behavior.md">Behavior</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@to -->
<br/>
