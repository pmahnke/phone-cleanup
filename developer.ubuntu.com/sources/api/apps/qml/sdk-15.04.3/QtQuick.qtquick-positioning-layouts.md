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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.3</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Item Positioners

Item Positioners
================

<span class="subtitle"></span>
<span id="details"></span>
Positioner items are container items that manage the positions of items in a declarative user interface. Positioners behave in a similar way to the layout managers used with standard Qt widgets, except that they are also containers in their own right.

Positioners make it easier to work with many items when they need to be arranged in a regular layout.

Qt Quick Layouts can also be used to arrange Qt Quick items in a user interface. They manage both the positions and the sizes of items on a declarative user interface, and are well suited for resizable user interfaces.

<span id="positioners"></span>
Positioners
-----------

A set of standard positioners are provided in the basic set of Qt Quick graphical types:

<span id="column"></span>
### Column

![](https://developer.ubuntu.com/static/devportal_uploaded/93fca328-06e1-4b11-9c36-3160acbd0adf-api/apps/qml/sdk-15.04.3/qtquick-positioning-layouts/images/qml-column.png)

[Column](index.html#column) items are used to vertically arrange items. The following example uses a Column item to arrange three [Rectangle](../QtQuick.Rectangle/index.html) items in an area defined by an outer [Item](../QtQuick.Item/index.html). The [spacing](../QtQuick.Column/index.html#spacing-prop) property is set to include a small amount of space between the rectangles.

``` qml
import QtQuick 2.0
Item {
    width: 310; height: 170
    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5
        Rectangle { color: "lightblue"; radius: 10.0
                    width: 300; height: 50
                    Text { anchors.centerIn: parent
                           font.pointSize: 24; text: "Books" } }
        Rectangle { color: "gold"; radius: 10.0
                    width: 300; height: 50
                    Text { anchors.centerIn: parent
                           font.pointSize: 24; text: "Music" } }
        Rectangle { color: "lightgreen"; radius: 10.0
                    width: 300; height: 50
                    Text { anchors.centerIn: parent
                           font.pointSize: 24; text: "Movies" } }
    }
}
```

Note that, since Column inherits directly from Item, any background color must be added to a parent Rectangle, if desired.

<span id="row"></span>
### Row

![](https://developer.ubuntu.com/static/devportal_uploaded/e6b25685-0fd3-493e-ba6d-7d68b9a5c92e-api/apps/qml/sdk-15.04.3/qtquick-positioning-layouts/images/qml-row.png)

[Row](index.html#row) items are used to horizontally arrange items. The following example uses a Row item to arrange three rounded [Rectangle](../QtQuick.Rectangle/index.html) items in an area defined by an outer colored Rectangle. The [spacing](../QtQuick.Row/index.html#spacing-prop) property is set to include a small amount of space between the rectangles.

We ensure that the parent Rectangle is large enough so that there is some space left around the edges of the horizontally centered Row item.

``` qml
import QtQuick 2.0
Rectangle {
    width: 320; height: 110
    color: "#c0c0c0"
    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5
        Rectangle { width: 100; height: 100; radius: 20.0
                    color: "#024c1c" }
        Rectangle { width: 100; height: 100; radius: 20.0
                    color: "#42a51c" }
        Rectangle { width: 100; height: 100; radius: 20.0
                    color: "white" }
    }
}
```

<span id="grid"></span>
### Grid

![](https://developer.ubuntu.com/static/devportal_uploaded/2d327943-001c-4746-87b1-5ed119467d41-api/apps/qml/sdk-15.04.3/qtquick-positioning-layouts/images/qml-grid-spacing.png)

[Grid](index.html#grid) items are used to place items in a grid or table arrangement. The following example uses a Grid item to place four [Rectangle](../QtQuick.Rectangle/index.html) items in a 2-by-2 grid. As with the other positioners, the spacing between items can be specified using the [spacing](../QtQuick.Grid/index.html#spacing-prop) property.

``` qml
import QtQuick 2.0
Rectangle {
    width: 112; height: 112
    color: "#303030"
    Grid {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        columns: 2
        spacing: 6
        Rectangle { color: "#aa6666"; width: 50; height: 50 }
        Rectangle { color: "#aaaa66"; width: 50; height: 50 }
        Rectangle { color: "#9999aa"; width: 50; height: 50 }
        Rectangle { color: "#6666aa"; width: 50; height: 50 }
    }
}
```

There is no difference between horizontal and vertical spacing inserted between items, so any additional space must be added within the items themselves.

Any empty cells in the grid must be created by defining placeholder items at the appropriate places in the Grid definition.

<span id="flow"></span>
### Flow

![](https://developer.ubuntu.com/static/devportal_uploaded/65ea1627-4bc8-42c2-bda9-e4d247dc70a6-api/apps/qml/sdk-15.04.3/qtquick-positioning-layouts/images/qml-flow-text1.png) ![](https://developer.ubuntu.com/static/devportal_uploaded/83000413-3b7b-4ac5-9c48-8c9388cab69f-api/apps/qml/sdk-15.04.3/qtquick-positioning-layouts/images/qml-flow-text2.png)

[Flow](index.html#flow) items are used to place items like words on a page, with rows or columns of non-overlapping items.

Flow items arrange items in a similar way to [Grid](index.html#grid) items, with items arranged in lines along one axis (the minor axis), and lines of items placed next to each other along another axis (the major axis). The direction of flow, as well as the spacing between items, are controlled by the [flow](../QtQuick.Flow/index.html#flow-prop) and [spacing](../QtQuick.Flow/index.html#spacing-prop) properties.

The following example shows a Flow item containing a number of [Text](../QtQuick.qtquick-releasenotes/index.html#text) child items. These are arranged in a similar way to those shown in the screenshots.

``` qml
import QtQuick 2.0
Rectangle {
    color: "lightblue"
    width: 300; height: 200
    Flow {
        anchors.fill: parent
        anchors.margins: 4
        spacing: 10
        Text { text: "Text"; font.pixelSize: 40 }
        Text { text: "items"; font.pixelSize: 40 }
        Text { text: "flowing"; font.pixelSize: 40 }
        Text { text: "inside"; font.pixelSize: 40 }
        Text { text: "a"; font.pixelSize: 40 }
        Text { text: "Flow"; font.pixelSize: 40 }
        Text { text: "item"; font.pixelSize: 40 }
    }
}
```

The main differences between the Grid and Flow positioners are that items inside a Flow will wrap when they run out of space on the minor axis, and items on one line may not be aligned with items on another line if the items do not have uniform sizes. As with Grid items, there is no independent control of spacing between items and between lines of items.

<span id="other-ways-to-position-items"></span>
Other Ways to Position Items
----------------------------

There are several other ways to position items in a user interface. In addition to the basic technique of specifying their coordinates directly, they can be positioned relative to other items with [anchors](../QtQuick.qtquick-positioning-anchors/index.html#anchor-layout), or used with [QML Data Models](../QtQuick.qtquick-modelviewsdata-modelview/index.html#qml-data-models) such as [VisualItemModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#visualitemmodel).

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
