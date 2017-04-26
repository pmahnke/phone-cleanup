---
Title: Ubuntu.Components.Styles.ListItemStyle
---

# Ubuntu.Components.Styles.ListItemStyle

<span class="subtitle"></span>
<!-- $$$ListItemStyle-brief -->
<p>Style API for ListItem component. More...</p>
<!-- @@@ListItemStyle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Styles .</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components.Styles 1.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#animatePanels-prop">animatePanels</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#dragPanel-prop">dragPanel</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#dropAnimation-prop">dropAnimation</a></b></b> : PropertyAnimation</li>
<li class="fn"><b><b><a href="#snapAnimation-prop">snapAnimation</a></b></b> : Animation</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#rebound-method">rebound</a></b></b>()</li>
<li class="fn"><b><b><a href="#swipeEvent-method">swipeEvent</a></b></b>(SwipeEvent <i>event</i>)</li>
</ul>
<!-- $$$ListItemStyle-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Style API for the <a href="Ubuntu.Components.ListItem.md">ListItem</a> component which provides actions, select and drag handler delegates, and snap animation via its properties. <a href="Ubuntu.Components.ListItem.md">ListItem</a> treats the style differently compared to the other components, as it loads the style only when needed and not upon component creation.</p>
<!-- @@@ListItemStyle -->
<h2>Property Documentation</h2>
<!-- $$$animatePanels -->
<table class="qmlname"><tr valign="top" id="animatePanels-prop"><td class="tblQmlPropNode"><p><span class="name">animatePanels</span> : <span class="type">bool</span></p></td></tr></table><p>The property drives the different panel animations in the style. Panels should not be animated when created upon scrolling a view.</p>
<!-- @@@animatePanels -->
<br/>
<!-- $$$dragPanel -->
<table class="qmlname"><tr valign="top" id="dragPanel-prop"><td class="tblQmlPropNode"><p><span class="name">dragPanel</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The property holds the item visualizing the drag handler. <a href="Ubuntu.Components.ListItem.md">ListItem</a>'s dragging mechanism uses this property to detect the area the dragging can be initiated from. If not set, the <a href="Ubuntu.Components.ListItem.md">ListItem</a> will assume the dragging can be initiated from the entire area of the <a href="Ubuntu.Components.ListItem.md">ListItem</a>.</p>
<!-- @@@dragPanel -->
<br/>
<!-- $$$dropAnimation -->
<table class="qmlname"><tr valign="top" id="dropAnimation-prop"><td class="tblQmlPropNode"><p><span class="name">dropAnimation</span> : <span class="type"><a href="../sdk-14.10/QtQuick.PropertyAnimation.md">PropertyAnimation</a></span></p></td></tr></table><p>The property holds the animation executed on <a href="Ubuntu.Components.ListItem.md">ListItem</a> dropping.</p>
<!-- @@@dropAnimation -->
<br/>
<!-- $$$snapAnimation -->
<table class="qmlname"><tr valign="top" id="snapAnimation-prop"><td class="tblQmlPropNode"><p><span class="name">snapAnimation</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Animation.md">Animation</a></span></p></td></tr></table><p>Holds the behavior used in animating when snapped in or out.</p>
<!-- @@@snapAnimation -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$rebound -->
<table class="qmlname"><tr valign="top" id="rebound-method"><td class="tblQmlFuncNode"><p><span class="name">rebound</span>()</p></td></tr></table><p>Function called by the <a href="Ubuntu.Components.ListItem.md">ListItem</a> when a rebounding action is requested from the style. This usually happens when the list item's content is swiped and there is a press event happening outside of the <a href="Ubuntu.Components.ListItem.md">ListItem</a>'s boundary or when the view embedding the <a href="Ubuntu.Components.ListItem.md">ListItem</a> starts scrolling.</p>
<!-- @@@rebound -->
<br/>
<!-- $$$swipeEvent -->
<table class="qmlname"><tr valign="top" id="swipeEvent-method"><td class="tblQmlFuncNode"><p><span class="name">swipeEvent</span>(<span class="type">SwipeEvent</span><i> event</i>)</p></td></tr></table><p>The function is called by the <a href="Ubuntu.Components.ListItem.md">ListItem</a> when a swipe action is performed, i.e&#x2e; when the swipe is started, the position is updated or the swipe ends. The <b>event</b> object provides information about the swipe status, positions and the updated <a href="Ubuntu.Components.ListItem.md#contentItem-prop">ListItem.contentItem</a> position. The style implementation can override the contentItem position by setting the <code>event.content.x</code> or <code>event.content.y</code> properties to the desired value.</p>
<p>The <code>event</code> object properties are:</p>
<ul>
<li>* <code>status</code> - enumeration of <code>Started, Updated, Finished</code> values representing the swipe event status</li>
<li>* <code>to</code> - (x, y) coordinates of the current mouse/touch point - read-only</li>
<li>* <code>from</code> - (x, y) coordinates of the previous mouse/touch point - read-only</li>
<li>* <code>content</code> - (x, y) updated coordinates of the <a href="Ubuntu.Components.ListItem.md#contentItem-prop">ListItem.contentItem</a>, read-write</li>
</ul>
<!-- @@@swipeEvent -->
<br/>
