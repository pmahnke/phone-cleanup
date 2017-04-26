---
Title: Ubuntu.Components.ListItems.MultiValue
---

# Ubuntu.Components.ListItems.MultiValue

<span class="subtitle"></span>
<!-- $$$MultiValue-brief -->
<p>List item displaying multiple values. <b>This component is under heavy development.</b> More...</p>
<!-- @@@MultiValue -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components.ListItems 1.0</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Base.md">Base</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#values-prop">values</a></b></b> : variant<tt> (preliminary)</tt></li>
</ul>
<!-- $$$MultiValue-description -->
<h2>Detailed Description</h2>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components.ListItems 1.0 as ListItem
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type">ListItem</span>.MultiValue {
<span class="name">text</span>: <span class="string">&quot;Label&quot;</span>
<span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
<span class="name">onClicked</span>: <span class="name">selected</span> <span class="operator">=</span> !<span class="name">selected</span>
}
<span class="type">ListItem</span>.MultiValue {
<span class="name">text</span>: <span class="string">&quot;Label&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
<span class="name">progression</span>: <span class="number">true</span>
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked&quot;</span>)
}
}</pre>
<!-- @@@MultiValue -->
<h2>Property Documentation</h2>
<!-- $$$values -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">values</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-variant.html">variant</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>The list of values that will be shown under the label text</p>
<!-- @@@values -->
<br/>
