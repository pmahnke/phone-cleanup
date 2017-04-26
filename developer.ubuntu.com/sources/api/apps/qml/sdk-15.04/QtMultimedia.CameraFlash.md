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
-   [SDK 15.04](../index.html) ›
-   [QtMultimedia](../QtMultimedia/index.html) ›

<!-- -->

-   CameraFlash

CameraFlash
===========

<span class="subtitle"></span>
An interface for flash related camera settings. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[mode](index.html#mode-prop)**** : enumeration
-   ****[ready](index.html#ready-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[flashModeChanged](index.html#flashModeChanged-signal)****(int)
-   ****[flashReady](index.html#flashReady-signal)****(bool)

<span id="details"></span>
Detailed Description
--------------------

CameraFlash is part of the **QtMultimedia 5.0** module.

This type allows you to operate the camera flash hardware and control the flash mode used. Not all cameras have flash hardware (and in some cases it is shared with the [torch](../QtMultimedia.Torch/index.html) hardware).

It should not be constructed separately, instead the `flash` property of a [Camera](../QtMultimedia.qml-multimedia/index.html#camera) should be used.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Camera {
    id: camera
    exposure.exposureCompensation: -1.0
    flash.mode: Camera.FlashRedEyeReduction
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
<td><p><span id="mode-prop"></span><span class="name">mode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the camera flash mode.

The mode can be one of the following:

| Value                            | Description                                                                                                                            |
|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| Camera.FlashOff                  | Flash is Off.                                                                                                                          |
| Camera.FlashOn                   | Flash is On.                                                                                                                           |
| Camera.FlashAuto                 | Automatic flash.                                                                                                                       |
| Camera.FlashRedEyeReduction      | Red eye reduction flash.                                                                                                               |
| Camera.FlashFill                 | Use flash to fillin shadows.                                                                                                           |
| Camera.FlashTorch                | Constant light source, useful for focusing and video capture.                                                                          |
| Camera.FlashSlowSyncFrontCurtain | Use the flash in conjunction with a slow shutter speed. This mode allows better exposure of distant objects and/or motion blur effect. |
| Camera.FlashSlowSyncRearCurtain  | The similar mode to FlashSlowSyncFrontCurtain but flash is fired at the end of exposure.                                               |
| Camera.FlashManual               | Flash power is manually set.                                                                                                           |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ready-prop"></span><span class="name">ready</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether the flash is charged.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flashModeChanged-signal"></span><span class="name">flashModeChanged</span>(<span class="type">int</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the `flashMode` property is changed. The corresponding handler is `onFlashModeChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flashReady-signal"></span><span class="name">flashReady</span>(<span class="type">bool</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when QCameraExposure indicates that the flash is ready to use. The corresponding handler is `onFlashReadyChanged`.

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
