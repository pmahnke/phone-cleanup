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

-   CustomParticle

CustomParticle
==============

<span class="subtitle"></span>
For specifying shaders to paint particles More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import QtQuick.Particles 2.0</code></td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../QtQuick.Particles.ParticlePainter/index.html">ParticlePainter</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[fragmentShader](index.html#fragmentShader-prop)**** : string
-   ****[vertexShader](index.html#vertexShader-prop)**** : string

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
<td><p><span id="fragmentShader-prop"></span><span class="name">fragmentShader</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the fragment shader's GLSL source code. The default shader expects the texture coordinate to be passed from the vertex shader as "varying highp vec2 qt\_TexCoord0", and it samples from a sampler2D named "source".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="vertexShader-prop"></span><span class="name">vertexShader</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the vertex shader's GLSL source code.

The default shader passes the texture coordinate along to the fragment shader as "varying highp vec2 qt\_TexCoord0".

To aid writing a particle vertex shader, the following GLSL code is prepended to your vertex shader:

``` cpp
attribute highp vec2 qt_ParticlePos;
attribute highp vec2 qt_ParticleTex;
attribute highp vec4 qt_ParticleData; //  x = time,  y = lifeSpan, z = size,  w = endSize
attribute highp vec4 qt_ParticleVec; // x,y = constant velocity,  z,w = acceleration
attribute highp float qt_ParticleR;
uniform highp mat4 qt_Matrix;
uniform highp float qt_Timestamp;
varying highp vec2 qt_TexCoord0;
void defaultMain() {
    qt_TexCoord0 = qt_ParticleTex;
    highp float size = qt_ParticleData.z;
    highp float endSize = qt_ParticleData.w;
    highp float t = (qt_Timestamp - qt_ParticleData.x) / qt_ParticleData.y;
    highp float currentSize = mix(size, endSize, t * t);
    if (t < 0. || t > 1.)
        currentSize = 0.;
    highp vec2 pos = qt_ParticlePos
                   - currentSize / 2. + currentSize * qt_ParticleTex   // adjust size
                   + qt_ParticleVec.xy * t * qt_ParticleData.y         // apply velocity vector..
                   + 0.5 * qt_ParticleVec.zw * pow(t * qt_ParticleData.y, 2.);
    gl_Position = qt_Matrix * vec4(pos.x, pos.y, 0, 1);
}
```

defaultMain() is the same code as in the default shader, you can call this for basic particle functions and then add additional variables for custom effects. Note that the vertex shader for particles is responsible for simulating the movement of particles over time, the particle data itself only has the starting position and spawn time.

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
