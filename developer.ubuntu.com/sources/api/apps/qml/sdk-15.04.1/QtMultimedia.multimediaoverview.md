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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.1</a> ›
-   <a href="../QtMultimedia/index.html" class="sub-nav-item">QtMultimedia</a> ›

<!-- -->

-   Multimedia

Multimedia
==========

<span class="subtitle"></span>
<span id="details"></span>
Multimedia support in Qt is provided by the [Qt Multimedia](../QtMultimedia.qtmultimedia-index/index.html) module. The Qt Multimedia module provides a rich feature set that enables you to easily take advantage of a platform's multimedia capabilities such as media playback and the use of camera and radio devices.

<span id="features"></span>
Features
--------

Here are some examples of what can be done with Qt Multimedia APIs:

-   Access raw audio devices for input and output
-   Play low latency sound effects
-   Play media files in playlists (such as compressed audio or video files)
-   Record audio and compress it
-   Tune and listen to radio stations
-   Use a camera, including viewfinder, image capture, and movie recording
-   Play 3D positional audio with Qt Audio Engine
-   Decode audio media files into memory for processing
-   Accessing video frames or audio buffers as they are played or recorded

<span id="multimedia-components"></span>
Multimedia Components
---------------------

Qt's multimedia APIs are categorized into four main components. More information (including background information and class references) is available here:

-   [Audio Overview](../QtMultimedia.audiooverview/index.html)
-   [Video Overview](../QtMultimedia.videooverview/index.html)
-   [Camera Overview](../QtMultimedia.cameraoverview/index.html)
-   [Radio Overview](../QtMultimedia.radiooverview/index.html)

<span id="multimedia-recipes"></span>
Multimedia Recipes
------------------

For some quick recipes, look at the overviews above and consult this table:

| Use case                             | Examples                     | QML Types                                                                                       | C++ Classes                                                                                        |
|--------------------------------------|------------------------------|-------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| Playing a sound effect               |                              |                                                                                                 | QSoundEffect                                                                                       |
| Playing low latency audio            | audioinput, spectrum         |                                                                                                 | QAudioOutput                                                                                       |
| Playing encoded audio (MP3, AAC etc) | player                       | Audio, MediaPlayer                                                                              | QMediaPlayer                                                                                       |
| Accessing raw audio input data       | spectrum, audioinput         |                                                                                                 | QAudioInput                                                                                        |
| Recording encoded audio data         | audiorecorder                |                                                                                                 | QAudioRecorder                                                                                     |
| Discovering raw audio devices        | audiodevices                 |                                                                                                 | QAudioDeviceInfo                                                                                   |
| Video Playback                       | player, qmlvideo, qmlvideofx | MediaPlayer, VideoOutput, Video                                                                 | QMediaPlayer, QVideoWidget, QGraphicsVideoItem                                                     |
| Video Processing                     | qmlvideofx                   | MediaPlayer, VideoOutput                                                                        | QMediaPlayer, QAbstractVideoSurface, QVideoFrame                                                   |
| Listening to the radio               | declarative-radio            | Radio, RadioData                                                                                | QRadioTuner, QRadioData                                                                            |
| Accessing camera viewfinder          | camera, declarative-camera   | Camera, VideoOutput                                                                             | QCamera, QVideoWidget, QGraphicsVideoItem                                                          |
| Viewfinder processing                |                              | Camera, VideoOutput                                                                             | QCamera, QAbstractVideoSurface, QVideoFrame                                                        |
| Capturing photos                     | camera, declarative-camera   | Camera                                                                                          | QCamera, QCameraImageCapture                                                                       |
| Capturing movies                     | camera, declarative-camera   | Camera                                                                                          | QCamera, QMediaRecorder                                                                            |
| 3D sound sources                     |                              | [Audio Engine](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtMultimedia.audioengine/) | [AudioEngine](../QtAudioEngine.AudioEngine/index.html), [Sound](../QtAudioEngine.Sound/index.html) |

<span id="limitations"></span>
Limitations
-----------

The Qt Multimedia APIs build upon the multimedia framework of the underlying platform. This can mean that support for various codecs or containers can vary between machines, depending on what the end user has installed.

<span id="advanced-usage"></span>
Advanced Usage
--------------

For developers wishing to access some platform specific settings, or to port the Qt Multimedia APIs to a new platform or technology, see [Multimedia Backend Development](../QtMultimedia.multimediabackend/index.html).

<span id="changes-from-previous-versions"></span>
Changes from Previous Versions
------------------------------

If you previously used Qt Multimedia in Qt 4, or used Qt Multimedia Kit in Qt Mobility, please see [Changes in Qt Multimedia](../QtMultimedia.changes/index.html) for more information on what changed, and what you might need to change when porting code.

