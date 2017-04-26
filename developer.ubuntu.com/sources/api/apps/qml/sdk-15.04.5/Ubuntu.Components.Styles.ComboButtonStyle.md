<a href="https://developer.ubuntu.com/" class="logo-ubuntu"><img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/logos/logo-ubuntu-orange.svg" width="106" height="25" /> <span>developer</span></a>

-   [Jump to content](index.html#main-content)
-   [Desktop](https://developer.ubuntu.com/en/desktop/)
-   [Phone](https://developer.ubuntu.com/en/phone/)
-   [Core](https://developer.ubuntu.com/core)
-   [Community](https://developer.ubuntu.com/en/community/)
-   [Publish](https://developer.ubuntu.com/en/publish/)
-   [My Apps](https://myapps.developer.ubuntu.com/)

Search

<img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/search-white.svg" alt="Search" height="28" />

-   [APIs](../../../../index.html) ›
-   [Apps](../../../index.html) ›
-   [QML](../../index.html) ›
-   [SDK 15.04.5](../index.html) ›
-   [Ubuntu.Components.Styles](../Ubuntu.Components.Styles/index.html) ›

<!-- -->

-   ComboButtonStyle

ComboButtonStyle
================

<span class="subtitle"></span>
Style API for ComboButton component. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Styles 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[comboListHolder](index.html#comboListHolder-prop)**** : Item
-   ****[comboListMargin](index.html#comboListMargin-prop)**** : real
-   ****[comboListPanel](index.html#comboListPanel-prop)**** : Item
-   ****[defaultColor](index.html#defaultColor-prop)**** : color
-   ****[defaultDropdownColor](index.html#defaultDropdownColor-prop)**** : color
-   ****[defaultFont](index.html#defaultFont-prop)**** : font
-   ****[defaultGradient](index.html#defaultGradient-prop)**** : Gradient
-   ****[dropDownSeparatorWidth](index.html#dropDownSeparatorWidth-prop)**** : real
-   ****[dropDownWidth](index.html#dropDownWidth-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The component defines the style API for the [ComboButton](../Ubuntu.Components.ComboButton/index.html) component.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="comboListHolder-prop"></span><span class="name">comboListHolder</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The item which will hold the combo list data. Implementations can point both this and [comboListPanel](index.html#comboListPanel-prop) to the same component, however separate items should be used if a gap between the panel and the content is required. See Ambiance theme.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="comboListMargin-prop"></span><span class="name">comboListMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Distance between the combo list and the main button.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="comboListPanel-prop"></span><span class="name">comboListPanel</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The item pointing to the panel holding the combo list and additional design artifacts. It is used by the component to drive the expansion size.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultColor-prop"></span><span class="name">defaultColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Default color for the main button.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultDropdownColor-prop"></span><span class="name">defaultDropdownColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Default color for the dropdown button and the combo list both when expanded and collapsed. Implementations can define different color for expanded/collapsed using the *styledItem.expanded* property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultFont-prop"></span><span class="name">defaultFont</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-font.html">font</a></span></p></td>
</tr>
</tbody>
</table>

Default font used in the main button.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultGradient-prop"></span><span class="name">defaultGradient</span> : <span class="type"><a href="../../sdk-15.04/QtQuick.Gradient/index.html">Gradient</a></span></p></td>
</tr>
</tbody>
</table>

Default gradient for the main button.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dropDownSeparatorWidth-prop"></span><span class="name">dropDownSeparatorWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Width of the dropdown button separator.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dropDownWidth-prop"></span><span class="name">dropDownWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Width of the drop down button.

[Back to top](index.html#)

-   [Desktop](https://developer.ubuntu.com/en/desktop/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/desktop/)
    -   [Get started](http://snapcraft.io/?utm_source=developer.ubuntu.com&utm_medium=devportal&utm_term=snaps%20snapcraft%20desktop&utm_content=menu&utm_campaign=duc_snappers)
    -   [Examples](https://github.com/ubuntu/snappy-playpen)

-   [Phone](https://developer.ubuntu.com/en/phone/)
    -----------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/phone/)
    -   [Scopes](https://developer.ubuntu.com/en/phone/scopes/)
    -   [Apps](https://developer.ubuntu.com/en/phone/apps/)
    -   [Web Apps](https://developer.ubuntu.com/en/phone/web/)
    -   [Platform](https://developer.ubuntu.com/en/phone/platform/)
    -   [Devices](https://developer.ubuntu.com/en/phone/devices/)

-   [Core](https://developer.ubuntu.com/core)
    -----------------------------------------

    -   [Overview](https://developer.ubuntu.com/core)
    -   [Get started](https://developer.ubuntu.com/core/get-started)
    -   [Tutorials](https://developer.ubuntu.com/core/tutorials)
    -   [Examples](https://developer.ubuntu.com/core/examples)
    -   [Publish and distribute](https://developer.ubuntu.com/core/publish-and-distribute)
    -   [Documentation](https://developer.ubuntu.com/core/documentation)
    -   [Troubleshooting](https://developer.ubuntu.com/core/troubleshooting)

-   [Community](https://developer.ubuntu.com/en/community/)
    -------------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/community/)
    -   [App development training](https://developer.ubuntu.com/en/community/training/)
    -   [Core apps](https://developer.ubuntu.com/en/community/core-apps/)
    -   [Blog](https://developer.ubuntu.com/en/community/blog/)

-   [Publish](https://developer.ubuntu.com/en/publish/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/publish/)
    -   [Application states](https://developer.ubuntu.com/en/publish/application-states/)
    -   [Packaging click apps](https://developer.ubuntu.com/en/publish/packaging-click-apps/)
    -   [Creating a good icon](https://developer.ubuntu.com/en/publish/creating-a-good-icon/)
    -   [Web](https://developer.ubuntu.com/en/publish/web/)
    -   [Security policy groups](https://developer.ubuntu.com/en/publish/security-policy-groups/)
    -   [Choosing a license](https://developer.ubuntu.com/en/publish/choosing-a-license/)
    -   [Other forms of submitting apps](https://developer.ubuntu.com/en/publish/other-forms-of-submitting-apps/)
    -   [Scopes](https://developer.ubuntu.com/en/publish/scopes/)

-   View in:
    --------

    -   [English](index.html "Change to language: English")
    -   [Simplified Chinese](index.html "Change to language: Simplified Chinese")

-   [Download](http://ubuntu.com/download/)
    ---------------------------------------

    -   [Overview](http://ubuntu.com/download)
    -   [Cloud](http://ubuntu.com/download/cloud)
    -   [Server](http://ubuntu.com/download/server)
    -   [Desktop](http://ubuntu.com/download/desktop)
    -   [Ubuntu Kylin](http://ubuntu.com/download/ubuntu-kylin)
    -   [Alternative downloads](http://ubuntu.com/download/alternative-downloads)

-   [Support](http://ubuntu.com/support/)
    -------------------------------------

    -   [Overview](http://ubuntu.com/support)
    -   [Security notices](http://www.ubuntu.com/usn/)

-   [About](http://ubuntu.com/about/)
    ---------------------------------

    -   [About Ubuntu](http://ubuntu.com/about/about-ubuntu)
    -   [Careers](http://www.canonical.com/careers)
    -   [Canonical and Ubuntu](http://ubuntu.com/about/canonical-and-ubuntu)
    -   [Contact us](http://ubuntu.com/about/contact-us)
    -   [Canonical news feed](http://insights.ubuntu.com/feed/)

© 2015 Canonical Ltd. Ubuntu and Canonical are registered trademarks of Canonical Ltd.

-   [Legal information](http://www.ubuntu.com/legal)
-   [Report a bug on this site](https://bugs.launchpad.net/developer-ubuntu-com/)

<span class="accessibility-aid">[Go to the top of the page](index.html#)</span>
