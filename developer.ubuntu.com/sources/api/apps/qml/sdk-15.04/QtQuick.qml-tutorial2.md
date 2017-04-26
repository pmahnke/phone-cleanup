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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   QML Tutorial 2 - QML Components

QML Tutorial 2 - QML Components
===============================

<span class="subtitle"></span>
<span id="details"></span>
This chapter adds a color picker to change the color of the text.

![](https://developer.ubuntu.com/static/devportal_uploaded/6b13002f-70c6-4cb9-8d8f-366c48c0d8b3-api/apps/qml/sdk-15.04/qml-tutorial2/images/declarative-tutorial2.png)

Our color picker is made of six cells with different colors. To avoid writing the same code multiple times for each cell, we create a new `Cell` component. A component provides a way of defining a new type that we can re-use in other QML files. A QML component is like a black-box and interacts with the outside world through properties, signals and functions and is generally defined in its own QML file. (For more details, see the Component documentation). The component's filename must always start with a capital letter.

Here is the QML code for `Cell.qml`:

``` qml
import QtQuick 2.0
Item {
    id: container
    property alias cellColor: rectangle.color
    signal clicked(color cellColor)
    width: 40; height: 25
    Rectangle {
        id: rectangle
        border.color: "white"
        anchors.fill: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked(container.cellColor)
    }
}
```

<span id="walkthrough"></span>
Walkthrough
-----------

<span id="the-cell-component"></span>
### The Cell Component

``` qml
Item {
    id: container
    property alias cellColor: rectangle.color
    signal clicked(color cellColor)
    width: 40; height: 25
```

The root type of our component is an [Item](../QtQuick.Item/index.html) with the `id` *container*. An [Item](../QtQuick.Item/index.html) is the most basic visual type in QML and is often used as a container for other types.

``` qml
    property alias cellColor: rectangle.color
```

We declare a `cellColor` property. This property is accessible from *outside* our component, this allows us to instantiate the cells with different colors. This property is just an alias to an existing property - the color of the rectangle that compose the cell (see Property Binding).

``` qml
    signal clicked(color cellColor)
```

We want our component to also have a signal that we call *clicked* with a *cellColor* parameter of type *color*. We will use this signal to change the color of the text in the main QML file later.

``` qml
    Rectangle {
        id: rectangle
        border.color: "white"
        anchors.fill: parent
    }
```

Our cell component is basically a colored rectangle with the `id` *rectangle*.

The `anchors.fill` property is a convenient way to set the size of a visual type. In this case the rectangle will have the same size as its parent (see [Anchor-Based Layout](../QtQuick.qtquick-positioning-anchors/index.html#anchor-layout)).

``` qml
    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked(container.cellColor)
    }
```

In order to change the color of the text when clicking on a cell, we create a [MouseArea](../QtQuick.MouseArea/index.html) type with the same size as its parent.

A [MouseArea](../QtQuick.MouseArea/index.html) defines a signal called *clicked*. When this signal is triggered we want to emit our own *clicked* signal with the color as parameter.

<span id="the-main-qml-file"></span>
### The main QML file

In our main QML file, we use our `Cell` component to create the color picker:

``` qml
import QtQuick 2.0
Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgray"
    Text {
        id: helloText
        text: "Hello world!"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
    Grid {
        id: colorPicker
        x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
        rows: 2; columns: 3; spacing: 3
        Cell { cellColor: "red"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "green"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "blue"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "yellow"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "steelblue"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "black"; onClicked: helloText.color = cellColor }
    }
}
```

We create the color picker by putting 6 cells with different colors in a grid.

``` qml
        Cell { cellColor: "red"; onClicked: helloText.color = cellColor }
```

When the *clicked* signal of our cell is triggered, we want to set the color of the text to the *cellColor* passed as a parameter. We can react to any signal of our component through a property of the name *'onSignalName'* (see Signal Attributes).

<a href="../QtQuick.qml-tutorial1/index.html" class="prevPage">QML Tutorial 1 - Basic Types</a> <a href="../QtQuick.qml-tutorial3/index.html" class="nextPage">QML Tutorial 3 - States and Transitions</a>

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
