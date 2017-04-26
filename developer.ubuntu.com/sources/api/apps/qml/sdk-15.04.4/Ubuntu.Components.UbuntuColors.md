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
-   [SDK 15.04.4](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   UbuntuColors

UbuntuColors
============

<span class="subtitle"></span>
Singleton defining the Ubuntu color palette. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQml.QtObject/index.html">QtObject</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[ash](index.html#ash-prop)**** : color
-   ****[blue](index.html#blue-prop)**** : color
-   ****[graphite](index.html#graphite-prop)**** : color
-   ****[green](index.html#green-prop)**** : color
-   ****[inkstone](index.html#inkstone-prop)**** : color
-   ****[jet](index.html#jet-prop)**** : color
-   ****[orange](index.html#orange-prop)**** : color
-   ****[porcelain](index.html#porcelain-prop)**** : color
-   ****[purple](index.html#purple-prop)**** : color
-   ****[red](index.html#red-prop)**** : color
-   ****[silk](index.html#silk-prop)**** : color
-   ****[slate](index.html#slate-prop)**** : color

<span id="details"></span>
Detailed Description
--------------------

Each color of the Ubuntu color palette is accesible from it. For more information on how to appropriately use the colors according to the context, please refer to the [Ubuntu brand guidelines](http://design.ubuntu.com/brand/colour-palette).

Example of use:

``` qml
Rectangle {
   color: UbuntuColors.orange
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ash-prop"></span><span class="qmlreadonly">read-only</span><span class="name">ash</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Ash. Recommended for subtitles and other tertiary content.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="blue-prop"></span><span class="qmlreadonly">read-only</span><span class="name">blue</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Blue. Recommended for text selection and text cursor.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="graphite-prop"></span><span class="qmlreadonly">read-only</span><span class="name">graphite</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Graphite. Recommended for coloring dark themes' background.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="green-prop"></span><span class="qmlreadonly">read-only</span><span class="name">green</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Green. Recommended for positive action buttons.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="inkstone-prop"></span><span class="qmlreadonly">read-only</span><span class="name">inkstone</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Inkstone. Recommended for foreground colors in dark themes.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="jet-prop"></span><span class="qmlreadonly">read-only</span><span class="name">jet</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Jet. Recommended for content coloring.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orange-prop"></span><span class="qmlreadonly">read-only</span><span class="name">orange</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Orange. Recommended for branded elements, display progress and intensity, textual links on light backgrounds.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="porcelain-prop"></span><span class="qmlreadonly">read-only</span><span class="name">porcelain</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Porcelain. Recommended for foregrounds.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="purple-prop"></span><span class="qmlreadonly">read-only</span><span class="name">purple</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Purple. Recommended for proper nouns in list items.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="red-prop"></span><span class="qmlreadonly">read-only</span><span class="name">red</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Red. Recommended for negative and irreversible action buttons, errors and alerts.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="silk-prop"></span><span class="qmlreadonly">read-only</span><span class="name">silk</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Silk. Recommended for neutral action buttons and secondary text.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="slate-prop"></span><span class="qmlreadonly">read-only</span><span class="name">slate</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Slate. Recommended for text and action icons.

This QML property was introduced in Ubuntu.Components 1.3.

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
