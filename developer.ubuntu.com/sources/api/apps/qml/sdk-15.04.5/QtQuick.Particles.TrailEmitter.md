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
-   [QtQuick.Particles](../QtQuick.Particles/index.html) ›

<!-- -->

-   TrailEmitter

TrailEmitter
============

<span class="subtitle"></span>
Emits logical particles from other logical particles More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import QtQuick.Particles 2.0 |

<span id="properties"></span>
Properties
----------

-   ****[emitHeight](index.html#emitHeight-prop)**** : real
-   ****[emitRatePerParticle](index.html#emitRatePerParticle-prop)**** : real
-   ****[emitShape](index.html#emitShape-prop)**** : Shape
-   ****[emitWidth](index.html#emitWidth-prop)**** : real
-   ****[follow](index.html#follow-prop)**** : string
-   ****[velocityFromMovement](index.html#velocityFromMovement-prop)**** : qreal

<span id="signals"></span>
Signals
-------

-   void ****[emitFollowParticles](index.html#emitFollowParticles-signal)****(Array *particles*, Particle *followed*)

<span id="details"></span>
Detailed Description
--------------------

This element emits logical particles into the [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html), with the starting positions based on those of other logical particles.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitHeight-prop"></span><span class="name">emitHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The height in pixels the [emitShape](index.html#emitShape-prop) is scaled to. If set to [TrailEmitter](index.html).ParticleSize, the height will be the current size of the particle being followed.

Default is 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitRatePerParticle-prop"></span><span class="name">emitRatePerParticle</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitShape-prop"></span><span class="name">emitShape</span> : <span class="type"><a href="../QtQuick.Particles.Shape/index.html">Shape</a></span></p></td>
</tr>
</tbody>
</table>

As the area of a [TrailEmitter](index.html) is the area it follows, a separate shape can be provided to be the shape it emits out of. This shape has width and height specified by [emitWidth](index.html#emitWidth-prop) and [emitHeight](index.html#emitHeight-prop), and is centered on the followed particle's position.

The default shape is a filled Rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitWidth-prop"></span><span class="name">emitWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The width in pixels the [emitShape](index.html#emitShape-prop) is scaled to. If set to [TrailEmitter](index.html).ParticleSize, the width will be the current size of the particle being followed.

Default is 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="follow-prop"></span><span class="name">follow</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The type of logical particle which this is emitting from.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocityFromMovement-prop"></span><span class="name">velocityFromMovement</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

If this value is non-zero, then any movement of the emitter will provide additional starting velocity to the particles based on the movement. The additional vector will be the same angle as the emitter's movement, with a magnitude that is the magnitude of the emitters movement multiplied by velocityFromMovement.

Default value is 0.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitFollowParticles-signal"></span><span class="type">void</span> <span class="name">emitFollowParticles</span>(<span class="type">Array</span> <em>particles</em>, <span class="type"><a href="../QtQuick.Particles.Particle/index.html">Particle</a></span> <em>followed</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when particles are emitted from the *followed* particle. *particles* contains an array of particle objects which can be directly manipulated.

The corresponding handler is `onEmitFollowParticles`. If you use this signal handler, emitParticles will not be emitted.

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
