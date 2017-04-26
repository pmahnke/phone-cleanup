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
-   [SDK 15.04.1](../index.html) ›
-   [QtAudioEngine](../QtAudioEngine/index.html) ›

<!-- -->

-   PlayVariation

PlayVariation
=============

<span class="subtitle"></span>
Define a playback variation for sounds. So each time the playback of the same sound can be a slightly different even with the same AudioSample. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[looping](index.html#looping-prop)**** : bool
-   ****[maxGain](index.html#maxGain-prop)**** : real
-   ****[maxPitch](index.html#maxPitch-prop)**** : real
-   ****[minGain](index.html#minGain-prop)**** : real
-   ****[minPitch](index.html#minPitch-prop)**** : real
-   ****[sample](index.html#sample-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

[PlayVariation](index.html) must be defined inside a [Sound](../QtAudioEngine.Sound/index.html).

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
<td><p><span id="looping-prop"></span><span class="name">looping</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether the playback will be looped or not.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maxGain-prop"></span><span class="name">maxGain</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property specifies the maximum gain adjustment that can be applied in any playback.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maxPitch-prop"></span><span class="name">maxPitch</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property specifies the maximum pitch adjustment that can be applied in any playback.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minGain-prop"></span><span class="name">minGain</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property specifies the minimum gain adjustment that can be applied in any playback.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minPitch-prop"></span><span class="name">minPitch</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property specifies the minimum pitch adjustment that can be applied in any playback.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sample-prop"></span><span class="name">sample</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property specifies which [AudioSample](../QtAudioEngine.AudioSample/index.html) this variation will use.

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
