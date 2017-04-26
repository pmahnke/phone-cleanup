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
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   Header

Header
======

<span class="subtitle"></span>
Header bar that can contain the title and controls for the current view. More...

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
<td>Since:</td>
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.StyledItem/index.html">StyledItem</a></p></td>
</tr>
<tr class="even">
<td>Inherited By:</td>
<td><p><a href="../Ubuntu.Components.PageHeader/index.html">PageHeader</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[exposed](index.html#exposed-prop)**** : bool
-   ****[flickable](index.html#flickable-prop)**** : Flickable
-   ****[moving](index.html#moving-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

The Header can be exposed and hidden by setting the [exposed](index.html#exposed-prop) property, and when a [flickable](index.html#flickable-prop) is set, the header will scroll together with the flickable and expose or hide when the Flickable movement ends.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
Page {
    width: units.gu(50)
    height: units.gu(70)
    header: Header {
        width: parent.width
        height: units.gu(6)
        flickable: scrollableContent
        Rectangle {
            // to visualize the header
            anchors.fill: parent
            color: UbuntuColors.blue
        }
    }
    Flickable {
        id: scrollableContent
        anchors.fill: parent
        contentHeight: height * 2
        Label {
            text: "Flick me"
        }
    }
}
```

The initial y-value is 0, but scrolling the flickable or setting [exposed](index.html#exposed-prop) to false will change the y-value in the range from -height to 0.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exposed-prop"></span><span class="name">exposed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Exposes and hides the header by animating its y-value between -height and 0 to move it in or out of its parent Item. The value of exposed can be set directly, or it will be automatically updated when the user exposes or hides the Header by scrolling the Header's [flickable](index.html#flickable-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickable-prop"></span><span class="name">flickable</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Flickable/index.html">Flickable</a></span></p></td>
</tr>
</tbody>
</table>

When flickable is set, scrolling vertically in the flickable, or setting the Flickable's y-value will move the header y-position by the same amount as the flickable content movement. When scrolling the flickable, upon release, the header will animate to fully exposed or fully hidden state, depending on whether it was more or less than half exposed when the user stopped moving the flickable.

When flickable is null, the header can be exposed or hidden by setting the [exposed](index.html#exposed-prop) property. Note that [exposed](index.html#exposed-prop) is not automatically updated when the value of flickable changes, so if the header must be exposed when the flickable changes (or is set to null), this must be done explicitly. Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(60)
    height: units.gu(80)
    AdaptivePageLayout {
        id: layout
        anchors.fill: parent
        primaryPage: Page {
            id: page
            Flickable {
                id: contentFlick
                anchors.fill: parent
                topMargin: page.header.flickable ? 0 : page.header.height
                contentHeight: units.gu(200)
                // Scrolling here can hide the header.
            }
            header: PageHeader {
                title: i18n.tr("Navigation")
                flickable: layout.columns === 1 ? contentFlick : null
                // Show header when it gets locked in a two-column layout:
                onFlickableChanged: exposed = true
            }
        }
    }
}
```

The topMargin of the flickable will automatically be updated by adding the height of the header to the current topMargin. When changing the flickable, the topMargin of the previous flickable is restored by subtracting the header height from it. Making the header invisible has the same effect on the topMargin as unsetting the flickable.

It is permitted to use a [ListView](../../sdk-14.10/QtQuick.ListView/index.html) as the value of flickable, but this works well only if the [ListView](../../sdk-14.10/QtQuick.ListView/index.html).header property is not set. Alternatively, a Header component may be used for [ListView](../../sdk-14.10/QtQuick.ListView/index.html).header, but in that case the flickable of the Header must be null.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moving-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">moving</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Indicates whether the header is currently moving, either because contentY of the [flickable](index.html#flickable-prop) changes (due to user interaction or by setting it directly), or because the header is animating in or out because the value of [exposed](index.html#exposed-prop) was updated.

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
