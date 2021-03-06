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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.6</a> ›
-   <a href="../QtMultimedia/index.html" class="sub-nav-item">QtMultimedia</a> ›

<!-- -->

-   Video Overview

Video Overview
==============

<span class="subtitle"></span>
<span id="details"></span> <span id="video-features"></span>
Video Features
--------------

Qt Multimedia offers both high and low level C++ classes for playing and manipulating video data, and QML types for playback and control. Some of these classes also overlap with both [camera](../QtMultimedia.cameraoverview/index.html) and [audio](../QtMultimedia.audiooverview/index.html) classes, which can be useful.

<span id="video-implementation-details"></span>
Video Implementation Details
----------------------------

<span id="multimedia-playing-video"></span><span id="playing-video-in-c"></span>
### Playing Video in C++

You can use the QMediaPlayer class to decode a video file, and display it using QVideoWidget, QGraphicsVideoItem, or a custom class.

Here's an example of using QVideoWidget:

``` cpp
player = new QMediaPlayer;
playlist = new QMediaPlaylist(player);
playlist->addMedia(QUrl("http://example.com/myclip1.mp4"));
playlist->addMedia(QUrl("http://example.com/myclip2.mp4"));
videoWidget = new QVideoWidget;
player->setVideoOutput(videoWidget);
videoWidget->show();
playlist->setCurrentIndex(1);
player->play();
```

And an example with QGraphicsVideoItem:

``` cpp
player = new QMediaPlayer(this);
QGraphicsVideoItem *item = new QGraphicsVideoItem;
player->setVideoOutput(item);
graphicsView->scene()->addItem(item);
graphicsView->show();
player->setMedia(QUrl("http://example.com/myclip4.ogv"));
player->play();
```

<span id="playing-video-in-qml"></span>
### Playing Video in QML

