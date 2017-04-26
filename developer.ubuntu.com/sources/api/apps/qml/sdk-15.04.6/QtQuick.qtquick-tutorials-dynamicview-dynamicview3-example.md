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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.6</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   QML Dynamic View Ordering Tutorial 3 - Moving Dragged Items

QML Dynamic View Ordering Tutorial 3 - Moving Dragged Items
===========================================================

<span class="subtitle"></span>
<span id="details"></span>
The next step in our application to move items within the list as they're dragged so that we can re-order the list. To achieve this we introduce three new types to our application; DelegateModel, [Drag](../QtQuick.Drag/index.html) and [DropArea](../QtQuick.DropArea/index.html).

``` qml
Rectangle {
    id: root
    width: 300; height: 400
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
                Drag.active: dragArea.held
                Drag.source: dragArea
                Drag.hotSpot.x: width / 2
                Drag.hotSpot.y: height / 2
            }
            DropArea {
                anchors { fill: parent; margins: 10 }
                onEntered: {
                    visualModel.items.move(
                            drag.source.DelegateModel.itemsIndex,
                            dragArea.DelegateModel.itemsIndex)
                }
            }
        }
    }
}
```

<span id="walkthrough"></span>
### Walkthrough

In order to re-order the view we need to determine when one item has been dragged over another. With the Drag attached property we can generate events that are sent to the scene graph whenever the item it is attached to moves.

``` qml
                Drag.active: dragArea.held
                Drag.source: dragArea
                Drag.hotSpot.x: width / 2
                Drag.hotSpot.y: height / 2
```

Drag events are only sent while the active property is true, so in this example the first event would be sent when the delegate was held with additional event sents when dragging. The [hotSpot](../QtQuick.Drag/index.html#hotSpot-attached-prop) property specifies the relative position of the drag events within the dragged item, the center of the item in this instance.

Then we use a [DropArea](../QtQuick.DropArea/index.html) in each view item to determine when the hot spot of the dragged item intersects another item, when a drag enters one of these DropAreas we can move the dragged item to the index of the item it was dragged over.

``` qml
            DropArea {
                anchors { fill: parent; margins: 10 }
                onEntered: {
                    visualModel.items.move(
                            drag.source.DelegateModel.itemsIndex,
                            dragArea.DelegateModel.itemsIndex)
                }
            }
```

To move the items within the view we use a DelegateModel. The DelegateModel type is used by the view types to instantiate delegate items from model data and when constructed explicitly can be used to filter and re-order the model items provided to [ListView](../QtQuick.ListView/index.html). The items property of DelegateModel provides access to the view's items and allows us to change the visible order without modifying the source model. To determine the current visible index of the items we use itemsIndex property on the DelegateModel attached property of the delegate item.

To utilize a DelegateModel with a [ListView](../QtQuick.ListView/index.html) we bind it to the [model](../QtQuick.ListView/index.html#model-prop) property of the view and bind the model and delegate to the DelegateModel.

``` qml
    DelegateModel {
        id: visualModel
        model: PetsModel {}
        delegate: dragDelegate
    }
    ListView {
        id: view
        anchors { fill: parent; margins: 2 }
        model: visualModel
        spacing: 4
        cacheBuffer: 50
    }
```

Files:

-   tutorials/dynamicview/dynamicview3/PetsModel.qml
-   tutorials/dynamicview/dynamicview3/dynamicview.qml
-   tutorials/dynamicview/dynamicview3/dynamicview3.qmlproject

<a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.tutorials-dynamicview-dynamicview2/" class="prevPage">QML Dynamic View Ordering Tutorial 2 - Dragging View Items</a> <a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.tutorials-dynamicview-dynamicview4/" class="nextPage">QML Dynamic View Ordering Tutorial 4 - Sorting Items</a>

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
