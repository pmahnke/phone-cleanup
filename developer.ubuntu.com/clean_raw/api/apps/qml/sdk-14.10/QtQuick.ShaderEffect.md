---
Title: QtQuick.ShaderEffect
---

# QtQuick.ShaderEffect

<span class="subtitle"></span>
<!-- $$$ShaderEffect-brief -->
<p>Applies custom shaders to a rectangle More...</p>
<!-- @@@ShaderEffect -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#blending-prop">blending</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#cullMode-prop">cullMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#fragmentShader-prop">fragmentShader</a></b></b> : string</li>
<li class="fn"><b><b><a href="#log-prop">log</a></b></b> : string</li>
<li class="fn"><b><b><a href="#mesh-prop">mesh</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#vertexShader-prop">vertexShader</a></b></b> : string</li>
</ul>
<!-- $$$ShaderEffect-description -->
<h2>Detailed Description</h2>
<p>The ShaderEffect type applies a custom OpenGL <a href="#vertexShader-prop">vertex</a> and <a href="#fragmentShader-prop">fragment</a> shader to a rectangle. It allows you to write effects such as drop shadow, blur, colorize and page curl directly in QML.</p>
<p>There are two types of input to the <a href="#vertexShader-prop">vertexShader</a>: uniform variables and attributes. Some are predefined:</p>
<ul>
<li>uniform mat4 qt_Matrix - combined transformation matrix, the product of the matrices from the root item to this ShaderEffect, and an orthogonal projection.</li>
<li>uniform float qt_Opacity - combined opacity, the product of the opacities from the root item to this ShaderEffect.</li>
<li>attribute vec4 qt_Vertex - vertex position, the top-left vertex has position (0, 0), the bottom-right (<a href="QtQuick.Item.md#width-prop">width</a>, <a href="QtQuick.Item.md#height-prop">height</a>).</li>
<li>attribute vec2 qt_MultiTexCoord0 - texture coordinate, the top-left coordinate is (0, 0), the bottom-right (1, 1).</li>
</ul>
<p>In addition, any property that can be mapped to an OpenGL Shading Language (GLSL) type is available as a uniform variable. The following list shows how properties are mapped to GLSL uniform variables:</p>
<ul>
<li>bool, int, qreal -&gt; bool, int, float - If the type in the shader is not the same as in QML, the value is converted automatically.</li>
<li>QColor -&gt; vec4 - When colors are passed to the shader, they are first premultiplied. Thus Qt.rgba(0.2, 0.6, 1.0, 0.5) becomes vec4(0.1, 0.3, 0.5, 0.5) in the shader, for example.</li>
<li>QRect, QRectF -&gt; vec4 - Qt.rect(x, y, w, h) becomes vec4(x, y, w, h) in the shader.</li>
<li>QPoint, QPointF, QSize, QSizeF -&gt; vec2</li>
<li>QVector3D -&gt; vec3</li>
<li>QVector4D -&gt; vec4</li>
<li>QTransform -&gt; mat3</li>
<li>QMatrix4x4 -&gt; mat4</li>
<li>QQuaternion -&gt; vec4, scalar value is <tt>w</tt>.</li>
<li><a href="QtQuick.Image.md">Image</a>, <a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a> -&gt; sampler2D - Origin is in the top-left corner, and the color values are premultiplied.</li>
</ul>
<p>The QML scene graph back-end may choose to allocate textures in texture atlases. If a texture allocated in an atlas is passed to a ShaderEffect, it is by default copied from the texture atlas into a stand-alone texture so that the texture coordinates span from 0 to 1, and you get the expected wrap modes. However, this will increase the memory usage. To avoid the texture copy, you can for each &quot;uniform sampler2D &lt;name&gt;&quot; declare a &quot;uniform vec4 qt_SubRect_&lt;name&gt;&quot; which will be assigned the texture's normalized source rectangle. For stand-alone textures, the source rectangle is [0, 1]x[0, 1]. For textures in an atlas, the source rectangle corresponds to the part of the texture atlas where the texture is stored. The correct way to calculate the texture coordinate for a texture called &quot;source&quot; within a texture atlas is &quot;qt_SubRect_source.xy + qt_SubRect_source.zw * qt_MultiTexCoord0&quot;.</p>
<p>The output from the <a href="#fragmentShader-prop">fragmentShader</a> should be premultiplied. If <a href="#blending-prop">blending</a> is enabled, source-over blending is used. However, additive blending can be achieved by outputting zero in the alpha channel.</p>
<table class="generic">
<tr valign="top"><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/0f6a0dbc-5453-4d92-8726-fab0ff164c0c-../QtQuick.ShaderEffect/images/declarative-shadereffectitem.png" alt="" /></p></td><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">id</span>: <span class="name">img</span>; <span class="type">sourceSize</span> { <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> } <span class="name">source</span>: <span class="string">&quot;qt-logo.png&quot;</span> }
<span class="type">ShaderEffect</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
property <span class="type">variant</span> <span class="name">src</span>: <span class="name">img</span>
<span class="name">vertexShader</span>: <span class="string">&quot;
uniform highp mat4 qt_Matrix;
attribute highp vec4 qt_Vertex;
attribute highp vec2 qt_MultiTexCoord0;
varying highp vec2 coord;
void main() {
coord = qt_MultiTexCoord0;
gl_Position = qt_Matrix * qt_Vertex;
}&quot;</span>
<span class="name">fragmentShader</span>: <span class="string">&quot;
varying highp vec2 coord;
uniform sampler2D src;
uniform lowp float qt_Opacity;
void main() {
lowp vec4 tex = texture2D(src, coord);
gl_FragColor = vec4(vec3(dot(tex.rgb, vec3(0.344, 0.5, 0.156))), tex.a) * qt_Opacity;
}&quot;</span>
}
}
}</pre>
</td></tr>
</table>
<p>By default, the ShaderEffect consists of four vertices, one for each corner. For non-linear vertex transformations, like page curl, you can specify a fine grid of vertices by specifying a <a href="#mesh-prop">mesh</a> resolution.</p>
<p><b>Note: </b>Scene Graph textures have origin in the top-left corner rather than bottom-left which is common in OpenGL.</p><!-- @@@ShaderEffect -->
<h2>Property Documentation</h2>
<!-- $$$blending -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">blending</span> : <span class="type">bool</span></p></td></tr></table><p>If this property is true, the output from the <a href="#fragmentShader-prop">fragmentShader</a> is blended with the background using source-over blend mode. If false, the background is disregarded. Blending decreases the performance, so you should set this property to false when blending is not needed. The default value is true.</p>
<!-- @@@blending -->
<br/>
<!-- $$$cullMode -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">cullMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines which sides of the item should be visible.</p>
<ul>
<li><a href="index.html">ShaderEffect</a>.NoCulling - Both sides are visible</li>
<li><a href="index.html">ShaderEffect</a>.BackFaceCulling - only front side is visible</li>
<li><a href="index.html">ShaderEffect</a>.FrontFaceCulling - only back side is visible</li>
</ul>
<p>The default is NoCulling.</p>
<!-- @@@cullMode -->
<br/>
<!-- $$$fragmentShader -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">fragmentShader</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the fragment shader's GLSL source code. The default shader passes the texture coordinate along to the fragment shader as &quot;varying highp vec2 qt_TexCoord0&quot;.</p>
<!-- @@@fragmentShader -->
<br/>
<!-- $$$log -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">log</span> : <span class="type">string</span></p></td></tr></table><p>This property holds a log of warnings and errors from the latest attempt at compiling and linking the OpenGL shader program. It is updated at the same time <a href="#status-prop">status</a> is set to Compiled or Error.</p>
<p><b>See also </b><a href="#status-prop">status</a>.</p>
<!-- @@@log -->
<br/>
<!-- $$$mesh -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">mesh</span> : <span class="type">variant</span></p></td></tr></table><p>This property defines the mesh used to draw the <a href="index.html">ShaderEffect</a>. It can hold any <a href="QtQuick.GridMesh.md">GridMesh</a> object. If a size value is assigned to this property, the <a href="index.html">ShaderEffect</a> implicitly uses a <a href="QtQuick.GridMesh.md">GridMesh</a> with the value as <a href="QtQuick.GridMesh.md#resolution-prop">mesh resolution</a>. By default, this property is the size 1x1.</p>
<p><b>See also </b><a href="QtQuick.GridMesh.md">GridMesh</a>.</p>
<!-- @@@mesh -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property tells the current status of the OpenGL shader program.</p>
<ul>
<li><a href="index.html">ShaderEffect</a>.Compiled - the shader program was successfully compiled and linked.</li>
<li><a href="index.html">ShaderEffect</a>.Uncompiled - the shader program has not yet been compiled.</li>
<li><a href="index.html">ShaderEffect</a>.Error - the shader program failed to compile or link.</li>
</ul>
<p>When setting the fragment or vertex shader source code, the status will become Uncompiled. The first time the <a href="index.html">ShaderEffect</a> is rendered with new shader source code, the shaders are compiled and linked, and the status is updated to Compiled or Error.</p>
<p><b>See also </b><a href="#log-prop">log</a>.</p>
<!-- @@@status -->
<br/>
<!-- $$$vertexShader -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">vertexShader</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the vertex shader's GLSL source code. The default shader expects the texture coordinate to be passed from the vertex shader as &quot;varying highp vec2 qt_TexCoord0&quot;, and it samples from a sampler2D named &quot;source&quot;.</p>
<!-- @@@vertexShader -->
<br/>