You can use [VideoOutput](../QtMultimedia.VideoOutput/index.html) to render content that is provided by either a [MediaPlayer](../QtMultimedia.MediaPlayer/index.html) or a [Camera](../QtMultimedia.qml-multimedia/index.html#camera). The [VideoOutput](../QtMultimedia.VideoOutput/index.html) is a visual component that can be transformed or acted upon by shaders (as the [QML Video Shader Effects Example](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtMultimedia.video-qmlvideofx/) shows), while all media decoding and playback control is handled by the [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).

Alternatively there is also a higher level [Video](../QtMultimedia.qml-multimedia/index.html#video) type that acts as a single, visual element to play video and control playback.

<span id="working-with-low-level-video-frames"></span>
### Working with Low Level Video Frames

Qt Multimedia offers a number of low level classes to make handling video frames a bit easier. These classes are primarily used when writing code that processes video or camera frames (for example, detecting barcodes, or applying a fancy vignette effect), or needs to display video in a special way that is otherwise unsupported.

The QVideoFrame class encapsulates a video frame and allows the contents to be mapped into system memory for manipulation or processing, while deriving a class from QAbstractVideoSurface allows you to receive these frames from QMediaPlayer and QCamera.

``` cpp
class MyVideoSurface : public QAbstractVideoSurface
{
    QList<QVideoFrame::PixelFormat> supportedPixelFormats(
            QAbstractVideoBuffer::HandleType handleType = QAbstractVideoBuffer::NoHandle) const
    {
        Q_UNUSED(handleType);
        // Return the formats you will support
        return QList<QVideoFrame::PixelFormat>() << QVideoFrame::Format_RGB565;
    }
    bool present(const QVideoFrame &frame)
    {
        Q_UNUSED(frame);
        // Handle the frame and do your processing
        return true;
    }
};
```

and with an instance of this surface, `myVideoSurface`, you can set the surface as the video output for QMediaPlayer.

``` cpp
player->setVideoOutput(myVideoSurface);
```

Several of the built-in Qt classes offer this functionality as well, so if you decode video in your application, you can present it to classes that offer a QVideoRendererControl class, and in QML you can set a custom object for the source of a VideoOutput with either a writable `videoSurface` property (that the instance will set it's internal video surface to) or a readable `mediaObject` property with a QMediaObject derived class that implements the QVideoRendererControl interface.

The following snippet shows a class that has a writable `videoSurface` property and receives frames through a public slot `onNewVideoContentReceived()`. These frames are then presented on the surface set in `setVideoSurface()`.

``` cpp
class MyVideoProducer : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QAbstractVideoSurface *videoSurface READ videoSurface WRITE setVideoSurface)
public:
    QAbstractVideoSurface* videoSurface() const { return m_surface; }
    void setVideoSurface(QAbstractVideoSurface *surface)
    {
        if (m_surface != surface && m_surface && m_surface->isActive()) {
            m_surface->stop();
        }
        m_surface = surface;
        if (m_surface)
            m_surface->start(m_format);
    }
    // ...
public slots:
    void onNewVideoContentReceived(const QVideoFrame &frame)
    {
        if (m_surface)
            m_surface->present(frame);
    }
private:
    QAbstractVideoSurface *m_surface;
    QVideoSurfaceFormat m_format;
};
```

<span id="recording-video"></span>
### Recording Video

You can use the QMediaRecorder class in conjunction with other classes to record video to disk. Primarily this is used with the camera, so consult the Camera Overview for more information.

<span id="monitoring-video-frames"></span>
### Monitoring Video Frames

You can use the QVideoProbe class to access video frames as they flow through different parts of a media pipeline when using other classes like QMediaPlayer, QMediaRecorder or QCamera. After creating the high level media class, you can set the source of the video probe to that instance. This can be useful for performing some video processing tasks (like barcode recognition, or object detection) while the video is rendered normally. You can not affect the video frames using this class, and they may arrive at a slightly different time than they are being rendered.

Here's an example of installing a video probe while recording the camera:

``` cpp
camera = new QCamera;
viewfinder = new QCameraViewfinder();
camera->setViewfinder(viewfinder);
camera->setCaptureMode(QCamera::CaptureVideo);
videoProbe = new QVideoProbe(this);
if (videoProbe->setSource(camera)) {
    // Probing succeeded, videoProbe->isValid() should be true.
    connect(videoProbe, SIGNAL(videoFrameProbed(QVideoFrame)),
            this, SLOT(detectBarcodes(QVideoFrame)));
}
camera->start();
// Viewfinder frames should now also be emitted by
// the video probe, even in still image capture mode.
// Another alternative is to install the probe on a
// QMediaRecorder connected to the camera to get the
// recorded frames, if they are different from the
// viewfinder frames.
```

<span id="examples"></span>
Examples
--------

There are both C++ and QML examples available.

<span id="c-examples"></span>
### C++ Examples

<span id="qml-examples"></span>
### QML Examples

<span id="reference-documentation"></span>
Reference Documentation
-----------------------

<span id="c-classes"></span>
### C++ Classes

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QAbstractPlanarVideoBuffer</p></td>
<td><p>Abstraction for planar video data</p></td>
</tr>
<tr class="even">
<td><p>QAbstractVideoBuffer</p></td>
<td><p>Abstraction for video data</p></td>
</tr>
<tr class="odd">
<td><p>QAbstractVideoSurface</p></td>
<td><p>Base class for video presentation surfaces</p></td>
</tr>
<tr class="even">
<td><p>QVideoFrame</p></td>
<td><p>Represents a frame of video data</p></td>
</tr>
<tr class="odd">
<td><p>QVideoProbe</p></td>
<td><p>Allows you to monitor video frames being played or recorded</p></td>
</tr>
<tr class="even">
<td><p>QVideoSurfaceFormat</p></td>
<td><p>Specifies the stream format of a video presentation surface</p></td>
</tr>
</tbody>
</table>

<span id="qml-types"></span>
### QML Types

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../QtMultimedia.MediaPlayer/index.html">MediaPlayer</a></p></td>
<td><p>Add media playback to a scene</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtMultimedia.Playlist/index.html">Playlist</a></p></td>
<td><p>For specifying a list of media to be played</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtMultimedia.Video/index.html">Video</a></p></td>
<td><p>A convenience type for showing a specified video</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtMultimedia.VideoOutput/index.html">VideoOutput</a></p></td>
<td><p>Render video or camera viewfinder</p></td>
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
