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

-   Scene Graph - Painted Item

Scene Graph - Painted Item
==========================

<span class="subtitle"></span>
<span id="details"></span>
The Painted Item example shows how to use the QML Scene Graph framework to implement custom scenegraph items using QPainter.

![](https://developer.ubuntu.com/static/devportal_uploaded/d9efd03c-54dc-4e79-869a-25f534c1f8b5-api/apps/qml/sdk-15.04.1/qtquick-customitems-painteditem-example/images/declarative-textballoons_example.png)

The QQuickPaintedItem class is a class derived from QQuickItem for implementing custom QML Scene Graph items using the QPainter interfaces.

The example consists of an item class, a plugin class and a QML file to use this plugin. The `TextBalloon` class represents the individual text balloons extending QQuickPaintedItem, the `TextBalloonPlugin` class represents the skeleton code for a Qt Quick plugin and the `textballoons.qml` file is used to load the plugin and display the text balloons.

We will focus on the `TextBalloon` class first and continue with the `textballoons.qml` file. For an example on how to implement a [Qt Quick](../QtQuick.qtquick-index/index.html) plugin please look at Writing an Extension Plugin

<span id="textballoon-class-declaration"></span>
TextBalloon Class Declaration
-----------------------------

The `TextBalloon` class inherits from QQuickPaintedItem. QQuickPaintedItem is the base class for all QPainter based items in the QML Scene Graph framework.

``` cpp
class TextBalloon : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(bool rightAligned READ isRightAligned WRITE setRightAligned NOTIFY rightAlignedChanged)
    public:
        TextBalloon(QQuickItem *parent = 0);
        void paint(QPainter *painter);
        bool isRightAligned();
        void setRightAligned(bool rightAligned);
    private:
        bool rightAligned;
    signals:
        void rightAlignedChanged();
};
```

To implement a QQuickPaintedItem you must implement QQuickPaintedIem's pure virtual function paint() which implements the painting of the type.

<span id="textballoon-class-definition"></span>
TextBalloon Class Definition
----------------------------

We have to be sure to initialize the rightAligned property for a TextBalloon item.

``` cpp
TextBalloon::TextBalloon(QQuickItem *parent)
    : QQuickPaintedItem(parent)
    , rightAligned(false)
{
}
```

Then we implement the `paint()` function which is automatically called by the Scene Graph framework to paint the contents of the item. The function paints the item in local coordinates.

``` cpp
void TextBalloon::paint(QPainter *painter)
{
    QBrush brush(QColor("#007430"));
    painter->setBrush(brush);
    painter->setPen(Qt::NoPen);
    painter->setRenderHint(QPainter::Antialiasing);
    painter->drawRoundedRect(0, 0, boundingRect().width(), boundingRect().height() - 10, 10, 10);
    if (rightAligned)
    {
        const QPointF points[3] = {
            QPointF(boundingRect().width() - 10.0, boundingRect().height() - 10.0),
            QPointF(boundingRect().width() - 20.0, boundingRect().height()),
            QPointF(boundingRect().width() - 30.0, boundingRect().height() - 10.0),
        };
        painter->drawConvexPolygon(points, 3);
    }
    else
    {
        const QPointF points[3] = {
            QPointF(10.0, boundingRect().height() - 10.0),
            QPointF(20.0, boundingRect().height()),
            QPointF(30.0, boundingRect().height() - 10.0),
        };
        painter->drawConvexPolygon(points, 3);
    }
}
```

We start with setting the pen and brush on the item to define the look of the item. After that we start drawing. Note that the contentsBoundingRect() item is called to draw depending on the size of the item. The rectangle returned by the contentsBoundingRect() function is the size of the item as defined in the QML file.

<span id="textballoons-qml-file"></span>
Textballoons.qml File
---------------------

The Interface consists of two main parts. The scrollable area with the textballoons and the controls button to add new balloons.

<span id="balloonview"></span>
### BalloonView

``` qml
ListModel {
    id: balloonModel
    ListElement {
        balloonWidth: 200
    }
    ListElement {
        balloonWidth: 120
    }
}
ListView {
    anchors.bottom: controls.top
    anchors.bottomMargin: 2
    anchors.top: parent.top
    id: balloonView
    delegate: TextBalloon {
        anchors.right: index % 2 == 0 ? undefined : parent.right
        height: 60
        rightAligned: index % 2 == 0 ? false : true
        width: balloonWidth
    }
    model: balloonModel
    spacing: 5
    width: parent.width
}
```

The balloonModel contains two types at application start which will be displayed by the [balloonView](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.customitems-painteditem/#balloonview). The [balloonView](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.customitems-painteditem/#balloonview) alernates the TextBalloon delegate items between left-aligned and right-aligned.

<span id="controls"></span>
### Controls

``` qml
Rectangle {
    id: controls
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.margins: 1
    anchors.right: parent.right
    border.width: 2
    color: "white"
    height: parent.height * 0.15
    Text {
        anchors.centerIn: parent
        text: "Add another balloon"
    }
    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            balloonModel.append({"balloonWidth": Math.floor(Math.random() * 200 + 100)})
            balloonView.positionViewAtIndex(balloonView.count -1, ListView.End)
        }
        onEntered: {
            parent.color = "#8ac953"
        }
        onExited: {
            parent.color = "white"
        }
    }
}
```

The controls part of the UI contains a rectangle with a [MouseArea](../QtQuick.MouseArea/index.html) which changes color when the mouse hovers over it. This control 'button' adds a new object to the end of the model with a random width.

Files:

-   customitems/painteditem/textballoon.cpp
-   customitems/painteditem/textballoon.h
-   customitems/painteditem/textballoons.qml
-   customitems/painteditem/TextBalloonPlugin/plugin.h
-   customitems/painteditem/painteditem.pro
-   customitems/painteditem/painteditem.qrc
-   customitems/painteditem/TextBalloonPlugin/qmldir

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
