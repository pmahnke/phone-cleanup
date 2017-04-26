---
Title: Ubuntu.Components.Page
---

# Ubuntu.Components.Page

<span class="subtitle"></span>
<!-- $$$Page-brief -->
<p>A page is the basic Item that must be used inside the MainView, PageStack and Tabs. Anchors and height of a Page are automatically determined to align with the header of the MainView, but can be overridden. More...</p>
<!-- @@@Page -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actions-prop">actions</a></b></b> : list&lt;Action&gt;</li>
<li class="fn"><b><b><a href="#flickable-prop">flickable</a></b></b> : Flickable</li>
<li class="fn"><b><b><a href="#head-prop">head</a></b></b> : PageHeadConfiguration</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : string</li>
</ul>
<!-- $$$Page-description -->
<h2>Detailed Description</h2>
<p><a href="Ubuntu.Components.MainView.md">MainView</a> provides a header for Pages it includes. The text and actions of the header are determined by the <a href="#title-prop">title</a> and <a href="#head-prop">head</a> properties of the page:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.1
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type">Page</span> {
<span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Example page&quot;</span>)
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Hello world!&quot;</span>)
}
<span class="name">head</span>.actions: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Search&quot;</span>)
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;contacts&quot;</span>
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Contacts&quot;</span>)
}
]
}
}</pre>
<p>See <a href="Ubuntu.Components.MainView.md">MainView</a> for more examples on how to use the header. Advanced navigation structures can be created by adding Pages to a <a href="Ubuntu.Components.PageStack.md">PageStack</a> or <a href="Ubuntu.Components.Tabs.md">Tabs</a>.</p>
<!-- @@@Page -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">actions</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td></tr></table><p>Local actions. These actions will be made available outside the application (for example, to HUD) when the Page is active. For actions that are always available when the application is running, use the actions property of <a href="Ubuntu.Components.MainView.md">MainView</a>. For actions in the header, see <a href="#head-prop">head</a>.</p>
<!-- @@@actions -->
<br/>
<!-- $$$flickable -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">flickable</span> : <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span></p></td></tr></table><p>Optional flickable that controls the header. This property is automatically set to the first child of the page that is Flickable and anchors to the top of the page or fills the page. For example:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.1
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="index.html">Page</a></span> {
<span class="name">id</span>: <span class="name">page</span>
<span class="name">title</span>: <span class="string">&quot;example&quot;</span>
<span class="comment">//flickable: null // uncomment for a fixed header</span>
<span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">id</span>: <span class="name">content</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">contentHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;hello&quot;</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
}
}
}
}</pre>
<p>In this example, page.flickable will automatically be set to content because it is a Flickable and it fills its parent. Thus, scrolling down in the Flickable will automatically hide the header.</p>
<p>Set this property to null to avoid automatic flickable detection, which disables hiding of the header by scrolling in the Flickable. In cases where a flickable should control the header, but it is not automatically detected, the flickable property can be set.</p>
<!-- @@@flickable -->
<br/>
<!-- $$$head -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">head</span> : <span class="type"><a href="Ubuntu.Components.PageHeadConfiguration.md">PageHeadConfiguration</a></span></p></td></tr></table><p>Configuration of the header for this page.</p>
<!-- @@@head -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p>The title of the page. Will be shown in the header of the <a href="Ubuntu.Components.MainView.md">MainView</a>. If the page is used inside a <a href="Ubuntu.Components.Tab.md">Tab</a>, the default title is the <a href="Ubuntu.Components.Tab.md">Tab</a> title. For a Page not inside a <a href="Ubuntu.Components.Tab.md">Tab</a>, the default title is an empty string.</p>
<!-- @@@title -->
<br/>
