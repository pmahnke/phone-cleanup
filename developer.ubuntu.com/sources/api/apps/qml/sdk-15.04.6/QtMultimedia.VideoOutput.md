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

-   VideoOutput

VideoOutput
===========

<span class="subtitle"></span>
Render video or camera viewfinder. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[autoOrientation](index.html#autoOrientation-prop)**** : bool
-   ****[contentRect](index.html#contentRect-prop)**** : rectangle
-   ****[fillMode](index.html#fillMode-prop)**** : enumeration
-   ****[orientation](index.html#orientation-prop)**** : int
-   ****[source](index.html#source-prop)**** : variant
-   ****[sourceRect](index.html#sourceRect-prop)**** : rectangle

<span id="methods"></span>
Methods
-------

-   QPointF ****[mapNormalizedPointToItem](index.html#mapNormalizedPointToItem-method)****(const QPointF & *point*)
-   QRectF ****[mapNormalizedRectToItem](index.html#mapNormalizedRectToItem-method)****(const QRectF & *rectangle*)
-   QPointF ****[mapPointToItem](index.html#mapPointToItem-method)****(const QPointF & *point*)
-   QPointF ****[mapPointToSource](index.html#mapPointToSource-method)****(const QPointF & *point*)
-   QPointF ****[mapPointToSourceNormalized](index.html#mapPointToSourceNormalized-method)****(const QPointF & *point*)
-   QRectF ****[mapRectToItem](index.html#mapRectToItem-method)****(const QRectF & *rectangle*)
-   QRectF ****[mapRectToSource](index.html#mapRectToSource-method)****(const QRectF & *rectangle*)
-   QRectF ****[mapRectToSourceNormalized](index.html#mapRectToSourceNormalized-method)****(const QRectF & *rectangle*)

<span id="details"></span>
Detailed Description
--------------------

`VideoOutput` is part of the **QtMultimedia 5.0** module.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Rectangle {
    width: 800
    height: 600
    color: "black"
    MediaPlayer {
        id: player
        source: "file://video.webm"
        autoPlay: true
    }
    VideoOutput {
        id: videoOutput
        source: player
        anchors.fill: parent
    }
}
```

The [VideoOutput](index.html) item supports untransformed, stretched, and uniformly scaled video presentation. For a description of stretched uniformly scaled presentation, see the [fillMode](index.html#fillMode-prop) property description.

The VideoOutput item works with backends that support either QVideoRendererControl or QVideoWindowControl. If the backend only supports QVideoWindowControl, the video is rendered onto an overlay window that is layered on top of the QtQuick window. Due to the nature of the video overlays, certain features are not available for these kind of backends:

-   Some transformations like rotations
-   Having other QtQuick items on top of the [VideoOutput](index.html) item

Most backends however do support QVideoRendererControl and therefore don't have the limitations listed above.

**See also** [MediaPlayer](../QtMultimedia.MediaPlayer/index.html) and [Camera](../QtMultimedia.qml-multimedia/index.html#camera).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoOrientation-prop"></span><span class="name">autoOrientation</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property allows you to enable and disable auto orientation of the video stream, so that its orientation always matches the orientation of the screen. If `autoOrientation` is enabled, the `orientation` property is overwritten.

By default `autoOrientation` is disabled.

This QML property was introduced in QtMultimedia 5.2.

**See also** [orientation](index.html#orientation-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentRect-prop"></span><span class="name">contentRect</span> : <span class="type">rectangle</span></p></td>
</tr>
</tbody>
</table>

This property holds the item coordinates of the area that would contain video to render. With certain fill modes, this rectangle will be larger than the visible area of the `VideoOutput`.

This property is useful when other coordinates are specified in terms of the source dimensions - this applied for relative (normalized) frame coordinates in the range of 0 to 1.0.

Areas outside this will be transparent.

**See also** [mapRectToItem()](index.html#mapRectToItem-method) and [mapPointToItem()](index.html#mapPointToItem-method).

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

Set this property to define how the video is scaled to fit the target area.

-   Stretch - the video is scaled to fit.
-   PreserveAspectFit - the video is scaled uniformly to fit without cropping
-   PreserveAspectCrop - the video is scaled uniformly to fill, cropping if necessary

The default fill mode is PreserveAspectFit.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientation-prop"></span><span class="name">orientation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

In some cases the source video stream requires a certain orientation to be correct. This includes sources like a camera viewfinder, where the displayed viewfinder should match reality, no matter what rotation the rest of the user interface has.

This property allows you to apply a rotation (in steps of 90 degrees) to compensate for any user interface rotation, with positive values in the anti-clockwise direction.

The orientation change will also affect the mapping of coordinates from source to viewport.

**See also** [autoOrientation](index.html#autoOrientation-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the source item providing the video frames like [MediaPlayer](../QtMultimedia.MediaPlayer/index.html) or Camera.

If you are extending your own C++ classes to interoperate with VideoOutput, you can either provide a QObject based class with a `mediaObject` property that exposes a QMediaObject derived class that has a QVideoRendererControl available, or you can provide a QObject based class with a writable `videoSurface` property that can accept a QAbstractVideoSurface based class and can follow the correct protocol to deliver QVideoFrames to it.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceRect-prop"></span><span class="name">sourceRect</span> : <span class="type">rectangle</span></p></td>
</tr>
</tbody>
</table>

This property holds the area of the source video content that is considered for rendering. The values are in source pixel coordinates, adjusted for the source's pixel aspect ratio.

Note that typically the top left corner of this rectangle will be `0,0` while the width and height will be the width and height of the input content. Only when the video source has a viewport set, these values will differ.

The orientation setting does not affect this rectangle.

**See also** QVideoSurfaceFormat::pixelAspectRatio() and QVideoSurfaceFormat::viewport().

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapNormalizedPointToItem-method"></span><span class="type">QPointF</span> <span class="name">mapNormalizedPointToItem</span>(const <span class="type">QPointF</span> &amp; <em>point</em>) const</p></td>
</tr>
</tbody>
</table>

Given normalized coordinates *point* (that is, each component in the range of 0 to 1.0), return the mapped point that it corresponds to (in item coordinates). This mapping is affected by the orientation.

Depending on the fill mode, this point may lie outside the rendered rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapNormalizedRectToItem-method"></span><span class="type">QRectF</span> <span class="name">mapNormalizedRectToItem</span>(const <span class="type">QRectF</span> &amp; <em>rectangle</em>) const</p></td>
</tr>
</tbody>
</table>

Given a rectangle *rectangle* in normalized coordinates (that is, each component in the range of 0 to 1.0), return the mapped rectangle that it corresponds to (in item coordinates). This mapping is affected by the orientation.

Depending on the fill mode, this rectangle may extend outside the rendered rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapPointToItem-method"></span><span class="type">QPointF</span> <span class="name">mapPointToItem</span>(const <span class="type">QPointF</span> &amp; <em>point</em>) const</p></td>
</tr>
</tbody>
</table>

Given a point *point* in source coordinates, return the corresponding point in item coordinates. This mapping is affected by the orientation.

Depending on the fill mode, this point may lie outside the rendered rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapPointToSource-method"></span><span class="type">QPointF</span> <span class="name">mapPointToSource</span>(const <span class="type">QPointF</span> &amp; <em>point</em>) const</p></td>
</tr>
</tbody>
</table>

Given a point *point* in item coordinates, return the corresponding point in source coordinates. This mapping is affected by the orientation.

If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapPointToSourceNormalized-method"></span><span class="type">QPointF</span> <span class="name">mapPointToSourceNormalized</span>(const <span class="type">QPointF</span> &amp; <em>point</em>) const</p></td>
</tr>
</tbody>
</table>

Given a point *point* in item coordinates, return the corresponding point in normalized source coordinates. This mapping is affected by the orientation.

If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle. No clamping is performed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapRectToItem-method"></span><span class="type">QRectF</span> <span class="name">mapRectToItem</span>(const <span class="type">QRectF</span> &amp; <em>rectangle</em>) const</p></td>
</tr>
</tbody>
</table>

Given a rectangle *rectangle* in source coordinates, return the corresponding rectangle in item coordinates. This mapping is affected by the orientation.

Depending on the fill mode, this rectangle may extend outside the rendered rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapRectToSource-method"></span><span class="type">QRectF</span> <span class="name">mapRectToSource</span>(const <span class="type">QRectF</span> &amp; <em>rectangle</em>) const</p></td>
</tr>
</tbody>
</table>

Given a rectangle *rectangle* in item coordinates, return the corresponding rectangle in source coordinates. This mapping is affected by the orientation.

This mapping is affected by the orientation.

If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapRectToSourceNormalized-method"></span><span class="type">QRectF</span> <span class="name">mapRectToSourceNormalized</span>(const <span class="type">QRectF</span> &amp; <em>rectangle</em>) const</p></td>
</tr>
</tbody>
</table>

Given a rectangle *rectangle* in item coordinates, return the corresponding rectangle in normalized source coordinates. This mapping is affected by the orientation.

This mapping is affected by the orientation.

If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle. No clamping is performed.

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
