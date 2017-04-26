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

-   QML Dynamic View Ordering Tutorial 1 - A Simple ListView and...

QML Dynamic View Ordering Tutorial 1 - A Simple ListView and...
===============================================================

<span class="subtitle"></span>
<span id="details"></span>
We begin our application by defining a [ListView](../QtQuick.ListView/index.html), a model which will provide data to the view, and a delegate which provides a template for constructing items in the view.

The code for the [ListView](../QtQuick.ListView/index.html) and delegate looks like this:

``` qml
import QtQuick 2.0
Rectangle {
    id: root
    width: 300; height: 400
    Component {
        id: dragDelegate
        Rectangle {
            id: content
            anchors { left: parent.left; right: parent.right }
            height: column.implicitHeight + 4
            border.width: 1
            border.color: "lightsteelblue"
            radius: 2
            Column {
                id: column
                anchors { fill: parent; margins: 2 }
                Text { text: 'Name: ' + name }
                Text { text: 'Type: ' + type }
                Text { text: 'Age: ' + age }
                Text { text: 'Size: ' + size }
            }
        }
    }
    ListView {
        id: view
        anchors { fill: parent; margins: 2 }
        model: PetsModel {}
        delegate: dragDelegate
        spacing: 4
        cacheBuffer: 50
    }
}
```

The model is defined in a separate QML file which looks like this:

``` qml
import QtQuick 2.0
ListModel {
    ListElement {
        name: "Polly"
        type: "Parrot"
        age: 12
        size: "Small"
    }
    ListElement {
        name: "Penny"
        type: "Turtle"
        age: 4
        size: "Small"
    }
}
```

<span id="walkthrough"></span>
### Walkthrough

The first item defined within the application's root Rectangle is the delegate Component. This is the template from which each item in the [ListView](../QtQuick.ListView/index.html) is constructed.

The `name`, `age`, `type`, and `size` variables referenced in the delegate are sourced from the model data. The names correspond to roles defined in the model.

``` qml
    Component {
        id: dragDelegate
        Rectangle {
            id: content
            anchors { left: parent.left; right: parent.right }
            height: column.implicitHeight + 4
            border.width: 1
            border.color: "lightsteelblue"
            radius: 2
            Column {
                id: column
                anchors { fill: parent; margins: 2 }
                Text { text: 'Name: ' + name }
                Text { text: 'Type: ' + type }
                Text { text: 'Age: ' + age }
                Text { text: 'Size: ' + size }
            }
        }
    }
```

The second part of the application is the [ListView](../QtQuick.ListView/index.html) itself to which we bind the model and delegate.

``` qml
    ListView {
        id: view
        anchors { fill: parent; margins: 2 }
        model: PetsModel {}
        delegate: dragDelegate
        spacing: 4
        cacheBuffer: 50
    }
```

Files:

-   tutorials/dynamicview/dynamicview1/PetsModel.qml
-   tutorials/dynamicview/dynamicview1/dynamicview.qml
-   tutorials/dynamicview/dynamicview1/dynamicview1.qmlproject

<a href="../QtQuick.qml-dynamicview-tutorial/index.html" class="prevPage">QML Dynamic View Ordering Tutorial</a> <a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.tutorials-dynamicview-dynamicview2/" class="nextPage">QML Dynamic View Ordering Tutorial 2 - Dragging View Items</a>

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
