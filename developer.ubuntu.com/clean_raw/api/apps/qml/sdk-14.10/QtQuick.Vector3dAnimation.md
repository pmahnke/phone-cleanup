---
Title: QtQuick.Vector3dAnimation
---

# QtQuick.Vector3dAnimation

<span class="subtitle"></span>
<!-- $$$Vector3dAnimation-brief -->
<p>Animates changes in QVector3d values More...</p>
<!-- @@@Vector3dAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#from-prop">from</a></b></b> : real</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : real</li>
</ul>
<!-- $$$Vector3dAnimation-description -->
<h2>Detailed Description</h2>
<p>Vector3dAnimation is a specialized <a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a> that defines an animation to be applied when a Vector3d value changes.</p>
<p>Like any other animation type, a Vector3dAnimation can be applied in a number of ways, including transitions, behaviors and property value sources. The <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> documentation shows a variety of methods for creating animations.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.animation/">Qt Quick Examples - Animation</a>.</p>
<!-- @@@Vector3dAnimation -->
<h2>Property Documentation</h2>
<!-- $$$from -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">from</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the starting value for the animation.</p>
<p>If the <a href="index.html">Vector3dAnimation</a> is defined within a <a href="QtQuick.Transition.md">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the starting state of the <a href="QtQuick.Transition.md">Transition</a>, or the current value of the property at the moment the <a href="QtQuick.Behavior.md">Behavior</a> is triggered.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@from -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the end value for the animation.</p>
<p>If the <a href="index.html">Vector3dAnimation</a> is defined within a <a href="QtQuick.Transition.md">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the end state of the <a href="QtQuick.Transition.md">Transition</a>, or the value of the property change that triggered the <a href="QtQuick.Behavior.md">Behavior</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@to -->
<br/>
