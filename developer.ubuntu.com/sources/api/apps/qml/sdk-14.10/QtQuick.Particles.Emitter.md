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
-   [SDK 14.10](../index.html) ›
-   [QtQuick.Particles](../QtQuick.Particles/index.html) ›

<!-- -->

-   Emitter

Emitter
=======

<span class="subtitle"></span>
Emits logical particles More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import QtQuick.Particles 2.0` |

<span id="properties"></span>
Properties
----------

-   ****[acceleration](index.html#acceleration-prop)**** : StochasticDirection
-   ****[emitRate](index.html#emitRate-prop)**** : real
-   ****[enabled](index.html#enabled-prop)**** : bool
-   ****[endSize](index.html#endSize-prop)**** : real
-   ****[group](index.html#group-prop)**** : string
-   ****[lifeSpan](index.html#lifeSpan-prop)**** : int
-   ****[lifeSpanVariation](index.html#lifeSpanVariation-prop)**** : int
-   ****[maximumEmitted](index.html#maximumEmitted-prop)**** : int
-   ****[shape](index.html#shape-prop)**** : Shape
-   ****[size](index.html#size-prop)**** : real
-   ****[sizeVariation](index.html#sizeVariation-prop)**** : real
-   ****[startTime](index.html#startTime-prop)**** : int
-   ****[system](index.html#system-prop)**** : ParticleSystem
-   ****[velocity](index.html#velocity-prop)**** : StochasticDirection
-   ****[velocityFromMovement](index.html#velocityFromMovement-prop)**** : qreal

<span id="signals"></span>
Signals
-------

-   void ****[emitParticles](index.html#emitParticles-signal)****(Array *particles*)

<span id="methods"></span>
Methods
-------

-   void ****[burst](index.html#burst-method-2)****(int *count*, int *x*, int *y*)
-   void ****[burst](index.html#burst-method)****(int *count*)
-   void ****[pulse](index.html#pulse-method)****(int *duration*)

<span id="details"></span>
Detailed Description
--------------------

This element emits logical particles into the [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html), with the given starting attributes.

Note that logical particles are not automatically rendered, you will need to have one or more [ParticlePainter](../QtQuick.Particles.ParticlePainter/index.html) elements visualizing them.

Note that the given starting attributes can be modified at any point in the particle's lifetime by any Affector element in the same [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html). This includes attributes like lifespan.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="acceleration-prop"></span><span class="name">acceleration</span> : <span class="type">StochasticDirection</span></p></td>
</tr>
</tbody>
</table>

The starting acceleraton of the particles emitted.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emitRate-prop"></span><span class="name">emitRate</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Number of particles emitted per second.

Default value is 10 particles per second.

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

If set to false, the emitter will cease emissions until it is set to true.

Default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="endSize-prop"></span><span class="name">endSize</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The size in pixels of the particles at the end of their life. Size will be linearly interpolated during the life of the particle from this value and size. If endSize is -1, then the size of the particle will remain constant at the starting size.

Default value is -1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="group-prop"></span><span class="name">group</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This is the logical particle group which it will emit into.

Default value is "" (empty string).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lifeSpan-prop"></span><span class="name">lifeSpan</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The time in milliseconds each emitted particle should last for.

If you do not want particles to automatically die after a time, for example if you wish to dispose of them manually, set lifeSpan to Emitter.InfiniteLife.

lifeSpans greater than or equal to 600000 (10 minutes) will be treated as infinite. Particles with lifeSpans less than or equal to 0 will start out dead.

Default value is 1000 (one second).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lifeSpanVariation-prop"></span><span class="name">lifeSpanVariation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Particle lifespans will vary by up to this much in either direction.

Default value is 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumEmitted-prop"></span><span class="name">maximumEmitted</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The maximum number of particles at a time that this emitter will have alive.

This can be set as a performance optimization (when using burst and pulse) or to stagger emissions.

If this is set to a number below zero, then there is no maximum limit on the number of particles this emitter can have alive.

The default value is -1.

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

This shape is applied with the size of the Emitter. Particles will be emitted randomly from any area covered by the shape.

The default shape is a filled in rectangle, which corresponds to the full bounding box of the Emitter.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="size-prop"></span><span class="name">size</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The size in pixels of the particles at the start of their life.

Default value is 16.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sizeVariation-prop"></span><span class="name">sizeVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The size of a particle can vary by this much up or down from size/[endSize](index.html#endSize-prop). The same random addition is made to both size and [endSize](index.html#endSize-prop) for a single particle.

Default value is 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startTime-prop"></span><span class="name">startTime</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

If this value is set when the emitter is loaded, then it will emit particles from the past, up to startTime milliseconds ago. These will simulate as if they were emitted then, but will not have any affectors applied to them. Affectors will take effect from the present time.

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

This is the Particle system that the Emitter will emit into. This can be omitted if the Emitter is a direct child of the [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocity-prop"></span><span class="name">velocity</span> : <span class="type">StochasticDirection</span></p></td>
</tr>
</tbody>
</table>

The starting velocity of the particles emitted.

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
<td><p><span id="emitParticles-signal"></span><span class="type">void</span> <span class="name">emitParticles</span>(<span class="type">Array</span> <em>particles</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when particles are emitted. particles is a JavaScript array of Particle objects. You can modify particle attributes directly within the handler.

Note that JavaScript is slower to execute, so it is not recommended to use this in high-volume particle systems.

The corresponding handler is `onEmitParticles`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="burst-method-2"></span><span class="type">void</span> <span class="name">burst</span>(<span class="type">int</span> <em>count</em>, <span class="type">int</span> <em>x</em>, <span class="type">int</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Emits count particles from this emitter immediately. The particles are emitted as if the Emitter was positioned at x,y but all other properties are the same.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="burst-method"></span><span class="type">void</span> <span class="name">burst</span>(<span class="type">int</span> <em>count</em>)</p></td>
</tr>
</tbody>
</table>

Emits count particles from this emitter immediately.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pulse-method"></span><span class="type">void</span> <span class="name">pulse</span>(<span class="type">int</span> <em>duration</em>)</p></td>
</tr>
</tbody>
</table>

If the emitter is not enabled, enables it for duration milliseconds and then switches it back off.

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
