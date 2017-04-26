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

-   Qt Quick Particles Examples - Image Particles

Qt Quick Particles Examples - Image Particles
=============================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/ad728099-66ed-49ef-b7f5-2033f4e62cec-api/apps/qml/sdk-15.04.5/qtquick-particles-imageparticle-example/images/qml-imageparticle-example.png)

This is a collection of small QML examples relating to using Affectors in the particle system. Each example is a small QML file emphasizing a particular type or feature.

All at once shows off several of the features of [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) at the same time.

``` qml
sprites: [
    Sprite {
        name: "bear"
        source: "../../images/bear_tiles.png"
        frameCount: 13
        frameDuration: 120
    }
]
colorVariation: 0.5
rotationVelocityVariation: 360
colorTable: "../../images/colortable.png"
```

Colored shows a simple [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) with some color variation.

``` qml
ImageParticle {
    anchors.fill: parent
    source: "qrc:///particleresources/star.png"
    alpha: 0
    alphaVariation: 0.2
    colorVariation: 1.0
}
```

Color Table sets the color over life on the particles to provide a fixed rainbow effect.

``` qml
source: "qrc:///particleresources/glowdot.png"
colorTable: "../../images/colortable.png"
sizeTable: "../../images/colortable.png"
```

Deformation spins and squishes a starfish particle.

``` qml
ImageParticle {
    system: sys
    groups: ["goingLeft", "goingRight"]
    source: "../../images/starfish_4.png"
    rotation: 90
    rotationVelocity: 90
    autoRotation: true
}
ImageParticle {
    system: sys
    groups: ["goingDown"]
    source: "../../images/starfish_0.png"
    rotation: 180
    yVector: PointDirection { y: 0.5; yVariation: 0.25; xVariation: 0.25; }
}
```

Rotation demonstrates the autoRotate property, so that particles rotate in the direction that they travel.

Sharing demonstrates what happens when multiple ImageParticles try to render the same particle. The following [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) renders the particles inside the [ListView](../QtQuick.ListView/index.html):

``` qml
ImageParticle {
    anchors.fill: parent
    system: particles
    source: "../../images/flower.png"
    alpha: 0.1
    color: "white"
    rotationVariation: 180
    z: -1
}
```

The following [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) is placed inside the list highlight, and renders the particles above the other [ImageParticle](../QtQuick.Particles.ImageParticle/index.html).

``` qml
ImageParticle {
    anchors.fill: parent
    system: particles
    source: "../../images/flower.png"
    color: "red"
    clip: true
    alpha: 1.0
}
```

Note that because it sets the color and alpha in this [ImageParticle](../QtQuick.Particles.ImageParticle/index.html), it renders the particles in a different color. Since it doesn't specify anything about the rotation, it shares the rotation with the other [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) so that the flowers are rotated the same way in both. Note that you can undo rotation in another [ImageParticle](../QtQuick.Particles.ImageParticle/index.html), you just need to explicitly set rotationVariation to 0.

Sprites demonstrates using an image particle to render animated sprites instead of static images for each particle.

Files:

-   particles/imageparticle/imageparticle.qml
-   particles/imageparticle/content/allatonce.qml
-   particles/imageparticle/content/colored.qml
-   particles/imageparticle/content/colortable.qml
-   particles/imageparticle/content/deformation.qml
-   particles/imageparticle/content/rotation.qml
-   particles/imageparticle/content/sharing.qml
-   particles/imageparticle/content/sprites.qml
-   particles/imageparticle/main.cpp
-   particles/imageparticle/imageparticle.pro
-   particles/imageparticle/imageparticle.qmlproject
-   particles/imageparticle/imageparticle.qrc

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
