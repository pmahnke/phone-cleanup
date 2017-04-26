---
Title: Ubuntu.Components.Styles.ComboButtonStyle
---

# Ubuntu.Components.Styles.ComboButtonStyle

<span class="subtitle"></span>
<!-- $$$ComboButtonStyle-brief -->
<p>Style API for ComboButton component. More...</p>
<!-- @@@ComboButtonStyle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components.Styles .</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#comboListHolder-prop">comboListHolder</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#comboListMargin-prop">comboListMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#comboListPanel-prop">comboListPanel</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#defaultColor-prop">defaultColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#defaultDropdownColor-prop">defaultDropdownColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#defaultFont-prop">defaultFont</a></b></b> : font</li>
<li class="fn"><b><b><a href="#defaultGradient-prop">defaultGradient</a></b></b> : Gradient</li>
<li class="fn"><b><b><a href="#dropDownSeparatorWidth-prop">dropDownSeparatorWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#dropDownWidth-prop">dropDownWidth</a></b></b> : real</li>
</ul>
<!-- $$$ComboButtonStyle-description -->
<h2>Detailed Description</h2>
<p>The component defines the style API for the <a href="Ubuntu.Components.ComboButton.md">ComboButton</a> component.</p>
<!-- @@@ComboButtonStyle -->
<h2>Property Documentation</h2>
<!-- $$$comboListHolder -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">comboListHolder</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The item which will hold the combo list data. Implementations can point both this and <a href="#comboListPanel-prop">comboListPanel</a> to the same component, however separate items should be used if a gap between the panel and the content is required. See Ambiance theme.</p>
<!-- @@@comboListHolder -->
<br/>
<!-- $$$comboListMargin -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">comboListMargin</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p>Distance between the combo list and the main button.</p>
<!-- @@@comboListMargin -->
<br/>
<!-- $$$comboListPanel -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">comboListPanel</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The item pointing to the panel holding the combo list and additional design artifacts. It is used by the component to drive the expansion size.</p>
<!-- @@@comboListPanel -->
<br/>
<!-- $$$defaultColor -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">defaultColor</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-color.html">color</a></span></p></td></tr></table><p>Default color for the main button.</p>
<!-- @@@defaultColor -->
<br/>
<!-- $$$defaultDropdownColor -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">defaultDropdownColor</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-color.html">color</a></span></p></td></tr></table><p>Default color for the dropdown button and the combo list both when expanded and collapsed. Implementations can define different color for expanded/collapsed using the <i>styledItem.expanded</i> property.</p>
<!-- @@@defaultDropdownColor -->
<br/>
<!-- $$$defaultFont -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">defaultFont</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-font.html">font</a></span></p></td></tr></table><p>Default font used in the main button.</p>
<!-- @@@defaultFont -->
<br/>
<!-- $$$defaultGradient -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">defaultGradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td></tr></table><p>Default gradient for the main button.</p>
<!-- @@@defaultGradient -->
<br/>
<!-- $$$dropDownSeparatorWidth -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">dropDownSeparatorWidth</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p>Width of the dropdown button separator.</p>
<!-- @@@dropDownSeparatorWidth -->
<br/>
<!-- $$$dropDownWidth -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">dropDownWidth</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td></tr></table><p>Width of the drop down button.</p>
<!-- @@@dropDownWidth -->
<br/>
