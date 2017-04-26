---
Title: Ubuntu.Components.Styles.PageHeadStyle
---

# Ubuntu.Components.Styles.PageHeadStyle

<span class="subtitle"></span>
<!-- $$$PageHeadStyle-brief -->
<p>Style API for page header. More...</p>
<!-- @@@PageHeadStyle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components.Styles .</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#contentHeight-prop">contentHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#fontSize-prop">fontSize</a></b></b> : string</li>
<li class="fn"><b><b><a href="#fontWeight-prop">fontWeight</a></b></b> : int</li>
<li class="fn"><b><b><a href="#maximumNumberOfActions-prop">maximumNumberOfActions</a></b></b> : int</li>
<li class="fn"><b><b><a href="#separatorBottomSource-prop">separatorBottomSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#separatorSource-prop">separatorSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#textColor-prop">textColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#textLeftMargin-prop">textLeftMargin</a></b></b> : real</li>
</ul>
<!-- $$$PageHeadStyle-description -->
<h2>Detailed Description</h2>
<p>The component defines the style API for the page header component.</p>
<!-- @@@PageHeadStyle -->
<h2>Property Documentation</h2>
<!-- $$$contentHeight -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">contentHeight</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p>The height of the headercontents, which is the full height of the header minus the separators shown at the bottom of it.</p>
<!-- @@@contentHeight -->
<br/>
<!-- $$$fontSize -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">fontSize</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p>The size of the title font.</p>
<!-- @@@fontSize -->
<br/>
<!-- $$$fontWeight -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">fontWeight</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td></tr></table><p>The weight of the title font.</p>
<!-- @@@fontWeight -->
<br/>
<!-- $$$maximumNumberOfActions -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">maximumNumberOfActions</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td></tr></table><p>The number of slots for actions in the header, including the optional (custom or automatic) back button in the left side of the header. If the number of actions defined is larger than the numer of actions specified here, extra actions are put into an overflow.</p>
<!-- @@@maximumNumberOfActions -->
<br/>
<!-- $$$separatorBottomSource -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">separatorBottomSource</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-url.html">url</a></span></p></td></tr></table><p>The source of an additional image attached to the bottom of the separator. The contents of the <a href="Ubuntu.Components.MainView.md">MainView</a> will be drawn on top of the separator bottom image.</p>
<!-- @@@separatorBottomSource -->
<br/>
<!-- $$$separatorSource -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">separatorSource</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-url.html">url</a></span></p></td></tr></table><p>The source of the image that separates the header from the contents of a <a href="Ubuntu.Components.MainView.md">MainView</a>. The separator will be drawn over the contents.</p>
<!-- @@@separatorSource -->
<br/>
<!-- $$$textColor -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">textColor</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-color.html">color</a></span></p></td></tr></table><p>The color of the title text.</p>
<!-- @@@textColor -->
<br/>
<!-- $$$textLeftMargin -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">textLeftMargin</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p>Left margin of title text.</p>
<!-- @@@textLeftMargin -->
<br/>
