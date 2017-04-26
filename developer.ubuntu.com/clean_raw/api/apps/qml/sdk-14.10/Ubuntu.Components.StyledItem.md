---
Title: Ubuntu.Components.StyledItem
---

# Ubuntu.Components.StyledItem

<span class="subtitle"></span>
<!-- $$$StyledItem-brief -->
<p>The StyledItem class allows items to be styled by the theme. More...</p>
<!-- @@@StyledItem -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ActionItem.md">ActionItem</a>, <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/Ubuntu.Components.AppHeader/">AppHeader</a>, <a href="Ubuntu.Components.Pickers.DatePicker.md">DatePicker</a>, <a href="Ubuntu.Components.Pickers.Dialer.md">Dialer</a>, <a href="Ubuntu.Components.Pickers.DialerHand.md">DialerHand</a>, <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/Ubuntu.Components.PageTreeNode/">PageTreeNode</a>, <a href="Ubuntu.Components.Pickers.Picker.md">Picker</a>, <a href="Ubuntu.Components.PullToRefresh.md">PullToRefresh</a>, <a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a>, <a href="Ubuntu.Components.Slider.md">Slider</a>, <a href="Ubuntu.Components.TabBar.md">TabBar</a>, and <a href="Ubuntu.Components.TextArea.md">TextArea</a>.</p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
</ul>
<!-- $$$StyledItem-description -->
<h2>Detailed Description</h2>
<p>StyledItem provides facilities for making an Item stylable by the theme.</p>
<p>In order to make an Item stylable by the theme, it is enough to make the Item inherit from StyledItem and set its <a href="#style-prop">style</a> property to be the result of the appropriate call to Theme.createStyleComponent().</p>
<p>Example definition of a custom Item MyItem.qml:</p>
<pre class="qml"><span class="type">StyledItem</span> {
<span class="name">id</span>: <span class="name">myItem</span>
<span class="name">style</span>: <span class="name">Theme</span>.<span class="name">createStyleComponent</span>(<span class="string">&quot;MyItemStyle.qml&quot;</span>, <span class="name">myItem</span>)
}</pre>
<p>The Component set on <a href="#style-prop">style</a> is instantiated and placed below everything else that the Item contains.</p>
<p>A reference to the Item being styled is accessible from the style and named 'styledItem'.</p>
<p><b>See also </b><a href="Ubuntu.Components.Theme.md">Theme</a>.</p>
<!-- @@@StyledItem -->
<h2>Property Documentation</h2>
<!-- $$$activeFocusOnPress -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">activeFocusOnPress</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p>The property specifies whether the <a href="index.html">StyledItem</a> can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor <a href="index.html">StyledItem</a> or derived is having the property value false, the focus will not be gained automatically.</p>
<p>In the following example the <a href="Ubuntu.Components.TextField.md">TextField</a> will stay focused when clicked on the red rectangle.</p>
<pre class="qml">import QtQuick 2.2
import Ubuntu.Components 1.1
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="index.html">StyledItem</a></span> {
<span class="name">objectName</span>: <span class="string">&quot;passiveScope&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="index.html">StyledItem</a></span> {
<span class="name">objectName</span>: <span class="string">&quot;activeScope&quot;</span>
<span class="name">activeFocusOnPress</span>: <span class="number">true</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
}
}
<span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">text</span>: <span class="string">&quot;The input stays focus even if red box is clicked&quot;</span>
}
<span class="name">Component</span>.onCompleted: <span class="name">input</span>.<span class="name">forceActiveFocus</span>()
<span class="type"><a href="QtQml.Connections.md">Connections</a></span> {
<span class="name">target</span>: <span class="name">window</span>
<span class="name">onActiveFocusItemChanged</span>: <span class="name">console</span>.<span class="name">debug</span>(<span class="string">&quot;focus on&quot;</span>, <span class="name">window</span>.<span class="name">activeFocusItem</span>)
}
}</pre>
<p>The default value is <tt>false</tt>.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@activeFocusOnPress -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>Component instantiated immediately and placed below everything else.</p>
<!-- @@@style -->
<br/>
