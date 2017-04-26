---
Title: Ubuntu.Components.Styles.PullToRefreshStyle
---

# Ubuntu.Components.Styles.PullToRefreshStyle

<span class="subtitle"></span>
<!-- $$$PullToRefreshStyle-brief -->
<p>Style API for PullToRefresh component. More...</p>
<!-- @@@PullToRefreshStyle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components.Styles .</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activationThreshold-prop">activationThreshold</a></b></b> : real</li>
<li class="fn"><b><b><a href="#defaultContent-prop">defaultContent</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#releaseToRefresh-prop">releaseToRefresh</a></b></b> : bool</li>
</ul>
<!-- $$$PullToRefreshStyle-description -->
<h2>Detailed Description</h2>
<p>The component defines the style API for the <a href="Ubuntu.Components.PullToRefresh.md">PullToRefresh</a> component.</p>
<!-- @@@PullToRefreshStyle -->
<h2>Property Documentation</h2>
<!-- $$$activationThreshold -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">activationThreshold</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p>The property holds the threshold value when the component should enter into <i>ready-to-refresh</i> state when dragged manually. The default value is the height of the component styled.</p>
<!-- @@@activationThreshold -->
<br/>
<!-- $$$defaultContent -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">defaultContent</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>The property holds the style provided default content component. The value is assigned to the <a href="Ubuntu.Components.PullToRefresh.md#content-prop">PullToRefresh::content</a> property.</p>
<!-- @@@defaultContent -->
<br/>
<!-- $$$releaseToRefresh -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">releaseToRefresh</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p>The property informs the component when a manual refresh can be triggered. Style implementations (themes) can decide when to flip the component to be ready to trigger reftesh signal.</p>
<!-- @@@releaseToRefresh -->
<br/>
