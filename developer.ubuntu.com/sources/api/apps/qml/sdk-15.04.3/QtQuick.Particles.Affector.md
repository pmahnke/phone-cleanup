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
-   [QtQuick.Particles](../QtQuick.Particles/index.html) ›

<!-- -->

-   Affector

Affector
========

<span class="subtitle"></span>
Applies alterations to the attributes of logical particles at any point in their lifetime More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick.Particles 2.0</td>
</tr>
<tr class="even">
<td>Inherited By:</td>
<td><p><a href="../QtQuick.Particles.Age/index.html">Age</a>, <a href="../QtQuick.Particles.Attractor/index.html">Attractor</a>, <a href="../QtQuick.Particles.Friction/index.html">Friction</a>, <a href="../QtQuick.Particles.Gravity/index.html">Gravity</a>, <a href="../QtQuick.Particles.GroupGoal/index.html">GroupGoal</a>, <a href="../QtQuick.Particles.SpriteGoal/index.html">SpriteGoal</a>, <a href="../QtQuick.Particles.Turbulence/index.html">Turbulence</a>, and <a href="../QtQuick.Particles.Wander/index.html">Wander</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[enabled](index.html#enabled-prop)**** : bool
-   ****[groups](index.html#groups-prop)**** : list&lt;string&gt;
-   ****[once](index.html#once-prop)**** : bool
-   ****[shape](index.html#shape-prop)**** : Shape
-   ****[system](index.html#system-prop)**** : ParticleSystem
-   ****[whenCollidingWith](index.html#whenCollidingWith-prop)**** : list&lt;string&gt;

<span id="signals"></span>
Signals
-------

-   void ****[affected](index.html#affected-signal)****(real *x*, real *y*)

<span id="details"></span>
Detailed Description
--------------------

The base Affector does not alter any attributes, but can be used to emit a signal when a particle meets certain conditions.

If an affector has a defined size, then it will only affect particles within its size and position on screen.

Affectors have different performance characteristics to the other particle system elements. In particular, they have some simplifications to try to maintain a simulation at real-time or faster. When running a system with Affectors, irregular frame timings that grow too large ( &gt; one second per frame) will cause the Affectors to try and cut corners with a faster but less accurate simulation. If the system has multiple affectors the order in which they are applied is not guaranteed, and when simulating larger time shifts they will simulate the whole shift each, which can lead to different results compared to smaller time shifts.

Accurate simulation for large numbers of particles (hundreds) with multiple affectors may be possible on some hardware, but on less capable hardware you should expect small irregularties in the simulation as simulates with worse granularity.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If enabled is set to false, this affector will not affect any particles.

Usually this is used to conditionally turn an affector on or off.

Default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="groups-prop"></span><span class="name">groups</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

Which logical particle groups will be affected.

If empty, it will affect all particles.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="once-prop"></span><span class="name">once</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If once is set to true, this affector will only affect each particle once in their lifetimes. If the affector normally simulates a continuous effect over time, then it will simulate the effect of one second of time the one instant it affects the particle.

Default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shape-prop"></span><span class="name">shape</span> : <span class="type"><a href="../QtQuick.Particles.Shape/index.html">Shape</a></span></p></td>
</tr>
</tbody>
</table>

If a size has been defined, the shape property can be used to affect a non-rectangular area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="system-prop"></span><span class="name">system</span> : <span class="type"><a href="../QtQuick.Particles.ParticleSystem/index.html">ParticleSystem</a></span></p></td>
</tr>
</tbody>
</table>

This is the system which will be affected by the element. If the Affector is a direct child of a [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html), it will automatically be associated with it.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="whenCollidingWith-prop"></span><span class="name">whenCollidingWith</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

If any logical particle groups are specified here, then the affector will only be triggered if the particle being examined intersects with a particle of one of these groups.

This is different from the groups property. The groups property selects which particles might be examined, and if they meet other criteria (including being within the bounds of the Affector, modified by shape) then they will be tested again to see if they intersect with a particles from one of the particle groups in whenCollidingWith.

By default, no groups are specified.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="affected-signal"></span><span class="type">void</span> <span class="name">affected</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a particle is selected to be affected. It will not be emitted if a particle is considered by the Affector but not actually altered in any way.

In the special case where an Affector has no possible effect (e.g. Affector {}), this signal will be emitted for all particles being considered if you connect to it. This allows you to execute arbitrary code in response to particles (use the Affector::onAffectParticles signal handler if you want to execute code which affects the particles themselves). As this executes JavaScript code per particle, it is not recommended to use this signal with a high-volume particle system.

x,y is the particle's current position.

The corresponding handler is `onAffected`.

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
