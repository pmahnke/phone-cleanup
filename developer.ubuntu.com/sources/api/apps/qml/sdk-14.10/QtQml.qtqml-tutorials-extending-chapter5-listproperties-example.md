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

-   Chapter 5: Using List Property Types

Chapter 5: Using List Property Types
====================================

<span class="subtitle"></span>
<span id="details"></span>
Right now, a `PieChart` can only have one `PieSlice`. Ideally a chart would have multiple slices, with different colors and sizes. To do this, we could have a `slices` property that accepts a list of `PieSlice` items:

``` qml
import Charts 1.0
import QtQuick 2.0
Item {
    width: 300; height: 200
    PieChart {
        anchors.centerIn: parent
        width: 100; height: 100
        slices: [
            PieSlice {
                anchors.fill: parent
                color: "red"
                fromAngle: 0; angleSpan: 110
            },
            PieSlice {
                anchors.fill: parent
                color: "black"
                fromAngle: 110; angleSpan: 50
            },
            PieSlice {
                anchors.fill: parent
                color: "blue"
                fromAngle: 160; angleSpan: 100
            }
        ]
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/c2613711-7649-4299-942e-9e5cebf58573-api/apps/qml/sdk-14.10/qtqml-tutorials-extending-chapter5-listproperties-example/images/extending-tutorial-chapter5.png)

To do this, we replace the `pieSlice` property in `PieChart` with a `slices` property, declared as a QQmlListProperty type. The QQmlListProperty class enables the creation of list properties in QML extensions. We replace the `pieSlice()` function with a `slices()` function that returns a list of slices, and add an internal `append_slice()` function (discussed below). We also use a QList to store the internal list of slices as `m_slices`:

``` cpp
class PieChart : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(QQmlListProperty<PieSlice> slices READ slices)
    ...
public:
    ...
    QQmlListProperty<PieSlice> slices();
private:
    static void append_slice(QQmlListProperty<PieSlice> *list, PieSlice *slice);
    QString m_name;
    QList<PieSlice *> m_slices;
};
```

Although the `slices` property does not have an associated `WRITE` function, it is still modifiable because of the way QQmlListProperty works. In the `PieChart` implementation, we implement `PieChart::slices()` to return a QQmlListProperty value and indicate that the internal `PieChart::append_slice()` function is to be called whenever a request is made from QML to add items to the list:

``` cpp
QQmlListProperty<PieSlice> PieChart::slices()
{
    return QQmlListProperty<PieSlice>(this, 0, &PieChart::append_slice, 0, 0, 0);
}
void PieChart::append_slice(QQmlListProperty<PieSlice> *list, PieSlice *slice)
{
    PieChart *chart = qobject_cast<PieChart *>(list->object);
    if (chart) {
        slice->setParentItem(chart);
        chart->m_slices.append(slice);
    }
}
```

The `append_slice()` function simply sets the parent item as before, and adds the new item to the `m_slices` list. As you can see, the append function for a QQmlListProperty is called with two arguments: the list property, and the item that is to be appended.

The `PieSlice` class has also been modified to include `fromAngle` and `angleSpan` properties and to draw the slice according to these values. This is a straightforward modification if you have read the previous pages in this tutorial, so the code is not shown here.

The complete code can be seen in the updated `examples/qml/tutorials/extending/chapter5-listproperties` directory.

Files:

-   tutorials/extending/chapter5-listproperties/app.qml
-   tutorials/extending/chapter5-listproperties/piechart.cpp
-   tutorials/extending/chapter5-listproperties/piechart.h
-   tutorials/extending/chapter5-listproperties/pieslice.cpp
-   tutorials/extending/chapter5-listproperties/pieslice.h
-   tutorials/extending/chapter5-listproperties/main.cpp
-   tutorials/extending/chapter5-listproperties/chapter5-listproperties.pro
-   tutorials/extending/chapter5-listproperties/chapter5-listproperties.qrc

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
