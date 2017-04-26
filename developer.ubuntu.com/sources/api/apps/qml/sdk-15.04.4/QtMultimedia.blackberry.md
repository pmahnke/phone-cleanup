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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.4</a> ›
-   <a href="../QtMultimedia/index.html" class="sub-nav-item">QtMultimedia</a> ›

<!-- -->

-   Qt Multimedia on BlackBerry

Qt Multimedia on BlackBerry
===========================

<span class="subtitle"></span>
<span id="details"></span>
Qt Multimedia supports BlackBerry devices that run the BB10 operating system. This page covers the availibility of different features on BB10.

<span id="implementation"></span>
Implementation
--------------

BB10 ships with a few different multimedia libraries. The main library for audio and video playback is *mmrenderer*. For low-latency output of raw audio samples, *libasound*, a variant of the Linux ALSA library, is available. Finally, for three-dimensional positional audio playback, *OpenAL* is supported and present on BB10.

The Qt Multimedia BlackBerry backend uses mmrenderer for media playback.

For the positional audio classes in the Qt Audio Engine QML module, OpenAL is used as on all other platforms.

For recording videos and taking photos, the camapi library is used.

<span id="supported-features"></span>
Supported Features
------------------

Playback of audio and video with QMediaPlayer and related classes is supported. This includes the corresponding QML elements like MediaPlayer and VideoOutput. Since the playback is delegated to mmrenderer, the supported formats are the same as in mmrenderer. As mmrenderer supports streaming from HTTP and other URLs, this is supported in QMediaPlayer as well. Playlists as sources are also supported.

mmrenderer does not allow access to the pixel data of video frames, hence Qt Multimedia classes like QVideoFrame and QAbstractVideoSurface will not work since they require access to the image data. QVideoWidget and the VideoOutput QML element are implemented with an overlay window; mmrenderer creates a separate window displaying a video and puts that on top of the Qt application. As a consequence, no other widget or QML element can be put on top of the video, and QML shaders have no effect.

The Qt Audio Engine QML module is fully supported, as it is based on OpenAL which is available in BB10.

The [QCamera](../QtMultimedia.qml-multimedia/index.html#camera) support includes recording of videos and taking photos. The viewfinder is available through QCameraViewfinder and the [VideoOutput](../QtMultimedia.VideoOutput/index.html) QML element.

Note: To use the camera on BB10, your application needs the 'access\_shared', 'use\_camera' and 'record\_audio' permissions set in the bar-descriptor.xml file.

<span id="unsupported-features"></span>
Unsupported Features
--------------------

Low-latency output and input of raw audio samples with QAudioOutput, QAudioInput and related classes is not yet supported. The SoundEffect QML element and QSoundEffect are based on these classes. In your QML file, use the MediaPlayer element instead of the SoundEffect element, as the APIs are nearly identical.

QMediaPlayer does not support QIODevice-based streaming sources. However, streaming by specifying, for example, an HTTP URL as the source does work. In addition, QMediaPlayer does not yet provide metadata like the artist and album of the current track.

Radio and audio recording are not yet supported.

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
