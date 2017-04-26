---
Title: QtQuick.ShaderEffect
---
        
ShaderEffect
============

<span class="subtitle"></span>
Applies custom shaders to a rectangle More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import QtQuick 2.2</code></td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[blending](#blending-prop)**** : bool
-   ****[cullMode](#cullMode-prop)**** : enumeration
-   ****[fragmentShader](#fragmentShader-prop)**** : string
-   ****[log](#log-prop)**** : string
-   ****[mesh](#mesh-prop)**** : variant
-   ****[status](#status-prop)**** : enumeration
-   ****[vertexShader](#vertexShader-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The ShaderEffect type applies a custom OpenGL [vertex](#vertexShader-prop) and [fragment](#fragmentShader-prop) shader to a rectangle. It allows you to write effects such as drop shadow, blur, colorize and page curl directly in QML.

There are two types of input to the [vertexShader](#vertexShader-prop): uniform variables and attributes. Some are predefined:

-   uniform mat4 qt\_Matrix - combined transformation matrix, the product of the matrices from the root item to this ShaderEffect, and an orthogonal projection.
-   uniform float qt\_Opacity - combined opacity, the product of the opacities from the root item to this ShaderEffect.
-   attribute vec4 qt\_Vertex - vertex position, the top-left vertex has position (0, 0), the bottom-right ([width](../QtQuick.Item.md#width-prop), [height](../QtQuick.Item.md#height-prop)).
-   attribute vec2 qt\_MultiTexCoord0 - texture coordinate, the top-left coordinate is (0, 0), the bottom-right (1, 1).

In addition, any property that can be mapped to an OpenGL Shading Language (GLSL) type is available as a uniform variable. The following list shows how properties are mapped to GLSL uniform variables:

-   bool, int, qreal -&gt; bool, int, float - If the type in the shader is not the same as in QML, the value is converted automatically.
-   QColor -&gt; vec4 - When colors are passed to the shader, they are first premultiplied. Thus Qt.rgba(0.2, 0.6, 1.0, 0.5) becomes vec4(0.1, 0.3, 0.5, 0.5) in the shader, for example.
-   QRect, QRectF -&gt; vec4 - Qt.rect(x, y, w, h) becomes vec4(x, y, w, h) in the shader.
-   QPoint, QPointF, QSize, QSizeF -&gt; vec2
-   QVector3D -&gt; vec3
-   QVector4D -&gt; vec4
-   QTransform -&gt; mat3
-   QMatrix4x4 -&gt; mat4
-   QQuaternion -&gt; vec4, scalar value is `w`.
-   [Image](../QtQuick.Image.md), [ShaderEffectSource](../QtQuick.ShaderEffectSource.md) -&gt; sampler2D - Origin is in the top-left corner, and the color values are premultiplied.

The QML scene graph back-end may choose to allocate textures in texture atlases. If a texture allocated in an atlas is passed to a ShaderEffect, it is by default copied from the texture atlas into a stand-alone texture so that the texture coordinates span from 0 to 1, and you get the expected wrap modes. However, this will increase the memory usage. To avoid the texture copy, you can for each "uniform sampler2D &lt;name&gt;" declare a "uniform vec4 qt\_SubRect\_&lt;name&gt;" which will be assigned the texture's normalized source rectangle. For stand-alone textures, the source rectangle is \[0, 1\]x\[0, 1\]. For textures in an atlas, the source rectangle corresponds to the part of the texture atlas where the texture is stored. The correct way to calculate the texture coordinate for a texture called "source" within a texture atlas is "qt\_SubRect\_source.xy + qt\_SubRect\_source.zw \* qt\_MultiTexCoord0".

The output from the [fragmentShader](#fragmentShader-prop) should be premultiplied. If [blending](#blending-prop) is enabled, source-over blending is used. However, additive blending can be achieved by outputting zero in the alpha channel.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/0f6a0dbc-5453-4d92-8726-fab0ff164c0c-api/apps/qml/sdk-14.10/QtQuick.ShaderEffect/images/declarative-shadereffectitem.png" /></p></td>
<td><pre class="qml"><code>import QtQuick 2.0
Rectangle {
    width: 200; height: 100
    Row {
        Image { id: img; sourceSize { width: 100; height: 100 } source: &quot;qt-logo.png&quot; }
        ShaderEffect {
            width: 100; height: 100
            property variant src: img
            vertexShader: &quot;
                uniform highp mat4 qt_Matrix;
                attribute highp vec4 qt_Vertex;
                attribute highp vec2 qt_MultiTexCoord0;
                varying highp vec2 coord;
                void main() {
                    coord = qt_MultiTexCoord0;
                    gl_Position = qt_Matrix * qt_Vertex;
                }&quot;
            fragmentShader: &quot;
                varying highp vec2 coord;
                uniform sampler2D src;
                uniform lowp float qt_Opacity;
                void main() {
                    lowp vec4 tex = texture2D(src, coord);
                    gl_FragColor = vec4(vec3(dot(tex.rgb, vec3(0.344, 0.5, 0.156))), tex.a) * qt_Opacity;
                }&quot;
        }
    }
}</code></pre></td>
</tr>
</tbody>
</table>

By default, the ShaderEffect consists of four vertices, one for each corner. For non-linear vertex transformations, like page curl, you can specify a fine grid of vertices by specifying a [mesh](#mesh-prop) resolution.

**Note:** Scene Graph textures have origin in the top-left corner rather than bottom-left which is common in OpenGL.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="blending-prop"></span><span class="name">blending</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If this property is true, the output from the [fragmentShader](#fragmentShader-prop) is blended with the background using source-over blend mode. If false, the background is disregarded. Blending decreases the performance, so you should set this property to false when blending is not needed. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cullMode-prop"></span><span class="name">cullMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines which sides of the item should be visible.

-   [ShaderEffect](index.html).NoCulling - Both sides are visible
-   [ShaderEffect](index.html).BackFaceCulling - only front side is visible
-   [ShaderEffect](index.html).FrontFaceCulling - only back side is visible

The default is NoCulling.

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

This property holds the fragment shader's GLSL source code. The default shader passes the texture coordinate along to the fragment shader as "varying highp vec2 qt\_TexCoord0".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="log-prop"></span><span class="name">log</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds a log of warnings and errors from the latest attempt at compiling and linking the OpenGL shader program. It is updated at the same time [status](#status-prop) is set to Compiled or Error.

**See also** [status](#status-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mesh-prop"></span><span class="name">mesh</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property defines the mesh used to draw the [ShaderEffect](index.html). It can hold any [GridMesh](../QtQuick.GridMesh.md) object. If a size value is assigned to this property, the [ShaderEffect](index.html) implicitly uses a [GridMesh](../QtQuick.GridMesh.md) with the value as [mesh resolution](../QtQuick.GridMesh.md#resolution-prop). By default, this property is the size 1x1.

**See also** [GridMesh](../QtQuick.GridMesh.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property tells the current status of the OpenGL shader program.

-   [ShaderEffect](index.html).Compiled - the shader program was successfully compiled and linked.
-   [ShaderEffect](index.html).Uncompiled - the shader program has not yet been compiled.
-   [ShaderEffect](index.html).Error - the shader program failed to compile or link.

When setting the fragment or vertex shader source code, the status will become Uncompiled. The first time the [ShaderEffect](index.html) is rendered with new shader source code, the shaders are compiled and linked, and the status is updated to Compiled or Error.

**See also** [log](#log-prop).

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

This property holds the vertex shader's GLSL source code. The default shader expects the texture coordinate to be passed from the vertex shader as "varying highp vec2 qt\_TexCoord0", and it samples from a sampler2D named "source".

