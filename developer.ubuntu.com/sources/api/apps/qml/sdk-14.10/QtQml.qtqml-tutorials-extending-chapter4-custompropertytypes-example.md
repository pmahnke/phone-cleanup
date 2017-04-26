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

-   Chapter 4: Using Custom Property Types

Chapter 4: Using Custom Property Types
======================================

<span class="subtitle"></span>
<span id="details"></span>
The `PieChart` type currently has a string-type property and a color-type property. It could have many other types of properties. For example, it could have an int-type property to store an identifier for each chart:

``` cpp
// C++
class PieChart : public QQuickPaintedItem
{
    Q_PROPERTY(int chartId READ chartId WRITE setChartId NOTIFY chartIdChanged)
    ...
public:
    void setChartId(int chartId);
    int chartId() const;
    ...
signals:
    void chartIdChanged();
};
// QML
PieChart {
    ...
    chartId: 100
}
```

Aside from `int`, we could use various other property types. Many of the Qt data types such as QColor, QSize and QRect are automatically supported from QML. (See [Data Type Conversion Between QML and C++](../QtQml.qtqml-cppintegration-data/index.html) documentation for a full list.)

If we want to create a property whose type is not supported by QML by default, we need to register the type with the QML engine.

For example, let's replace the use of the `property` with a type called "PieSlice" that has a `color` property. Instead of assigning a color, we assign an `PieSlice` value which itself contains a `color`:

``` qml
import Charts 1.0
import QtQuick 2.0
Item {
    width: 300; height: 200
    PieChart {
        id: chart
        anchors.centerIn: parent
        width: 100; height: 100
        pieSlice: PieSlice {
            anchors.fill: parent
            color: "red"
        }
    }
    Component.onCompleted: console.log("The pie is colored " + chart.pieSlice.color)
}
```

Like `PieChart`, this new `PieSlice` type inherits from QQuickPaintedItem and declares its properties with Q\_PROPERTY():

``` cpp
class PieSlice : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(QColor color READ color WRITE setColor)
public:
    PieSlice(QQuickItem *parent = 0);
    QColor color() const;
    void setColor(const QColor &color);
    void paint(QPainter *painter);
private:
    QColor m_color;
};
```

To use it in `PieChart`, we modify the `color` property declaration and associated method signatures:

``` cpp
class PieChart : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(PieSlice* pieSlice READ pieSlice WRITE setPieSlice)
    ...
public:
    ...
    PieSlice *pieSlice() const;
    void setPieSlice(PieSlice *pieSlice);
    ...
};
```

There is one thing to be aware of when implementing `setPieSlice()`. The `PieSlice` is a visual item, so it must be set as a child of the `PieChart` using QQuickItem::setParentItem() so that the `PieChart` knows to paint this child item when its contents are drawn:

``` cpp
void PieChart::setPieSlice(PieSlice *pieSlice)
{
    m_pieSlice = pieSlice;
    pieSlice->setParentItem(this);
}
```

Like the `PieChart` type, the `PieSlice` type has to be registered using qmlRegisterType() to be used from QML. As with `PieChart`, we'll add the type to the "Charts" type namespace, version 1.0:

``` cpp
int main(int argc, char *argv[])
{
    ...
    qmlRegisterType<PieSlice>("Charts", 1, 0, "PieSlice");
    ...
}
```

Try it out with the code in Qt's `examples/qml/tutorials/extending/chapter4-customPropertyTypes` directory.

Files:

-   tutorials/extending/chapter4-customPropertyTypes/app.qml
-   tutorials/extending/chapter4-customPropertyTypes/piechart.cpp
-   tutorials/extending/chapter4-customPropertyTypes/piechart.h
-   tutorials/extending/chapter4-customPropertyTypes/pieslice.cpp
-   tutorials/extending/chapter4-customPropertyTypes/pieslice.h
-   tutorials/extending/chapter4-customPropertyTypes/main.cpp
-   tutorials/extending/chapter4-customPropertyTypes/chapter4-customPropertyTypes.pro
-   tutorials/extending/chapter4-customPropertyTypes/chapter4-customPropertyTypes.qrc

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