<span id="reference-documentation"></span>
Reference Documentation
-----------------------

<span id="qml-types"></span>
### QML Types

The QML types are accessed by using:

``` cpp
import QtMultimedia 5.4
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../QtMultimedia.Audio/index.html">Audio</a></p></td>
<td><p>Add audio playback to a scene</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtMultimedia.Camera/index.html">Camera</a></p></td>
<td><p>Access viewfinder frames, and take photos and movies</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtMultimedia.CameraCapture/index.html">CameraCapture</a></p></td>
<td><p>An interface for capturing camera images</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtMultimedia.CameraExposure/index.html">CameraExposure</a></p></td>
<td><p>An interface for exposure related camera settings</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtMultimedia.CameraFlash/index.html">CameraFlash</a></p></td>
<td><p>An interface for flash related camera settings</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtMultimedia.CameraFocus/index.html">CameraFocus</a></p></td>
<td><p>An interface for focus related camera settings</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtMultimedia.CameraImageProcessing/index.html">CameraImageProcessing</a></p></td>
<td><p>An interface for camera capture related settings</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtMultimedia.CameraRecorder/index.html">CameraRecorder</a></p></td>
<td><p>Controls video recording with the Camera</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtMultimedia.MediaPlayer/index.html">MediaPlayer</a></p></td>
<td><p>Add media playback to a scene</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtMultimedia.Playlist/index.html">Playlist</a></p></td>
<td><p>For specifying a list of media to be played</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtMultimedia.PlaylistItem/index.html">PlaylistItem</a></p></td>
<td><p>Defines an item in a Playlist</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtMultimedia.QtMultimedia/index.html">QtMultimedia</a></p></td>
<td><p>Provides a global object with useful functions from Qt Multimedia</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtMultimedia.Radio/index.html">Radio</a></p></td>
<td><p>Access radio functionality from a QML application</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtMultimedia.RadioData/index.html">RadioData</a></p></td>
<td><p>Access RDS data from a QML application</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtMultimedia.SoundEffect/index.html">SoundEffect</a></p></td>
<td><p>Type provides a way to play sound effects in QML</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtMultimedia.Torch/index.html">Torch</a></p></td>
<td><p>Simple control over torch functionality</p></td>
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

The following types are accessed by using Qt Audio Engine:

``` cpp
import QtAudioEngine 1.0
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../QtAudioEngine.AttenuationModelInverse/index.html">AttenuationModelInverse</a></p></td>
<td><p>Defines a non-linear attenuation curve for a Sound</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtAudioEngine.AttenuationModelLinear/index.html">AttenuationModelLinear</a></p></td>
<td><p>Defines a linear attenuation curve for a Sound</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtAudioEngine.AudioCategory/index.html">AudioCategory</a></p></td>
<td><p>Control all active sound instances by group</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtAudioEngine.AudioEngine/index.html">AudioEngine</a></p></td>
<td><p>Organize all your 3d audio content in one place</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtAudioEngine.AudioListener/index.html">AudioListener</a></p></td>
<td><p>Control global listener parameters</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtAudioEngine.AudioSample/index.html">AudioSample</a></p></td>
<td><p>Load audio samples, mostly .wav</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtAudioEngine.PlayVariation/index.html">PlayVariation</a></p></td>
<td><p>Define a playback variation for sounds. So each time the playback of the same sound can be a slightly different even with the same AudioSample</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtAudioEngine.Sound/index.html">Sound</a></p></td>
<td><p>Define a variety of samples and parameters to be used for SoundInstance</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtAudioEngine.SoundInstance/index.html">SoundInstance</a></p></td>
<td><p>Play 3d audio content</p></td>
</tr>
</tbody>
</table>

