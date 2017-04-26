---
Title: Ubuntu.Components.UbuntuColors
---

# Ubuntu.Components.UbuntuColors

<span class="subtitle"></span>
<!-- $$$UbuntuColors-brief -->
<p>Singleton defining the Ubuntu color palette. More...</p>
<!-- @@@UbuntuColors -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.2</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="../sdk-14.10/QtQml.QtObject.md">QtObject</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#blue-prop">blue</a></b></b> : color</li>
<li class="fn"><b><b><a href="#darkGrey-prop">darkGrey</a></b></b> : color</li>
<li class="fn"><b><b><a href="#green-prop">green</a></b></b> : color</li>
<li class="fn"><b><b><a href="#greyGradient-prop">greyGradient</a></b></b> : Gradient</li>
<li class="fn"><b><b><a href="#lightGrey-prop">lightGrey</a></b></b> : color</li>
<li class="fn"><b><b><a href="#orange-prop">orange</a></b></b> : color</li>
<li class="fn"><b><b><a href="#orangeGradient-prop">orangeGradient</a></b></b> : Gradient</li>
<li class="fn"><b><b><a href="#purple-prop">purple</a></b></b> : color</li>
<li class="fn"><b><b><a href="#red-prop">red</a></b></b> : color</li>
</ul>
<!-- $$$UbuntuColors-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Each color of the Ubuntu color palette is accesible from it. For more information on how to appropriately use the colors according to the context, please refer to the <a href="http://design.ubuntu.com/brand/colour-palette">Ubuntu brand guidelines</a>.</p>
<p>Example of use:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
}</pre>
<!-- @@@UbuntuColors -->
<h2>Property Documentation</h2>
<!-- $$$blue -->
<table class="qmlname"><tr valign="top" id="blue-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">blue</span> : <span class="type">color</span></p></td></tr></table><p>Blue. Recommended for text selection and text cursor.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@blue -->
<br/>
<!-- $$$darkGrey -->
<table class="qmlname"><tr valign="top" id="darkGrey-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">darkGrey</span> : <span class="type">color</span></p></td></tr></table><p>Dark grey. Recommended for text and action icons.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@darkGrey -->
<br/>
<!-- $$$green -->
<table class="qmlname"><tr valign="top" id="green-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">green</span> : <span class="type">color</span></p></td></tr></table><p>Green. Recommended for positive action buttons.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@green -->
<br/>
<!-- $$$greyGradient -->
<table class="qmlname"><tr valign="top" id="greyGradient-prop"><td class="tblQmlPropNode"><p><span class="name">greyGradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td></tr></table><p>Ubuntu grey gradient</p>
<p><b>See also </b><a href="Ubuntu.Components.Button.md#gradient-prop">Button::gradient</a>.</p>
<!-- @@@greyGradient -->
<br/>
<!-- $$$lightGrey -->
<table class="qmlname"><tr valign="top" id="lightGrey-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">lightGrey</span> : <span class="type">color</span></p></td></tr></table><p>Light grey. Recommended for neutral action buttons and secondary text.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@lightGrey -->
<br/>
<!-- $$$orange -->
<table class="qmlname"><tr valign="top" id="orange-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">orange</span> : <span class="type">color</span></p></td></tr></table><p>Orange. Recommended for branded elements, display progress and intensity, textual links on light backgrounds.</p>
<!-- @@@orange -->
<br/>
<!-- $$$orangeGradient -->
<table class="qmlname"><tr valign="top" id="orangeGradient-prop"><td class="tblQmlPropNode"><p><span class="name">orangeGradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td></tr></table><p>Ubuntu orange gradient</p>
<p><b>See also </b><a href="Ubuntu.Components.Button.md#gradient-prop">Button::gradient</a>.</p>
<!-- @@@orangeGradient -->
<br/>
<!-- $$$purple -->
<table class="qmlname"><tr valign="top" id="purple-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">purple</span> : <span class="type">color</span></p></td></tr></table><p>Purple. Recommended for proper nouns in list items.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@purple -->
<br/>
<!-- $$$red -->
<table class="qmlname"><tr valign="top" id="red-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">red</span> : <span class="type">color</span></p></td></tr></table><p>Red. Recommended for negative and irreversible action buttons, errors and alerts.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@red -->
<br/>
