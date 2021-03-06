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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Chapter 1: Creating a New Type

Chapter 1: Creating a New Type
==============================

<span class="subtitle"></span>
<span id="details"></span>
A common task when extending QML is to provide a new QML type that supports some custom functionality beyond what is provided by the built-in Qt Quick types. For example, this could be done to implement particular data models, or provide types with custom painting and drawing capabilities, or access system features like network programming that are not accessible through built-in QML features.

In this tutorial, we will show how to use the C++ classes in the Qt Quick module to extend QML. The end result will be a simple Pie Chart display implemented by several custom QML types connected together through QML features like bindings and signals, and made available to the QML runtime through a plugin.

To begin with, let's create a new QML type called "PieChart" that has two properties: a name and a color. We will make it available in an importable type namespace called "Charts", with a version of 1.0.

We want this `PieChart` type to be usable from QML like this:

``` cpp
import Charts 1.0
PieChart {
    width: 100; height: 100
    name: "A simple pie chart"
    color: "red"
}
```

To do this, we need a C++ class that encapsulates this `PieChart` type and its two properties. Since QML makes extensive use of Qt's meta object system, this new class must:

-   Inherit from QObject
-   Declare its properties using the Q\_PROPERTY macro

Here is our `PieChart` class, defined in `piechart.h`:

``` cpp
#include <QtQuick/QQuickPaintedItem>
#include <QColor>
class PieChart : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName)
    Q_PROPERTY(QColor color READ color WRITE setColor)
public:
    PieChart(QQuickItem *parent = 0);
    QString name() const;
    void setName(const QString &name);
    QColor color() const;
    void setColor(const QColor &color);
    void paint(QPainter *painter);
private:
    QString m_name;
    QColor m_color;
};
```

The class inherits from QQuickPaintedItem because we want to override QQuickPaintedItem::paint() in perform drawing operations with the QPainter API. If the class just represented some data type and was not an item that actually needed to be displayed, it could simply inherit from QObject. Or, if we want to extend the functionality of an existing QObject-based class, it could inherit from that class instead. Alternatively, if we want to create a visual item that doesn't need to perform drawing operations with the QPainter API, we can just subclass QQuickItem.

The `PieChart` class defines the two properties, `name` and `color`, with the Q\_PROPERTY macro, and overrides QQuickPaintedItem::paint(). The class implementation in `piechart.cpp` simply sets and returns the `m_name` and `m_color` values as appropriate, and implements `paint()` to draw a simple pie chart. It also turns off the QGraphicsItem::ItemHasNoContents flag to enable painting:

``` cpp
PieChart::PieChart(QQuickItem *parent)
    : QQuickPaintedItem(parent)
{
}
...
void PieChart::paint(QPainter *painter)
{
    QPen pen(m_color, 2);
    painter->setPen(pen);
    painter->setRenderHints(QPainter::Antialiasing, true);
    painter->drawPie(boundingRect().adjusted(1, 1, -1, -1), 90 * 16, 290 * 16);
}
```

Now that we have defined the `PieChart` type, we will use it from QML. The `app.qml` file creates a `PieChart` item and display the pie chart's details using a standard QML Text item:

``` qml
import Charts 1.0
import QtQuick 2.0
Item {
    width: 300; height: 200
    PieChart {
        id: aPieChart
        anchors.centerIn: parent
        width: 100; height: 100
        name: "A simple pie chart"
        color: "red"
    }
    Text {
        anchors { bottom: parent.bottom; horizontalCenter: parent.horizontalCenter; bottomMargin: 20 }
        text: aPieChart.name
    }
}
```

Notice that although the color is specified as a string in QML, it is automatically converted to a QColor object for the PieChart `color` property. Automatic conversions are provided for various other [basic types](../QtQml.qtqml-typesystem-basictypes/index.html); for example, a string like "640x480" can be automatically converted to a QSize value.

We'll also create a C++ application that uses a QQuickView to run and display `app.qml`. The application must register the `PieChart` type using the qmlRegisterType() function, to allow it to be used from QML. If you don't register the type, `app.qml` won't be able to create a `PieChart`.

Here is the application `main.cpp`:

``` cpp
#include "piechart.h"
#include <QtQuick/QQuickView>
#include <QGuiApplication>
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<PieChart>("Charts", 1, 0, "PieChart");
    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl("qrc:///app.qml"));
    view.show();
    return app.exec();
}
```

This call to qmlRegisterType() registers the `PieChart` type as a type called "PieChart", in a type namespace called "Charts", with a version of 1.0.

Lastly, we write a `.pro` project file that includes the files and the `declarative` library:

``` cpp
QT += qml quick
HEADERS += piechart.h
SOURCES += piechart.cpp \
           main.cpp
RESOURCES += chapter1-basics.qrc
DESTPATH = $$[QT_INSTALL_EXAMPLES]/qml/tutorials/extending/chapter1-basics
target.path = $$DESTPATH
qml.files = *.qml
qml.path = $$DESTPATH
INSTALLS += target qml
```

Now we can build and run the application:

![](https://developer.ubuntu.com/static/devportal_uploaded/a7037478-6c28-46e4-a646-2858489c0b02-api/apps/qml/sdk-14.10/qtqml-tutorials-extending-chapter1-basics-example/images/extending-tutorial-chapter1.png)

Try it yourself with the code in Qt's `examples/qml/tutorials/extending/chapter1-basics` directory.

Files:

-   tutorials/extending/chapter1-basics/app.qml
-   tutorials/extending/chapter1-basics/piechart.cpp
-   tutorials/extending/chapter1-basics/piechart.h
-   tutorials/extending/chapter1-basics/main.cpp
-   tutorials/extending/chapter1-basics/chapter1-basics.pro
-   tutorials/extending/chapter1-basics/chapter1-basics.qrc

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
