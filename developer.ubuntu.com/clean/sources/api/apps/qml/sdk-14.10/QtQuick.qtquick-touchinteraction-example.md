---
Title: QtQuick.qtquick-touchinteraction-example
---
        
Qt Quick Examples - Touch Interaction
=====================================

<span class="subtitle"></span>
<span id="details"></span>
This is a collection of QML Touch Interaction examples.

![](https://developer.ubuntu.com/static/devportal_uploaded/c7c65a8f-88dd-4bf1-896f-3874bf5c7798-api/apps/qml/sdk-14.10/qtquick-touchinteraction-example/images/qml-touchinteraction-example.png)

This is a collection of small QML examples relating to touch interaction methods.

Multipoint Flames demonstrates distinguishing different fingers in a [MultiPointTouchArea](../QtQuick.MultiPointTouchArea.md), by assigning a different colored flame to each touch point. The [MultipointTouchArea](../QtQuick.MultiPointTouchArea.md) sets up multiple touch points:

``` qml
    MultiPointTouchArea {
        anchors.fill: parent
        minimumTouchPoints: 1
        maximumTouchPoints: 5
        touchPoints: [
            TouchPoint { id: touch1 },
            TouchPoint { id: touch2 },
            TouchPoint { id: touch11 },
            TouchPoint { id: touch21 },
            TouchPoint { id: touch31 }
        ]
    }
```

The flames are then simply bound to the coordiates of the touch point, and whether it is currently pressed, like so:

``` qml
    ParticleFlame {
        color: "red"
        emitterX: touch1.x
        emitterY: touch1.y
        emitting: touch1.pressed
    }
```

Bear-Whack demonstrates using a [MultiPointTouchArea](../QtQuick.MultiPointTouchArea.md) to add multiple finger support to a simple game. The interaction with the game is done through a [SpriteGoal](../QtQuick.Particles.SpriteGoal.md) that follows the [TouchPoint](../QtQuick.TouchPoint.md). The TouchPoints added to the [MultiPointTouchArea](../QtQuick.MultiPointTouchArea.md) are a component with all this logic embedded into it:

``` qml
TouchPoint {
    id: container
    property ParticleSystem system
    onPressedChanged: {
        if (pressed) {
            timer.restart();
            child.enabled = true;
            system.explode(x,y);
        }
    }
    property QtObject obj: Timer {
        id: timer
        interval: 100
        running: false
        repeat: false
        onTriggered: child.enabled = false
    }
    property Item child: SpriteGoal {
        enabled: false
        x: container.area.x - 16
        y: container.area.y - 16
        width: container.area.width + 32
        height: container.area.height + 32 //+32 so it doesn't have to hit the exact center
        system: container.system
        parent: container.system
        goalState: "falling"
    }
}
```

Flick Resize uses a [PinchArea](../QtQuick.PinchArea.md) to allow Pinch-to-Resize behavior. This is easily achieved just by listening to the [PinchArea](../QtQuick.PinchArea.md) signals and responding to user input.

``` qml
onPinchStarted: {
    initialWidth = flick.contentWidth
    initialHeight = flick.contentHeight
}
onPinchUpdated: {
    // adjust content pos due to drag
    flick.contentX += pinch.previousCenter.x - pinch.center.x
    flick.contentY += pinch.previousCenter.y - pinch.center.y
    // resize content
    flick.resizeContent(initialWidth * pinch.scale, initialHeight * pinch.scale, pinch.center)
}
onPinchFinished: {
    // Move its content within bounds.
    flick.returnToBounds()
}
```

Flickable is a simple example demonstrating the Flickable type. The object inside the flickable is very big, but the flickable itself is very small:

``` qml
Rectangle {
width: 320
height: 480
Flickable {
    anchors.fill: parent
    contentWidth: 1200
    contentHeight: 1200
    Rectangle {
        width: 1000
        height: 1000
```

Corkboards shows a more complex Flickable usecase, with types on the flickable that respond to mouse and keyboard interaction. This doesn't require special code, the Qt Quick types automatically cooperate with Flickable for accepting the touch events.

Files:

-   touchinteraction/touchinteraction.qml
-   touchinteraction/flickable/basic-flickable.qml
-   touchinteraction/flickable/corkboards.qml
-   touchinteraction/flickable/content/Panel.qml
-   touchinteraction/multipointtouch/bearwhack.qml
-   touchinteraction/multipointtouch/multiflame.qml
-   touchinteraction/multipointtouch/content/AugmentedTouchPoint.qml
-   touchinteraction/multipointtouch/content/BearWhackParticleSystem.qml
-   touchinteraction/multipointtouch/content/ParticleFlame.qml
-   touchinteraction/pincharea/flickresize.qml
-   touchinteraction/main.cpp
-   touchinteraction/touchinteraction.pro
-   touchinteraction/touchinteraction.qmlproject
-   touchinteraction/touchinteraction.qrc

