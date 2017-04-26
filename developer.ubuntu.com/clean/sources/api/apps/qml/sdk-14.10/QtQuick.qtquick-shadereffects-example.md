---
Title: QtQuick.qtquick-shadereffects-example
---
        
Qt Quick Examples - Shader Effects
==================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/d66a38eb-a0d2-4227-8f34-3647ce963cb5-api/apps/qml/sdk-14.10/qtquick-shadereffects-example/images/qml-shadereffects-example.png)

This is a shader effects example

This example demonstrates a couple of visual effects that you can perform with shaders in [Qt Quick](../QtQuick.qtquick-index.md).

ShaderEffects typically operate on other types, using a [ShaderEffectSource](../QtQuick.ShaderEffectSource.md)

``` qml
ShaderEffectSource {
    id: theSource
    sourceItem: theItem
}
```

In the above snippet, theItem is the id of a complex QML object in the file.

ShaderEffects can use this [ShaderEffectSource](../QtQuick.ShaderEffectSource.md) as a texture in their fragment shader.

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

You can use any custom property on the [ShaderEffect](../QtQuick.ShaderEffect.md) in your shader. This makes animated shader code very easy.

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

ShaderEffects can also have a custom vertext shader. Setting the mesh property on [ShaderEffect](../QtQuick.ShaderEffect.md) provides more vertices for you to manipulate, enabling many effects.

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

