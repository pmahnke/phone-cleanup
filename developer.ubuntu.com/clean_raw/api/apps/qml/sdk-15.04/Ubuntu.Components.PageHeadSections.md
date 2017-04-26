---
Title: Ubuntu.Components.PageHeadSections
---

# Ubuntu.Components.PageHeadSections

<span class="subtitle"></span>
<!-- $$$PageHeadSections-brief -->
<p>PageHeadSections is used to configure the sections for a Page. More...</p>
<!-- @@@PageHeadSections -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.2</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.1</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="../sdk-14.10/QtQml.QtObject.md">QtObject</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : var</li>
<li class="fn"><b><b><a href="#selectedIndex-prop">selectedIndex</a></b></b> : int</li>
</ul>
<!-- $$$PageHeadSections-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>These sections will be shown in the bottom part of the header. This component does not need to be instantiated by the developer, it is automatically part of <a href="Ubuntu.Components.PageHeadConfiguration.md">PageHeadConfiguration</a>.</p>
<!-- @@@PageHeadSections -->
<h2>Property Documentation</h2>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>Set this property to false to disable user interaction to change the selected section. Default value: true</p>
<!-- @@@enabled -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>List of strings that represent section names. Example:</p>
<pre class="qml">import Ubuntu.Components 1.2
import QtQuick 2.4
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page</span>
<span class="name">title</span>: <span class="string">&quot;Sections&quot;</span>
<span class="type">head</span> {
<span class="type">sections</span> {
<span class="name">model</span>: [<span class="string">&quot;one&quot;</span>, <span class="string">&quot;two&quot;</span>, <span class="string">&quot;three&quot;</span>]
}
}
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Section &quot;</span> <span class="operator">+</span> <span class="name">page</span>.<span class="name">head</span>.<span class="name">sections</span>.<span class="name">selectedIndex</span>
}
}
}</pre>
<p>It is strongly recommended to limit the number of sections to two or three.</p>
<!-- @@@model -->
<br/>
<!-- $$$selectedIndex -->
<table class="qmlname"><tr valign="top" id="selectedIndex-prop"><td class="tblQmlPropNode"><p><span class="name">selectedIndex</span> : <span class="type">int</span></p></td></tr></table><p>The index of the currently selected section in <a href="#model-prop">model</a>.</p>
<!-- @@@selectedIndex -->
<br/>
