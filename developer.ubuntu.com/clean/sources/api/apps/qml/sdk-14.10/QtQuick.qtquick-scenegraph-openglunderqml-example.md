---
Title: QtQuick.qtquick-scenegraph-openglunderqml-example
---
        
Scene Graph - OpenGL Under QML
==============================

<span class="subtitle"></span>
<span id="details"></span>
Shows how to render OpenGL under a Qt Quick scene.

![](https://developer.ubuntu.com/static/devportal_uploaded/0940f9d0-17f9-40ad-a717-8f4dd92dbff9-api/apps/qml/sdk-14.10/qtquick-scenegraph-openglunderqml-example/images/openglunderqml-example.jpg)

The OpenGL under QML example shows how an application can make use of the QQuickWindow::beforeRendering() signal to draw custom OpenGL content under a Qt Quick scene. This signal is emitted at the start of every frame, before the scene graph starts its rendering, thus any OpenGL draw calls that are made as a response to this signal, will stack under the Qt Quick items.

As an alternative, applications that wish to render OpenGL content on top of the Qt Quick scene, can do so by connecting to the QQuickWindow::afterRendering() signal.

In this example, we will also see how it is possible to have values that are exposed to QML which affect the OpenGL rendering. We animate the threshold value using a [NumberAnimation](../QtQuick.NumberAnimation.md) in the QML file and this value is used by the OpenGL shader program that draws the squircles.

``` cpp
class Squircle : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(qreal t READ t WRITE setT NOTIFY tChanged)
public:
    Squircle();
    qreal t() const { return m_t; }
    void setT(qreal t);
signals:
    void tChanged();
public slots:
    void paint();
    void cleanup();
    void sync();
private slots:
    void handleWindowChanged(QQuickWindow *win);
private:
    QOpenGLShaderProgram *m_program;
    qreal m_t;
    qreal m_thread_t;
};
```

First of all, we need a QObject with a slot to connect the signals to. We subclass QQuickItem in order to use the QQuickItem::window() which holds the window instance we want to connect to.

We use two values of `t`. The variable `m_t` is the property value as it exists in the GUI thread. The `m_thread_t` value is a copy of `m_t` for use in the rendering thread. We need an explicit copy because the scene graph can render in one thread while updating properties on the GUI thread in preparation for the next frame. If we had used only one value, the animation could have updated the value to that of the next frame before we got a chance to render it.

**Note:** In this example, a wrong value for `t` will have minimal consequences, but we emphasize that rendering and GUI thread objects and values must stay separate to avoid race conditions, undesired behavior and in the worst case, crashes.

Lets move on to the implementation.

``` cpp
Squircle::Squircle()
    : m_program(0)
    , m_t(0)
    , m_thread_t(0)
{
    connect(this, SIGNAL(windowChanged(QQuickWindow*)), this, SLOT(handleWindowChanged(QQuickWindow*)));
}
```

The constructor of the `Squircle` class simply initializes the values. The shader program will be initialized during rendering later.

``` cpp
void Squircle::setT(qreal t)
{
    if (t == m_t)
        return;
    m_t = t;
    emit tChanged();
    if (window())
        window()->update();
}
```

The property setter checks that the value has indeed changed before updating its internal variable. It then calls QQuickWindow::update() which will trigger another frame to be rendered. Note that the setter might be called during initialization, before the object has been entered into the scene and before it has a window.

``` cpp
void Squircle::handleWindowChanged(QQuickWindow *win)
{
    if (win) {
        connect(win, SIGNAL(beforeRendering()), this, SLOT(paint()), Qt::DirectConnection);
        connect(win, SIGNAL(beforeSynchronizing()), this, SLOT(sync()), Qt::DirectConnection);
```

For our paint function to be called, we need to connect to the window's signals. When Squircle object is populated into the scene, the windowChanged signal is emitted. In our handler, we connect QQuickWindow::beforeRendering() to `paint()` to do the rendering, and QQuickWindow::beforeSynchronizing() to `sync()` to copy the state of the `t` property for the upcoming frame.

**Note:** Since the Squircle object has affinity to the GUI thread and the signals are emitted from the rendering thread, it is crucial that the connections are made with Qt::DirectConnection. Failing to do so, will result in that the slots are invoked on the wrong thread with no OpenGL context present.

``` cpp
        win->setClearBeforeRendering(false);
    }
}
```

The default behavior of the scene graph is to clear the framebuffer before rendering. Since we render before the scene graph, we need to turn this clearing off. This means that we need to clear ourselves in the `paint()` function.

``` cpp
void Squircle::paint()
{
    if (!m_program) {
        m_program = new QOpenGLShaderProgram();
        m_program->addShaderFromSourceCode(QOpenGLShader::Vertex,
                                           "attribute highp vec4 vertices;"
                                           "varying highp vec2 coords;"
                                           "void main() {"
                                           "    gl_Position = vertices;"
                                           "    coords = vertices.xy;"
                                           "}");
        m_program->addShaderFromSourceCode(QOpenGLShader::Fragment,
                                           "uniform lowp float t;"
                                           "varying highp vec2 coords;"
                                           "void main() {"
                                           "    lowp float i = 1. - (pow(abs(coords.x), 4.) + pow(abs(coords.y), 4.));"
                                           "    i = smoothstep(t - 0.8, t + 0.8, i);"
                                           "    i = floor(i * 20.) / 20.;"
                                           "    gl_FragColor = vec4(coords * .5 + .5, i, i);"
                                           "}");
        m_program->bindAttributeLocation("vertices", 0);
        m_program->link();
        connect(window()->openglContext(), SIGNAL(aboutToBeDestroyed()),
                this, SLOT(cleanup()), Qt::DirectConnection);
    }
```

The first thing we do in the `paint()` function is to initialize the shader program. By initializing the shader program here, we make sure that the OpenGL context is bound and that we are on the correct thread.

We also connect to the QOpenGLContext::aboutToBeDestroyed() signal, so that we can clean up the shader program when the context is destroyed. Again, this is a Qt::DirectConnection as all rendering related operations must happen on the rendering thread.

``` cpp
    m_program->bind();
    m_program->enableAttributeArray(0);
    float values[] = {
        -1, -1,
        1, -1,
        -1, 1,
        1, 1
    };
    m_program->setAttributeArray(0, GL_FLOAT, values, 2);
    m_program->setUniformValue("t", (float) m_thread_t);
    qreal ratio = window()->devicePixelRatio();
    int w = int(ratio * window()->width());
    int h = int(ratio * window()->height());
    glViewport(0, 0, w, h);
    glDisable(GL_DEPTH_TEST);
    glClearColor(0, 0, 0, 1);
    glClear(GL_COLOR_BUFFER_BIT);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    m_program->disableAttributeArray(0);
    m_program->release();
}
```

We use the shader program to draw the squircle. At the end of the `paint` function we release the program and disable the attributes we used so that the OpenGL context is in a "clean" state for the scene graph to pick it up.

``` cpp
void Squircle::cleanup()
{
    if (m_program) {
        delete m_program;
        m_program = 0;
    }
}
```

In the `cleanup()` function we delete the program.

``` cpp
void Squircle::sync()
{
    m_thread_t = m_t;
}
```

We use the `sync()` function to copy the state of the object in the GUI thread into the rendering thread.

The signal is emitted on the rendering thread while the GUI thread is blocked, so it is safe to simply copy the value without any additional protection.

``` cpp
int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<Squircle>("OpenGLUnderQML", 1, 0, "Squircle");
    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl("qrc:///scenegraph/openglunderqml/main.qml"));
    view.show();
    return app.exec();
}
```

The application's `main()` function instantiates a QQuickView and launches the `main.qml` file. The only thing worth noting is that we export the `Squircle` class to QML using the qmlRegisterType() macro.

``` qml
import QtQuick 2.0
import OpenGLUnderQML 1.0
Item {
    width: 320
    height: 480
    Squircle {
        SequentialAnimation on t {
            NumberAnimation { to: 1; duration: 2500; easing.type: Easing.InQuad }
            NumberAnimation { to: 0; duration: 2500; easing.type: Easing.OutQuad }
            loops: Animation.Infinite
            running: true
        }
    }
```

We import the Squircle QML type with the name we registered in the `main()` function. We then instantiate it and create a running [NumberAnimation](../QtQuick.NumberAnimation.md) on its `t` property.

``` qml
    Rectangle {
        color: Qt.rgba(1, 1, 1, 0.7)
        radius: 10
        border.width: 1
        border.color: "white"
        anchors.fill: label
        anchors.margins: -10
    }
    Text {
        id: label
        color: "black"
        wrapMode: Text.WordWrap
        text: "The background here is a squircle rendered with raw OpenGL using the 'beforeRender()' signal in QQuickWindow. This text label and its border is rendered using QML"
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 20
    }
}
```

Then we overlay a short descriptive text, so that it is clearly visible that we are in fact rendering OpenGL under our Qt Quick scene.

Files:

-   scenegraph/openglunderqml/main.qml
-   scenegraph/openglunderqml/squircle.cpp
-   scenegraph/openglunderqml/squircle.h
-   scenegraph/openglunderqml/main.cpp
-   scenegraph/openglunderqml/openglunderqml.pro
-   scenegraph/openglunderqml/openglunderqml.qrc

