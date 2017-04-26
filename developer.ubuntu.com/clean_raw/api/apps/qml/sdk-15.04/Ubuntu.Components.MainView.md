---
Title: Ubuntu.Components.MainView
---

# Ubuntu.Components.MainView

<span class="subtitle"></span>
<!-- $$$MainView-brief -->
<p>MainView is the root Item that should be used for all applications. It automatically adds a header and toolbar for its contents and can rotate its content based on the device orientation. More...</p>
<!-- @@@MainView -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.2</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actionManager-prop">actionManager</a></b></b> : ActionManager</li>
<li class="fn"><b><b><a href="#actions-prop">actions</a></b></b> : list&lt;Action&gt;</li>
<li class="fn"><b><b><a href="#active-prop">active</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#anchorToKeyboard-prop">anchorToKeyboard</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#applicationName-prop">applicationName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#automaticOrientation-prop">automaticOrientation</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#backgroundColor-prop">backgroundColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#footerColor-prop">footerColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#headerColor-prop">headerColor</a></b></b> : color</li>
</ul>
<!-- $$$MainView-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The simplest way to use a <a href="index.html">MainView</a> is to include a single <a href="Ubuntu.Components.Page.md">Page</a> object inside the <a href="index.html">MainView</a>:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="index.html">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Simple page&quot;</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Push me&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;Click!&quot;</span>)
}
}
}</pre>
<p>It is not required to set the anchors of the <a href="Ubuntu.Components.Page.md">Page</a> as it will automatically fill its parent. The <a href="index.html">MainView</a> has a header that automatically shows the title of the <a href="Ubuntu.Components.Page.md">Page</a>.</p>
<p>Do not include multiple Pages directly inside the <a href="index.html">MainView</a>, but use <a href="Ubuntu.Components.Tabs.md">Tabs</a> or <a href="Ubuntu.Components.PageStack.md">PageStack</a> inside <a href="index.html">MainView</a> to navigate between several Pages.</p>
<p>For the <a href="index.html">MainView</a> to automatically rotate its content following the orientation of the device, set the <a href="#automaticOrientation-prop">automaticOrientation</a> property to true.</p>
<p>If the <a href="Ubuntu.Components.Page.md">Page</a> inside the <a href="index.html">MainView</a> includes a Flickable with enough contents for scrolling, the header will automatically hide and show when the user scrolls up or down:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="index.html">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Page with Flickable&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">height</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">column</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">model</span>: <span class="number">100</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;line &quot;</span><span class="operator">+</span><span class="name">index</span>
}
}
}
}
}
}</pre>
<p>The same header behavior is automatic when using a <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a> instead of a Flickable in the above example.</p>
<p>The examples above show how to include a single <a href="Ubuntu.Components.Page.md">Page</a> inside a <a href="index.html">MainView</a>, but more advanced application structures are possible using <a href="Ubuntu.Components.PageStack.md">PageStack</a> and <a href="Ubuntu.Components.Tabs.md">Tabs</a>.</p>
<!-- @@@MainView -->
<h2>Property Documentation</h2>
<!-- $$$actionManager -->
<table class="qmlname"><tr valign="top" id="actionManager-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">actionManager</span> : <span class="type"><a href="Ubuntu.Components.ActionManager.md">ActionManager</a></span></p></td></tr></table><p>The <a href="Ubuntu.Components.ActionManager.md">ActionManager</a> that supervises the global and local ActionContexts. The <a href="#actions-prop">actions</a> property should be used preferably since it covers most use cases. The <a href="Ubuntu.Components.ActionManager.md">ActionManager</a> is accessible to have a more refined control over the actions, e.g&#x2e; if one wants to add/remove actions dynamically, create specific action contexts, etc.</p>
<!-- @@@actionManager -->
<br/>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top" id="actions-prop"><td class="tblQmlPropNode"><p><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td></tr></table><p>A global list of actions that will be available to the system (including HUD) as long as the application is running. For actions that are not always available to the system, but only when a certain <a href="Ubuntu.Components.Page.md">Page</a> is active, see the actions property of <a href="Ubuntu.Components.Page.md">Page</a>.</p>
<!-- @@@actions -->
<br/>
<!-- $$$active -->
<table class="qmlname"><tr valign="top" id="active-prop"><td class="tblQmlPropNode"><p><span class="name">active</span> : <span class="type">bool</span></p></td></tr></table><p><a href="index.html">MainView</a> is active by default.</p>
<!-- @@@active -->
<br/>
<!-- $$$anchorToKeyboard -->
<table class="qmlname"><tr valign="top" id="anchorToKeyboard-prop"><td class="tblQmlPropNode"><p><span class="name">anchorToKeyboard</span> : <span class="type">bool</span></p></td></tr></table><p>The property holds if the application should automatically resize the contents when the input method appears</p>
<p>The default value is false.</p>
<!-- @@@anchorToKeyboard -->
<br/>
<!-- $$$applicationName -->
<table class="qmlname"><tr valign="top" id="applicationName-prop"><td class="tblQmlPropNode"><p><span class="name">applicationName</span> : <span class="type">string</span></p></td></tr></table><p>The property holds the application's name, which must be the same as the desktop file's name. The name also sets the name of the QCoreApplication and defaults for data and cache folders that work on the desktop and under confinement, as well as the default gettext domain. C++ code that writes files may use QStandardPaths::writableLocation with QStandardPaths::DataLocation or QStandardPaths::CacheLocation.</p>
<!-- @@@applicationName -->
<br/>
<!-- $$$automaticOrientation -->
<table class="qmlname"><tr valign="top" id="automaticOrientation-prop"><td class="tblQmlPropNode"><p><span class="name">automaticOrientation</span> : <span class="type">bool</span></p></td></tr></table><p>Sets whether the application will be automatically rotating when the device is.</p>
<p>The default value is false.</p>
<!-- @@@automaticOrientation -->
<br/>
<!-- $$$backgroundColor -->
<table class="qmlname"><tr valign="top" id="backgroundColor-prop"><td class="tblQmlPropNode"><p><span class="name">backgroundColor</span> : <span class="type">color</span></p></td></tr></table><p>Color of the background.</p>
<p>The background is usually a single color. However if <a href="#headerColor-prop">headerColor</a> or <a href="#footerColor-prop">footerColor</a> are set then a gradient of colors will be drawn.</p>
<p>For example, in order for the <a href="index.html">MainView</a> to draw a color gradient beneath the content:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="index.html">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="name">headerColor</span>: <span class="string">&quot;#343C60&quot;</span>
<span class="name">backgroundColor</span>: <span class="string">&quot;#6A69A2&quot;</span>
<span class="name">footerColor</span>: <span class="string">&quot;#8896D5&quot;</span>
}</pre>
<p><b>See also </b><a href="#footerColor-prop">footerColor</a> and <a href="#headerColor-prop">headerColor</a>.</p>
<!-- @@@backgroundColor -->
<br/>
<!-- $$$footerColor -->
<table class="qmlname"><tr valign="top" id="footerColor-prop"><td class="tblQmlPropNode"><p><span class="name">footerColor</span> : <span class="type">color</span></p></td></tr></table><p>Color of the footer's background.</p>
<p><b>See also </b><a href="#backgroundColor-prop">backgroundColor</a> and <a href="#headerColor-prop">headerColor</a>.</p>
<!-- @@@footerColor -->
<br/>
<!-- $$$headerColor -->
<table class="qmlname"><tr valign="top" id="headerColor-prop"><td class="tblQmlPropNode"><p><span class="name">headerColor</span> : <span class="type">color</span></p></td></tr></table><p>Color of the header's background.</p>
<p><b>See also </b><a href="#backgroundColor-prop">backgroundColor</a> and <a href="#footerColor-prop">footerColor</a>.</p>
<!-- @@@headerColor -->
<br/>
