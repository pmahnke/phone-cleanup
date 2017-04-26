---
Title: QtQuick.qtquick-shadereffects-example
---

# QtQuick.qtquick-shadereffects-example

<span class="subtitle"></span>
<!-- $$$shadereffects-description -->
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/19372ec8-84b9-4d37-9966-d4a8be22881f-../qtquick-shadereffects-example/images/qml-shadereffects-example.png" alt="" /></p><p>This example demonstrates a couple of visual effects that you can perform with shaders in Qt Quick. It applies five different effects on a text and a couple of images. For more information, visit <a href="QtQuick.qtquick-effects-topic.md">Important Concepts In Qt Quick - Graphical Effects</a></p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="using-shadereffect">Using ShaderEffect</h2>
<p>The <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> type typically operates on other types, using a <a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a></span> {
<span class="name">id</span>: <span class="name">theSource</span>
<span class="name">sourceItem</span>: <span class="name">theItem</span>
}</pre>
<p>In the above snippet, <code>theItem</code> is the ID of a complex QML object in the file.</p>
<p>ShaderEffects can use this <a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a> as a texture in their fragment shader:</p>
<pre class="qml"><span class="name">fragmentShader</span>:
<span class="string">&quot;uniform lowp float qt_Opacity;&quot;</span> <span class="operator">+</span>
<span class="string">&quot;uniform highp float amplitude;&quot;</span> <span class="operator">+</span>
<span class="string">&quot;uniform highp float frequency;&quot;</span> <span class="operator">+</span>
<span class="string">&quot;uniform highp float time;&quot;</span> <span class="operator">+</span>
<span class="string">&quot;uniform sampler2D source;&quot;</span> <span class="operator">+</span>
<span class="string">&quot;varying highp vec2 qt_TexCoord0;&quot;</span> <span class="operator">+</span>
<span class="string">&quot;void main() {&quot;</span> <span class="operator">+</span>
<span class="string">&quot;    highp vec2 p = sin(time + frequency * qt_TexCoord0);&quot;</span> <span class="operator">+</span>
<span class="string">&quot;    gl_FragColor = texture2D(source, qt_TexCoord0 + amplitude * vec2(p.y, -p.x)) * qt_Opacity;&quot;</span> <span class="operator">+</span>
<span class="string">&quot;}&quot;</span></pre>
<p>You can use any custom property on the <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> in your shader. This makes animated shader code very easy:</p>
<pre class="qml">property <span class="type">variant</span> <span class="name">source</span>: <span class="name">theSource</span>
property <span class="type">real</span> <span class="name">bend</span>: <span class="number">0</span>
property <span class="type">real</span> <span class="name">minimize</span>: <span class="number">0</span>
property <span class="type">real</span> <span class="name">side</span>: <span class="name">genieSlider</span>.<span class="name">value</span>
SequentialAnimation on <span class="name">bend</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">to</span>: <span class="number">1</span>; <span class="name">duration</span>: <span class="number">700</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> { <span class="name">duration</span>: <span class="number">1600</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">700</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
}
SequentialAnimation on <span class="name">minimize</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> { <span class="name">duration</span>: <span class="number">300</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">to</span>: <span class="number">1</span>; <span class="name">duration</span>: <span class="number">700</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">700</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> { <span class="name">duration</span>: <span class="number">1300</span> }
}</pre>
<p>ShaderEffects can also have a custom vertext shader. Setting the mesh property on <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> provides more vertices for you to manipulate, enabling more effects.</p>
<pre class="qml"><span class="name">mesh</span>: <span class="name">Qt</span>.<span class="name">size</span>(<span class="number">10</span>, <span class="number">10</span>)
<span class="name">vertexShader</span>: <span class="string">&quot;
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
}&quot;</span></pre>
<p>Files:</p>
<ul>
<li>shadereffects/shadereffects.qml</li>
<li>shadereffects/content/Slider.qml</li>
<li>shadereffects/main.cpp</li>
<li>shadereffects/shadereffects.pro</li>
<li>shadereffects/shadereffects.qmlproject</li>
<li>shadereffects/shadereffects.qrc</li>
</ul>
<!-- @@@shadereffects -->
