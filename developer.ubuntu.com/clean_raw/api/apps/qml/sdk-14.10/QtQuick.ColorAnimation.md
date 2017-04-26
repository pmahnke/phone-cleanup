---
Title: QtQuick.ColorAnimation
---

# QtQuick.ColorAnimation

<span class="subtitle"></span>
<!-- $$$ColorAnimation-brief -->
<p>Animates changes in color values More...</p>
<!-- @@@ColorAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#from-prop">from</a></b></b> : color</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : color</li>
</ul>
<!-- $$$ColorAnimation-description -->
<h2>Detailed Description</h2>
<p>ColorAnimation is a specialized <a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a> that defines an animation to be applied when a color value changes.</p>
<p>Here is a ColorAnimation applied to the <tt>color</tt> property of a <a href="QtQuick.Rectangle.md">Rectangle</a> as a property value source. It animates the <tt>color</tt> property's value from its current value to a value of &quot;red&quot;, over 1000 milliseconds:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
ColorAnimation on <span class="name">color</span> { <span class="name">to</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
}</pre>
<p>Like any other animation type, a ColorAnimation can be applied in a number of ways, including transitions, behaviors and property value sources. The <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> documentation shows a variety of methods for creating animations.</p>
<p>For convenience, when a ColorAnimation is used in a <a href="QtQuick.Transition.md">Transition</a>, it will animate any <tt>color</tt> properties that have been modified during the state change. If a <a href="QtQuick.PropertyAnimation.md#property-prop">property</a> or <a href="QtQuick.PropertyAnimation.md#properties-prop">properties</a> are explicitly set for the animation, then those are used instead.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.animation/">Qt Quick Examples - Animation</a>.</p>
<!-- @@@ColorAnimation -->
<h2>Property Documentation</h2>
<!-- $$$from -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">from</span> : <span class="type">color</span></p></td></tr></table><p>This property holds the color value at which the animation should begin.</p>
<p>For example, the following animation is not applied until a color value has reached &quot;#c0c0c0&quot;:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">states</span>: [
<span class="comment">// States are defined here...</span>
]
<span class="name">transition</span>: <span class="name">Transition</span> {
<span class="type"><a href="index.html">ColorAnimation</a></span> { <span class="name">from</span>: <span class="string">&quot;#c0c0c0&quot;</span>; <span class="name">duration</span>: <span class="number">2000</span> }
}
}</pre>
<p>If the <a href="index.html">ColorAnimation</a> is defined within a <a href="QtQuick.Transition.md">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the starting state of the <a href="QtQuick.Transition.md">Transition</a>, or the current value of the property at the moment the <a href="QtQuick.Behavior.md">Behavior</a> is triggered.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@from -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type">color</span></p></td></tr></table><p>This property holds the color value at which the animation should end.</p>
<p>If the <a href="index.html">ColorAnimation</a> is defined within a <a href="QtQuick.Transition.md">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the end state of the <a href="QtQuick.Transition.md">Transition</a>, or the value of the property change that triggered the <a href="QtQuick.Behavior.md">Behavior</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@to -->
<br/>
