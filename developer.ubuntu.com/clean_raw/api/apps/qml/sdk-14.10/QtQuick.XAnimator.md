---
Title: QtQuick.XAnimator
---

# QtQuick.XAnimator

<span class="subtitle"></span>
<!-- $$$XAnimator-brief -->
<p>The XAnimator type animates the x position of an Item. More...</p>
<!-- @@@XAnimator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.2</td></tr></table><ul>
</ul>
<!-- $$$XAnimator-description -->
<h2>Detailed Description</h2>
<p><a href="QtQuick.Animator.md">Animator</a> types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.</p>
<p>The value of <a href="QtQuick.Item.md#x-prop">Item::x</a> is updated after the animation has finished.</p>
<p>The following snippet shows how to use a XAnimator together with a Rectangle item.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">xmovingBox</span>
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="type">XAnimator</span> {
<span class="name">target</span>: <span class="name">xmovingBox</span>;
<span class="name">from</span>: <span class="number">10</span>;
<span class="name">to</span>: <span class="number">0</span>;
<span class="name">duration</span>: <span class="number">1000</span>
<span class="name">running</span>: <span class="number">true</span>
}
}</pre>
<p>It is also possible to use the <tt>on</tt> keyword to tie the XAnimator directly to an Item instance.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
XAnimator on <span class="name">x</span> {
<span class="name">from</span>: <span class="number">10</span>;
<span class="name">to</span>: <span class="number">0</span>;
<span class="name">duration</span>: <span class="number">1000</span>
}
}</pre>
<!-- @@@XAnimator -->
