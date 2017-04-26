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

-   CameraCapture

CameraCapture
=============

<span class="subtitle"></span>
An interface for capturing camera images More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[capturedImagePath](index.html#capturedImagePath-prop)**** : string
-   ****[errorString](index.html#errorString-prop)**** : string
-   ****[ready](index.html#ready-prop)**** : bool
-   ****[resolution](index.html#resolution-prop)**** : size

<span id="signals"></span>
Signals
-------

-   ****[captureFailed](index.html#captureFailed-signal)****(requestId, message)
-   ****[imageCaptured](index.html#imageCaptured-signal)****(requestId, preview)
-   ****[imageMetadataAvailable](index.html#imageMetadataAvailable-signal)****(requestId, key, value)
-   ****[imageSaved](index.html#imageSaved-signal)****(requestId, path)

<span id="methods"></span>
Methods
-------

-   ****[cancelCapture](index.html#cancelCapture-method)****()
-   ****[capture](index.html#capture-method)****()
-   ****[captureToLocation](index.html#captureToLocation-method)****(location)
-   ****[setMetadata](index.html#setMetadata-method)****(key, value)

<span id="details"></span>
Detailed Description
--------------------

This type allows you to capture still images and be notified when they are available or saved to disk. You can adjust the resolution of the captured image and where the saved image should go.

[CameraCapture](index.html) is a child of a [Camera](../QtMultimedia.qml-multimedia/index.html#camera) (as the `imageCapture` property) and cannot be created directly.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Item {
    width: 640
    height: 360
    Camera {
        id: camera
        imageCapture {
            onImageCaptured: {
                // Show the preview in an Image
                photoPreview.source = preview
            }
        }
    }
    VideoOutput {
        source: camera
        focus : visible // to receive focus and capture key events when visible
        anchors.fill: parent
        MouseArea {
            anchors.fill: parent;
            onClicked: camera.imageCapture.capture();
        }
    }
    Image {
        id: photoPreview
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
<td><p><span id="capturedImagePath-prop"></span><span class="name">capturedImagePath</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the location of the last captured image.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-prop"></span><span class="name">errorString</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the error message related to the last capture.

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

This property holds a bool value indicating whether the camera is ready to capture photos or not.

It's permissible to call [capture()](index.html#capture-method) while the camera is active regardless of the *ready* property value. If camera is not ready to capture image immediately, the capture request is queued with all the related camera settings, and the request will be executed as soon as possible.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resolution-prop"></span><span class="name">resolution</span> : <span class="type">size</span></p></td>
</tr>
</tbody>
</table>

This property holds the resolution/size of the image to be captured. If empty, the system chooses the appropriate resolution.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="captureFailed-signal"></span><span class="name">captureFailed</span>(<span class="type">requestId</span>, <span class="type">message</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an error occurs during capture with *requestId*. A descriptive message is available in *message*.

The corresponding handler is `onCaptureFailed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="imageCaptured-signal"></span><span class="name">imageCaptured</span>(<span class="type">requestId</span>, <span class="type">preview</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an image with *requestId* has been captured but not yet saved to the filesystem. The *preview* parameter can be used as the URL supplied to an Image.

The corresponding handler is `onImageCaptured`.

**See also** [imageSaved](index.html#imageSaved-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="imageMetadataAvailable-signal"></span><span class="name">imageMetadataAvailable</span>(<span class="type">requestId</span>, <span class="type">key</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the image with *requestId* has new metadata available with the key *key* and value *value*.

The corresponding handler is `onImageMetadataAvailable`.

**See also** [imageCaptured](index.html#imageCaptured-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="imageSaved-signal"></span><span class="name">imageSaved</span>(<span class="type">requestId</span>, <span class="type">path</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted after the image with *requestId* has been written to the filesystem. The *path* is a local file path, not a URL.

The corresponding handler is `onImageSaved`.

**See also** [imageCaptured](index.html#imageCaptured-signal).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelCapture-method"></span><span class="name">cancelCapture</span>()</p></td>
</tr>
</tbody>
</table>

Cancel pending image capture requests.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="capture-method"></span><span class="name">capture</span>()</p></td>
</tr>
</tbody>
</table>

Start image capture. The [imageCaptured](index.html#imageCaptured-signal) and [imageSaved](index.html#imageSaved-signal) signals will be emitted when the capture is complete.

The image will be captured to the default system location, typically QStandardPaths::writableLocation(QStandardPaths::PicturesLocation) for still imaged or QStandardPaths::writableLocation(QStandardPaths::MoviesLocation) for video.

Camera saves all the capture parameters like exposure settings or image processing parameters, so changes to camera paramaters after capture() is called do not affect previous capture requests.

CameraCapture::capture returns the capture requestId parameter, used with imageExposed(), imageCaptured(), imageMetadataAvailable() and imageSaved() signals.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="captureToLocation-method"></span><span class="name">captureToLocation</span>(<span class="type">location</span>)</p></td>
</tr>
</tbody>
</table>

Start image capture to specified *location*. The [imageCaptured](index.html#imageCaptured-signal) and [imageSaved](index.html#imageSaved-signal) signals will be emitted when the capture is complete.

CameraCapture::captureToLocation returns the capture requestId parameter, used with imageExposed(), imageCaptured(), imageMetadataAvailable() and imageSaved() signals.

If the application is unable to write to the location specified by `location` the [CameraCapture](index.html) will emit an error. The most likely reasons for the application to be unable to write to a location is that the path is wrong and the location does not exists, or the application does not have write permission for that location.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setMetadata-method"></span><span class="name">setMetadata</span>(<span class="type">key</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

Sets a particular metadata *key* to *value* for the subsequent image captures.

**See also** QMediaMetaData.

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
