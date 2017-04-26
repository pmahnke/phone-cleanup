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

-   QML Dynamic View Ordering Tutorial 2 - Dragging View Items

QML Dynamic View Ordering Tutorial 2 - Dragging View Items
==========================================================

<span class="subtitle"></span>
<span id="details"></span>
Now that we have a visible list of items we want to be able to interact with them. We'll start by extending the delegate so the visible content can be dragged up and down the screen. The updated delegate looks like this:

``` qml
    Component {
        id: dragDelegate
        MouseArea {
            id: dragArea
            property bool held: false
            anchors { left: parent.left; right: parent.right }
            height: content.height
            drag.target: held ? content : undefined
            drag.axis: Drag.YAxis
            onPressAndHold: held = true
            onReleased: held = false
            Rectangle {
                id: content
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                width: dragArea.width; height: column.implicitHeight + 4
                border.width: 1
                border.color: "lightsteelblue"
                color: dragArea.held ? "lightsteelblue" : "white"
                Behavior on color { ColorAnimation { duration: 100 } }
                radius: 2
                states: State {
                    when: dragArea.held
                    ParentChange { target: content; parent: root }
                    AnchorChanges {
                        target: content
                        anchors { horizontalCenter: undefined; verticalCenter: undefined }
                    }
                }
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
    }
```

<span id="walkthrough"></span>
### Walkthrough

The major change here is the root item of the delegate is now a [MouseArea](../QtQuick.MouseArea/index.html) which provides handlers for mouse events and will allow us to drag the delegate's content item. It also acts as a container for the content item which is important as a delegate's root item is positioned by the view and cannot be moved by other means.

``` qml
        MouseArea {
            id: dragArea
            property bool held: false
            anchors { left: parent.left; right: parent.right }
            height: content.height
            drag.target: held ? content : undefined
            drag.axis: Drag.YAxis
            onPressAndHold: held = true
            onReleased: held = false
            Rectangle {
                id: content
            }
        }
```

Dragging the content item is enabled by binding it to the [MouseArea](../QtQuick.MouseArea/index.html)'s [drag.target](../QtQuick.MouseArea/index.html#drag.target-prop) property. Because we still want the view to be flickable we wait until the [MouseArea](../QtQuick.MouseArea/index.html)'s [pressAndHold](../QtQuick.MouseArea/index.html#pressAndHold-signal) signal is emitted before binding the drag target. This way when mouse moves before the hold timeout has expired it is interpreted as moving the list and if it moves after it is interpreted as dragging an item. To make it more obvious to the user when an item can be dragged we'll change the background color of the content item when the timeout has expired.

``` qml
                color: dragArea.held ? "lightsteelblue" : "white"
                Behavior on color { ColorAnimation { duration: 100 } }
```

The other thing we'll need to do before an item can be dragged is to unset any anchors on the content item so it can be freely moved around. We do this in a state change that is triggered when the delegate item is held, at the same time we can reparent the content item to the root item so that is above other items in the stacking order and isn't obscured as it is dragged around.

``` qml
                states: State {
                    when: dragArea.held
                    ParentChange { target: content; parent: root }
                    AnchorChanges {
                        target: content
                        anchors { horizontalCenter: undefined; verticalCenter: undefined }
                    }
                }
```

Files:

-   tutorials/dynamicview/dynamicview2/PetsModel.qml
-   tutorials/dynamicview/dynamicview2/dynamicview.qml
-   tutorials/dynamicview/dynamicview2/dynamicview2.qmlproject

<a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04.3/QtQuick.tutorials-dynamicview-dynamicview1/" class="prevPage">QML Dynamic View Ordering Tutorial 1 - A Simple ListView and Delegate</a> <a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04.3/QtQuick.tutorials-dynamicview-dynamicview3/" class="nextPage">QML Dynamic View Ordering Tutorial 3 - Moving Dragged Items</a>

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
