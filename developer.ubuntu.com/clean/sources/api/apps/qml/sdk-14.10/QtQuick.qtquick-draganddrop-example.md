---
Title: QtQuick.qtquick-draganddrop-example
---
        
Qt Quick Examples - Drag and Drop
=================================

<span class="subtitle"></span>
<span id="details"></span>
This is a collection of QML drag and drop examples

![](https://developer.ubuntu.com/static/devportal_uploaded/379a8fa3-eca8-4b00-ae09-279e2d687de1-api/apps/qml/sdk-14.10/qtquick-draganddrop-example/images/qml-draganddrop-example.png)

This is a collection of small QML examples relating to drag and drop functionality.

<span id="tiles-adds-drag-and-drop-to-simple-rectangles-which-you-can-drag-into-a-specific-grid"></span>
### Tiles adds drag and drop to simple rectangles, which you can drag into a specific grid.

It has a DragTile component which uses a [MouseArea](../QtQuick.MouseArea.md) to move an item when dragged:

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

The keys property of the [DropArea](../QtQuick.DropArea.md) will only allow an item with matching key in it's Drag.keys property to be dropped on it.

<span id="gridview-adds-drag-and-drop-to-a-gridview-allowing-you-to-reorder-the-list"></span>
### GridView adds drag and drop to a GridView, allowing you to reorder the list.

It uses a DelegateModel to move a delegate item to the position of another item it is dragged over.

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

