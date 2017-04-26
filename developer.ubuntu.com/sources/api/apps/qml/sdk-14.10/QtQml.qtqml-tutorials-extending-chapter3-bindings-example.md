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

-   Chapter 3: Adding Property Bindings

Chapter 3: Adding Property Bindings
===================================

<span class="subtitle"></span>
<span id="details"></span>
Property binding is a powerful feature of QML that allows values of different types to be synchronized automatically. It uses signals to notify and update other types' values when property values are changed.

Let's enable property bindings for the `color` property. That means if we have code like this:

``` qml
import Charts 1.0
import QtQuick 2.0
Item {
    width: 300; height: 200
    Row {
        anchors.centerIn: parent
        spacing: 20
        PieChart {
            id: chartA
            width: 100; height: 100
            color: "red"
        }
        PieChart {
            id: chartB
            width: 100; height: 100
            color: chartA.color
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: { chartA.color = "blue" }
    }
    Text {
        anchors { bottom: parent.bottom; horizontalCenter: parent.horizontalCenter; bottomMargin: 20 }
        text: "Click anywhere to change the chart color"
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/2f843da2-1fb5-414c-ac47-f887a08681e3-api/apps/qml/sdk-14.10/qtqml-tutorials-extending-chapter3-bindings-example/images/extending-tutorial-chapter3.png)

The "color: chartA.color" statement binds the `color` value of `chartB` to the `color` of `chartA`. Whenever `chartA`'s `color` value changes, `chartB`'s `color` value updates to the same value. When the window is clicked, the `onClicked` handler in the MouseArea changes the color of `chartA`, thereby changing both charts to the color blue.

It's easy to enable property binding for the `color` property. We add a NOTIFY feature to its Q\_PROPERTY() declaration to indicate that a "colorChanged" signal is emitted whenever the value changes.

``` cpp
class PieChart : public QQuickPaintedItem
{
    ...
    Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
public:
    ...
signals:
    void colorChanged();
    ...
};
```

Then, we emit this signal in `setPieSlice()`:

``` cpp
void PieChart::setColor(const QColor &color)
{
    if (color != m_color) {
        m_color = color;
        update();   // repaint with the new color
        emit colorChanged();
    }
}
```

It's important for `setColor()` to check that the color value has actually changed before emitting `colorChanged()`. This ensures the signal is not emitted unnecessarily and also prevents loops when other types respond to the value change.

The use of bindings is essential to QML. You should always add NOTIFY signals for properties if they are able to be implemented, so that your properties can be used in bindings. Properties that cannot be bound cannot be automatically updated and cannot be used as flexibly in QML. Also, since bindings are invoked so often and relied upon in QML usage, users of your custom QML types may see unexpected behavior if bindings are not implemented.

Files:

-   tutorials/extending/chapter3-bindings/app.qml
-   tutorials/extending/chapter3-bindings/piechart.cpp
-   tutorials/extending/chapter3-bindings/piechart.h
-   tutorials/extending/chapter3-bindings/main.cpp
-   tutorials/extending/chapter3-bindings/chapter3-binding.qrc
-   tutorials/extending/chapter3-bindings/chapter3-bindings.pro

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
