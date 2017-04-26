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

-   Video

Video
=====

<span class="subtitle"></span>
A convenience type for showing a specified video. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[audioRole](index.html#audioRole-prop)**** : enumeration
-   ****[autoLoad](index.html#autoLoad-prop)**** : bool
-   ****[autoPlay](index.html#autoPlay-prop)**** : bool
-   ****[availability](index.html#availability-prop)**** : enumeration
-   ****[bufferProgress](index.html#bufferProgress-prop)**** : real
-   ****[duration](index.html#duration-prop)**** : int
-   ****[error](index.html#error-prop)**** : enumeration
-   ****[errorString](index.html#errorString-prop)**** : string
-   ****[fillMode](index.html#fillMode-prop)**** : enumeration
-   ****[hasAudio](index.html#hasAudio-prop)**** : bool
-   ****[hasVideo](index.html#hasVideo-prop)**** : bool
-   ****[metaData](index.html#metaData-prop)**** : object
-   ****[muted](index.html#muted-prop)**** : bool
-   ****[orientation](index.html#orientation-prop)**** : int
-   ****[playbackRate](index.html#playbackRate-prop)**** : real
-   ****[playbackState](index.html#playbackState-prop)**** : enumeration
-   ****[playlist](index.html#playlist-prop)**** : Playlist
-   ****[position](index.html#position-prop)**** : int
-   ****[seekable](index.html#seekable-prop)**** : bool
-   ****[source](index.html#source-prop)**** : url
-   ****[status](index.html#status-prop)**** : enumeration
-   ****[volume](index.html#volume-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[paused](index.html#paused-signal)****()
-   ****[playing](index.html#playing-signal)****()
-   ****[stopped](index.html#stopped-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[pause](index.html#pause-method)****()
-   ****[play](index.html#play-method)****()
-   ****[seek](index.html#seek-method)****(*offset*)
-   ****[stop](index.html#stop-method)****()
-   ****[supportedAudioRoles](index.html#supportedAudioRoles-method)****()

<span id="details"></span>
Detailed Description
--------------------

`Video` is a convenience type combining the functionality of a [MediaPlayer](../QtMultimedia.MediaPlayer/index.html) and a [VideoOutput](../QtMultimedia.VideoOutput/index.html) into one. It provides simple video playback functionality without having to declare multiple types.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
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
    Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
    Keys.onLeftPressed: video.seek(video.position - 5000)
    Keys.onRightPressed: video.seek(video.position + 5000)
}
```

`Video` supports untransformed, stretched, and uniformly scaled video presentation. For a description of stretched uniformly scaled presentation, see the [fillMode](index.html#fillMode-prop) property description.

**See also** [MediaPlayer](../QtMultimedia.MediaPlayer/index.html) and [VideoOutput](../QtMultimedia.VideoOutput/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="audioRole-prop"></span><span class="name">audioRole</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the role of the audio stream. It can be set to specify the type of audio being played, allowing the system to make appropriate decisions when it comes to volume, routing or post-processing.

The audio role must be set before setting the source property.

Supported values can be retrieved with [supportedAudioRoles()](index.html#supportedAudioRoles-method).

The value can be one of:

-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).UnknownRole - the role is unknown or undefined.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).MusicRole - music.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).VideoRole - soundtrack from a movie or a video.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).VoiceCommunicationRole - voice communications, such as telephony.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).AlarmRole - alarm.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).NotificationRole - notification, such as an incoming e-mail or a chat request.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).RingtoneRole - ringtone.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).AccessibilityRole - for accessibility, such as with a screen reader.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).SonificationRole - sonification, such as with user interface sounds.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).GameRole - game audio.

This QML property was introduced in Qt 5.6.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoLoad-prop"></span><span class="name">autoLoad</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates if loading of media should begin immediately.

Defaults to true, if false media will not be loaded until playback is started.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoPlay-prop"></span><span class="name">autoPlay</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property determines whether the media should begin playback automatically.

Setting to `true` also sets [autoLoad](index.html#autoLoad-prop) to `true`. The default is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availability-prop"></span><span class="name">availability</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Returns the availability state of the video instance.

This is one of:

| Value                                                                 | Description                                                                                                                  |
|-----------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).Available       | The video player is available to use.                                                                                        |
| [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).Busy            | The video player is usually available, but some other process is utilizing the hardware necessary to play media.             |
| [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).Unavailable     | There are no supported video playback facilities.                                                                            |
| [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).ResourceMissing | There is one or more resources missing, so the video player cannot be used. It may be possible to try again at a later time. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bufferProgress-prop"></span><span class="name">bufferProgress</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds how much of the data buffer is currently filled, from 0.0 (empty) to 1.0 (full).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="duration-prop"></span><span class="name">duration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the duration of the media in milliseconds.

If the media doesn't have a fixed duration (a live stream for example) this will be 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the error state of the video. It can be one of:

-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).NoError - there is no current error.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).ResourceError - the video cannot be played due to a problem allocating resources.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).FormatError - the video format is not supported.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).NetworkError - the video cannot be played due to network issues.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).AccessDenied - the video cannot be played due to insufficient permissions.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).ServiceMissing - the video cannot be played because the media service could not be instantiated.

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

This property holds a string describing the current error condition in more detail.

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

-   [VideoOutput](../QtMultimedia.VideoOutput/index.html).Stretch - the video is scaled to fit
-   [VideoOutput](../QtMultimedia.VideoOutput/index.html).PreserveAspectFit - the video is scaled uniformly to fit without cropping
-   [VideoOutput](../QtMultimedia.VideoOutput/index.html).PreserveAspectCrop - the video is scaled uniformly to fill, cropping if necessary

Because this type is for convenience in QML, it does not support enumerations directly, so enumerations from `VideoOutput` are used to access the available fill modes.

The default fill mode is preserveAspectFit.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasAudio-prop"></span><span class="name">hasAudio</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the current media has audio content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasVideo-prop"></span><span class="name">hasVideo</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the current media has video content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData-prop"></span><span class="name">metaData</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

This property holds the meta data for the current media.

See MediaPlayer.metaData for details about each meta data key.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="muted-prop"></span><span class="name">muted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the audio output is muted.

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

The orientation of the `Video` in degrees. Only multiples of 90 degrees is supported, that is 0, 90, 180, 270, 360, etc.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playbackRate-prop"></span><span class="name">playbackRate</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the rate at which video is played at as a multiple of the normal rate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playbackState-prop"></span><span class="name">playbackState</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This read only property indicates the playback state of the media.

-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).PlayingState - the media is playing
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).PausedState - the media is paused
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).StoppedState - the media is stopped

The default state is [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).StoppedState.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playlist-prop"></span><span class="name">playlist</span> : <span class="type"><a href="../QtMultimedia.Playlist/index.html">Playlist</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the playlist used by the media player.

Setting the playlist property resets the [source](index.html#source-prop) to an empty string.

This QML property was introduced in Qt 5.6.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="position-prop"></span><span class="name">position</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the current playback position in milliseconds.

To change this position, use the [seek()](index.html#seek-method) method.

**See also** [seek()](index.html#seek-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="seekable-prop"></span><span class="name">seekable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the playback position of the video can be changed.

If true, calling the [seek()](index.html#seek-method) method will cause playback to seek to the new position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property holds the source URL of the media.

Setting the source property clears the current [playlist](index.html#playlist-prop), if any.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of media loading. It can be one of:

-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).NoMedia - no media has been set.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).Loading - the media is currently being loaded.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).Loaded - the media has been loaded.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).Buffering - the media is buffering data.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).Stalled - playback has been interrupted while the media is buffering data.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).Buffered - the media has buffered data.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).EndOfMedia - the media has played to the end.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).InvalidMedia - the media cannot be played.
-   [MediaPlayer](../QtMultimedia.MediaPlayer/index.html).UnknownStatus - the status of the media cannot be determined.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="volume-prop"></span><span class="name">volume</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the volume of the audio output, from 0.0 (silent) to 1.0 (maximum volume).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paused-signal"></span><span class="name">paused</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when playback is paused.

The corresponding handler is `onPaused`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playing-signal"></span><span class="name">playing</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when playback is started or continued.

The corresponding handler is `onPlaying`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stopped-signal"></span><span class="name">stopped</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when playback is stopped.

The corresponding handler is `onStopped`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pause-method"></span><span class="name">pause</span>()</p></td>
</tr>
</tbody>
</table>

Pauses playback of the media.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method"></span><span class="name">play</span>()</p></td>
</tr>
</tbody>
</table>

Starts playback of the media.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="seek-method"></span><span class="name">seek</span>( <em>offset</em>)</p></td>
</tr>
</tbody>
</table>

If the [seekable](index.html#seekable-prop) property is true, seeks the current playback position to *offset*.

Seeking may be asynchronous, so the [position](index.html#position-prop) property may not be updated immediately.

**See also** [seekable](index.html#seekable-prop) and [position](index.html#position-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stops playback of the media.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportedAudioRoles-method"></span><span class="name">supportedAudioRoles</span>()</p></td>
</tr>
</tbody>
</table>

Returns a list of supported audio roles.

If setting the audio role is not supported, an empty list is returned.

This QML method was introduced in Qt 5.6.

**See also** [audioRole](index.html#audioRole-prop).

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
