---
Title: QtQuick.Positioner
---

# QtQuick.Positioner

<span class="subtitle"></span>
<!-- $$$Positioner-brief -->
<p>Provides attached properties that contain details on where an item exists in a positioner More...</p>
<!-- @@@Positioner -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr></table><ul>
</ul>
<h2>Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#index-prop">index</a></b></b> : int</li>
<li class="fn"><b><b><a href="#isFirstItem-prop">isFirstItem</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#isLastItem-prop">isLastItem</a></b></b> : bool</li>
</ul>
<!-- $$$Positioner-description -->
<h2>Detailed Description</h2>
<p>An object of type Positioner is attached to the top-level child item within a Column, Row, Flow or Grid. It provides properties that allow a child item to determine where it exists within the layout of its parent Column, Row, Flow or Grid.</p>
<p>For example, below is a <a href="QtQuick.Grid.md">Grid</a> with 16 child rectangles, as created through a <a href="QtQuick.Repeater.md">Repeater</a>. Each <a href="QtQuick.Rectangle.md">Rectangle</a> displays its index in the Grid using <a href="#index-prop">Positioner.index</a>, and the first item is colored differently by taking <a href="#isFirstItem-prop">Positioner.isFirstItem</a> into account:</p>
<pre class="cpp">Grid {
Repeater {
model: <span class="number">16</span>
Rectangle {
id: rect
width: <span class="number">30</span>; height: <span class="number">30</span>
border<span class="operator">.</span>width: <span class="number">1</span>
color: Positioner<span class="operator">.</span>isFirstItem <span class="operator">?</span> <span class="string">&quot;yellow&quot;</span> : <span class="string">&quot;lightsteelblue&quot;</span>
Text { text: rect<span class="operator">.</span>Positioner<span class="operator">.</span>index }
}
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/6f58a5cf-7903-41a0-8c08-441182d9dbce-../QtQuick.Positioner/images/positioner-example.png" alt="" /></p><!-- @@@Positioner -->
<h2>Attached Property Documentation</h2>
<!-- $$$index -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">.index</span> : <span class="type">int</span></p></td></tr></table><p>This property allows the item to determine its index within the positioner.</p>
<!-- @@@index -->
<br/>
<!-- $$$isFirstItem -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">.isFirstItem</span> : <span class="type">bool</span></p></td></tr></table><p>These properties allow the item to determine if it is the first or last item in the positioner, respectively.</p>
<!-- @@@isFirstItem -->
<br/>
<!-- $$$isLastItem -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">.isLastItem</span> : <span class="type">bool</span></p></td></tr></table><p>These properties allow the item to determine if it is the first or last item in the positioner, respectively.</p>
<!-- @@@isLastItem -->
<br/>
