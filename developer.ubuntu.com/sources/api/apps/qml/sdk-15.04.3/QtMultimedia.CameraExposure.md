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
-   [SDK 15.04.3](../index.html) ›
-   [QtMultimedia](../QtMultimedia/index.html) ›

<!-- -->

-   CameraExposure

CameraExposure
==============

<span class="subtitle"></span>
An interface for exposure related camera settings. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[aperture](index.html#aperture-prop)**** : real
-   ****[exposureCompensation](index.html#exposureCompensation-prop)**** : real
-   ****[exposureMode](index.html#exposureMode-prop)**** : enumeration
-   ****[iso](index.html#iso-prop)**** : int
-   ****[manualAperture](index.html#manualAperture-prop)**** : real
-   ****[manualIso](index.html#manualIso-prop)**** : real
-   ****[manualShutterSpeed](index.html#manualShutterSpeed-prop)**** : real
-   ****[meteringMode](index.html#meteringMode-prop)**** : enumeration
-   ****[shutterSpeed](index.html#shutterSpeed-prop)**** : real
-   ****[spotMeteringPoint](index.html#spotMeteringPoint-prop)**** : QPointF

<span id="methods"></span>
Methods
-------

-   ****[setAutoAperture](index.html#setAutoAperture-method)****()
-   ****[setAutoIsoSensitivity](index.html#setAutoIsoSensitivity-method)****()
-   ****[setAutoShutterSpeed](index.html#setAutoShutterSpeed-method)****()

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtMultimedia 5.0** module.

[CameraExposure](index.html) allows you to adjust exposure related settings like aperture and shutter speed, metering and ISO speed.

It should not be constructed separately, instead the `exposure` property of the a [Camera](../QtMultimedia.qml-multimedia/index.html#camera) should be used.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Camera {
    id: camera
    exposure.exposureCompensation: -1.0
    exposure.exposureMode: Camera.ExposurePortrait
}
```

Several settings have both an automatic and a manual mode. In the automatic modes the camera software itself will decide what a reasonable setting is, but in most cases these settings can be overridden with a specific manual setting.

For example, to select automatic shutter speed selection:

``` cpp
    camera.exposure.setAutoShutterSpeed()
```

Or for a specific shutter speed:

``` cpp
    camera.exposure.manualShutterSpeed = 0.01 // 10ms
```

You can only choose one or the other mode.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="aperture-prop"></span><span class="name">aperture</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the current lens aperture as an F number (the ratio of the focal length to effective aperture diameter).

**See also** [manualAperture](index.html#manualAperture-prop) and [setAutoAperture()](index.html#setAutoAperture-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exposureCompensation-prop"></span><span class="name">exposureCompensation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the adjustment value for the automatically calculated exposure. The value is in EV units.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exposureMode-prop"></span><span class="name">exposureMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the camera exposure mode.

The mode can be one of the following:

| Value                        | Description                                        |
|------------------------------|----------------------------------------------------|
| Camera.ExposureManual        | Manual mode.                                       |
| Camera.ExposureAuto          | Automatic mode.                                    |
| Camera.ExposureNight         | Night mode.                                        |
| Camera.ExposureBacklight     | Backlight exposure mode.                           |
| Camera.ExposureSpotlight     | Spotlight exposure mode.                           |
| Camera.ExposureSports        | Spots exposure mode.                               |
| Camera.ExposureSnow          | Snow exposure mode.                                |
| Camera.ExposureBeach         | Beach exposure mode.                               |
| Camera.ExposureLargeAperture | Use larger aperture with small depth of field.     |
| Camera.ExposureSmallAperture | Use smaller aperture.                              |
| Camera.ExposurePortrait      | Portrait exposure mode.                            |
| Camera.ExposureModeVendor    | The base value for device specific exposure modes. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iso-prop"></span><span class="name">iso</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the sensor's ISO sensitivity value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manualAperture-prop"></span><span class="name">manualAperture</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the aperture (F number) value for capturing photos.

If the value is less than zero, the camera automatically determines an appropriate aperture value.

[aperture](index.html#aperture-prop), [setAutoAperture()](index.html#setAutoAperture-method)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manualIso-prop"></span><span class="name">manualIso</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the ISO settings for capturing photos.

If a negative value is specified, the camera will automatically determine an appropriate value.

**See also** [iso](index.html#iso-prop) and [setAutoIsoSensitivity()](index.html#setAutoIsoSensitivity-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manualShutterSpeed-prop"></span><span class="name">manualShutterSpeed</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the shutter speed value (in seconds). If the value is less than zero, the camera automatically determines an appropriate shutter speed.

[shutterSpeed](index.html#shutterSpeed-prop), [setAutoShutterSpeed()](index.html#setAutoShutterSpeed-method)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="meteringMode-prop"></span><span class="name">meteringMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the camera metering mode (how exposure is balanced).

The mode can be one of the following:

| Value                  | Description                                                                                               |
|------------------------|-----------------------------------------------------------------------------------------------------------|
| Camera.MeteringMatrix  | A matrix of sample points is used to measure exposure.                                                    |
| Camera.MeteringAverage | An average is used to measure exposure.                                                                   |
| Camera.MeteringSpot    | A specific location ([spotMeteringPoint](index.html#spotMeteringPoint-prop)) is used to measure exposure. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shutterSpeed-prop"></span><span class="name">shutterSpeed</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the camera's current shutter speed value in seconds. To affect the shutter speed you can use the [manualShutterSpeed](index.html#manualShutterSpeed-prop) property and [setAutoShutterSpeed()](index.html#setAutoShutterSpeed-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spotMeteringPoint-prop"></span><span class="name">spotMeteringPoint</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

The property holds the frame coordinates of the point to use for exposure metering. This point is only used in spot metering mode, and it typically defaults to the center `(0.5, 0.5)`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setAutoAperture-method"></span><span class="name">setAutoAperture</span>()</p></td>
</tr>
</tbody>
</table>

Turn on auto aperture selection. The manual aperture value is reset to -1.0

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setAutoIsoSensitivity-method"></span><span class="name">setAutoIsoSensitivity</span>()</p></td>
</tr>
</tbody>
</table>

Turn on auto ISO sensitivity selection. The manual ISO value is reset to -1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setAutoShutterSpeed-method"></span><span class="name">setAutoShutterSpeed</span>()</p></td>
</tr>
</tbody>
</table>

Turn on auto shutter speed selection. The manual shutter speed value is reset to -1.0

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
