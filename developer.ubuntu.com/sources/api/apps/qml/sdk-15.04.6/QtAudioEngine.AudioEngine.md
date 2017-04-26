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
-   [QtAudioEngine](../QtAudioEngine/index.html) ›

<!-- -->

-   AudioEngine

AudioEngine
===========

<span class="subtitle"></span>
Organize all your 3d audio content in one place. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[categories](index.html#categories-prop)**** : map
-   ****[dopplerFactor](index.html#dopplerFactor-prop)**** : real
-   ****[listener](index.html#listener-prop)**** : QtAudioEngine::AudioListener
-   ****[liveInstances](index.html#liveInstances-prop)**** : int
-   ****[loading](index.html#loading-prop)**** : bool
-   ****[samples](index.html#samples-prop)**** : map
-   ****[sounds](index.html#sounds-prop)**** : map
-   ****[speedOfSound](index.html#speedOfSound-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[finishedLoading](index.html#finishedLoading-signal)****()
-   ****[isLoadingChanged](index.html#isLoadingChanged-signal)****()
-   ****[liveInstanceCountChanged](index.html#liveInstanceCountChanged-signal)****()
-   ****[ready](index.html#ready-signal)****()

<span id="details"></span>
Detailed Description
--------------------

`AudioEngine` is part of the **QtAudioEngine 1.0** module.

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
            name:"explosion"
            source: "explosion-02.wav"
        }
        Sound {
            name:"explosion"
            PlayVariation {
                sample:"explosion"
            }
        }
        dopplerFactor: 1
        speedOfSound: 343.33 // Approximate speed of sound in air at 20 degrees Celsius
        listener.up:"0,0,1"
        listener.position:"0,0,0"
        listener.velocity:"0,0,0"
        listener.direction:"0,1,0"
    }
    MouseArea {
        anchors.fill: parent
        onPressed: {
            audioengine.sounds["explosion"].play();
        }
    }
}
```

`AudioEngine` acts as a central library for configuring all 3d audio content in an app, so you should define only one in your app.

It is mostly used as a container to access other types such as [AudioCategory](../QtAudioEngine.AudioCategory/index.html), [AudioSample](../QtAudioEngine.AudioSample/index.html) and Sound.

**See also** [AudioCategory](../QtAudioEngine.AudioCategory/index.html), [AudioSample](../QtAudioEngine.AudioSample/index.html), [Sound](../QtAudioEngine.Sound/index.html), [SoundInstance](../QtAudioEngine.SoundInstance/index.html), [AttenuationModelLinear](../QtAudioEngine.AttenuationModelLinear/index.html), and [AttenuationModelInverse](../QtAudioEngine.AttenuationModelInverse/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="categories-prop"></span><span class="name">categories</span> : <span class="type">map</span></p></td>
</tr>
</tbody>
</table>

Container of all [AudioCategory](../QtAudioEngine.AudioCategory/index.html) instances.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dopplerFactor-prop"></span><span class="name">dopplerFactor</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds a simple scaling for the effect of doppler shift.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="listener-prop"></span><span class="name">listener</span> : <span class="type"><a href="../QtAudioEngine.AudioListener/index.html">QtAudioEngine::AudioListener</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the listener object. You can change various properties to affect the 3D positioning of sounds.

**See also** [AudioListener](../QtAudioEngine.AudioListener/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="liveInstances-prop"></span><span class="name">liveInstances</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property indicates how many live sound instances there are at the moment.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loading-prop"></span><span class="name">loading</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates if the audio engine is loading any audio sample at the moment. This may be useful if you specified the preloaded property in [AudioSample](../QtAudioEngine.AudioSample/index.html) and would like to show a loading screen to the user before all audio samples are loaded.

/sa [finishedLoading](index.html#finishedLoading-signal), [AudioSample::preloaded](../QtAudioEngine.AudioSample/index.html#preloaded-prop)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="samples-prop"></span><span class="name">samples</span> : <span class="type">map</span></p></td>
</tr>
</tbody>
</table>

Container of all [AudioSample](../QtAudioEngine.AudioSample/index.html) instances.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sounds-prop"></span><span class="name">sounds</span> : <span class="type">map</span></p></td>
</tr>
</tbody>
</table>

Container of all Sound instances.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="speedOfSound-prop"></span><span class="name">speedOfSound</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the reference value of the sound speed (in meters per second) which will be used in doppler shift calculation. The doppler shift calculation is used to emulate the change in frequency in sound that is perceived by an observer when the sound source is travelling towards or away from the observer. The speed of sound depends on the medium the sound is propagating through.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="finishedLoading-signal"></span><span class="name">finishedLoading</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [loading](index.html#loading-prop) has completed.

The corresponding handler is `onFinishedLoading`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isLoadingChanged-signal"></span><span class="name">isLoadingChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the [loading](index.html#loading-prop) property changes.

The corresponding handler is `onIsLoadingChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="liveInstanceCountChanged-signal"></span><span class="name">liveInstanceCountChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the number of live instances managed by the [AudioEngine](index.html) is changed.

The corresponding handler is `onLiveInstanceCountChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ready-signal"></span><span class="name">ready</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the [AudioEngine](index.html) is ready to use.

The corresponding handler is `onReady`.

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
