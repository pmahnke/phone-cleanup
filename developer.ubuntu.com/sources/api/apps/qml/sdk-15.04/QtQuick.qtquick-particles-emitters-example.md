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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Particles Examples - Emitters

Qt Quick Particles Examples - Emitters
======================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/5f2a6e34-9d5d-4ce0-b7e4-c29c978e43d3-api/apps/qml/sdk-15.04/qtquick-particles-emitters-example/images/qml-emitters-example.png)

This is a collection of small QML examples relating to using Emitters in the particle system. Each example is a small QML file emphasizing a particular type or feature.

Velocity from motion gives the effect of strong particle motion through primarily moving the emitters:

``` qml
Emitter {
    id: trailsNormal
    system: sys1
    emitRate: 500
    lifeSpan: 2000
    y: mouseArea.pressed ? mouseArea.mouseY : circle.cy
    x: mouseArea.pressed ? mouseArea.mouseX : circle.cx
    velocity: PointDirection {xVariation: 4; yVariation: 4;}
    acceleration: PointDirection {xVariation: 10; yVariation: 10;}
    velocityFromMovement: 8
    size: 8
    sizeVariation: 4
}
```

Burst and pulse calls the burst and pulse methods on two idential emitters.

``` qml
    if (lastWasPulse) {
        burstEmitter.burst(500);
        lastWasPulse = false;
    } else {
        pulseEmitter.pulse(500);
        lastWasPulse = true;
    }
```

Note how burst takes an argument of number of particles to emit, and pulse takes an argument of number of milliseconds to emit for. This gives a slightly different behaviour, which is easy to see in this example.

Custom Emitter connects to the emitParticles signal to set arbitrary values on particle data as they're emitted;

``` qml
onEmitParticles: {
    for (var i=0; i<particles.length; i++) {
        var particle = particles[i];
        particle.startSize = Math.max(02,Math.min(492,Math.tan(particle.t/2)*24));
        var theta = Math.floor(Math.random() * 6.0);
        particle.red = theta == 0 || theta == 1 || theta == 2 ? 0.2 : 1;
        particle.green = theta == 2 || theta == 3 || theta == 4 ? 0.2 : 1;
        particle.blue = theta == 4 || theta == 5 || theta == 0 ? 0.2 : 1;
        theta /= 6.0;
        theta *= 2.0*Math.PI;
        theta += sys.convert(sys.petalRotation);//Convert from degrees to radians
        particle.initialVX = petalLength * Math.cos(theta);
        particle.initialVY = petalLength * Math.sin(theta);
        particle.initialAX = particle.initialVX * -0.5;
        particle.initialAY = particle.initialVY * -0.5;
    }
}
```

This is used to emit curving particles in six rotating spokes.

Emit mask sets an image mask on the Emitter, to emit out of an arbitrary shape.

``` qml
shape: MaskShape {
    source: "../../images/starfish_mask.png"
}
```

Maximum emitted emits no more than a certain number of particles at a time. This example makes it easy to see what happens when the limit is reached.

Shape and Direction emits particles out of an unfilled Ellipse shape, using a [TargetDirection](../QtQuick.Particles.TargetDirection/index.html)

``` qml
shape: EllipseShape {fill: false}
velocity: TargetDirection {
    targetX: root.width/2
    targetY: root.height/2
    proportionalMagnitude: true
    magnitude: 0.5
}
```

This sends the particles towards the center of the ellipse with proportional speed, keeping the ellipse outline as they move to the center.

[TrailEmitter](../QtQuick.Particles.TrailEmitter/index.html) uses that type to add smoke particles to trail the fire particles in the scene.

``` qml
onEmitParticles: {
    for (var i=0; i<particles.length; i++) {
        var particle = particles[i];
        particle.startSize = Math.max(02,Math.min(492,Math.tan(particle.t/2)*24));
        var theta = Math.floor(Math.random() * 6.0);
        particle.red = theta == 0 || theta == 1 || theta == 2 ? 0.2 : 1;
        particle.green = theta == 2 || theta == 3 || theta == 4 ? 0.2 : 1;
        particle.blue = theta == 4 || theta == 5 || theta == 0 ? 0.2 : 1;
        theta /= 6.0;
        theta *= 2.0*Math.PI;
        theta += sys.convert(sys.petalRotation);//Convert from degrees to radians
        particle.initialVX = petalLength * Math.cos(theta);
        particle.initialVY = petalLength * Math.sin(theta);
        particle.initialAX = particle.initialVX * -0.5;
        particle.initialAY = particle.initialVY * -0.5;
    }
}
```

Files:

-   particles/emitters/emitters.qml
-   particles/emitters/content/burstandpulse.qml
-   particles/emitters/content/customemitter.qml
-   particles/emitters/content/emitmask.qml
-   particles/emitters/content/maximumemitted.qml
-   particles/emitters/content/shapeanddirection.qml
-   particles/emitters/content/trailemitter.qml
-   particles/emitters/content/velocityfrommotion.qml
-   particles/emitters/main.cpp
-   particles/emitters/emitters.pro
-   particles/emitters/emitters.qmlproject
-   particles/emitters/emitters.qrc

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
