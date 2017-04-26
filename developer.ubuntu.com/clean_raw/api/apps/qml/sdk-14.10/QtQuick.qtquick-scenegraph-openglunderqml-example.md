---
Title: QtQuick.qtquick-scenegraph-openglunderqml-example
---

# QtQuick.qtquick-scenegraph-openglunderqml-example

<span class="subtitle"></span>
<!-- $$$scenegraph/openglunderqml-description -->
<p>Shows how to render OpenGL under a Qt Quick scene.<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/0940f9d0-17f9-40ad-a717-8f4dd92dbff9-../qtquick-scenegraph-openglunderqml-example/images/openglunderqml-example.jpg" alt="" /></p><p>The OpenGL under QML example shows how an application can make use of the QQuickWindow::beforeRendering() signal to draw custom OpenGL content under a Qt Quick scene. This signal is emitted at the start of every frame, before the scene graph starts its rendering, thus any OpenGL draw calls that are made as a response to this signal, will stack under the Qt Quick items.</p>
<p>As an alternative, applications that wish to render OpenGL content on top of the Qt Quick scene, can do so by connecting to the QQuickWindow::afterRendering() signal.</p>
<p>In this example, we will also see how it is possible to have values that are exposed to QML which affect the OpenGL rendering. We animate the threshold value using a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> in the QML file and this value is used by the OpenGL shader program that draws the squircles.</p>
<pre class="cpp"><span class="keyword">class</span> Squircle : <span class="keyword">public</span> <span class="type">QQuickItem</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">qreal</span> t READ t WRITE setT NOTIFY tChanged)
<span class="keyword">public</span>:
Squircle();
<span class="type">qreal</span> t() <span class="keyword">const</span> { <span class="keyword">return</span> m_t; }
<span class="type">void</span> setT(<span class="type">qreal</span> t);
<span class="keyword">signals</span>:
<span class="type">void</span> tChanged();
<span class="keyword">public</span> <span class="keyword">slots</span>:
<span class="type">void</span> paint();
<span class="type">void</span> cleanup();
<span class="type">void</span> sync();
<span class="keyword">private</span> <span class="keyword">slots</span>:
<span class="type">void</span> handleWindowChanged(<span class="type">QQuickWindow</span> <span class="operator">*</span>win);
<span class="keyword">private</span>:
<span class="type">QOpenGLShaderProgram</span> <span class="operator">*</span>m_program;
<span class="type">qreal</span> m_t;
<span class="type">qreal</span> m_thread_t;
};</pre>
<p>First of all, we need a QObject with a slot to connect the signals to. We subclass QQuickItem in order to use the QQuickItem::window() which holds the window instance we want to connect to.</p>
<p>We use two values of <tt>t</tt>. The variable <tt>m_t</tt> is the property value as it exists in the GUI thread. The <tt>m_thread_t</tt> value is a copy of <tt>m_t</tt> for use in the rendering thread. We need an explicit copy because the scene graph can render in one thread while updating properties on the GUI thread in preparation for the next frame. If we had used only one value, the animation could have updated the value to that of the next frame before we got a chance to render it.</p>
<p><b>Note: </b>In this example, a wrong value for <tt>t</tt> will have minimal consequences, but we emphasize that rendering and GUI thread objects and values must stay separate to avoid race conditions, undesired behavior and in the worst case, crashes.</p><p>Lets move on to the implementation.</p>
<pre class="cpp">Squircle<span class="operator">::</span>Squircle()
: m_program(<span class="number">0</span>)
<span class="operator">,</span> m_t(<span class="number">0</span>)
<span class="operator">,</span> m_thread_t(<span class="number">0</span>)
{
connect(<span class="keyword">this</span><span class="operator">,</span> SIGNAL(windowChanged(<span class="type">QQuickWindow</span><span class="operator">*</span>))<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(handleWindowChanged(<span class="type">QQuickWindow</span><span class="operator">*</span>)));
}</pre>
<p>The constructor of the <tt>Squircle</tt> class simply initializes the values. The shader program will be initialized during rendering later.</p>
<pre class="cpp"><span class="type">void</span> Squircle<span class="operator">::</span>setT(<span class="type">qreal</span> t)
{
<span class="keyword">if</span> (t <span class="operator">=</span><span class="operator">=</span> m_t)
<span class="keyword">return</span>;
m_t <span class="operator">=</span> t;
<span class="keyword">emit</span> tChanged();
<span class="keyword">if</span> (window())
window()<span class="operator">-</span><span class="operator">&gt;</span>update();
}</pre>
<p>The property setter checks that the value has indeed changed before updating its internal variable. It then calls QQuickWindow::update() which will trigger another frame to be rendered. Note that the setter might be called during initialization, before the object has been entered into the scene and before it has a window.</p>
<pre class="cpp"><span class="type">void</span> Squircle<span class="operator">::</span>handleWindowChanged(<span class="type">QQuickWindow</span> <span class="operator">*</span>win)
{
<span class="keyword">if</span> (win) {
connect(win<span class="operator">,</span> SIGNAL(beforeRendering())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(paint())<span class="operator">,</span> <span class="type">Qt</span><span class="operator">::</span>DirectConnection);
connect(win<span class="operator">,</span> SIGNAL(beforeSynchronizing())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(sync())<span class="operator">,</span> <span class="type">Qt</span><span class="operator">::</span>DirectConnection);</pre>
<p>For our paint function to be called, we need to connect to the window's signals. When Squircle object is populated into the scene, the windowChanged signal is emitted. In our handler, we connect QQuickWindow::beforeRendering() to <tt>paint()</tt> to do the rendering, and QQuickWindow::beforeSynchronizing() to <tt>sync()</tt> to copy the state of the <tt>t</tt> property for the upcoming frame.</p>
<p><b>Note: </b>Since the Squircle object has affinity to the GUI thread and the signals are emitted from the rendering thread, it is crucial that the connections are made with Qt::DirectConnection. Failing to do so, will result in that the slots are invoked on the wrong thread with no OpenGL context present.</p><pre class="cpp">        win<span class="operator">-</span><span class="operator">&gt;</span>setClearBeforeRendering(<span class="keyword">false</span>);
}
}</pre>
<p>The default behavior of the scene graph is to clear the framebuffer before rendering. Since we render before the scene graph, we need to turn this clearing off. This means that we need to clear ourselves in the <tt>paint()</tt> function.</p>
<pre class="cpp"><span class="type">void</span> Squircle<span class="operator">::</span>paint()
{
<span class="keyword">if</span> (<span class="operator">!</span>m_program) {
m_program <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QOpenGLShaderProgram</span>();
m_program<span class="operator">-</span><span class="operator">&gt;</span>addShaderFromSourceCode(<span class="type">QOpenGLShader</span><span class="operator">::</span>Vertex<span class="operator">,</span>
<span class="string">&quot;attribute highp vec4 vertices;&quot;</span>
<span class="string">&quot;varying highp vec2 coords;&quot;</span>
<span class="string">&quot;void main() {&quot;</span>
<span class="string">&quot;    gl_Position = vertices;&quot;</span>
<span class="string">&quot;    coords = vertices.xy;&quot;</span>
<span class="string">&quot;}&quot;</span>);
m_program<span class="operator">-</span><span class="operator">&gt;</span>addShaderFromSourceCode(<span class="type">QOpenGLShader</span><span class="operator">::</span>Fragment<span class="operator">,</span>
<span class="string">&quot;uniform lowp float t;&quot;</span>
<span class="string">&quot;varying highp vec2 coords;&quot;</span>
<span class="string">&quot;void main() {&quot;</span>
<span class="string">&quot;    lowp float i = 1. - (pow(abs(coords.x), 4.) + pow(abs(coords.y), 4.));&quot;</span>
<span class="string">&quot;    i = smoothstep(t - 0.8, t + 0.8, i);&quot;</span>
<span class="string">&quot;    i = floor(i * 20.) / 20.;&quot;</span>
<span class="string">&quot;    gl_FragColor = vec4(coords * .5 + .5, i, i);&quot;</span>
<span class="string">&quot;}&quot;</span>);
m_program<span class="operator">-</span><span class="operator">&gt;</span>bindAttributeLocation(<span class="string">&quot;vertices&quot;</span><span class="operator">,</span> <span class="number">0</span>);
m_program<span class="operator">-</span><span class="operator">&gt;</span>link();
connect(window()<span class="operator">-</span><span class="operator">&gt;</span>openglContext()<span class="operator">,</span> SIGNAL(aboutToBeDestroyed())<span class="operator">,</span>
<span class="keyword">this</span><span class="operator">,</span> SLOT(cleanup())<span class="operator">,</span> <span class="type">Qt</span><span class="operator">::</span>DirectConnection);
}</pre>
<p>The first thing we do in the <tt>paint()</tt> function is to initialize the shader program. By initializing the shader program here, we make sure that the OpenGL context is bound and that we are on the correct thread.</p>
<p>We also connect to the QOpenGLContext::aboutToBeDestroyed() signal, so that we can clean up the shader program when the context is destroyed. Again, this is a Qt::DirectConnection as all rendering related operations must happen on the rendering thread.</p>
<pre class="cpp">    m_program<span class="operator">-</span><span class="operator">&gt;</span>bind();
m_program<span class="operator">-</span><span class="operator">&gt;</span>enableAttributeArray(<span class="number">0</span>);
<span class="type">float</span> values<span class="operator">[</span><span class="operator">]</span> <span class="operator">=</span> {
<span class="operator">-</span><span class="number">1</span><span class="operator">,</span> <span class="operator">-</span><span class="number">1</span><span class="operator">,</span>
<span class="number">1</span><span class="operator">,</span> <span class="operator">-</span><span class="number">1</span><span class="operator">,</span>
<span class="operator">-</span><span class="number">1</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span>
<span class="number">1</span><span class="operator">,</span> <span class="number">1</span>
};
m_program<span class="operator">-</span><span class="operator">&gt;</span>setAttributeArray(<span class="number">0</span><span class="operator">,</span> GL_FLOAT<span class="operator">,</span> values<span class="operator">,</span> <span class="number">2</span>);
m_program<span class="operator">-</span><span class="operator">&gt;</span>setUniformValue(<span class="string">&quot;t&quot;</span><span class="operator">,</span> (<span class="type">float</span>) m_thread_t);
<span class="type">qreal</span> ratio <span class="operator">=</span> window()<span class="operator">-</span><span class="operator">&gt;</span>devicePixelRatio();
<span class="type">int</span> w <span class="operator">=</span> <span class="type">int</span>(ratio <span class="operator">*</span> window()<span class="operator">-</span><span class="operator">&gt;</span>width());
<span class="type">int</span> h <span class="operator">=</span> <span class="type">int</span>(ratio <span class="operator">*</span> window()<span class="operator">-</span><span class="operator">&gt;</span>height());
glViewport(<span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> w<span class="operator">,</span> h);
glDisable(GL_DEPTH_TEST);
glClearColor(<span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">1</span>);
glClear(GL_COLOR_BUFFER_BIT);
glEnable(GL_BLEND);
glBlendFunc(GL_SRC_ALPHA<span class="operator">,</span> GL_ONE);
glDrawArrays(GL_TRIANGLE_STRIP<span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">4</span>);
m_program<span class="operator">-</span><span class="operator">&gt;</span>disableAttributeArray(<span class="number">0</span>);
m_program<span class="operator">-</span><span class="operator">&gt;</span>release();
}</pre>
<p>We use the shader program to draw the squircle. At the end of the <tt>paint</tt> function we release the program and disable the attributes we used so that the OpenGL context is in a &quot;clean&quot; state for the scene graph to pick it up.</p>
<pre class="cpp"><span class="type">void</span> Squircle<span class="operator">::</span>cleanup()
{
<span class="keyword">if</span> (m_program) {
<span class="keyword">delete</span> m_program;
m_program <span class="operator">=</span> <span class="number">0</span>;
}
}</pre>
<p>In the <tt>cleanup()</tt> function we delete the program.</p>
<pre class="cpp"><span class="type">void</span> Squircle<span class="operator">::</span>sync()
{
m_thread_t <span class="operator">=</span> m_t;
}</pre>
<p>We use the <tt>sync()</tt> function to copy the state of the object in the GUI thread into the rendering thread.</p>
<p>The signal is emitted on the rendering thread while the GUI thread is blocked, so it is safe to simply copy the value without any additional protection.</p>
<pre class="cpp"><span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span><span class="operator">*</span>argv)
{
<span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
qmlRegisterType<span class="operator">&lt;</span>Squircle<span class="operator">&gt;</span>(<span class="string">&quot;OpenGLUnderQML&quot;</span><span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;Squircle&quot;</span>);
<span class="type">QQuickView</span> view;
view<span class="operator">.</span>setResizeMode(<span class="type">QQuickView</span><span class="operator">::</span>SizeRootObjectToView);
view<span class="operator">.</span>setSource(<span class="type">QUrl</span>(<span class="string">&quot;qrc:///scenegraph/openglunderqml/main.qml&quot;</span>));
view<span class="operator">.</span>show();
<span class="keyword">return</span> app<span class="operator">.</span>exec();
}</pre>
<p>The application's <tt>main()</tt> function instantiates a QQuickView and launches the <tt>main.qml</tt> file. The only thing worth noting is that we export the <tt>Squircle</tt> class to QML using the qmlRegisterType() macro.</p>
<pre class="qml">import QtQuick 2.0
import OpenGLUnderQML 1.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">320</span>
<span class="name">height</span>: <span class="number">480</span>
<span class="type">Squircle</span> {
SequentialAnimation on <span class="name">t</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">to</span>: <span class="number">1</span>; <span class="name">duration</span>: <span class="number">2500</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InQuad</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">2500</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutQuad</span> }
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="name">running</span>: <span class="number">true</span>
}
}</pre>
<p>We import the Squircle QML type with the name we registered in the <tt>main()</tt> function. We then instantiate it and create a running <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> on its <tt>t</tt> property.</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">1</span>, <span class="number">1</span>, <span class="number">1</span>, <span class="number">0.7</span>)
<span class="name">radius</span>: <span class="number">10</span>
<span class="name">border</span>.width: <span class="number">1</span>
<span class="name">border</span>.color: <span class="string">&quot;white&quot;</span>
<span class="name">anchors</span>.fill: <span class="name">label</span>
<span class="name">anchors</span>.margins: -<span class="number">10</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">label</span>
<span class="name">color</span>: <span class="string">&quot;black&quot;</span>
<span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">WordWrap</span>
<span class="name">text</span>: <span class="string">&quot;The background here is a squircle rendered with raw OpenGL using the 'beforeRender()' signal in QQuickWindow. This text label and its border is rendered using QML&quot;</span>
<span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
<span class="name">anchors</span>.margins: <span class="number">20</span>
}
}</pre>
<p>Then we overlay a short descriptive text, so that it is clearly visible that we are in fact rendering OpenGL under our Qt Quick scene.</p>
<p>Files:</p>
<ul>
<li>scenegraph/openglunderqml/main.qml</li>
<li>scenegraph/openglunderqml/squircle.cpp</li>
<li>scenegraph/openglunderqml/squircle.h</li>
<li>scenegraph/openglunderqml/main.cpp</li>
<li>scenegraph/openglunderqml/openglunderqml.pro</li>
<li>scenegraph/openglunderqml/openglunderqml.qrc</li>
</ul>
<!-- @@@scenegraph/openglunderqml -->
