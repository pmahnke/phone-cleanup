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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.1</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Scene Graph - Simple Material

Scene Graph - Simple Material
=============================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/9d1ddcf3-f0e5-4ebd-9980-47f27d47643f-api/apps/qml/sdk-15.04.1/qtquick-scenegraph-simplematerial-example/images/simplematerial-example.jpg)

In this example, we will make use of the QSGSimpleMaterialShader class to fill a shape in the scene graph. This is a convenience class intended to avoid a lot of the boilerplate code required when creating materials with the QSGMaterial, QSGMaterialShader and QSGMaterialType classes directly.

A simple material consists of two parts: the material state and the material shader. The material shader has one instance per scene graph and contains the actual OpenGL shader program and information about which attributes and uniforms it uses. The material state is what we assign to each individual node; in this case to give them different colors.

``` cpp
struct State
{
    QColor color;
    int compare(const State *other) const {
        uint rgb = color.rgba();
        uint otherRgb = other->color.rgba();
        if (rgb == otherRgb) {
            return 0;
        } else if (rgb < otherRgb) {
            return -1;
        } else {
            return 1;
        }
    }
};
```

The first thing we do when creating custom materials with the simplified scheme is to create a state class. In this case the state class contains only one member, a QColor. It also defines a compare function which the scene graph can use to reorder the node rendering.

``` cpp
class Shader : public QSGSimpleMaterialShader<State>
{
    QSG_DECLARE_SIMPLE_COMPARABLE_SHADER(Shader, State);
```

Next we define the material shader, by subclassing a template instantiation of QSGSimpleMaterialShader with our `State`.

Then we use the macro QSG\_DECLARE\_SIMPLE\_COMPARABLE\_SHADER() which will generate some boilerplate code for us. Since our `State` class has a compare function, we declare that the states can be compared. It would have been possible to remove the `State::compare()` function and instead declare the shader with QSG\_DECLARE\_SIMPLE\_SHADER(), but this could then reduce performance in certain use cases.

The state struct is used as a template parameter to automatically generate a QSGMaterialType for us, so it is crucial that the pair of shader and state are made up of unique classes. Using the same `State` class in multiple shaders will will lead to undefined behavior.

``` cpp
public:
    const char *vertexShader() const {
        return
                "attribute highp vec4 aVertex;                              \n"
                "attribute highp vec2 aTexCoord;                            \n"
                "uniform highp mat4 qt_Matrix;                              \n"
                "varying highp vec2 texCoord;                               \n"
                "void main() {                                              \n"
                "    gl_Position = qt_Matrix * aVertex;                     \n"
                "    texCoord = aTexCoord;                                  \n"
                "}";
    }
    const char *fragmentShader() const {
        return
                "uniform lowp float qt_Opacity;                             \n"
                "uniform lowp vec4 color;                                   \n"
                "varying highp vec2 texCoord;                               \n"
                "void main ()                                               \n"
                "{                                                          \n"
                "    gl_FragColor = texCoord.y * texCoord.x * color * qt_Opacity;  \n"
                "}";
    }
```

Next comes the declaration of the shader source code, where we define a vertex and fragment shader. The simple material assumes the presence of `qt_Matrix` in the vertex shader and `qt_Opacity` in the fragment shader.

``` cpp
    QList<QByteArray> attributes() const
    {
        return QList<QByteArray>() << "aVertex" << "aTexCoord";
    }
```

We reimplement the `attributes` function to return the name of the `aVertex` and `aTexCoord` attributes. These attributes will be mapped to attribute indices 0 and 1 in the node's geometry.

``` cpp
    void resolveUniforms()
    {
        id_color = program()->uniformLocation("color");
    }
private:
    int id_color;
```

Uniforms can be accessed either by name or by index, where index is faster than name. We reimplement the `resolveUniforms()` function to find the index of the `color` uniform. We do not have to worry about resolving `qt_Opacity` or `qt_Matrix` as these are handled by the baseclass.

``` cpp
    void updateState(const State *state, const State *)
    {
        program()->setUniformValue(id_color, state->color);
    }
```

The `updateState()` function is called once for every unique state and we use it to update the shader program with the current color. The previous state is passed in as a second parameter so that the user can update only that which has changed. In our usecase, where all the colors are different, the updateState will be called once for every node.

``` cpp
class ColorNode : public QSGGeometryNode
{
public:
    ColorNode()
        : m_geometry(QSGGeometry::defaultAttributes_TexturedPoint2D(), 4)
    {
        setGeometry(&m_geometry);
        QSGSimpleMaterial<State> *material = Shader::createMaterial();
        material->setFlag(QSGMaterial::Blending);
        setMaterial(material);
        setFlag(OwnsMaterial);
    }
    QSGGeometry m_geometry;
};
```

