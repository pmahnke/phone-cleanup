---
Title: Ubuntu.Components.PageStack
---

# Ubuntu.Components.PageStack

<span class="subtitle"></span>
<!-- $$$PageStack-brief -->
<p>A stack of Page items that is used for inter-Page navigation. Pages on the stack can be popped, and new Pages can be pushed. The page on top of the stack is the visible one. More...</p>
<!-- @@@PageStack -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#currentPage-prop">currentPage</a></b></b> : Item<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#data-prop">data</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#depth-prop">depth</a></b></b> : int<tt> (preliminary)</tt></li>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn"><b><b><a href="#clear-method">clear</a></b></b>()<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#pop-method">pop</a></b></b>()<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#push-method">push</a></b></b>(<i>page</i>,  <i>properties</i>)<tt> (preliminary)</tt></li>
</ul>
<!-- $$$PageStack-description -->
<h2>Detailed Description</h2>
<p>PageStack should be used inside a <a href="Ubuntu.Components.MainView.md">MainView</a> in order to automatically add a header and toolbar to control the stack. The PageStack will automatically set the header title to the title of the <a href="Ubuntu.Components.Page.md">Page</a> that is currently on top of the stack, and the tools of the toolbar to the tools of the <a href="Ubuntu.Components.Page.md">Page</a> on top of the stack. When more than one Pages are on the stack, the toolbar will automatically feature a back-button that pop the stack when triggered.</p>
<p>The anchors of the PageStack are set to fill its parent by default. To use left/right/top/bottom anchors, explicitly set anchors.fill of the PageStack to undefined:</p>
<pre class="qml">import QtQuick 2.2
import Ubuntu.Components 1.1
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type">PageStack</span> {
<span class="name">id</span>: <span class="name">mainStack</span>
<span class="type">anchors</span> {
<span class="name">fill</span>: <span class="name">undefined</span> <span class="comment">// unset the default to make the other anchors work</span>
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">rect</span>.<span class="name">top</span>
}
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">red</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}
<span class="name">Component</span>.onCompleted: <span class="name">mainStack</span>.<span class="name">push</span>(<span class="name">Qt</span>.<span class="name">resolvedUrl</span>(<span class="string">&quot;MyPage.qml&quot;</span>))
}</pre>
<p>Pages that are defined inside the PageStack must initially set their visibility to false to avoid the pages occluding the PageStack before they are pushed. When pushing a <a href="Ubuntu.Components.Page.md">Page</a>, its visibility is automatically updated.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 1.0 as ListItem
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type">PageStack</span> {
<span class="name">id</span>: <span class="name">pageStack</span>
<span class="name">Component</span>.onCompleted: <span class="name">push</span>(<span class="name">page0</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">id</span>: <span class="name">page0</span>
<span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Root page&quot;</span>)
<span class="name">visible</span>: <span class="number">false</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type">ListItem</span>.Standard {
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Page one&quot;</span>)
<span class="name">onClicked</span>: <span class="name">pageStack</span>.<span class="name">push</span>(<span class="name">page1</span>, {color: <span class="name">UbuntuColors</span>.<span class="name">orange</span>})
<span class="name">progression</span>: <span class="number">true</span>
}
<span class="type">ListItem</span>.Standard {
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;External page&quot;</span>)
<span class="name">onClicked</span>: <span class="name">pageStack</span>.<span class="name">push</span>(<span class="name">Qt</span>.<span class="name">resolvedUrl</span>(<span class="string">&quot;MyCustomPage.qml&quot;</span>))
<span class="name">progression</span>: <span class="number">true</span>
}
}
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Rectangle&quot;</span>
<span class="name">id</span>: <span class="name">page1</span>
<span class="name">visible</span>: <span class="number">false</span>
property <span class="type">alias</span> <span class="name">color</span>: <span class="name">rectangle</span>.<span class="name">color</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rectangle</span>
<span class="type">anchors</span> {
<span class="name">fill</span>: <span class="name">parent</span>
<span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
}
}
}
}
}</pre>
<p>As shown in the example above, the <a href="#push-method">push()</a> function can take an Item, Component or URL as input.</p>
<!-- @@@PageStack -->
<h2>Property Documentation</h2>
<!-- $$$currentPage -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">currentPage</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>The currently active page</p>
<!-- @@@currentPage -->
<br/>
<!-- $$$data -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmldefault">default</span><span class="name">data</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="https://developer.ubuntu.comapps/qml/sdk-14.10/Ubuntu.Components.Object/">Object</a></span>&gt;</p></td></tr></table><p>Children of <a href="index.html">PageStack</a> are placed in a separate item such that they are not active by default until they are pushed on the <a href="index.html">PageStack</a>.</p>
<!-- @@@data -->
<br/>
<!-- $$$depth -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">depth</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>The current size of the stack</p>
<!-- @@@depth -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$clear -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">clear</span>()</p></td></tr></table><p><b>This QML method is under development and is subject to change.</b></p>
<p>Deactivate the active page and clear the stack.</p>
<!-- @@@clear -->
<br/>
<!-- $$$pop -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">pop</span>()</p></td></tr></table><p><b>This QML method is under development and is subject to change.</b></p>
<p>Pop the top item from the stack if the stack size is at least 1. Do not do anything if 0 or 1 items are on the stack.</p>
<!-- @@@pop -->
<br/>
<!-- $$$push -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">push</span>(<i> page</i>, <i> properties</i>)</p></td></tr></table><p><b>This QML method is under development and is subject to change.</b></p>
<p>Push a page to the stack, and apply the given (optional) properties to the page. The pushed page may be an Item, Component or URL. The function returns the Item that was pushed, or the Item that was created from the Component or URL. Depending on the animation of the header, the returned Page may or may not be active and on top of the <a href="index.html">PageStack</a> yet.</p>
<!-- @@@push -->
<br/>
