---
Title: Ubuntu.Components.Pickers.Picker
---

# Ubuntu.Components.Pickers.Picker

<span class="subtitle"></span>
<!-- $$$Picker-brief -->
<p>Picker is a slot-machine style value selection component. More...</p>
<!-- @@@Picker -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components.Pickers 1.0</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#circular-prop">circular</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#live-prop">live</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : var</li>
<li class="fn"><b><b><a href="#moving-prop">moving</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectedIndex-prop">selectedIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn"><b><b><a href="#positionViewAtIndex-method">positionViewAtIndex</a></b></b>(<i>index</i>)</li>
</ul>
<!-- $$$Picker-description -->
<h2>Detailed Description</h2>
<p>The Picker lists the elements specified by the <a href="#model-prop">model</a> using the <a href="#delegate-prop">delegate</a> vertically using a slot-machine tumbler-like list. The selected item is always the one in the center of the component, and it is represented by the <a href="#selectedIndex-prop">selectedIndex</a> property.</p>
<p>The elements can be either in a circular list or in a normal list.</p>
<p>Delegates must be composed using <a href="Ubuntu.Components.Pickers.PickerDelegate.md">PickerDelegate</a>.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.Pickers 1.0
<span class="type">Picker</span> {
<span class="name">model</span>: [<span class="string">&quot;Jan&quot;</span>, <span class="string">&quot;Feb&quot;</span>, <span class="string">&quot;Mar&quot;</span>, <span class="string">&quot;Apr&quot;</span>, <span class="string">&quot;May&quot;</span>, <span class="string">&quot;Jun&quot;</span>, <span class="string">&quot;Jul&quot;</span>, <span class="string">&quot;Aug&quot;</span>, <span class="string">&quot;Sept&quot;</span>, <span class="string">&quot;Oct&quot;</span>, <span class="string">&quot;Nov&quot;</span>, <span class="string">&quot;Dec&quot;</span>]
<span class="name">delegate</span>: <span class="name">PickerDelegate</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="name">modelData</span>
}
}
<span class="name">selectedIndex</span>: <span class="number">5</span>
<span class="name">onSelectedIndexChanged</span>: {
<span class="name">print</span>(<span class="string">&quot;selected month: &quot;</span> <span class="operator">+</span> <span class="name">selectedIndex</span>);
}
}</pre>
<p><b>Note</b>: the <a href="#selectedIndex-prop">selectedIndex</a> must be set explicitly to the desired index if the model is set, filled or changed after the component is complete. In the following example the selected item must be set after the model is set.</p>
<pre class="qml"><span class="type">Picker</span> {
<span class="name">selectedIndex</span>: <span class="number">5</span> <span class="comment">// this will be set to 0 at the model completion</span>
<span class="name">delegate</span>: <span class="name">PickerDelegate</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="name">modelData</span>
}
}
<span class="name">Component</span>.onCompleted: {
var <span class="name">stack</span> = [];
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">10</span>; i++) {
<span class="name">stack</span>.<span class="name">push</span>(<span class="string">&quot;Line &quot;</span> <span class="operator">+</span> <span class="name">i</span>);
}
<span class="name">model</span> <span class="operator">=</span> <span class="name">stack</span>;
<span class="comment">// selectedIndex must be set explicitly</span>
<span class="name">selectedIndex</span> <span class="operator">=</span> <span class="number">3</span>;
}
}</pre>
<h4>Known issues</h4>
<ul>
<li>[1] Circular picker does not react on touch generated flicks (on touch enabled devices) when nested into a Flickable - <a href="https://bugreports.qt-project.org/browse/QTBUG-13690">https://bugreports.qt-project.org/browse/QTBUG-13690</a> and <a href="https://bugreports.qt-project.org/browse/QTBUG-30840">https://bugreports.qt-project.org/browse/QTBUG-30840</a></li>
<li>[2] Circular picker sets <a href="#selectedIndex-prop">selectedIndex</a> to 0 when the model is cleared, contrary to linear one, which sets it to -1 - <a href="https://bugreports.qt-project.org/browse/QTBUG-35400">https://bugreports.qt-project.org/browse/QTBUG-35400</a></li>
</ul>
<!-- @@@Picker -->
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
<!-- $$$circular -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">circular</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p>Property specifying whether the tumbler list is wrap-around (<i>true</i>), or normal (<i>false</i>). Default value is true.</p>
<!-- @@@circular -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>The delegate visualizing the model elements. Any kind of component can be used as delegate, however it is recommended to use <a href="Ubuntu.Components.Pickers.PickerDelegate.md">PickerDelegate</a>, which integrates selection functionality into the Picker.</p>
<!-- @@@delegate -->
<br/>
<!-- $$$live -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">live</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p>Defines whether the <a href="#selectedIndex-prop">selectedIndex</a> should be updated while the tumbler changes the selected item during draggingm or only when the tumbler's motion ends. The default behavior is non-live update.</p>
<!-- @@@live -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-var.html">var</a></span></p></td></tr></table><p>Specifies the model listing the content of the picker.</p>
<!-- @@@model -->
<br/>
<!-- $$$moving -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">moving</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p>The property holds whether the picker's view is moving due to the user interaction either by dragging, flicking or due to the manual change of the <a href="#selectedIndex-prop">selectedIndex</a> property.</p>
<!-- @@@moving -->
<br/>
<!-- $$$selectedIndex -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">selectedIndex</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td></tr></table><p>The property holds the index of the selected item</p>
<!-- @@@selectedIndex -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>Component instantiated immediately and placed below everything else.</p>
<!-- @@@style -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$positionViewAtIndex -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">positionViewAtIndex</span>(<i> index</i>)</p></td></tr></table><p>The function positions the picker's view to the given index without animating the view. The component must be ready when calling the function, e.g&#x2e; to make sure the Picker shows up at the given index, do the following:</p>
<pre class="qml"><span class="type"><a href="index.html">Picker</a></span> {
<span class="name">model</span>: <span class="number">120</span>
<span class="name">delegate</span>: <span class="name">PickerDelegate</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">verticalCenter</span>: <span class="name">Text</span>.<span class="name">AlignVCenter</span>
<span class="name">text</span>: <span class="name">modelData</span>
}
}
<span class="name">Component</span>.onCompleted: <span class="name">positionViewAtIndex</span>(<span class="number">10</span>)
}</pre>
<!-- @@@positionViewAtIndex -->
<br/>
