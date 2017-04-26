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
-   [QtQuick.Particles](../QtQuick.Particles/index.html) ›

<!-- -->

-   ParticleSystem

ParticleSystem
==============

<span class="subtitle"></span>
A system which includes particle painter, emitter, and affector types More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import QtQuick.Particles 2.0 |

<span id="properties"></span>
Properties
----------

-   ****[empty](index.html#empty-prop)**** : bool
-   ****[particleStates](index.html#particleStates-prop)**** : list&lt;Sprite&gt;
-   ****[paused](index.html#paused-prop)**** : bool
-   ****[running](index.html#running-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   void ****[pause](index.html#pause-method)****()
-   void ****[reset](index.html#reset-method)****()
-   void ****[restart](index.html#restart-method)****()
-   void ****[resume](index.html#resume-method)****()
-   void ****[start](index.html#start-method)****()
-   void ****[stop](index.html#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="empty-prop"></span><span class="name">empty</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

empty is set to true when there are no live particles left in the system.

You can use this to pause the system, keeping it from spending any time updating, but you will need to resume it in order for additional particles to be generated by the system.

To kill all the particles in the system, use an Age affector.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="particleStates-prop"></span><span class="name">particleStates</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtQuick.Sprite/index.html">Sprite</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

You can define a sub-set of particle groups in this property in order to provide them with stochastic state transitions.

Each [QtQuick::Sprite](../QtQuick.Sprite/index.html) in this list is interpreted as corresponding to the particle group with ths same name. Any transitions defined in these sprites will take effect on the particle groups as well. Additionally TrailEmitters, Affectors and [ParticlePainters](../QtQuick.qtquick-effects-particles/index.html#particlepainters) definined inside one of these sprites are automatically associated with the corresponding particle group.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paused-prop"></span><span class="name">paused</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If paused is set to true, the particle system will not advance the simulation. When paused is set to false again, the simulation will resume from the same point it was paused.

The simulation will automatically pause if it detects that there are no live particles left, and unpause when new live particles are added.

It can also be controlled with the [pause()](index.html#pause-method) and [resume()](index.html#resume-method) methods.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If running is set to false, the particle system will stop the simulation. All particles will be destroyed when the system is set to running again.

It can also be controlled with the [start()](index.html#start-method) and [stop()](index.html#stop-method) methods.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pause-method"></span><span class="type">void</span> <span class="name">pause</span>()</p></td>
</tr>
</tbody>
</table>

Pauses the simulation if it is running.

**See also** [resume](index.html#resume-method) and [paused](index.html#paused-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reset-method"></span><span class="type">void</span> <span class="name">reset</span>()</p></td>
</tr>
</tbody>
</table>

Discards all currently existing particles.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="restart-method"></span><span class="type">void</span> <span class="name">restart</span>()</p></td>
</tr>
</tbody>
</table>

Stops the simulation if it is running, and then starts it.

**See also** [start](index.html#start-method), [stop](index.html#stop-method), and [running](index.html#running-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resume-method"></span><span class="type">void</span> <span class="name">resume</span>()</p></td>
</tr>
</tbody>
</table>

Resumes the simulation if it is paused.

**See also** [pause](index.html#pause-method) and [paused](index.html#paused-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="type">void</span> <span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Starts the simulation if it has not already running.

**See also** [stop](index.html#stop-method), [restart](index.html#restart-method), and [running](index.html#running-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="type">void</span> <span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stops the simulation if it is running.

**See also** [start](index.html#start-method), [restart](index.html#restart-method), and [running](index.html#running-prop).

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