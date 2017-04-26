---
Title: QtQuick.qtquick-positioners-example
---
        
Qt Quick Examples - Positioners
===============================

<span class="subtitle"></span>
<span id="details"></span>
This is a collection of QML Positioner examples.

![](https://developer.ubuntu.com/static/devportal_uploaded/4e07584b-07b6-4fe9-a149-d03d44c3c5bd-api/apps/qml/sdk-14.10/qtquick-positioners-example/images/qml-positioners-example.png)

This is a collection of small QML examples relating to positioners. Each example is a small QML file emphasizing a particular type or feature.

Transitions shows animated transitions when showing or hiding items in a positioner. It consists of a scene populated with items in a variety of positioners: Column, Row, Grid and Flow. Each positioner has animations described as Transitions.

``` qml
move: Transition {
    NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce }
}
```

The move transition specifies how items inside a positioner will animate when they are displaced by the appearance or disappearance of other items.

``` qml
add: Transition {
    NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce }
}
```

The add transition specifies how items will appear when they are added to a positioner.

``` qml
populate: Transition {
    NumberAnimation { properties: "x,y"; from: 200; duration: 1500; easing.type: Easing.OutBounce }
}
```

The populate transition specifies how items will appear when their parent positioner is first created.

Attached Properties shows how the Positioner attached property can be used to determine where an item is within a positioner.

``` qml
Rectangle {
  id: red
  color: "red"
  width: 100
  height: 100
  Text {
      anchors.left: parent.right
      anchors.leftMargin: 20
      anchors.verticalCenter: parent.verticalCenter
      text: "Index: " + parent.Positioner.index
      + (parent.Positioner.isFirstItem ? " (First)" : "")
      + (parent.Positioner.isLastItem ? " (Last)" : "")
  }
  // When mouse is clicked, display the values of the positioner
  MouseArea {
    anchors.fill: parent
    onClicked: column.showInfo(red.Positioner)
  }
}
```

Files:

-   positioners/positioners-attachedproperties.qml
-   positioners/positioners-transitions.qml
-   positioners/positioners.qml
-   positioners/main.cpp
-   positioners/positioners.pro
-   positioners/positioners.qmlproject
-   positioners/positioners.qrc

