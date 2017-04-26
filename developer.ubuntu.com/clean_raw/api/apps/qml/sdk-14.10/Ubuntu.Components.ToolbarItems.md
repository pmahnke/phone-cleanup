---
Title: Ubuntu.Components.ToolbarItems
---

# Ubuntu.Components.ToolbarItems

<span class="subtitle"></span>
<!-- $$$ToolbarItems-brief -->
<p>Row of Items to be placed in a toolbar. More...</p>
<!-- @@@ToolbarItems -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#back-prop">back</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#contents-prop">contents</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#locked-prop">locked</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#opened-prop">opened</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#pageStack-prop">pageStack</a></b></b> : Item</li>
</ul>
<!-- $$$ToolbarItems-description -->
<h2>Detailed Description</h2>
<p>Each <a href="Ubuntu.Components.Page.md">Page</a> has a tools property that can be set to change the tools of toolbar supplied by <a href="Ubuntu.Components.MainView.md">MainView</a> when the <a href="Ubuntu.Components.Page.md">Page</a> is active. Each ToolbarItems consists of a set of Items and several properties that specify the behavior of the toolbar when the <a href="Ubuntu.Components.Page.md">Page</a> is active.</p>
<p>When a <a href="Ubuntu.Components.Page.md">Page</a> is used inside a <a href="Ubuntu.Components.MainView.md">MainView</a>, <a href="Ubuntu.Components.Tabs.md">Tabs</a> or <a href="Ubuntu.Components.PageStack.md">PageStack</a>, the toolbar will automatically show the tools of the active <a href="Ubuntu.Components.Page.md">Page</a>. When the active <a href="Ubuntu.Components.Page.md">Page</a> inside the <a href="Ubuntu.Components.Tabs.md">Tabs</a> or <a href="Ubuntu.Components.PageStack.md">PageStack</a> is updated by changing the selected <a href="Ubuntu.Components.Tab.md">Tab</a> or by pushing/popping a <a href="Ubuntu.Components.Page.md">Page</a> on the <a href="Ubuntu.Components.PageStack.md">PageStack</a>, the toolbar will automatically hide, except if the new active <a href="Ubuntu.Components.Page.md">Page</a> has the <a href="#locked-prop">locked</a> property set.</p>
<p><a href="http://design.ubuntu.com/apps/building-blocks/toolbar">See also the Design Guidelines on Toolbars</a>.</p>
<p>It is recommended to use <a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a> inside the ToolbarItems to define the buttons that will be visible to the user:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.1
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Tools example&quot;</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Custom back button\nToolbar locked&quot;</span>
}
<span class="name">tools</span>: <span class="name">ToolbarItems</span> {
<span class="type"><a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a></span> {
<span class="name">action</span>: <span class="name">Action</span> {
<span class="name">text</span>: <span class="string">&quot;button&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;success!&quot;</span>)
}
}
<span class="name">locked</span>: <span class="number">true</span>
<span class="name">opened</span>: <span class="number">true</span>
}
}
}</pre>
<p>However, it is possible to include non-<a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a> Items inside ToolbarItems, and to mix ToolbarButtons and other Items (for example standard Buttons). ToolbarButtons automatically span the full height of the toolbar, and other Items you will probably want to center vertically:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.1
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Tools example&quot;</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;buttons!&quot;</span>
}
<span class="name">tools</span>: <span class="name">ToolbarItems</span> {
<span class="type"><a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a></span> {
<span class="name">action</span>: <span class="name">Action</span> {
<span class="name">text</span>: <span class="string">&quot;toolbar&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;success!&quot;</span>)
}
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
<span class="name">text</span>: <span class="string">&quot;standard&quot;</span>
}
}
}
}</pre>
<!-- @@@ToolbarItems -->
<h2>Property Documentation</h2>
<!-- $$$back -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">back</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The back button. If it is visible, it will be shown on the left-side of the toolbar. If there is a <a href="Ubuntu.Components.PageStack.md">PageStack</a> with depth greater than 1, the back button will be visible and triggering it will pop the page on top of the stack. If there is no <a href="Ubuntu.Components.PageStack.md">PageStack</a> with depth greater than 1, the back button is hidden by default</p>
<p>The following example shows how to have a classic cancel button that is always visible in the toolbar, instead of the default toolbar-styled back button:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.1
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Custom back button&quot;</span>
<span class="name">tools</span>: <span class="name">ToolbarItems</span> {
<span class="name">back</span>: <span class="name">Button</span> {
<span class="name">text</span>: <span class="string">&quot;cancel&quot;</span>
}
}
}
}</pre>
<!-- @@@back -->
<br/>
<!-- $$$contents -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmldefault">default</span><span class="name">contents</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="https://developer.ubuntu.comapps/qml/sdk-14.10/Ubuntu.Components.Object/">Object</a></span>&gt;</p></td></tr></table><p>Default property, holds the content which will shown in the toolbar.</p>
<!-- @@@contents -->
<br/>
<!-- $$$locked -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">locked</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p>The toolbar cannot be opened/closed by bottom-edge swipes. If the <a href="index.html">ToolbarItems</a> contains no visible Items, it is automatically locked (in closed state).</p>
<!-- @@@locked -->
<br/>
<!-- $$$opened -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">opened</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p>The toolbar is opened. When the toolbar is not locked, this value is automatically updated when the toolbar is opened/closed by user interaction or by other events (such as changing the active <a href="Ubuntu.Components.Page.md">Page</a>).</p>
<!-- @@@opened -->
<br/>
<!-- $$$pageStack -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">pageStack</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p><a href="Ubuntu.Components.PageStack.md">PageStack</a> for the back button. <a href="Ubuntu.Components.Page.md">Page</a> will automatically set the pageStack property of its tools.</p>
<!-- @@@pageStack -->
<br/>