<span id="multimedia-classes"></span>
### Multimedia Classes

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
<td><p>QAudio</p></td>
<td><p>Contains enums used by the audio classes</p></td>
</tr>
<tr class="odd">
<td><p>QAudioBuffer</p></td>
<td><p>Represents a collection of audio samples with a specific format and sample rate</p></td>
</tr>
<tr class="even">
<td><p>QAudioBuffer::StereoFrame</p></td>
<td><p>Simple wrapper for a stereo audio frame</p></td>
</tr>
<tr class="odd">
<td><p>QAudioDecoder</p></td>
<td><p>Allows decoding audio</p></td>
</tr>
<tr class="even">
<td><p>QAudioDeviceInfo</p></td>
<td><p>Interface to query audio devices and their functionality</p></td>
</tr>
<tr class="odd">
<td><p>QAudioEncoderSettings</p></td>
<td><p>Set of audio encoder settings</p></td>
</tr>
<tr class="even">
<td><p>QAudioFormat</p></td>
<td><p>Stores audio stream parameter information</p></td>
</tr>
<tr class="odd">
<td><p>QAudioInput</p></td>
<td><p>Interface for receiving audio data from an audio input device</p></td>
</tr>
<tr class="even">
<td><p>QAudioOutput</p></td>
<td><p>Interface for sending audio data to an audio output device</p></td>
</tr>
<tr class="odd">
<td><p>QAudioProbe</p></td>
<td><p>Allows you to monitor audio being played or recorded</p></td>
</tr>
<tr class="even">
<td><p>QAudioRecorder</p></td>
<td><p>Used for the recording of audio</p></td>
</tr>
<tr class="odd">
<td><p>QCamera</p></td>
<td><p>Interface for system camera devices</p></td>
</tr>
<tr class="even">
<td><p>QCameraExposure</p></td>
<td><p>Interface for exposure related camera settings</p></td>
</tr>
<tr class="odd">
<td><p>QCameraFocus</p></td>
<td><p>Interface for focus and zoom related camera settings</p></td>
</tr>
<tr class="even">
<td><p>QCameraFocusZone</p></td>
<td><p>Information on zones used for autofocusing a camera</p></td>
</tr>
<tr class="odd">
<td><p>QCameraImageCapture</p></td>
<td><p>Used for the recording of media content</p></td>
</tr>
<tr class="even">
<td><p>QCameraImageProcessing</p></td>
<td><p>Interface for image processing related camera settings</p></td>
</tr>
<tr class="odd">
<td><p>QCameraInfo</p></td>
<td><p>General information about camera devices</p></td>
</tr>
<tr class="even">
<td><p>QGraphicsEffect</p></td>
<td><p>The base class for all graphics effects</p></td>
</tr>
<tr class="odd">
<td><p>QImageEncoderSettings</p></td>
<td><p>Set of image encoder settings</p></td>
</tr>
<tr class="even">
<td><p>QMediaBindableInterface</p></td>
<td><p>The base class for objects extending media objects functionality</p></td>
</tr>
<tr class="odd">
<td><p>QMediaContent</p></td>
<td><p>Access to the resources relating to a media content</p></td>
</tr>
<tr class="even">
<td><p>QMediaControl</p></td>
<td><p>Base interface for media service controls</p></td>
</tr>
<tr class="odd">
<td><p>QMediaMetaData</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>QMediaObject</p></td>
<td><p>Common base for multimedia objects</p></td>
</tr>
<tr class="odd">
<td><p>QMediaPlayer</p></td>
<td><p>Allows the playing of a media source</p></td>
</tr>
<tr class="even">
<td><p>QMediaPlaylist</p></td>
<td><p>List of media content to play</p></td>
</tr>
<tr class="odd">
<td><p>QMediaRecorder</p></td>
<td><p>Used for the recording of media content</p></td>
</tr>
<tr class="even">
<td><p>QMediaResource</p></td>
<td><p>Description of a media resource</p></td>
</tr>
<tr class="odd">
<td><p>QMediaService</p></td>
<td><p>Common base class for media service implementations</p></td>
</tr>
<tr class="even">
<td><p>QMediaTimeInterval</p></td>
<td><p>Represents a time interval with integer precision</p></td>
</tr>
<tr class="odd">
<td><p>QMediaTimeRange</p></td>
<td><p>Represents a set of zero or more disjoint time intervals</p></td>
</tr>
<tr class="even">
<td><p>QMultimedia</p></td>
<td><p>Contains miscellaneous identifiers used throughout the Qt Multimedia library</p></td>
</tr>
<tr class="odd">
<td><p>QRadioData</p></td>
<td><p>Interfaces to the RDS functionality of the system radio</p></td>
</tr>
<tr class="even">
<td><p>QRadioTuner</p></td>
<td><p>Interface to the systems analog radio device</p></td>
</tr>
<tr class="odd">
<td><p>QSound</p></td>
<td><p>Method to play .wav sound files</p></td>
</tr>
<tr class="even">
<td><p>QSoundEffect</p></td>
<td><p>Way to play low latency sound effects</p></td>
</tr>
<tr class="odd">
<td><p>QStaticText</p></td>
<td><p>Enables optimized drawing of text when the text and its layout is updated rarely</p></td>
</tr>
<tr class="even">
<td><p>QVideoEncoderSettings</p></td>
<td><p>Set of video encoder settings</p></td>
</tr>
<tr class="odd">
<td><p>QVideoFrame</p></td>
<td><p>Represents a frame of video data</p></td>
</tr>
<tr class="even">
<td><p>QVideoProbe</p></td>
<td><p>Allows you to monitor video frames being played or recorded</p></td>
</tr>
<tr class="odd">
<td><p>QVideoSurfaceFormat</p></td>
<td><p>Specifies the stream format of a video presentation surface</p></td>
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
