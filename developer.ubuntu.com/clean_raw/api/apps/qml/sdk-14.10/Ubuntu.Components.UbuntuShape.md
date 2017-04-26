---
Title: Ubuntu.Components.UbuntuShape
---

# Ubuntu.Components.UbuntuShape

<span class="subtitle"></span>
<!-- $$$UbuntuShape-brief -->
<p>The UbuntuShape item provides a standard Ubuntu shaped rounded rectangle. More...</p>
<!-- @@@UbuntuShape -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#gradientColor-prop">gradientColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#image-prop">image</a></b></b> : Image</li>
<li class="fn"><b><b><a href="#radius-prop">radius</a></b></b> : string</li>
</ul>
<!-- $$$UbuntuShape-description -->
<h2>Detailed Description</h2>
<p>The UbuntuShape is used where a rounded rectangle is needed either filled with a color or an image that it crops.</p>
<p>When given with a <a href="#color-prop">color</a> it is applied with an overlay blending as a vertical gradient going from <a href="#color-prop">color</a> to <a href="#gradientColor-prop">gradientColor</a>. Two corner <a href="#radius-prop">radius</a> are available, &quot;small&quot; (default) and &quot;medium&quot;, that determine the size of the corners. Optionally, an Image can be passed that will be displayed inside the UbuntuShape and cropped to fit it.</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.1
<span class="type">UbuntuShape</span> {
<span class="name">color</span>: <span class="string">&quot;lightblue&quot;</span>
<span class="name">radius</span>: <span class="string">&quot;medium&quot;</span>
}</pre>
<pre class="qml">import Ubuntu.Components 1.1
<span class="type">UbuntuShape</span> {
<span class="name">image</span>: <span class="name">Image</span> {
<span class="name">source</span>: <span class="string">&quot;icon.png&quot;</span>
}
}</pre>
<!-- @@@UbuntuShape -->
<h2>Property Documentation</h2>
<!-- $$$color -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-color.html">color</a></span></p></td></tr></table><p>The top color of the gradient used to fill the shape. Setting only this one is enough to set the overall color the shape.</p>
<!-- @@@color -->
<br/>
<!-- $$$gradientColor -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">gradientColor</span> : <span class="type"><a href="#color-prop">color</a></span></p></td></tr></table><p>The bottom color of the gradient used for the overlay blending of the color that fills the shape. It is optional to set this one as setting <a href="#color-prop">color</a> is enough to set the overall color of the shape.</p>
<!-- @@@gradientColor -->
<br/>
<!-- $$$image -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">image</span> : <span class="type"><a href="QtQuick.Image.md">Image</a></span></p></td></tr></table><p>The image used to fill the shape.</p>
<!-- @@@image -->
<br/>
<!-- $$$radius -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">radius</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p>The size of the corners among: &quot;small&quot; (default) and &quot;medium&quot;.</p>
<!-- @@@radius -->
<br/>
