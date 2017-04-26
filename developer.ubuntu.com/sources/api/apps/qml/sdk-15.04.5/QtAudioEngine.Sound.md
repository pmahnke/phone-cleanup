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
-   [SDK 15.04.5](../index.html) ›
-   [QtAudioEngine](../QtAudioEngine/index.html) ›

<!-- -->

-   Sound

Sound
=====

<span class="subtitle"></span>
Define a variety of samples and parameters to be used for SoundInstance. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[attenuationModel](index.html#attenuationModel-prop)**** : string
-   ****[category](index.html#category-prop)**** : string
-   ****[name](index.html#name-prop)**** : string
-   ****[playType](index.html#playType-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[play](index.html#play-method-12)****(position, velocity, direction, gain, pitch)
-   ****[play](index.html#play-method-11)****(position, velocity, gain, pitch)
-   ****[play](index.html#play-method-10)****(position, gain, pitch)
-   ****[play](index.html#play-method-9)****(position, velocity, direction, gain)
-   ****[play](index.html#play-method-8)****(position, velocity, gain)
-   ****[play](index.html#play-method-7)****(position, gain)
-   ****[play](index.html#play-method-6)****(position, velocity, direction)
-   ****[play](index.html#play-method-5)****(position, velocity)
-   ****[play](index.html#play-method-4)****(position)
-   ****[play](index.html#play-method-3)****(gain, pitch)
-   ****[play](index.html#play-method-2)****(gain)
-   ****[play](index.html#play-method)****()

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

Sound can be accessed through [QtAudioEngine::AudioEngine::sounds](../QtAudioEngine.AudioEngine/index.html#sounds-prop) with its unique name and must be defined inside [AudioEngine](../QtAudioEngine.AudioEngine/index.html).

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        AudioSample {
            name:"explosion01"
            source: "explosion-01.wav"
        }
        AudioSample {
            name:"explosion02"
            source: "explosion-02.wav"
        }
        Sound {
            name:"explosion"
            PlayVariation {
                sample:"explosion01"
                minPitch: 0.8
                maxPitch: 1.1
            }
            PlayVariation {
                sample:"explosion01"
                minGain: 1.1
                maxGain: 1.5
            }
        }
    }
    MouseArea {
        anchors.fill: parent
        onPressed: {
            audioengine.sounds["explosion"].play();
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
<td><p><span id="attenuationModel-prop"></span><span class="name">attenuationModel</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property specifies which attenuation model this sound will apply.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="category-prop"></span><span class="name">category</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property specifies which [AudioCategory](../QtAudioEngine.AudioCategory/index.html) this sound belongs to.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of Sound, must be unique among all sounds and only defined once.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playType-prop"></span><span class="name">playType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the playType. It can be one of:

-   Random - randomly picks up a play variation when playback is triggered
-   Sequential - plays each variation in sequence when playback is triggered

The default value is Random.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-12"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">direction</span>, <span class="type">gain</span>, <span class="type">pitch</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing with specified *position*, *velocity*, *direction*, adjusted *gain* and *pitch*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-11"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">gain</span>, <span class="type">pitch</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing with specified *position*, *velocity*, adjusted *gain* and *pitch*. Direction is set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-10"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">gain</span>, <span class="type">pitch</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing with specified *position*, adjusted *gain* and *pitch*. Direction and velocity are all set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-9"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">direction</span>, <span class="type">gain</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing with specified *position*, *velocity*, *direction* and adjusted *gain*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-8"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">gain</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing with specified *position*, *velocity* and adjusted *gain*. Direction is set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-7"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">gain</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing with specified *position* and adjusted *gain*. Direction and velocity are all set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-6"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">direction</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing with specified *position*, *velocity* and *direction*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-5"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing with specified *position* and *velocity*. Direction is set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-4"></span><span class="name">play</span>(<span class="type">position</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing with specified *position*. Direction and velocity are all set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-3"></span><span class="name">play</span>(<span class="type">gain</span>, <span class="type">pitch</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing with the adjusted *gain* and *pitch*. Position, direction and velocity are all set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-2"></span><span class="name">play</span>(<span class="type">gain</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing with the adjusted *gain*. Position, direction and velocity are all set to `"0,0,0"`.

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

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance/index.html) and starts playing. Position, direction and velocity are all set to `"0,0,0"`.

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
