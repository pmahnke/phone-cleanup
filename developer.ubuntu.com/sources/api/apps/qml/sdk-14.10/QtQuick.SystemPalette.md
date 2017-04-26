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
-   [SDK 14.10](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   SystemPalette

SystemPalette
=============

<span class="subtitle"></span>
Provides access to the Qt palettes More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | `import QtQuick 2.2` |

<span id="properties"></span>
Properties
----------

-   ****[alternateBase](index.html#alternateBase-prop)**** : color
-   ****[base](index.html#base-prop)**** : color
-   ****[button](index.html#button-prop)**** : color
-   ****[buttonText](index.html#buttonText-prop)**** : color
-   ****[colorGroup](index.html#colorGroup-prop)**** : enumeration
-   ****[dark](index.html#dark-prop)**** : color
-   ****[highlight](index.html#highlight-prop)**** : color
-   ****[highlightedText](index.html#highlightedText-prop)**** : color
-   ****[light](index.html#light-prop)**** : color
-   ****[mid](index.html#mid-prop)**** : color
-   ****[midlight](index.html#midlight-prop)**** : color
-   ****[shadow](index.html#shadow-prop)**** : color
-   ****[text](index.html#text-prop)**** : color
-   ****[window](index.html#window-prop)**** : color
-   ****[windowText](index.html#windowText-prop)**** : color

<span id="details"></span>
Detailed Description
--------------------

The SystemPalette type provides access to the Qt application palettes. This provides information about the standard colors used for application windows, buttons and other features. These colors are grouped into three *color groups*: `Active`, `Inactive`, and `Disabled`. See the QPalette documentation for details about color groups and the properties provided by SystemPalette.

This can be used to color items in a way that provides a more native look and feel.

The following example creates a palette from the `Active` color group and uses this to color the window and text items appropriately:

``` qml
import QtQuick 2.0
Rectangle {
    SystemPalette { id: myPalette; colorGroup: SystemPalette.Active }
    width: 640; height: 480
    color: myPalette.window
    Text {
        anchors.fill: parent
        text: "Hello!"; color: myPalette.windowText
    }
}
```

**See also** QPalette.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alternateBase-prop"></span><span class="name">alternateBase</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The alternate base color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="base-prop"></span><span class="name">base</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The base color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="button-prop"></span><span class="name">button</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The button color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="buttonText-prop"></span><span class="name">buttonText</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The button text foreground color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="colorGroup-prop"></span><span class="name">colorGroup</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The color group of the palette. This can be one of:

-   [SystemPalette](index.html).Active (default)
-   [SystemPalette](index.html).Inactive
-   [SystemPalette](index.html).Disabled

**See also** QPalette::ColorGroup.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dark-prop"></span><span class="name">dark</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The dark color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlight-prop"></span><span class="name">highlight</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The highlight color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightedText-prop"></span><span class="name">highlightedText</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The highlighted text color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="light-prop"></span><span class="name">light</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The light color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mid-prop"></span><span class="name">mid</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The mid color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="midlight-prop"></span><span class="name">midlight</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The midlight color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shadow-prop"></span><span class="name">shadow</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The shadow color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The text color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="window-prop"></span><span class="name">window</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The window (general background) color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="windowText-prop"></span><span class="name">windowText</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The window text (general foreground) color of the current color group.

**See also** QPalette::ColorRole.

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
