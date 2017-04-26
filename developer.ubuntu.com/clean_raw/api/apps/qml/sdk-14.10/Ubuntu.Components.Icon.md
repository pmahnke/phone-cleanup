---
Title: Ubuntu.Components.Icon
---

# Ubuntu.Components.Icon

<span class="subtitle"></span>
<!-- $$$Icon-brief -->
<p>The Icon component displays an icon from the icon theme. More...</p>
<!-- @@@Icon -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#keyColor-prop">keyColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
</ul>
<!-- $$$Icon-description -->
<h2>Detailed Description</h2>
<p>The icon theme contains a set of standard icons referred to by their name. Using icons whenever possible enhances consistency accross applications. Each icon has a name and can have different visual representations depending on the size requested.</p>
<p>Icons can also be colorized. Setting the <a href="#color-prop">color</a> property will make all pixels with the <a href="#keyColor-prop">keyColor</a> (by default #808080) colored.</p>
<p>Example:</p>
<pre class="qml"><span class="type">Icon</span> {
<span class="name">width</span>: <span class="number">64</span>
<span class="name">height</span>: <span class="number">64</span>
<span class="name">name</span>: <span class="string">&quot;search&quot;</span>
}</pre>
<p>Example of colorization:</p>
<pre class="qml"><span class="type">Icon</span> {
<span class="name">width</span>: <span class="number">64</span>
<span class="name">height</span>: <span class="number">64</span>
<span class="name">name</span>: <span class="string">&quot;search&quot;</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">warmGrey</span>
}</pre>
<p>Icon themes are created following the <a href="http://standards.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html">Freedesktop Icon Theme Specification</a>.</p>
<!-- @@@Icon -->
<h2>Property Documentation</h2>
<!-- $$$color -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-color.html">color</a></span></p></td></tr></table><p>The color that all pixels that originally are of color <a href="#keyColor-prop">keyColor</a> should take.</p>
<!-- @@@color -->
<br/>
<!-- $$$keyColor -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">keyColor</span> : <span class="type"><a href="#color-prop">color</a></span></p></td></tr></table><p>The color of the pixels that should be colorized. By default it is set to #808080.</p>
<!-- @@@keyColor -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p>The name of the icon to display.</p>
<p>If both name and source are set, name will be ignored.</p>
<p><b>Note: </b>The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:</p><ul>
<li>Ubuntu Touch: /usr/share/icons/suru</li>
<li>Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark</li>
</ul>
<p>These 2 separate icon themes will be merged soon.</p>
<!-- @@@name -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-url.html">url</a></span></p></td></tr></table><p>The source url of the icon to display. It has precedence over name.</p>
<p>If both name and source are set, name will be ignored.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@source -->
<br/>
