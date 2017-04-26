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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.5</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Using the Qt Quick Particle System

Using the Qt Quick Particle System
==================================

<span class="subtitle"></span>
<span id="details"></span>
Documentation for all Particle System types can be found on the [QtQuick.Particles](../QtQuick.qtquick-releasenotes/index.html#qtquick-particles) module page.

Note that to use types from the particles module, you will need to import the types with the following line:

``` cpp
import QtQuick.Particles 2.0
```

<span id="the-particlesystem"></span>
The ParticleSystem
------------------

This particle system contains four main types of QML types: [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html), Painters, Emitters and Affectors.

The [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html) type ties all the other types together, and manages the shared timeline. Painters, Emitters and Affectors must all have the same [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html) to be able to interact with each other.

You may have as many ParticleSystems as you want subject to this constraint, so the logical separation is to have one [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html) for all the types that you want to interact, or just one if the number of types is small and they are easily kept under control..

<span id="logical-particles"></span>
Logical Particles
-----------------

All the particle system types act on "logical particles". Every particle has a logical representation inside the particle system, and this is what the types act upon. Not every logical particle needs to be visualized, and some logical particles could lead to multiple visual particles being drawn on screen.

<span id="particle-groups"></span>
Particle Groups
---------------

Every logical particle is a member of a particle group, and each group is identified by a name. If no other group has been specified, a logical particle belongs to the group with the name "" (the empty string), which acts the same as any other group. Groups are used for two purposes, for controlling particles and because they can have stochastic state transitions.

Groups control particles because you can never access an individual particle with any of the particle system types. All types act on groups as a whole, and so any particles that need to behave differently from each other (aside from the usual stochastic parameter variation) will need to be in different groups.

Particles can also change groups dynamically. When this happens the particles trajectory is unaltered, but it can be acted upon by different [ParticlePainters](index.html#particlepainters) or Affectors. Particles can either have their group changed by an Affector, or stochastic state transitions can be defined in a [ParticleGroup](../QtQuick.Particles.ParticleGroup/index.html) type.

Generally, groups should only be defined in a [ParticleGroup](../QtQuick.Particles.ParticleGroup/index.html) if they require stochastic state transitions. Otherwise, it is sufficient to have the groups be defined simply by the strings used in the particle/particles properties of the types.

<span id="emitters"></span>
Emitters
--------

Emitters emit logical particles into the system. These particles have a trajectory and lifespan, but no visualization. These particles are emitted from the location of the Emitter.

TrailEmitters are a special type of emitter which emits particles from the location of other logicial particles. Any logical particle of the followed type within the bounds of a [TrailEmitter](../QtQuick.Particles.TrailEmitter/index.html) will cause particle emission from its location, as if there were an Emitter on it with the same properties as the [TrailEmitter](../QtQuick.Particles.TrailEmitter/index.html).

<span id="particlepainters"></span>
ParticlePainters
----------------

Painters are the types that visualize logical particles. For each logical particle in the groups assigned to it, which are within its bounds (or outside, if you do not set the clip property on the type) it will be visualized in a manner dependent on the type of [ParticlePainter](../QtQuick.Particles.ParticlePainter/index.html). The base type of [ParticlePainter](../QtQuick.Particles.ParticlePainter/index.html) does not draw anything. [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) renders an image at the particle location. [CustomParticle](../QtQuick.Particles.CustomParticle/index.html) allows you to write your own shaders to render the particles, passing in the logical particle state as vertex data. [ItemParticle](../QtQuick.Particles.ItemParticle/index.html) allows you to visualize logical particles using arbitrary QML delegates. ModelParticle is similar, but coordinates model data amongst the delegates in a similar manner to the view classes.

As the [ParticlePainter](../QtQuick.Particles.ParticlePainter/index.html) is the QML type visualizing the particles in the scene, it is its Z value which is important when trying to place particles above or below other types visually.

<span id="affectors"></span>
Affectors
---------

Affectors are an optional component of a particle system. They can perform a variety of manipulations to the simulation, such as altering the trajectory of particles or prematurely ending their life in the simulation. For performance reasons, it is recommended not to use Affectors in high-volume particle systems.

<span id="stochastic-parameters"></span>
Stochastic Parameters
---------------------

As particle systems benefit from stochastic control of parameters across a large number of instances, several stochastic helper types are used by the particle system. If you do not wish to have any stochastic variation in these parameters, then do not specify any variation in these types.

<span id="directions"></span>
### Directions

Directions can be specified by angle and magnitude, or by x and y components. While any direction can be specified with either method, there is a significant difference between varying the x and y components and varying the angle and magnitude. Varying the x and y components will lead to a rectangular area around the specified point, while varying the angle will lead to an arc centered on the specified point.

<span id="shapes"></span>
### Shapes

The particle system contains several types which represent shapes. These types do not visualize shapes, and are used for the purpose of selecting a random point within the shape. If you want a specific point with no randomness, use a 0 width and 0 height shape (which is the default). Otherwise you can use the shape types to specify an area, so that the result can use a random point selected from that area.

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
