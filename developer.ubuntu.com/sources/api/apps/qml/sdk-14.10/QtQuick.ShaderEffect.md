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
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   ShaderEffect

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
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[blending](index.html#blending-prop)**** : bool
-   ****[cullMode](index.html#cullMode-prop)**** : enumeration
-   ****[fragmentShader](index.html#fragmentShader-prop)**** : string
-   ****[log](index.html#log-prop)**** : string
-   ****[mesh](index.html#mesh-prop)**** : variant
-   ****[status](index.html#status-prop)**** : enumeration
-   ****[vertexShader](index.html#vertexShader-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The ShaderEffect type applies a custom OpenGL [vertex](index.html#vertexShader-prop) and [fragment](index.html#fragmentShader-prop) shader to a rectangle. It allows you to write effects such as drop shadow, blur, colorize and page curl directly in QML.

There are two types of input to the [vertexShader](index.html#vertexShader-prop): uniform variables and attributes. Some are predefined:

-   uniform mat4 qt\_Matrix - combined transformation matrix, the product of the matrices from the root item to this ShaderEffect, and an orthogonal projection.
-   uniform float qt\_Opacity - combined opacity, the product of the opacities from the root item to this ShaderEffect.
-   attribute vec4 qt\_Vertex - vertex position, the top-left vertex has position (0, 0), the bottom-right ([width](../QtQuick.Item/index.html#width-prop), [height](../QtQuick.Item/index.html#height-prop)).
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
-   [Image](../QtQuick.Image/index.html), [ShaderEffectSource](../QtQuick.ShaderEffectSource/index.html) -&gt; sampler2D - Origin is in the top-left corner, and the color values are premultiplied.

The QML scene graph back-end may choose to allocate textures in texture atlases. If a texture allocated in an atlas is passed to a ShaderEffect, it is by default copied from the texture atlas into a stand-alone texture so that the texture coordinates span from 0 to 1, and you get the expected wrap modes. However, this will increase the memory usage. To avoid the texture copy, you can for each "uniform sampler2D &lt;name&gt;" declare a "uniform vec4 qt\_SubRect\_&lt;name&gt;" which will be assigned the texture's normalized source rectangle. For stand-alone textures, the source rectangle is \[0, 1\]x\[0, 1\]. For textures in an atlas, the source rectangle corresponds to the part of the texture atlas where the texture is stored. The correct way to calculate the texture coordinate for a texture called "source" within a texture atlas is "qt\_SubRect\_source.xy + qt\_SubRect\_source.zw \* qt\_MultiTexCoord0".

The output from the [fragmentShader](index.html#fragmentShader-prop) should be premultiplied. If [blending](index.html#blending-prop) is enabled, source-over blending is used. However, additive blending can be achieved by outputting zero in the alpha channel.

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

By default, the ShaderEffect consists of four vertices, one for each corner. For non-linear vertex transformations, like page curl, you can specify a fine grid of vertices by specifying a [mesh](index.html#mesh-prop) resolution.

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

If this property is true, the output from the [fragmentShader](index.html#fragmentShader-prop) is blended with the background using source-over blend mode. If false, the background is disregarded. Blending decreases the performance, so you should set this property to false when blending is not needed. The default value is true.

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

This property holds a log of warnings and errors from the latest attempt at compiling and linking the OpenGL shader program. It is updated at the same time [status](index.html#status-prop) is set to Compiled or Error.

**See also** [status](index.html#status-prop).

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

This property defines the mesh used to draw the [ShaderEffect](index.html). It can hold any [GridMesh](../QtQuick.GridMesh/index.html) object. If a size value is assigned to this property, the [ShaderEffect](index.html) implicitly uses a [GridMesh](../QtQuick.GridMesh/index.html) with the value as [mesh resolution](../QtQuick.GridMesh/index.html#resolution-prop). By default, this property is the size 1x1.

**See also** [GridMesh](../QtQuick.GridMesh/index.html).

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

**See also** [log](index.html#log-prop).

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
