---
Title: QtMultimedia.qtmultimedia-video-qmlvideofx-example
---

# QtMultimedia.qtmultimedia-video-qmlvideofx-example

<span class="subtitle"></span>
<!-- $$$video/qmlvideofx-description -->
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="overview">Overview</h2>
<p><i>QML Video Shader Effects</i> demonstrates how a ShaderEffect can be used to apply postprocessing effects, expressed in GLSL, to QML <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> type.</p>
<p>It also shows how native code can be combined with QML to implement more advanced functionality - in this case, C++ code is used to calculate the QML frame rate. This value is rendered in QML in a semi-transparent item overlaid on the video content.</p>
<p>The following screenshots show shader effects being applied. In each case, the effect is implemented using a fragment shader.</p>
<p>Here we see an edge detection algorithm being applied to a video clip (<a href="http://durian.blender.org/">Sintel from blender.org</a>).</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/60295aa3-b730-4e5f-9ad8-654f62475bcc-../qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-video-edgedetection.jpg" alt="" /></p><p>This image shows a page curl effect, applied to the same video clip.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/38c42bb4-c5e2-4984-80e4-6f4cb8714454-../qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-video-pagecurl.jpg" alt="" /></p><p>Here we see a 'glow' effect (edge detection plus colour quantization) being applied to the camera viewfinder.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/fa5fa663-7adc-4cb6-8f9a-e8bca557191d-../qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-camera-glow.jpg" alt="" /></p><p>This image shows a 'wobble' effect applied to the viewfinder.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/8103f29f-1558-41f3-9502-4182e410ab75-../qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-camera-wobble.jpg" alt="" /></p><p>The application includes many more effects than the ones shown here - look for Effect*.qml files in the list of files below to see the full range.</p>
<h2 id="application-structure">Application structure</h2>
<p>Shader effects can be applied to video or viewfinder content using ShaderEffect, as shown in the following example, which applies a wiggly effect to the content:</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
import <span class="type">QtMultimedia</span> <span class="number">5.0</span>
Rectangle {
width: <span class="number">300</span>
height: <span class="number">300</span>
color: <span class="string">&quot;black&quot;</span>
MediaPlayer {
id: mediaPlayer
source: <span class="string">&quot;test.mp4&quot;</span>
playing: <span class="keyword">true</span>
}
VideoOutput {
id: video
anchors<span class="operator">.</span>fill: parent
source: mediaPlayer
}
ShaderEffect {
property variant source: ShaderEffectSource { sourceItem: video; hideSource: <span class="keyword">true</span> }
property real wiggleAmount: <span class="number">0.005</span>
anchors<span class="operator">.</span>fill: video
fragmentShader: <span class="string">&quot;
varying highp vec2 qt_TexCoord0;
uniform sampler2D source;
uniform highp float wiggleAmount;
void main(void)
{
highp vec2 wiggledTexCoord = qt_TexCoord0;
wiggledTexCoord.s += sin(4.0 * 3.141592653589 * wiggledTexCoord.t) * wiggleAmount;
gl_FragColor = texture2D(source, wiggledTexCoord.st);
}
&quot;</span>
}
}</pre>
<p>In this application, the usage of the ShaderEffect and <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> types is a bit more complicated, for the following reasons:</p>
<ul>
<li>Each effect can be applied to either a <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> or an Image item, so the type of the source item must be abstracted away from the effect implementation</li>
<li>For some effects (such as the edge detection and glow examples shown in the screenshots above), the transformation is applied only to pixels to the left of a dividing line - this allows the effect to be easily compared with the untransformed image on the right</li>
<li>Most effects have one or more parameters which can be modified by the user - these are controlled by sliders in the UI which are connected to uniform values passed into the GLSL code</li>
</ul>
<p>The abstraction of source item type is achieved by the Content, which uses a Loader to create either a MediaPlayer, Camera or Image:</p>
<pre class="qml">import QtQuick 2.1
<span class="type">Rectangle</span> {
...
<span class="type">Loader</span> {
<span class="name">id</span>: <span class="name">contentLoader</span>
}
...
<span class="keyword">function</span> <span class="name">openImage</span>(<span class="name">path</span>) {
<span class="name">stop</span>()
<span class="name">contentLoader</span>.<span class="name">source</span> <span class="operator">=</span> <span class="string">&quot;ContentImage.qml&quot;</span>
<span class="name">contentLoader</span>.<span class="name">item</span>.<span class="name">source</span> <span class="operator">=</span> <span class="name">path</span>
}
<span class="keyword">function</span> <span class="name">openVideo</span>(<span class="name">path</span>) {
<span class="name">stop</span>()
<span class="name">contentLoader</span>.<span class="name">source</span> <span class="operator">=</span> <span class="string">&quot;ContentVideo.qml&quot;</span>
<span class="name">contentLoader</span>.<span class="name">item</span>.<span class="name">mediaSource</span> <span class="operator">=</span> <span class="name">path</span>
}
<span class="keyword">function</span> <span class="name">openCamera</span>() {
<span class="name">stop</span>()
<span class="name">contentLoader</span>.<span class="name">source</span> <span class="operator">=</span> <span class="string">&quot;ContentCamera.qml&quot;</span>
}
}</pre>
<p>Each effect is implemented as a QML item which is based on the Effect, which in turn is based on the ShaderEffect:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">ShaderEffect</span> {
property <span class="type">variant</span> <span class="name">source</span>
property <span class="type">ListModel</span> <span class="name">parameters</span>: <span class="name">ListModel</span> { }
property <span class="type">bool</span> <span class="name">divider</span>: <span class="number">true</span>
property <span class="type">real</span> <span class="name">dividerValue</span>: <span class="number">0.5</span>
property <span class="type">real</span> <span class="name">targetWidth</span>: <span class="number">0</span>
property <span class="type">real</span> <span class="name">targetHeight</span>: <span class="number">0</span>
property <span class="type">string</span> <span class="name">fragmentShaderFilename</span>
property <span class="type">string</span> <span class="name">vertexShaderFilename</span>
<span class="type">QtObject</span> {
<span class="name">id</span>: <span class="name">d</span>
property <span class="type">string</span> <span class="name">fragmentShaderCommon</span>: <span class="string">&quot;
#ifdef GL_ES
precision mediump float;
#else
#   define lowp
#   define mediump
#   define highp
#endif // GL_ES
&quot;</span>
}
<span class="comment">// The following is a workaround for the fact that ShaderEffect</span>
<span class="comment">// doesn't provide a way for shader programs to be read from a file,</span>
<span class="comment">// rather than being inline in the QML file</span>
<span class="name">onFragmentShaderFilenameChanged</span>:
<span class="name">fragmentShader</span> <span class="operator">=</span> <span class="name">d</span>.<span class="name">fragmentShaderCommon</span> <span class="operator">+</span> <span class="name">fileReader</span>.<span class="name">readFile</span>(<span class="string">&quot;:shaders/&quot;</span> <span class="operator">+</span> <span class="name">fragmentShaderFilename</span>)
<span class="name">onVertexShaderFilenameChanged</span>:
<span class="name">vertexShader</span> <span class="operator">=</span> <span class="name">fileReader</span>.<span class="name">readFile</span>(<span class="name">vertexShaderFilename</span>)
}</pre>
<p>The interface of Effect allows for derived effects to specify the number of parameters which they support (and therefore the number of sliders which should be displayed), and whether a vertical dividing line should be drawn between transformed and untransformed image regions. As an example, here is the implementation of the pixelation effect. As you can see, the pixelation effect supports one parameter (which controls the pixelation granularity), and states that the divider should be displayed.</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Effect</span> {
<span class="name">parameters</span>: <span class="name">ListModel</span> {
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Granularity&quot;</span>
<span class="name">value</span>: <span class="number">0.5</span>
}
}
<span class="comment">// Transform slider values, and bind result to shader uniforms</span>
property <span class="type">real</span> <span class="name">granularity</span>: <span class="name">parameters</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">value</span> <span class="operator">*</span> <span class="number">20</span>
<span class="name">fragmentShaderFilename</span>: <span class="string">&quot;pixelate.fsh&quot;</span>
}</pre>
<p>The main.qml file shows a FileOpen, which allows the user to select the input source and an EffectSelectionPanel item, which lists each of the available shader effects. As described above, a Content item is used to load the appropriate input and effect type. A Divider item draws the vertical dividing line, which can be dragged left / right by the user. Finally, a ParameterPanel item renders the sliders corresponding to each effect parameter.</p>
<p>Here is the effect selection menu:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/0facc1e3-b7d2-4611-a07d-3ccc61096b05-../qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-effects-menu.jpg" alt="" /></p>
<h2 id="calculating-and-displaying-qml-painting-rate">Calculating and displaying QML painting rate</h2>
<p>The QML painting rate is calculated by the FrequencyMonitor class, which turns a stream of events (received via the notify() slot), into an instantaneous and an averaged frequency:</p>
<pre class="qml"><span class="keyword">class</span> FrequencyMonitor : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">qreal</span> instantaneousFrequency READ instantaneousFrequency NOTIFY instantaneousFrequencyChanged)
Q_PROPERTY(<span class="type">qreal</span> averageFrequency READ averageFrequency NOTIFY averageFrequencyChanged)
<span class="keyword">public</span>:
...
<span class="keyword">static</span> <span class="type">void</span> qmlRegisterType();
<span class="keyword">public</span> <span class="keyword">slots</span>:
Q_INVOKABLE <span class="type">void</span> notify();
};</pre>
<p>The FrequencyMonitor class is exposed to QML like this</p>
<pre class="qml"><span class="type">void</span> FrequencyMonitor<span class="operator">::</span>qmlRegisterType()
{
<span class="operator">::</span>qmlRegisterType<span class="operator">&lt;</span>FrequencyMonitor<span class="operator">&gt;</span>(<span class="string">&quot;FrequencyMonitor&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;FrequencyMonitor&quot;</span>);
}</pre>
<p>and its data is displayed by defining a QML item called FrequencyItem, like this:</p>
<pre class="qml">import FrequencyMonitor 1.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">root</span>
...
<span class="keyword">function</span> <span class="name">notify</span>() {
<span class="name">monitor</span>.<span class="name">notify</span>()
}
<span class="type">FrequencyMonitor</span> {
<span class="name">id</span>: <span class="name">monitor</span>
<span class="name">onAverageFrequencyChanged</span>: {
<span class="name">averageFrequencyText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">monitor</span>.<span class="name">averageFrequency</span>.<span class="name">toFixed</span>(<span class="number">2</span>)
}
}
<span class="type">Text</span> {
<span class="name">id</span>: <span class="name">labelText</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">margins</span>: <span class="number">10</span>
}
<span class="name">color</span>: <span class="name">root</span>.<span class="name">textColor</span>
<span class="name">font</span>.pixelSize: <span class="number">0.6</span> <span class="operator">*</span> <span class="name">root</span>.<span class="name">textSize</span>
<span class="name">text</span>: <span class="name">root</span>.<span class="name">label</span>
<span class="name">width</span>: <span class="name">root</span>.<span class="name">width</span> <span class="operator">-</span> <span class="number">2</span><span class="operator">*</span><span class="name">anchors</span>.<span class="name">margins</span>
<span class="name">elide</span>: <span class="name">Text</span>.<span class="name">ElideRight</span>
}
<span class="type">Text</span> {
<span class="name">id</span>: <span class="name">averageFrequencyText</span>
<span class="type">anchors</span> {
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
<span class="name">margins</span>: <span class="number">10</span>
}
<span class="name">color</span>: <span class="name">root</span>.<span class="name">textColor</span>
<span class="name">font</span>.pixelSize: <span class="name">root</span>.<span class="name">textSize</span>
}
}</pre>
<p>The result looks like this:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/016ea051-6d2d-4b31-88a4-16e574de0ece-../qtmultimedia-video-qmlvideofx-example/images/video-qml-paint-rate.png" alt="" /></p><p>All that remains is to connect the afterRendering() signal of the QQuickView object to a JavaScript function, which will eventually call frequencyItem.notify():</p>
<pre class="qml"><span class="preprocessor">#include &lt;QtGui/QGuiApplication&gt;</span>
<span class="preprocessor">#include &lt;QtQuick/QQuickItem&gt;</span>
<span class="preprocessor">#include &lt;QtQuick/QQuickView&gt;</span>
<span class="preprocessor">#include &quot;filereader.h&quot;</span>
<span class="preprocessor">#include &quot;trace.h&quot;</span>
<span class="preprocessor">#ifdef PERFORMANCEMONITOR_SUPPORT</span>
<span class="preprocessor">#include &quot;performancemonitordeclarative.h&quot;</span>
<span class="preprocessor">#endif</span>
<span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>)
{
<span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
...
<span class="type">QQuickItem</span> <span class="operator">*</span>rootObject <span class="operator">=</span> viewer<span class="operator">.</span>rootObject();
...
<span class="type">QObject</span><span class="operator">::</span>connect(<span class="operator">&amp;</span>viewer<span class="operator">,</span> SIGNAL(afterRendering())<span class="operator">,</span>
rootObject<span class="operator">,</span> SLOT(qmlFramePainted()));</pre>
<p>Files:</p>
<ul>
<li>video/qmlvideofx/filereader.cpp</li>
<li>video/qmlvideofx/filereader.h</li>
<li>video/qmlvideofx/qmlvideofx.svg</li>
<li>video/qmlvideofx/trace.h</li>
<li>video/qmlvideofx/android/AndroidManifest.xml</li>
<li>video/qmlvideofx/qml/qmlvideofx/Button.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/Content.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/ContentImage.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/ContentVideo.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/Curtain.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/Divider.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/Effect.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectBillboard.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectBlackAndWhite.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectEmboss.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectGaussianBlur.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectGlow.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectIsolate.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectMagnify.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectPageCurl.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectPassThrough.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectPixelate.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectPosterize.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectRipple.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectSelectionList.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectSepia.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectSharpen.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectShockwave.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectSobelEdgeDetection1.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectTiltShift.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectToon.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectVignette.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectWarhol.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/EffectWobble.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/FileBrowser.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/FileOpen.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/HintedMouseArea.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/Main.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/ParameterPanel.qml</li>
<li>video/qmlvideofx/qml/qmlvideofx/Slider.qml</li>
<li>video/qmlvideofx/qmlapplicationviewer/qmlapplicationviewer.cpp</li>
<li>video/qmlvideofx/qmlapplicationviewer/qmlapplicationviewer.h</li>
<li>video/qmlvideofx/main.cpp</li>
<li>video/qmlvideofx/qmlvideofx.pro</li>
<li>video/qmlvideofx/qmlvideofx.qrc</li>
</ul>
<p>Images:</p>
<ul>
<li>video/qmlvideofx/images/Dropdown_arrows.png</li>
<li>video/qmlvideofx/images/Slider_bar.png</li>
<li>video/qmlvideofx/images/Slider_handle.png</li>
<li>video/qmlvideofx/images/Triangle_Top.png</li>
<li>video/qmlvideofx/images/Triangle_bottom.png</li>
<li>video/qmlvideofx/images/icon_BackArrow.png</li>
<li>video/qmlvideofx/images/icon_Folder.png</li>
<li>video/qmlvideofx/images/icon_Menu.png</li>
<li>video/qmlvideofx/images/qt-logo.png</li>
</ul>
<!-- @@@video/qmlvideofx -->
