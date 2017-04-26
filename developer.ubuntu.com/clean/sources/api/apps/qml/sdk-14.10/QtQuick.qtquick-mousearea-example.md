---
Title: QtQuick.qtquick-mousearea-example
---
        
Qt Quick Examples - MouseArea
=============================

<span class="subtitle"></span>
<span id="details"></span>
This is an example of the [MouseArea](../QtQuick.MouseArea.md) type in QML

![](https://developer.ubuntu.com/static/devportal_uploaded/45a27901-a74d-4d35-915f-cc5561889b4d-api/apps/qml/sdk-14.10/qtquick-mousearea-example/images/qml-mousearea-example.png)

This example shows you how to respond to clicks and drags with a [MouseArea](../QtQuick.MouseArea.md).

When you click inside the red square, the Text type will list several properties of that click which are available to QML.

Signals are emitted by the [MouseArea](../QtQuick.MouseArea.md) when clicks or other discrete operations occur within it

``` qml
onPressAndHold: btn.text = 'Press and hold'
onClicked: btn.text = 'Clicked (wasHeld=' + mouse.wasHeld + ')'
onDoubleClicked: btn.text = 'Double clicked'
```

The [MouseArea](../QtQuick.MouseArea.md) can also be used to drag items around. By setting the parameters of the drag property, the target item will be dragged around if the user starts to drag within the [MouseArea](../QtQuick.MouseArea.md).

``` qml
drag.target: blueSquare
drag.axis: Drag.XAndYAxis
drag.minimumX: 0
drag.maximumX: box.width - parent.width
drag.minimumY: 0
drag.maximumY: box.height - parent.width
```

Files:

-   mousearea/mousearea-wheel-example.qml
-   mousearea/mousearea.qml
-   mousearea/main.cpp
-   mousearea/mousearea.pro
-   mousearea/mousearea.qmlproject
-   mousearea/mousearea.qrc

