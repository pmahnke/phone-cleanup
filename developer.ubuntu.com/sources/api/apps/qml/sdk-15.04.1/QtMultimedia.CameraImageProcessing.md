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
-   [QtMultimedia](../QtMultimedia/index.html) ›

<!-- -->

-   CameraImageProcessing

CameraImageProcessing
=====================

<span class="subtitle"></span>
An interface for camera capture related settings. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[contrast](index.html#contrast-prop)**** : qreal
-   ****[denoisingLevel](index.html#denoisingLevel-prop)**** : qreal
-   ****[manualWhiteBalance](index.html#manualWhiteBalance-prop)**** : qreal
-   ****[saturation](index.html#saturation-prop)**** : qreal
-   ****[sharpeningLevel](index.html#sharpeningLevel-prop)**** : qreal
-   ****[whiteBalanceMode](index.html#whiteBalanceMode-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

[CameraImageProcessing](index.html) provides control over post-processing done by the camera middleware, including white balance adjustments, contrast, saturation, sharpening, and denoising

It should not be constructed separately, instead the `imageProcessing` property of a [Camera](../QtMultimedia.qml-multimedia/index.html#camera) should be used.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Camera {
    id: camera
    imageProcessing {
        whiteBalanceMode: Camera.WhiteBalanceTungsten
        contrast: 0.66
        saturation: -0.5
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
<td><p><span id="contrast-prop"></span><span class="name">contrast</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Image contrast adjustment. Valid contrast adjustment values range between -1.0 and 1.0, with a default of 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="denoisingLevel-prop"></span><span class="name">denoisingLevel</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Adjustment of denoising applied to image.

Valid denoising level values range between -1.0 for for denoising disabled, 0 for default denoising level and 1.0 for maximum denoising applied.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manualWhiteBalance-prop"></span><span class="name">manualWhiteBalance</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

The color temperature used when in manual white balance mode (WhiteBalanceManual). The units are Kelvin.

**See also** [whiteBalanceMode](index.html#whiteBalanceMode-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="saturation-prop"></span><span class="name">saturation</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Image saturation adjustment. Valid saturation adjustment values range between -1.0 and 1.0, the default is 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sharpeningLevel-prop"></span><span class="name">sharpeningLevel</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Adjustment of sharpening level applied to image.

Valid sharpening level values range between -1.0 for for sharpening disabled, 0 for default sharpening level and 1.0 for maximum sharpening applied.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="whiteBalanceMode-prop"></span><span class="name">whiteBalanceMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

| Value                   | Description                                                                         |
|-------------------------|-------------------------------------------------------------------------------------|
| WhiteBalanceManual      | Manual white balance. In this mode the manual white balance property value is used. |
| WhiteBalanceAuto        | Auto white balance mode.                                                            |
| WhiteBalanceSunlight    | Sunlight white balance mode.                                                        |
| WhiteBalanceCloudy      | Cloudy white balance mode.                                                          |
| WhiteBalanceShade       | Shade white balance mode.                                                           |
| WhiteBalanceTungsten    | Tungsten white balance mode.                                                        |
| WhiteBalanceFluorescent | Fluorescent white balance mode.                                                     |
| WhiteBalanceFlash       | Flash white balance mode.                                                           |
| WhiteBalanceSunset      | Sunset white balance mode.                                                          |
| WhiteBalanceVendor      | Vendor defined white balance mode.                                                  |

**See also** [manualWhiteBalance](index.html#manualWhiteBalance-prop).

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
