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

-   Particle

Particle
========

<span class="subtitle"></span>
Represents particles manipulated by emitters and affectors More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import QtQuick.Particles 2.0 |

<span id="properties"></span>
Properties
----------

-   ****[alpha](index.html#alpha-prop)**** : real
-   ****[autoRotate](index.html#autoRotate-prop)**** : bool
-   ****[ax](index.html#ax-prop)**** : real
-   ****[ay](index.html#ay-prop)**** : real
-   ****[blue](index.html#blue-prop)**** : real
-   ****[currentSize](index.html#currentSize-prop)**** : real
-   ****[endSize](index.html#endSize-prop)**** : real
-   ****[green](index.html#green-prop)**** : real
-   ****[initialAX](index.html#initialAX-prop)**** : real
-   ****[initialAY](index.html#initialAY-prop)**** : real
-   ****[initialVX](index.html#initialVX-prop)**** : real
-   ****[initialVY](index.html#initialVY-prop)**** : real
-   ****[initialX](index.html#initialX-prop)**** : real
-   ****[initialY](index.html#initialY-prop)**** : real
-   ****[lifeLeft](index.html#lifeLeft-prop)**** : real
-   ****[lifeSpan](index.html#lifeSpan-prop)**** : real
-   ****[red](index.html#red-prop)**** : real
-   ****[rotation](index.html#rotation-prop)**** : real
-   ****[rotationVelocity](index.html#rotationVelocity-prop)**** : real
-   ****[startSize](index.html#startSize-prop)**** : real
-   ****[t](index.html#t-prop)**** : real
-   ****[update](index.html#update-prop)**** : bool
-   ****[vx](index.html#vx-prop)**** : real
-   ****[vy](index.html#vy-prop)**** : real
-   ****[x](index.html#x-prop)**** : real
-   ****[xDeformationVectorX](index.html#xDeformationVectorX-prop)**** : real
-   ****[xDeformationVectorY](index.html#xDeformationVectorY-prop)**** : real
-   ****[y](index.html#y-prop)**** : real
-   ****[yDeformationVectorX](index.html#yDeformationVectorX-prop)**** : real
-   ****[yDeformationVectorY](index.html#yDeformationVectorY-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

Particle elements are always managed internally by the [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html) and cannot be created in QML. However, sometimes they are exposed via signals so as to allow arbitrary changes to the particle state

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alpha-prop"></span><span class="name">alpha</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

[ImageParticle](../QtQuick.Particles.ImageParticle/index.html) can draw colorized particles. When it does so, alpha is used as the alpha channel of the color applied to the source image.

Values are from 0.0 to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoRotate-prop"></span><span class="name">autoRotate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If autoRotate is true, then the particle's rotation will be set so that it faces the direction of travel, plus any rotation from the rotation or [rotationVelocity](index.html#rotationVelocity-prop) properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ax-prop"></span><span class="name">ax</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current x acceleration of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ay-prop"></span><span class="name">ay</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current y acceleration of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="blue-prop"></span><span class="name">blue</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

[ImageParticle](../QtQuick.Particles.ImageParticle/index.html) can draw colorized particles. When it does so, blue is used as the blue channel of the color applied to the source image.

Values are from 0.0 to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentSize-prop"></span><span class="name">currentSize</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The currentSize of the particle, interpolating between [startSize](index.html#startSize-prop) and [endSize](index.html#endSize-prop) based on the currentTime.

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

The size in pixels that the particle image is at the end of its life. If this value is less than 0, then it is disregarded and the particle will have its [startSize](index.html#startSize-prop) for the entire lifetime.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="green-prop"></span><span class="name">green</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

[ImageParticle](../QtQuick.Particles.ImageParticle/index.html) can draw colorized particles. When it does so, green is used as the green channel of the color applied to the source image.

Values are from 0.0 to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialAX-prop"></span><span class="name">initialAX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The x acceleration of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialAY-prop"></span><span class="name">initialAY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The y acceleration of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialVX-prop"></span><span class="name">initialVX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The x velocity of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialVY-prop"></span><span class="name">initialVY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The y velocity of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialX-prop"></span><span class="name">initialX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The x coordinate of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialY-prop"></span><span class="name">initialY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The y coordinate of the particle at the beginning of its lifetime.

The method of simulation prefers to have the initial values changed, rather than determining and changing the value at a given time. Change initial values in CustomEmitters instead of the current values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lifeLeft-prop"></span><span class="name">lifeLeft</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The time in seconds that the particle has left to live at the current point in time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lifeSpan-prop"></span><span class="name">lifeSpan</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The time in seconds that the particle will live for.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="red-prop"></span><span class="name">red</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

[ImageParticle](../QtQuick.Particles.ImageParticle/index.html) can draw colorized particles. When it does so, red is used as the red channel of the color applied to the source image.

Values are from 0.0 to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotation-prop"></span><span class="name">rotation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Degrees clockwise that the particle image is rotated at the beginning of its life.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotationVelocity-prop"></span><span class="name">rotationVelocity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Degrees clockwise per second that the particle image is rotated at while alive.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startSize-prop"></span><span class="name">startSize</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The size in pixels that the particle image is at the start of its life.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="t-prop"></span><span class="name">t</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The time, in seconds since the beginning of the simulation, that the particle was born.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="update-prop"></span><span class="name">update</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Inside an Affector, the changes made to the particle will only be applied if update is set to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="vx-prop"></span><span class="name">vx</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current x velocity of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="vy-prop"></span><span class="name">vy</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current y velocity of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current x coordinate of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="xDeformationVectorX-prop"></span><span class="name">xDeformationVectorX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The x component of the deformation vector along the X axis. [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="xDeformationVectorY-prop"></span><span class="name">xDeformationVectorY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The x component of the deformation vector along the X axis. [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current y coordinate of the particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="yDeformationVectorX-prop"></span><span class="name">yDeformationVectorX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The y component of the deformation vector along the X axis. [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="yDeformationVectorY-prop"></span><span class="name">yDeformationVectorY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The y component of the deformation vector along the Y axis. [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) can draw particles across non-square shapes. It will draw the texture rectangle across the parallelogram drawn with the x and y deformation vectors.

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
