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
-   [SDK 15.04.3](../index.html) ›
-   [QtAudioEngine](../QtAudioEngine/index.html) ›

<!-- -->

-   SoundInstance

SoundInstance
=============

<span class="subtitle"></span>
Play 3d audio content. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[direction](index.html#direction-prop)**** : vector3d
-   ****[engine](index.html#engine-prop)**** : QtAudioEngine::AudioEngine
-   ****[gain](index.html#gain-prop)**** : vector3d
-   ****[pitch](index.html#pitch-prop)**** : vector3d
-   ****[position](index.html#position-prop)**** : vector3d
-   ****[sound](index.html#sound-prop)**** : string
-   ****[state](index.html#state-prop)**** : enumeration
-   ****[velocity](index.html#velocity-prop)**** : vector3d

<span id="signals"></span>
Signals
-------

-   ****[directionChanged](index.html#directionChanged-signal)****()
-   ****[gainChanged](index.html#gainChanged-signal)****()
-   ****[pitchChanged](index.html#pitchChanged-signal)****()
-   ****[positionChanged](index.html#positionChanged-signal)****()
-   ****[soundChanged](index.html#soundChanged-signal)****()
-   ****[stateChanged](index.html#stateChanged-signal)****(state)
-   ****[velocityChanged](index.html#velocityChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[play](index.html#play-method-3)****()
-   ****[play](index.html#play-method-2)****()
-   ****[play](index.html#play-method)****()

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

There are two ways to create [SoundInstance](index.html) objects. You can obtain it by calling newInstance method of a [Sound](../QtAudioEngine.Sound/index.html):

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    id:root
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        AudioSample {
            name:"explosion01"
            source: "explosion-01.wav"
        }
        Sound {
            name:"explosion"
            PlayVariation {
                sample:"explosion01"
            }
        }
    }
    property variant soundEffect: audioengine.sounds["explosion"].newInstance();
    MouseArea {
        anchors.fill: parent
        onPressed: {
            root.soundEffect.play();
        }
    }
}
```

Or alternatively, you can explicitly define [SoundInstance](index.html) outside of [AudioEngine](../QtAudioEngine.AudioEngine/index.html) for easier qml bindings:

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    id:root
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        AudioSample {
            name:"explosion01"
            source: "explosion-01.wav"
        }
        Sound {
            name:"explosion"
            PlayVariation {
                sample:"explosion01"
            }
        }
    }
    Item {
        id: animator
        x: 10 + observer.percent * 100
        y: 20 + observer.percent * 80
        property real percent: 0
        SequentialAnimation on percent {
            loops: Animation.Infinite
            running: true
            NumberAnimation {
            duration: 8000
            from: 0
            to: 1
            }
        }
    }
    SoundInstance {
        id:soundEffect
        engine:audioengine
        sound:"explosion"
        position:Qt.vector3d(animator.x, animator.y, 0);
    }
    MouseArea {
        anchors.fill: parent
        onPressed: {
            soundEffect.play();
        }
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
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the current 3d direction.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="engine-prop"></span><span class="name">engine</span> : <span class="type"><a href="../QtAudioEngine.AudioEngine/index.html">QtAudioEngine::AudioEngine</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the reference to [AudioEngine](../QtAudioEngine.AudioEngine/index.html), must be set only once.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gain-prop"></span><span class="name">gain</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the gain adjustment which will be used to modulate the audio output level from this [SoundInstance](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pitch-prop"></span><span class="name">pitch</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the pitch adjustment which will be used to modulate the audio pitch from this [SoundInstance](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="position-prop"></span><span class="name">position</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the current 3d position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sound-prop"></span><span class="name">sound</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property specifies which Sound this [SoundInstance](index.html) will use. Unlike some properties in other types, this property can be changed dynamically.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="state-prop"></span><span class="name">state</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the current playback state. It can be one of:

| Value         | Description                                                                                                                         |
|---------------|-------------------------------------------------------------------------------------------------------------------------------------|
| StopppedState | The [SoundInstance](index.html) is not playing, and when playback begins next it will play from position zero.                      |
| PlayingState  | The [SoundInstance](index.html) is playing the media.                                                                               |
| PausedState   | The [SoundInstance](index.html) is not playing, and when playback begins next it will play from the position that it was paused at. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocity-prop"></span><span class="name">velocity</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the current 3d velocity.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="directionChanged-signal"></span><span class="name">directionChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [direction](index.html#direction-prop) is changed

The corresponding handler is `onDirectionChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gainChanged-signal"></span><span class="name">gainChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [gain](index.html#gain-prop) is changed

The corresponding handler is `onGainChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pitchChanged-signal"></span><span class="name">pitchChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [pitch](index.html#pitch-prop) is changed

The corresponding handler is `onPitchChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionChanged-signal"></span><span class="name">positionChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [position](index.html#position-prop) is changed

The corresponding handler is `onPositionChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="soundChanged-signal"></span><span class="name">soundChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [sound](index.html#sound-prop) is changed

The corresponding handler is `onSoundChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stateChanged-signal"></span><span class="name">stateChanged</span>(<span class="type">state</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [state](index.html#state-prop) is changed

The corresponding handler is `onStateChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocityChanged-signal"></span><span class="name">velocityChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [velocity](index.html#velocity-prop) is changed

The corresponding handler is `onVelocityChanged`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-3"></span><span class="name">play</span>()</p></td>
</tr>
</tbody>
</table>

Pauses current playback.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-2"></span><span class="name">play</span>()</p></td>
</tr>
</tbody>
</table>

Stops current playback.

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

Starts playback.

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
