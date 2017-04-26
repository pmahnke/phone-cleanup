---
Title: QtQml.ObjectModel
---

# QtQml.ObjectModel

<span class="subtitle"></span>
<!-- $$$ObjectModel-brief -->
<p>Defines a set of items to be used as a model More...</p>
<!-- @@@ObjectModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQml.Models 2.0</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
</ul>
<h2>Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#index-prop">index</a></b></b> : int</li>
</ul>
<!-- $$$ObjectModel-description -->
<h2>Detailed Description</h2>
<p>A ObjectModel contains the visual items to be used in a view. When a ObjectModel is used in a view, the view does not require a delegate since the ObjectModel already contains the visual delegate (items).</p>
<p>An item can determine its index within the model via the <a href="#index-prop">index</a> attached property.</p>
<p>The example below places three colored rectangles in a ListView.</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
Rectangle {
ObjectModel {
id: itemModel
Rectangle { height: <span class="number">30</span>; width: <span class="number">80</span>; color: <span class="string">&quot;red&quot;</span> }
Rectangle { height: <span class="number">30</span>; width: <span class="number">80</span>; color: <span class="string">&quot;green&quot;</span> }
Rectangle { height: <span class="number">30</span>; width: <span class="number">80</span>; color: <span class="string">&quot;blue&quot;</span> }
}
ListView {
anchors<span class="operator">.</span>fill: parent
model: itemModel
}
}</pre>
<p class="centerAlign"><font color="red">[Missing image visualitemmodel.png]</font></p><p><b>See also </b>ObjectModel example.</p>
<!-- @@@ObjectModel -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>The number of items in the model. This property is readonly.</p>
<!-- @@@count -->
<br/>
<h2>Attached Property Documentation</h2>
<!-- $$$index -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">.index</span> : <span class="type">int</span></p></td></tr></table><p>This attached property holds the index of this delegate's item within the model.</p>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@index -->
<br/>
