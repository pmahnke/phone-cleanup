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

-   AudioListener

AudioListener
=============

<span class="subtitle"></span>
Control global listener parameters. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[direction](index.html#direction-prop)**** : vector3d
-   ****[engine](index.html#engine-prop)**** : QtAudioEngine::AudioEngine
-   ****[gain](index.html#gain-prop)**** : real
-   ****[position](index.html#position-prop)**** : vector3d
-   ****[up](index.html#up-prop)**** : vector3d
-   ****[velocity](index.html#velocity-prop)**** : vector3d

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

[AudioListener](index.html) will have only one global instance and you can either access it through the listener property of [AudioEngine](../QtAudioEngine.AudioEngine/index.html):

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        listener.up:"0,0,1"
        listener.velocity:"0,0,0"
        listener.direction:"0,1,0"
        listener.position:Qt.vector3d(observer.x, observer.y, 0);
    }
    Item {
        id: observer
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
}
```

or alternatively, by defining an [AudioListener](index.html) outside [AudioEngine](../QtAudioEngine.AudioEngine/index.html):

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        listener.up:"0,0,1"
        listener.velocity:"0,0,0"
        listener.direction:"0,1,0"
    }
    AudioListener {
        engine:audioengine
        position: Qt.vector3d(observer.x, observer.y, 0);
    }
    Item {
        id: observer
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
}
```

This separate [AudioListener](index.html) definition is allowed to make QML bindings easier in some cases.

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

This property holds the normalized 3D direction vector of the listener.

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

This property holds the reference to [AudioEngine](../QtAudioEngine.AudioEngine/index.html), and must only be set once.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gain-prop"></span><span class="name">gain</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property will modulate all audio output from audio engine instances.

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

This property holds the 3D position of the listener.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="up-prop"></span><span class="name">up</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the normalized 3D up vector of the listener.

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

This property holds the 3D velocity vector of the listener.

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