The `ColorNode` class is supposed to draw something, so it needs to be a subclass of QSGGeometryNode.

Since our shader expects both a position and a texture coordinate, we use the default attribute set QSGGeometry::defaultAttributes\_TexturedPoint2D() and declare that the geometry consists of a total of four vertices. To avoid the allocation, we make the QSGGeometry a member of the QSGGeometryNode.

When we used the macro QSG\_DECLARE\_SIMPLE\_COMPARABLE\_SHADER() above, it defined the `createMaterial()` function which we use to instantiate materials for our `State` struct.

As we will be making use of opacity in our custom material, we need to set the QSGMaterial::Blending flag. The scene graph may use this flag to either disable or enable `GL_BLEND` when drawing the node or to reorder the drawing of the node.

Finally, we tell the node to take ownership of the material, so we do not have to explicitly memory-manage it.

``` cpp
class Item : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
public:
    Item()
    {
        setFlag(ItemHasContents, true);
    }
    void setColor(const QColor &color) {
        if (m_color != color) {
            m_color = color;
            emit colorChanged();
            update();
        }
    }
    QColor color() const {
        return m_color;
    }
signals:
    void colorChanged();
private:
  QColor m_color;
```

Since the Item is providing its own graphics to the scene graph, we set the flag QQuickItem::ItemHasContents.

``` cpp
public:
    QSGNode *updatePaintNode(QSGNode *node, UpdatePaintNodeData *)
    {
        ColorNode *n = static_cast<ColorNode *>(node);
        if (!node)
            n = new ColorNode();
        QSGGeometry::updateTexturedRectGeometry(n->geometry(), boundingRect(), QRectF(0, 0, 1, 1));
        static_cast<QSGSimpleMaterial<State>*>(n->material())->state()->color = m_color;
        n->markDirty(QSGNode::DirtyGeometry | QSGNode::DirtyMaterial);
        return n;
    }
};
```

Whenever the Item has changed graphically, the QQuickItem::updatePaintNode() function is called.

**Note:** The scene graph may be rendered in a different thread than the GUI thread and QQuickItem::updatePaintNode() is one of the few places where it is safe to access properties of the QML object. Any interaction with the scene graph from a custom QQuickItem should be contained within this function. The function is called on the rendering thread while the GUI thread is blocked.

The first time this function is called for an `Item` instance, the node will be 0, and so we create a new one. For every consecutive call, the node will be what we returned previously. There are scenarios where the scene graph will be removed and rebuilt from scratch however, so one should always check the node and recreate it if required.

Once we have a `ColorNode`, we update its geometry and material state. Finally, we notify the scene graph that the node has undergone changes to its geometry and material.

``` cpp
int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<Item>("SimpleMaterial", 1, 0, "SimpleMaterialItem");
    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl("qrc:///scenegraph/simplematerial/main.qml"));
    view.show();
    return app.exec();
}
#include "simplematerial.moc"
```

The `main()` function of the application adds the custom QML type using qmlRegisterType() and opens up a QQuickView with our QML file.

``` qml
import QtQuick 2.0
import SimpleMaterial 1.0
Rectangle {
    width: 320
    height: 480
    color: "black"
```

In the QML file, we import our custom type so we can instantiate it.

``` qml
    Column {
        anchors.fill: parent
        SimpleMaterialItem {
            width: parent.width;
            height: parent.height / 3;
            color: "steelblue"
        }
        SimpleMaterialItem {
            width: parent.width;
            height: parent.height / 3;
            color: "darkorchid"
        }
         SimpleMaterialItem {
            width: parent.width;
            height: parent.height / 3;
            color: "springgreen"
        }
    }
```

Then we create a column containing three instances of our custom item, each with a different color.

``` qml
    Rectangle {
        color: Qt.rgba(0, 0, 0, 0.8)
        radius: 10
        antialiasing: true
        border.width: 1
        border.color: "black"
        anchors.fill: label
        anchors.margins: -10
    }
    Text {
        id: label
        color: "white"
        wrapMode: Text.WordWrap
        text: "These three gradient boxes are colorized using a custom material."
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 20
    }
}
```

And finally we overlay a short descriptive text.

Files:

-   scenegraph/simplematerial/main.qml
-   scenegraph/simplematerial/simplematerial.cpp
-   scenegraph/simplematerial/simplematerial.pro
-   scenegraph/simplematerial/simplematerial.qrc

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
