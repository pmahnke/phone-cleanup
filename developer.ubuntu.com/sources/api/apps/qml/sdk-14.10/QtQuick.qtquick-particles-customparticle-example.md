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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Particles Examples - CustomParticle

Qt Quick Particles Examples - CustomParticle
============================================

<span class="subtitle"></span>
<span id="details"></span>
This is a collection of examples using [CustomParticle](../QtQuick.Particles.CustomParticle/index.html) in the QML particle system.

![](https://developer.ubuntu.com/static/devportal_uploaded/22607500-b308-417a-b0b0-ca9d216c47bf-api/apps/qml/sdk-14.10/qtquick-particles-customparticle-example/images/qml-customparticle-example.png)

This is a collection of small QML examples relating to using [CustomParticle](../QtQuick.Particles.CustomParticle/index.html) in the particle system. Each example is a small QML file emphasizing a different way to use [CustomParticle](../QtQuick.Particles.CustomParticle/index.html).

Blur Particles adds a blur effect to the particles, which increases over the particle's life time. It uses a custom vertex shader:

``` qml
vertexShader:"
    uniform lowp float qt_Opacity;
    varying lowp float fFade;
    varying lowp float fBlur;
    void main() {
        defaultMain();
        highp float t = (qt_Timestamp - qt_ParticleData.x) / qt_ParticleData.y;
        highp float fadeIn = min(t * 10., 1.);
        highp float fadeOut = 1. - max(0., min((t - 0.75) * 4., 1.));
        fFade = fadeIn * fadeOut * qt_Opacity;
        fBlur = max(0.2 * t, t * qt_ParticleR);
    }
"
```

to propagate life time simulation to a custom fragment shader:

``` qml
fragmentShader: "
    uniform sampler2D source;
    uniform sampler2D blurred;
    varying highp vec2 qt_TexCoord0;
    varying highp float fBlur;
    varying highp float fFade;
    void main() {
        gl_FragColor = mix(texture2D(source, qt_TexCoord0), texture2D(blurred, qt_TexCoord0), min(1.0,fBlur*3.0)) * fFade;
    }"
```

which has access to both the normal image sampler and a blurred sampler, the image plus a [ShaderEffect](../QtQuick.ShaderEffect/index.html).

Fragment Shader just uses the particle system as a vertex delivery system.

``` qml
fragmentShader: "
    varying highp vec2 fPos;
    varying lowp float fFade;
    varying highp vec2 qt_TexCoord0;
    void main() {//*2 because this generates dark colors mostly
        highp vec2 circlePos = qt_TexCoord0*2.0 - vec2(1.0,1.0);
        highp float dist = length(circlePos);
        highp float circleFactor = max(min(1.0 - dist, 1.0), 0.0);
        gl_FragColor = vec4(fPos.x*2.0 - fPos.y, fPos.y*2.0 - fPos.x, fPos.x*fPos.y*2.0, 0.0) * circleFactor * fFade;
    }"
```

Image Colors uses [CustomParticle](../QtQuick.Particles.CustomParticle/index.html) to assign colors to particles based on their location in a picture. The vertex shader,

``` qml
vertexShader:"
    uniform highp float maxWidth;
    uniform highp float maxHeight;
    varying highp vec2 fTex2;
    varying lowp float fFade;
    uniform lowp float qt_Opacity;
    void main() {
        fTex2 = vec2(qt_ParticlePos.x, qt_ParticlePos.y);
        //Uncomment this next line for each particle to use full texture, instead of the solid color at the center of the particle.
        //fTex2 = fTex2 + ((- qt_ParticleData.z / 2. + qt_ParticleData.z) * qt_ParticleTex); //Adjusts size so it's like a chunk of image.
        fTex2 = fTex2 / vec2(maxWidth, maxHeight);
        highp float t = (qt_Timestamp - qt_ParticleData.x) / qt_ParticleData.y;
        fFade = min(t*4., (1.-t*t)*.75) * qt_Opacity;
        defaultMain();
    }
"
```

passes along the starting position for each vertex to the fragment shader,

``` qml
fragmentShader: "
    uniform sampler2D particleTexture;
    uniform sampler2D pictureTexture;
    varying highp vec2 qt_TexCoord0;
    varying highp vec2 fTex2;
    varying lowp float fFade;
    void main() {
        gl_FragColor = texture2D(pictureTexture, fTex2) * texture2D(particleTexture, qt_TexCoord0).w * fFade;
}"
```

which uses it to determine the color for that particle.

Files:

-   particles/customparticle/customparticle.qml
-   particles/customparticle/content/blurparticles.qml
-   particles/customparticle/content/fragmentshader.qml
-   particles/customparticle/content/imagecolors.qml
-   particles/customparticle/main.cpp
-   particles/customparticle/customparticle.pro
-   particles/customparticle/customparticle.qmlproject
-   particles/customparticle/customparticle.qrc

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
