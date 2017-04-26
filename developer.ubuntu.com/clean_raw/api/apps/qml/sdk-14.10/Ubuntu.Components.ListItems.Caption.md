---
Title: Ubuntu.Components.ListItems.Caption
---

# Ubuntu.Components.ListItems.Caption

<span class="subtitle"></span>
<!-- $$$Caption-brief -->
<p>List item that shows a piece of text. More...</p>
<!-- @@@Caption -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components.ListItems 1.0</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string<tt> (preliminary)</tt></li>
</ul>
<!-- $$$Caption-description -->
<h2>Detailed Description</h2>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components.ListItems 1.0 as ListItem
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type">ListItem</span>.Standard {
<span class="name">text</span>: <span class="string">&quot;Default list item.&quot;</span>
}
<span class="type">ListItem</span>.Caption {
<span class="name">text</span>: <span class="string">&quot;This is a caption text, which can span multiple lines.&quot;</span>
}
}</pre>
<p><b>This component is under heavy development.</b></p>
<!-- @@@Caption -->
<h2>Property Documentation</h2>
<!-- $$$text -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>The text that is shown in the list item as a label.</p>
<!-- @@@text -->
<br/>
