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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtMultimedia/index.html" class="sub-nav-item">QtMultimedia</a> ›

<!-- -->

-   Multimedia Backend Development

Multimedia Backend Development
==============================

<span class="subtitle"></span>
<span id="details"></span> <span id="overview"></span>
Overview
--------

A multimedia backend provides the glue between platform specific libraries, and Qt Multimedia. In some cases the available cross-platform Multimedia APIs or implementations are not sufficient, or not immediately available on a certain platform. Alternatively, the multimedia implementation on a platform might expose certain extra properties or functionality that other platforms do not, or a finer degree of control might be possible. For these cases, it is possible to use extended controls directly.

In addition, if you plan to port the Qt Multimedia APIs to a new platform, you do this by implementing certain control and service classes, as detailed below.

<span id="extending-the-api"></span>
Extending the API
-----------------

For the developer who wishes to extend the functionality of the Qt Multimedia classes there are several classes of particular importance. The classes providing default functionality are QMediaService, QMediaServiceProvider and QMediaControl. Some of these classes are not in the public API since they are very seldom useful to application developers.

To extend the Multimedia API you would use the following three classes or classes derived from them.

-   QMediaServiceProvider is used by the top level client class to request a service. The top level class knowing what kind of service it needs.
-   QMediaService provides a service and when asked by the top level object, say a component, will return a QMediaControl object.
-   QMediaControl allows the control of the service using a known interface.

Consider a developer creating, for example, a media player class called MyPlayer. It may have special requirements beyond ordinary media players and so may need a custom service and a custom control. We can subclass QMediaServiceProvider to create our MyServiceProvider class. Also we will create a MyMediaService, and the MyMediaControl to manipulate the media service.

The MyPlayer object calls MyServiceProvider::requestService() to get an instance of MyMediaService. Then the MyPlayer object calls this service object it has just received and calling requestControl() it will receive the control object derived from QMediaControl.

Now we have all the parts necessary for our media application. We have the service provider, the service it provides and the control used to manipulate the service. Since our MyPlayer object has instances of the service and its control then it would be possible for these to be used by associated classes that could do additional actions, perhaps with their own control since the parameter to requestControl() is a zero-terminated string, *const char \**, for the interface.

<span id="adding-a-media-service-provider"></span>
### Adding a Media Service Provider

In general, adding a new media service provider is outside the scope of this documentation. For best results, consult the existing provider source code, and seek assistance on the relevant mailing lists and IRC channels.

