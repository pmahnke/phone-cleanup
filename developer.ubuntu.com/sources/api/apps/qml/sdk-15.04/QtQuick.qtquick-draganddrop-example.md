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

-   Qt Quick Examples - Drag and Drop

Qt Quick Examples - Drag and Drop
=================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/9345ccf4-c602-4d11-9635-c87e5e833f80-api/apps/qml/sdk-15.04/qtquick-draganddrop-example/images/qml-draganddrop-example.png)

*Drag and Drop* is a collection of small QML examples relating to drag and drop functionality. For more information, visit the Drag and Drop page.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="tiles"></span>
Tiles
-----

*Tiles* adds drag and drop to simple rectangles, which you can drag into a specific grid.

It has a DragTile component which uses a [MouseArea](../QtQuick.MouseArea/index.html) to move an item when dragged:

``` qml
Item {
    id: root
    property string colorKey
    width: 64; height: 64
    MouseArea {
        id: mouseArea
        width: 64; height: 64
        anchors.centerIn: parent
        drag.target: tile
        onReleased: parent = tile.Drag.target !== null ? tile.Drag.target : root
        Rectangle {
            id: tile
            width: 64; height: 64
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: colorKey
            Drag.keys: [ colorKey ]
            Drag.active: mouseArea.drag.active
            Drag.hotSpot.x: 32
            Drag.hotSpot.y: 32
            states: State {
                when: mouseArea.drag.active
                ParentChange { target: tile; parent: root }
                AnchorChanges { target: tile; anchors.verticalCenter: undefined; anchors.horizontalCenter: undefined }
            }
        }
    }
}
```

And a DropTile component which the dragged tiles can be dropped onto:

``` qml
DropArea {
    id: dragTarget
    property string colorKey
    property alias dropProxy: dragTarget
    width: 64; height: 64
    keys: [ colorKey ]
    Rectangle {
        id: dropRectangle
        anchors.fill: parent
        color: colorKey
        states: [
            State {
                when: dragTarget.containsDrag
                PropertyChanges {
                    target: dropRectangle
                    color: "grey"
                }
            }
        ]
    }
}
```

The keys property of the [DropArea](../QtQuick.DropArea/index.html) will only allow an item with a matching key in its Drag.keys property to be dropped on it.

<span id="gridview"></span>
GridView
--------

*GridView* adds drag and drop to a [GridView](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.draganddrop/#gridview), allowing you to reorder the list. It also uses a DelegateModel to move a delegate item to the position of another item it is dragged over.

``` qml
    model: DelegateModel {
        delegate: MouseArea {
            id: delegateRoot
            property int visualIndex: DelegateModel.itemsIndex
            width: 80; height: 80
            drag.target: icon
            Rectangle {
                id: icon
                width: 72; height: 72
                anchors {
                    horizontalCenter: parent.horizontalCenter;
                    verticalCenter: parent.verticalCenter
                }
                color: model.color
                radius: 3
                Drag.active: delegateRoot.drag.active
                Drag.source: delegateRoot
                Drag.hotSpot.x: 36
                Drag.hotSpot.y: 36
                states: [
                    State {
                        when: icon.Drag.active
                        ParentChange {
                            target: icon
                            parent: root
                        }
                        AnchorChanges {
                            target: icon;
                            anchors.horizontalCenter: undefined;
                            anchors.verticalCenter: undefined
                        }
                    }
                ]
            }
            DropArea {
                anchors { fill: parent; margins: 15 }
                onEntered: visualModel.items.move(drag.source.visualIndex, delegateRoot.visualIndex)
            }
        }
```

Files:

-   draganddrop/draganddrop.qml
-   draganddrop/tiles/DragTile.qml
-   draganddrop/tiles/DropTile.qml
-   draganddrop/tiles/tiles.qml
-   draganddrop/views/gridview.qml
-   draganddrop/main.cpp
-   draganddrop/draganddrop.pro
-   draganddrop/draganddrop.qmlproject
-   draganddrop/draganddrop.qrc

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
