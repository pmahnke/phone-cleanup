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
-   [SDK 15.04.6](../index.html) ›
-   [QtMultimedia](../QtMultimedia/index.html) ›

<!-- -->

-   CameraFocus

CameraFocus
===========

<span class="subtitle"></span>
An interface for focus related camera settings. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[customFocusPoint](index.html#customFocusPoint-prop)**** : point
-   ****[focusMode](index.html#focusMode-prop)**** : enumeration
-   ****[focusPointMode](index.html#focusPointMode-prop)**** : enumeration
-   ****[focusZones](index.html#focusZones-prop)**** : list&lt;focusZone&gt;

<span id="methods"></span>
Methods
-------

-   bool ****[isFocusModeSupported](index.html#isFocusModeSupported-method)****(mode)
-   bool ****[isFocusPointModeSupported](index.html#isFocusPointModeSupported-method)****(mode)

<span id="details"></span>
Detailed Description
--------------------

CameraFocus is part of the **QtMultimedia 5.0** module.

This type allows control over manual and automatic focus settings, including information about any parts of the camera frame that are selected for autofocusing.

It should not be constructed separately, instead the `focus` property of a [Camera](../QtMultimedia.qml-multimedia/index.html#camera) should be used.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Item {
    width: 640
    height: 360
    Camera {
        id: camera
        focus {
            focusMode: Camera.FocusMacro
            focusPointMode: Camera.FocusPointCustom
            customFocusPoint: Qt.point(0.2, 0.2) // Focus relative to top-left corner
        }
    }
    VideoOutput {
        source: camera
        anchors.fill: parent
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
<td><p><span id="customFocusPoint-prop"></span><span class="name">customFocusPoint</span> : <span class="type">point</span></p></td>
</tr>
</tbody>
</table>

This property holds the position of custom focus point, in relative frame coordinates: QPointF(0,0) points to the left top frame point, QPointF(0.5,0.5) points to the frame center.

Custom focus point is used only in FocusPointCustom focus mode.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focusMode-prop"></span><span class="name">focusMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the current camera focus mode, which can be one of the following values:

| Value           | Description                                                                                                                                                           |
|-----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| FocusManual     | Manual or fixed focus mode.                                                                                                                                           |
| FocusHyperfocal | Focus to hyperfocal distance, with the maximum depth of field achieved. All objects at distances from half of this distance out to infinity will be acceptably sharp. |
| FocusInfinity   | Focus strictly to infinity.                                                                                                                                           |
| FocusAuto       | One-shot auto focus mode.                                                                                                                                             |
| FocusContinuous | Continuous auto focus mode.                                                                                                                                           |
| FocusMacro      | One shot auto focus to objects close to camera.                                                                                                                       |

It's possible to combine multiple Camera::FocusMode values, for example Camera.FocusMacro + Camera.FocusContinuous.

In automatic focusing modes, the [focusPointMode](index.html#focusPointMode-prop) property and [focusZones](index.html#focusZones-prop) property provide information and control over how automatic focusing is performed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focusPointMode-prop"></span><span class="name">focusPointMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the current camera focus point mode. It is used in automatic focusing modes to determine what to focus on. If the current focus point mode is `Camera.FocusPointCustom`, the [customFocusPoint](index.html#customFocusPoint-prop) property allows you to specify which part of the frame to focus on.

The property can take one of the following values:

| Value                   | Description                                                                                              |
|-------------------------|----------------------------------------------------------------------------------------------------------|
| FocusPointAuto          | Automatically select one or multiple focus points.                                                       |
| FocusPointCenter        | Focus to the frame center.                                                                               |
| FocusPointFaceDetection | Focus on faces in the frame.                                                                             |
| FocusPointCustom        | Focus to the custom point, defined by the [customFocusPoint](index.html#customFocusPoint-prop) property. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focusZones-prop"></span><span class="name">focusZones</span> : <span class="type">list</span>&lt;<span class="type">focusZone</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of current camera focus zones, each including `area` specified in the same coordinates as [customFocusPoint](index.html#customFocusPoint-prop), and zone `status` as one of the following values:

| Value                    | Description                                                         |
|--------------------------|---------------------------------------------------------------------|
| Camera.FocusAreaUnused   | This focus point area is currently unused in autofocusing.          |
| Camera.FocusAreaSelected | This focus point area is used in autofocusing, but is not in focus. |
| Camera.FocusAreaFocused  | This focus point is used in autofocusing, and is in focus.          |

``` qml
VideoOutput {
    id: viewfinder
    source: camera
    //display focus areas on camera viewfinder:
    Repeater {
          model: camera.focus.focusZones
          Rectangle {
              border {
                  width: 2
                  color: status == Camera.FocusAreaFocused ? "green" : "white"
              }
              color: "transparent"
              // Map from the relative, normalized frame coordinates
              property variant mappedRect: viewfinder.mapNormalizedRectToItem(area);
              x: mappedRect.x
              y: mappedRect.y
              width: mappedRect.width
              height: mappedRect.height
          }
    }
}
```

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isFocusModeSupported-method"></span><span class="type">bool</span> <span class="name">isFocusModeSupported</span>(<span class="type">mode</span>) const</p></td>
</tr>
</tbody>
</table>

Returns true if the supplied *mode* is a supported focus mode, and false otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isFocusPointModeSupported-method"></span><span class="type">bool</span> <span class="name">isFocusPointModeSupported</span>(<span class="type">mode</span>) const</p></td>
</tr>
</tbody>
</table>

Returns true if the supplied *mode* is a supported focus point mode, and false otherwise.

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
