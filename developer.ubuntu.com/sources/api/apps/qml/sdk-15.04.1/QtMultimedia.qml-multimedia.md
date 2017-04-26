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

-   Qt Multimedia QML API

Qt Multimedia QML API
=====================

<span class="subtitle"></span>
<span id="details"></span> <span id="overview"></span>
Overview
--------

The Qt Multimedia module gives developers a simplified way to use audio and video playback, and access camera functionality. The Multimedia QML API provides a QML friendly interface to these features.

<span id="types"></span>
Types
-----

<span id="audio"></span>
### Audio

[Audio](index.html#audio) is an easy way to add audio playback to a Qt Quick scene. Qt Multimedia provides properties for control, methods (functions) and signals.

The code extract below shows the creation and use of an Audio instance.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
// ...
Item {
    width: 640
    height: 360
    Audio {
        id: playMusic
        source: "music.wav"
    }
    MouseArea {
        id: playArea
        anchors.fill: parent
        onPressed:  { playMusic.play() }
    }
}
```

The snippet above shows how the inclusion of *playMusic* enables audio features on the type that contains it. So that when the parent's MouseArea is clicked the [play()](../QtMultimedia.Audio/index.html#play-method) method of Audio is run. Other typical audio control methods are available such as [pause()](../QtMultimedia.Audio/index.html#pause-method) and [stop()](../QtMultimedia.Audio/index.html#stop-method).

Much of the getting / setting of [Audio](index.html#audio) parameters is done through properties. These include

| Property                                                               | Description                                                            |
|------------------------------------------------------------------------|------------------------------------------------------------------------|
| [source](../QtMultimedia.Audio/index.html#source-prop)                 | The source URL of the media.                                           |
| [autoLoad](../QtMultimedia.Audio/index.html#autoLoad-prop)             | Indicates if loading of media should begin immediately.                |
| [playing](../QtMultimedia.Audio/index.html#playing-signal)             | Indicates that the media is playing.                                   |
| [paused](../QtMultimedia.Audio/index.html#paused-signal)               | The media is paused.                                                   |
| [status](../QtMultimedia.Audio/index.html#status-prop)                 | The status of media loading.                                           |
| [duration](../QtMultimedia.Audio/index.html#duration-prop)             | Amount of time in milliseconds the media will play.                    |
| [position](../QtMultimedia.Audio/index.html#position-prop)             | Current position in the media in milliseconds of play.                 |
| [volume](../QtMultimedia.Audio/index.html#volume-prop)                 | Audio output volume: from 0.0 (silent) to 1.0 (maximum)                |
| [muted](../QtMultimedia.Audio/index.html#muted-prop)                   | Indicates audio is muted.                                              |
| [bufferProgress](../QtMultimedia.Audio/index.html#bufferProgress-prop) | Indicates how full the data buffer is: 0.0 (empty) to 1.0 (full).      |
| [seekable](../QtMultimedia.Audio/index.html#seekable-prop)             | Indicates whether the audio position can be changed.                   |
| [playbackRate](../QtMultimedia.Audio/index.html#playbackRate-prop)     | The rate at which audio is played at as a multiple of the normal rate. |
| [error](../QtMultimedia.Audio/index.html#error-signal)                 | An error code for the error state including NoError                    |
| [errorString](../QtMultimedia.Audio/index.html#errorString-prop)       | A description of the current error condition.                          |

The set of signals available allow the developer to create custom behavior when the following events occur,

| Signal                                                     | Description                                                         |
|------------------------------------------------------------|---------------------------------------------------------------------|
| [playing](../QtMultimedia.Audio/index.html#playing-signal) | Called when playback is started, or when resumed from paused state. |
| [paused](../QtMultimedia.Audio/index.html#paused-signal)   | Called when playback is paused.                                     |
| [stopped](../QtMultimedia.Audio/index.html#stopped-signal) | Called when playback is stopped.                                    |
| [error](../QtMultimedia.Audio/index.html#error-signal)     | Called when the specified error occurs.                             |

<span id="camera"></span>
### Camera

[Camera](index.html#camera) enables still image and video capture using QML. It has a number of properties that help setting it up.

The details of using a [Camera](index.html#camera) are described in further depth in the [Camera Overview](../QtMultimedia.cameraoverview/index.html) and in the corresponding reference documentation.

<span id="video"></span>
### Video

Adding video playback, with sound, to a Qt Quick scene is also easy. The process is very similar to that of Audio above, in fact [Video](index.html#video) shares many of the property names, methods and signals. Here is the equivalent sample code to implement video playback in a scene

``` qml
Video {
    id: video
    width : 800
    height : 600
    source: "video.avi"
    MouseArea {
        anchors.fill: parent
        onClicked: {
            video.play()
        }
    }
    focus: true
    Keys.onSpacePressed: video.paused = !video.paused
    Keys.onLeftPressed: video.position -= 5000
    Keys.onRightPressed: video.position += 5000
}
```

There are similar features like [play()](../QtMultimedia.Video/index.html#play-method) with new features specific to video.

In the above sample when the parent of MouseArea is clicked, an area of 800x600 pixels with an id of 'video', the source "video.avi" will play in that area. Notice also that signals for the Keys have been defined so that a spacebar will toggle the pause button; the left arrow will move the current position in the video to 5 seconds previously; and the right arrow will advance the current position in the video by 5 seconds.

Most of the differences will obviously be about video control and information. There are many properties associated with [Video](index.html#video), most of them deal with meta-data, control of the video media and aspects of presentation.

<span id="soundeffect"></span>
### SoundEffect

[SoundEffect](index.html#soundeffect) provides a way to play short sound effects, like in video games. Multiple sound effect instances can be played simultaneously. You should use [Audio](index.html#audio) for music playback.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Item {
    width: 640
    height: 360
    SoundEffect {
        id: effect
        source: "test.wav"
    }
    MouseArea {
        id: playArea
        anchors.fill: parent
        onPressed:  { effect.play() }
    }
}
```

In the above sample the sound effect will be played when the MouseArea is clicked.

For a complete description of this type, see [SoundEffect](index.html#soundeffect)

<span id="multimedia-qml-types"></span>
Multimedia QML Types
--------------------

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
