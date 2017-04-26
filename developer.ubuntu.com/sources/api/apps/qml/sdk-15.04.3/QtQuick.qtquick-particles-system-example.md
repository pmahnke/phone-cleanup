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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.3</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Particles Examples - System

Qt Quick Particles Examples - System
====================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/f336f78e-c382-4cde-a523-174cb7123828-api/apps/qml/sdk-15.04.3/qtquick-particles-system-example/images/qml-system-example.png)

This is a collection of small QML examples relating to using Affectors in the particle system. Each example is a small QML file emphasizing a particular type or feature.

Dynamic comparison compares using the particle system to getting a similar effect with the following code that dynamically instantiates Image types.

``` qml
Item {
    id: fakeEmitter
    function burst(number) {
        while (number > 0) {
            var item = fakeParticle.createObject(root);
            item.lifeSpan = Math.random() * 5000 + 5000;
            item.x = Math.random() * (root.width/2) + (root.width/2);
            item.y = 0;
            number--;
        }
    }
    Component {
        id: fakeParticle
        Image {
            id: container
            property int lifeSpan: 10000
            width: 32
            height: 32
            source: "qrc:///particleresources/glowdot.png"
            y: 0
            PropertyAnimation on y {from: -16; to: root.height-16; duration: container.lifeSpan; running: true}
            SequentialAnimation on opacity {
                running: true
                NumberAnimation { from:0; to: 1; duration: 500}
                PauseAnimation { duration: container.lifeSpan - 1000}
                NumberAnimation { from:1; to: 0; duration: 500}
                ScriptAction { script: container.destroy(); }
            }
        }
    }
}
```

Note how the Image objects are not able to be randomly colorized.

Start and Stop simply sets the running and paused states of a [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html). While the system does not perform any simulation when stopped or paused, a restart restarts the simulation from the beginning, while unpausing resumes the simulation from where it was.

Timed group changes is an example that highlights the [ParticleGroup](../QtQuick.Particles.ParticleGroup/index.html) type. While normally referring to groups with a string name is sufficient, additional effects can be done by setting properties on groups. The first group has a variable duration on it, but always transitions to the second group.

``` qml
ParticleGroup {
    name: "fire"
    duration: 2000
    durationVariation: 2000
    to: {"splode":1}
}
```

The second group has a [TrailEmitter](../QtQuick.Particles.TrailEmitter/index.html) on it, and a fixed duration for emitting into the third group. By placing the [TrailEmitter](../QtQuick.Particles.TrailEmitter/index.html) as a direct child of the [ParticleGroup](../QtQuick.Particles.ParticleGroup/index.html), it automatically selects that group to follow.

``` qml
ParticleGroup {
    name: "splode"
    duration: 400
    to: {"dead":1}
    TrailEmitter {
        group: "works"
        emitRatePerParticle: 100
        lifeSpan: 1000
        maximumEmitted: 1200
        size: 8
        velocity: AngleDirection {angle: 270; angleVariation: 45; magnitude: 20; magnitudeVariation: 20;}
        acceleration: PointDirection {y:100; yVariation: 20}
    }
}
```

The third group has an Affector as a direct child, which makes the affector automatically target this group. The affector means that as soon as particles enter this group, a burst function can be called on another emitter, using the x,y positions of this particle.

``` qml
ParticleGroup {
    name: "dead"
    duration: 1000
    Affector {
        once: true
        onAffected: worksEmitter.burst(400,x,y)
    }
}
```

If [TrailEmitter](../QtQuick.Particles.TrailEmitter/index.html) does not suit your needs for multiple emitters, you can also dynamically create Emitters while still using the same [ParticleSystem](../QtQuick.Particles.ParticleSystem/index.html) and image particle

``` qml
for (var i=0; i<8; i++) {
    var obj = emitterComp.createObject(root);
    obj.x = x
    obj.y = y
    obj.targetX = Math.random() * 240 - 120 + obj.x
    obj.targetY = Math.random() * 240 - 120 + obj.y
    obj.life = Math.round(Math.random() * 2400) + 200
    obj.emitRate = Math.round(Math.random() * 32) + 32
    obj.go();
}
```

Note that this effect, a flurry of flying rainbow spears, would be better served with [TrailEmitter](../QtQuick.Particles.TrailEmitter/index.html). It is only done with dynamic emitters in this example to show the concept more simply.

Multiple Painters shows how to control paint ordering of individual particles. While the paint ordering of particles within one ImagePainter is not strictly defined, [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) objects follow the normal Z-ordering rules for [Qt Quick](../QtQuick.qtquick-index/index.html) items. This example allow you to paint the inside of the particles above the black borders using a pair of ImageParticles each painting different parts of the same logical particle.

Files:

-   particles/system/system.qml
-   particles/system/content/dynamiccomparison.qml
-   particles/system/content/dynamicemitters.qml
-   particles/system/content/multiplepainters.qml
-   particles/system/content/startstop.qml
-   particles/system/content/timedgroupchanges.qml
-   particles/system/main.cpp
-   particles/system/system.pro
-   particles/system/system.qmlproject
-   particles/system/system.qrc

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
