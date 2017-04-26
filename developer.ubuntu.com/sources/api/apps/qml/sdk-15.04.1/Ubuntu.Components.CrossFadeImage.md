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
-   [SDK 15.04.1](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   CrossFadeImage

CrossFadeImage
==============

<span class="subtitle"></span>
An Image like component which smoothly fades when its source is updated. More...

|                   |          |
|-------------------|----------|
| Import Statement: | import . |

<span id="properties"></span>
Properties
----------

-   ****[fadeDuration](index.html#fadeDuration-prop)**** : int
-   ****[fadeStyle](index.html#fadeStyle-prop)**** : string
-   ****[fillMode](index.html#fillMode-prop)**** : enumeration
-   ****[running](index.html#running-prop)**** : bool
-   ****[source](index.html#source-prop)**** : url
-   ****[sourceSize](index.html#sourceSize-prop)**** : size
-   ****[status](index.html#status-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
CrossFadeImage {
    width: units.gu(100)
    height: units.gu(75)
    source: "http://design.ubuntu.com/wp-content/uploads/ubuntu-logo14.png"
    fadeDuration: 1000
    MouseArea {
        anchors.fill: parent
        onClicked: parent.source = "http://design.ubuntu.com/wp-content/uploads/canonical-logo1.png"
    }
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
<td><p><span id="fadeDuration-prop"></span><span class="name">fadeDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The time over which to fade between images. Defaults to `UbuntuAnimation.FastDuration`.

**See also** [UbuntuAnimation](../Ubuntu.Components.UbuntuAnimation/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fadeStyle-prop"></span><span class="name">fadeStyle</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Style of the fade effect

Defaults to `overlay`

-   overlay - the new fading image overlays the current one
-   cross - the current one fades out while the new image fades in

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fillMode-prop"></span><span class="name">fillMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Defaults to `Image.PreserveAspectFit`

-   Image.Stretch - the image is scaled to fit
-   Image.PreserveAspectFit - the image is scaled uniformly to fit without cropping
-   Image.PreserveAspectCrop - the image is scaled uniformly to fill, cropping if necessary
-   Image.Tile - the image is duplicated horizontally and vertically
-   Image.TileVertically - the image is stretched horizontally and tiled vertically
-   Image.TileHorizontally - the image is stretched vertically and tiled horizontally
-   Image.Pad - the image is not transformed

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the animation is running

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The image being displayed. Can be a URL to any image format supported by Qt.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceSize-prop"></span><span class="name">sourceSize</span> : <span class="type">size</span></p></td>
</tr>
</tbody>
</table>

The actual width and height of the loaded image This property holds the actual width and height of the loaded image.

Unlike the width and height properties, which scale the painting of the image, this property sets the actual number of pixels stored for the loaded image so that large images do not use more memory than necessary.

Note: Changing this property dynamically causes the image source to be reloaded, potentially even from the network, if it is not in the disk cache.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of image loading. It can be one of:

-   Image.Null - no image has been set
-   Image.Ready - the image has been loaded
-   Image.Loading - the image is currently being loaded
-   Image.Error - an error occurred while loading the image

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
