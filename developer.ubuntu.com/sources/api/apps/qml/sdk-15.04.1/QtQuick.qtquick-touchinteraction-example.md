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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.1</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Examples - Touch Interaction

Qt Quick Examples - Touch Interaction
=====================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/0a61e828-18f3-450f-9ee8-7249f80b3ea6-api/apps/qml/sdk-15.04.1/qtquick-touchinteraction-example/images/qml-touchinteraction-example.png)

*Touch Interaction* is a collection of small QML examples relating to touch interaction methods. For more information, visit [Important Concepts In Qt Quick - User Input](../QtQuick.qtquick-input-topic/index.html).

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="multipoint-flames"></span>
Multipoint Flames
-----------------

*Multipoint Flames* demonstrates distinguishing different fingers in a [MultiPointTouchArea](../QtQuick.MultiPointTouchArea/index.html), by assigning a different colored flame to each touch point.

The MultipointTouchArea sets up multiple touch points:

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

The flames are then simply bound to the coordinates of the touch point, and whether it is currently pressed, as follows:

``` qml
    ParticleFlame {
        color: "red"
        emitterX: touch1.x
        emitterY: touch1.y
        emitting: touch1.pressed
    }
```

<span id="bear-whack"></span>
Bear-Whack
----------

*Bear-Whack* demonstrates using [MultiPointTouchArea](../QtQuick.MultiPointTouchArea/index.html) to add multiple finger support to a simple game. The interaction with the game is done through a [SpriteGoal](../QtQuick.Particles.SpriteGoal/index.html) that follows the [TouchPoint](../QtQuick.TouchPoint/index.html). The TouchPoints added to the [MultiPointTouchArea](../QtQuick.MultiPointTouchArea/index.html) are a component with the relevant logic embedded into it:

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

<span id="flick-resize"></span>
Flick Resize
------------

*Flick Resize* uses a [PinchArea](../QtQuick.PinchArea/index.html) to implement a *pinch-to-resize* behavior. This is easily achieved by listening to the [PinchArea](../QtQuick.PinchArea/index.html) signals and responding to user input.

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

<span id="flickable"></span>
Flickable
---------

*Flickable* is a simple example demonstrating the [Flickable](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.touchinteraction/#flickable) type.

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

<span id="corkboards"></span>
Corkboards
----------

*Corkboards* shows another use for [Flickable](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.touchinteraction/#flickable), with QML types within the flickable object that respond to mouse and keyboard interaction. This behavior does not require special code as the Qt Quick types already cooperate with the Flickable type for accepting touch events.

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
