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

-   Qt Quick Examples - Shader Effects

Qt Quick Examples - Shader Effects
==================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/19372ec8-84b9-4d37-9966-d4a8be22881f-api/apps/qml/sdk-15.04.5/qtquick-shadereffects-example/images/qml-shadereffects-example.png)

This example demonstrates a couple of visual effects that you can perform with shaders in Qt Quick. It applies five different effects on a text and a couple of images. For more information, visit [Important Concepts In Qt Quick - Graphical Effects](../QtQuick.qtquick-effects-topic/index.html)

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="using-shadereffect"></span>
Using ShaderEffect
------------------

The [ShaderEffect](../QtQuick.ShaderEffect/index.html) type typically operates on other types, using a [ShaderEffectSource](../QtQuick.ShaderEffectSource/index.html):

``` qml
ShaderEffectSource {
    id: theSource
    sourceItem: theItem
}
```

In the above snippet, `theItem` is the ID of a complex QML object in the file.

ShaderEffects can use this [ShaderEffectSource](../QtQuick.ShaderEffectSource/index.html) as a texture in their fragment shader:

``` qml
fragmentShader:
    "uniform lowp float qt_Opacity;" +
    "uniform highp float amplitude;" +
    "uniform highp float frequency;" +
    "uniform highp float time;" +
    "uniform sampler2D source;" +
    "varying highp vec2 qt_TexCoord0;" +
    "void main() {" +
    "    highp vec2 p = sin(time + frequency * qt_TexCoord0);" +
    "    gl_FragColor = texture2D(source, qt_TexCoord0 + amplitude * vec2(p.y, -p.x)) * qt_Opacity;" +
    "}"
```

You can use any custom property on the [ShaderEffect](../QtQuick.ShaderEffect/index.html) in your shader. This makes animated shader code very easy:

``` qml
property variant source: theSource
property real bend: 0
property real minimize: 0
property real side: genieSlider.value
SequentialAnimation on bend {
    loops: Animation.Infinite
    NumberAnimation { to: 1; duration: 700; easing.type: Easing.InOutSine }
    PauseAnimation { duration: 1600 }
    NumberAnimation { to: 0; duration: 700; easing.type: Easing.InOutSine }
    PauseAnimation { duration: 1000 }
}
SequentialAnimation on minimize {
    loops: Animation.Infinite
    PauseAnimation { duration: 300 }
    NumberAnimation { to: 1; duration: 700; easing.type: Easing.InOutSine }
    PauseAnimation { duration: 1000 }
    NumberAnimation { to: 0; duration: 700; easing.type: Easing.InOutSine }
    PauseAnimation { duration: 1300 }
}
```

ShaderEffects can also have a custom vertext shader. Setting the mesh property on [ShaderEffect](../QtQuick.ShaderEffect/index.html) provides more vertices for you to manipulate, enabling more effects.

``` qml
mesh: Qt.size(10, 10)
vertexShader: "
    uniform highp mat4 qt_Matrix;
    uniform highp float bend;
    uniform highp float minimize;
    uniform highp float side;
    uniform highp float width;
    uniform highp float height;
    attribute highp vec4 qt_Vertex;
    attribute highp vec2 qt_MultiTexCoord0;
    varying highp vec2 qt_TexCoord0;
    void main() {
        qt_TexCoord0 = qt_MultiTexCoord0;
        highp vec4 pos = qt_Vertex;
        pos.y = mix(qt_Vertex.y, height, minimize);
        highp float t = pos.y / height;
        t = (3. - 2. * t) * t * t;
        pos.x = mix(qt_Vertex.x, side * width, t * bend);
        gl_Position = qt_Matrix * pos;
    }"
```

Files:

-   shadereffects/shadereffects.qml
-   shadereffects/content/Slider.qml
-   shadereffects/main.cpp
-   shadereffects/shadereffects.pro
-   shadereffects/shadereffects.qmlproject
-   shadereffects/shadereffects.qrc

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
