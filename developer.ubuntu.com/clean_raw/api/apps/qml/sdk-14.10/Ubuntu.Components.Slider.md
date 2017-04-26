---
Title: Ubuntu.Components.Slider
---

# Ubuntu.Components.Slider

<span class="subtitle"></span>
<!-- $$$Slider-brief -->
<p>Slider is a component to select a value from a continuous range of values. More...</p>
<!-- @@@Slider -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#live-prop">live</a></b></b> : bool<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#maximumValue-prop">maximumValue</a></b></b> : real<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#minimumValue-prop">minimumValue</a></b></b> : real<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : real<tt> (preliminary)</tt></li>
</ul>
<h2>Signals</h2>
<ul>
<li class="fn"><b><b><a href="#touched-signal">touched</a></b></b>(bool <i>onThumb</i>)<tt> (preliminary)</tt></li>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn"><b><b><a href="#formatValue-method">formatValue</a></b></b>(<i>v</i>)<tt> (preliminary)</tt></li>
</ul>
<!-- $$$Slider-description -->
<h2>Detailed Description</h2>
<p>The slider's sensing area is defined by the width and height, therefore styles should take this into account when defining the visuals, and alter these values to align the graphics' sizes.</p>
<p><a href="http://design.ubuntu.com/apps/building-blocks/slider">See also the Design Guidelines on Sliders</a>.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type">Slider</span> {
<span class="keyword">function</span> <span class="name">formatValue</span>(<span class="name">v</span>) { <span class="keyword">return</span> <span class="name">v</span>.<span class="name">toFixed</span>(<span class="number">2</span>) }
<span class="name">minimumValue</span>: -<span class="number">3.14</span>
<span class="name">maximumValue</span>: <span class="number">3.14</span>
<span class="name">value</span>: <span class="number">0.0</span>
<span class="name">live</span>: <span class="number">true</span>
}
}</pre>
<!-- @@@Slider -->
<h2>Property Documentation</h2>
<!-- $$$activeFocusOnPress -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">activeFocusOnPress</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p>The property specifies whether the <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> or derived is having the property value false, the focus will not be gained automatically.</p>
<p>In the following example the <a href="Ubuntu.Components.TextField.md">TextField</a> will stay focused when clicked on the red rectangle.</p>
<pre class="qml">import QtQuick 2.2
import Ubuntu.Components 1.1
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></span> {
<span class="name">objectName</span>: <span class="string">&quot;passiveScope&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></span> {
<span class="name">objectName</span>: <span class="string">&quot;activeScope&quot;</span>
<span class="name">activeFocusOnPress</span>: <span class="number">true</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
}
}
<span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">text</span>: <span class="string">&quot;The input stays focus even if red box is clicked&quot;</span>
}
<span class="name">Component</span>.onCompleted: <span class="name">input</span>.<span class="name">forceActiveFocus</span>()
<span class="type"><a href="QtQml.Connections.md">Connections</a></span> {
<span class="name">target</span>: <span class="name">window</span>
<span class="name">onActiveFocusItemChanged</span>: <span class="name">console</span>.<span class="name">debug</span>(<span class="string">&quot;focus on&quot;</span>, <span class="name">window</span>.<span class="name">activeFocusItem</span>)
}
}</pre>
<p>The default value is <tt>false</tt>.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@activeFocusOnPress -->
<br/>
<!-- $$$live -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">live</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>Defines whether the value is updated while the thumb is dragged or just when the thumb is released.</p>
<!-- @@@live -->
<br/>
<!-- $$$maximumValue -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">maximumValue</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>The maximum value from the continuous range of values. If this value is lesser than <a href="#minimumValue-prop">minimumValue</a>, the component will be in an inconsistent state.</p>
<!-- @@@maximumValue -->
<br/>
<!-- $$$minimumValue -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">minimumValue</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>The minimum value from the continuous range of values. If this value is greater than <a href="#maximumValue-prop">maximumValue</a>, the component will be in an inconsistent state.</p>
<!-- @@@minimumValue -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">pressed</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>Whether the Slider is currently being pressed.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>Component instantiated immediately and placed below everything else.</p>
<!-- @@@style -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>The current value of the slider. This property is not changed while the thumb is dragged unless the live property is set to true.</p>
<!-- @@@value -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$touched -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">touched</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span><i> onThumb</i>)</p></td></tr></table><p><b>This QML signal is under development and is subject to change.</b></p>
<p>The signal is emitted when there is a click on the slider. The onThumb parameter provides information if the click, was inside of the thumb element.</p>
<!-- @@@touched -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$formatValue -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">formatValue</span>(<i> v</i>)</p></td></tr></table><p><b>This QML method is under development and is subject to change.</b></p>
<p>This function is used by the value indicator to show the current value. Reimplement this function if you want to show different information. By default, the value v is rounded to the nearest interger value.</p>
<!-- @@@formatValue -->
<br/>