<span id="classes-for-service-implementers"></span>
### Classes for service implementers.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QAudioDecoderControl</p></td>
<td><p>Access to the audio decoding functionality of a QMediaService</p></td>
</tr>
<tr class="even">
<td><p>QAudioEncoderSettingsControl</p></td>
<td><p>Access to the settings of a media service that performs audio encoding</p></td>
</tr>
<tr class="odd">
<td><p>QAudioInputSelectorControl</p></td>
<td><p>Audio input selector media control</p></td>
</tr>
<tr class="even">
<td><p>QAudioOutputSelectorControl</p></td>
<td><p>Audio output selector media control</p></td>
</tr>
<tr class="odd">
<td><p>QCameraCaptureBufferFormatControl</p></td>
<td><p>Control for setting the capture buffer format</p></td>
</tr>
<tr class="even">
<td><p>QCameraCaptureDestinationControl</p></td>
<td><p>Control for setting capture destination</p></td>
</tr>
<tr class="odd">
<td><p>QCameraControl</p></td>
<td><p>Abstract base class for classes that control still cameras or video cameras</p></td>
</tr>
<tr class="even">
<td><p>QCameraExposureControl</p></td>
<td><p>Allows controlling camera exposure parameters</p></td>
</tr>
<tr class="odd">
<td><p>QCameraFeedbackControl</p></td>
<td><p>Allows controlling feedback (sounds etc) during camera operation</p></td>
</tr>
<tr class="even">
<td><p>QCameraFlashControl</p></td>
<td><p>Allows controlling a camera's flash</p></td>
</tr>
<tr class="odd">
<td><p>QCameraFocusControl</p></td>
<td><p>Supplies control for focusing related camera parameters</p></td>
</tr>
<tr class="even">
<td><p>QCameraImageCaptureControl</p></td>
<td><p>Control interface for image capture services</p></td>
</tr>
<tr class="odd">
<td><p>QCameraImageProcessingControl</p></td>
<td><p>Abstract class for controlling image processing parameters, like white balance, contrast, saturation, sharpening and denoising</p></td>
</tr>
<tr class="even">
<td><p>QCameraInfoControl</p></td>
<td><p>Camera info media control</p></td>
</tr>
<tr class="odd">
<td><p>QCameraLocksControl</p></td>
<td><p>Abstract base class for classes that control still cameras or video cameras</p></td>
</tr>
<tr class="even">
<td><p>QCameraViewfinderSettingsControl</p></td>
<td><p>Abstract class for controlling camera viewfinder parameters</p></td>
</tr>
<tr class="odd">
<td><p>QCameraZoomControl</p></td>
<td><p>Supplies control for optical and digital camera zoom</p></td>
</tr>
<tr class="even">
<td><p>QImageEncoderControl</p></td>
<td><p>Access to the settings of a media service that performs image encoding</p></td>
</tr>
<tr class="odd">
<td><p>QMediaAudioProbeControl</p></td>
<td><p>Allows control over probing audio data in media objects</p></td>
</tr>
<tr class="even">
<td><p>QMediaAvailabilityControl</p></td>
<td><p>Supplies a control for reporting availability of a service</p></td>
</tr>
<tr class="odd">
<td><p>QMediaContainerControl</p></td>
<td><p>Access to the output container format of a QMediaService</p></td>
</tr>
<tr class="even">
<td><p>QMediaGaplessPlaybackControl</p></td>
<td><p>Access to the gapless playback related control of a QMediaService</p></td>
</tr>
<tr class="odd">
<td><p>QMediaNetworkAccessControl</p></td>
<td><p>Allows the setting of the Network Access Point for media related activities</p></td>
</tr>
<tr class="even">
<td><p>QMediaPlayerControl</p></td>
<td><p>Access to the media playing functionality of a QMediaService</p></td>
</tr>
<tr class="odd">
<td><p>QMediaRecorderControl</p></td>
<td><p>Access to the recording functionality of a QMediaService</p></td>
</tr>
<tr class="even">
<td><p>QMediaStreamsControl</p></td>
<td><p>Media stream selection control</p></td>
</tr>
<tr class="odd">
<td><p>QMediaVideoProbeControl</p></td>
<td><p>Allows control over probing video frames in media objects</p></td>
</tr>
<tr class="even">
<td><p>QMetaDataReaderControl</p></td>
<td><p>Read access to the meta-data of a QMediaService's media</p></td>
</tr>
<tr class="odd">
<td><p>QMetaDataWriterControl</p></td>
<td><p>Write access to the meta-data of a QMediaService's media</p></td>
</tr>
<tr class="even">
<td><p>QRadioDataControl</p></td>
<td><p>Access to the RDS functionality of the radio in the QMediaService</p></td>
</tr>
<tr class="odd">
<td><p>QRadioTunerControl</p></td>
<td><p>Access to the radio tuning functionality of a QMediaService</p></td>
</tr>
<tr class="even">
<td><p>QVideoDeviceSelectorControl</p></td>
<td><p>Video device selector media control</p></td>
</tr>
<tr class="odd">
<td><p>QVideoEncoderSettingsControl</p></td>
<td><p>Access to the settings of a media service that performs video encoding</p></td>
</tr>
<tr class="even">
<td><p>QVideoRendererControl</p></td>
<td><p>Media control for rendering video to a QAbstractVideoSurface</p></td>
</tr>
<tr class="odd">
<td><p>QVideoWindowControl</p></td>
<td><p>Media control for rendering video to a window</p></td>
</tr>
<tr class="even">
<td><p>QMediaControl</p></td>
<td><p>Base interface for media service controls</p></td>
</tr>
<tr class="odd">
<td><p>QMediaService</p></td>
<td><p>Common base class for media service implementations</p></td>
</tr>
</tbody>
</table>

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
