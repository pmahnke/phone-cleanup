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

-   Qt Quick Examples - Animation

Qt Quick Examples - Animation
=============================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/f4a4722c-c347-444a-88e4-c1ebba5bfa39-api/apps/qml/sdk-15.04.6/qtquick-animation-example/images/qml-animations-example.png)

*Animation* is a collection of small QML examples relating to animation. Each example is a small QML file emphasizing a particular type or feature.

For more information about animations, visit [Important Concepts in Qt Quick - States, Transitions and Animations](../QtQuick.qtquick-statesanimations-topic/index.html).

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="coloranimation"></span>
ColorAnimation
--------------

*ColorAnimation* uses color animations to fade a sky from day to night.

``` qml
gradient: Gradient {
    GradientStop {
        position: 0.0
        SequentialAnimation on color {
            loops: Animation.Infinite
            ColorAnimation { from: "#14148c"; to: "#0E1533"; duration: 5000 }
            ColorAnimation { from: "#0E1533"; to: "#14148c"; duration: 5000 }
        }
    }
    GradientStop {
        position: 1.0
        SequentialAnimation on color {
            loops: Animation.Infinite
            ColorAnimation { from: "#14aaff"; to: "#437284"; duration: 5000 }
            ColorAnimation { from: "#437284"; to: "#14aaff"; duration: 5000 }
        }
    }
}
```

<span id="propertyanimation"></span>
PropertyAnimation
-----------------

*PropertyAnimation* uses number animations to bounce a circle up and down.

``` qml
// Animate the y property. Setting loops to Animation.Infinite makes the
// animation repeat indefinitely, otherwise it would only run once.
SequentialAnimation on y {
    loops: Animation.Infinite
    // Move from minHeight to maxHeight in 300ms, using the OutExpo easing function
    NumberAnimation {
        from: smiley.minHeight; to: smiley.maxHeight
        easing.type: Easing.OutExpo; duration: 300
    }
    // Then move back to minHeight in 1 second, using the OutBounce easing function
    NumberAnimation {
        from: smiley.maxHeight; to: smiley.minHeight
        easing.type: Easing.OutBounce; duration: 1000
    }
    // Then pause for 500ms
    PauseAnimation { duration: 500 }
}
```

<span id="animators"></span>
Animators
---------

*Animators* uses animators to bounce an icon up and down.

``` qml
SequentialAnimation {
    SequentialAnimation {
        ParallelAnimation {
            YAnimator {
                target: smiley;
                from: smiley.minHeight;
                to: smiley.maxHeight
                easing.type: Easing.OutExpo;
                duration: 300
            }
            ScaleAnimator {
                target: shadow
                from: 1
                to: 0.5
                easing.type: Easing.OutExpo;
                duration: 300
            }
        }
        ParallelAnimation {
            YAnimator {
                target: smiley;
                from: smiley.maxHeight;
                to: smiley.minHeight
                easing.type: Easing.OutBounce;
                duration: 1000
            }
            ScaleAnimator {
                target: shadow
                from: 0.5
                to: 1
                easing.type: Easing.OutBounce;
                duration: 1000
            }
        }
    }
    PauseAnimation { duration: 500 }
    running: true
    loops: Animation.Infinite
}
```

<span id="behaviors"></span>
Behaviors
---------

*Behaviors* uses behaviors to move a rectangle to where you click.

``` qml
// Set an 'elastic' behavior on the focusRect's y property.
Behavior on y {
    NumberAnimation { easing.type: Easing.OutElastic; easing.amplitude: 3.0; easing.period: 2.0; duration: 300 }
}
```

<span id="wiggly-text"></span>
Wiggly Text
-----------

*Wiggly Text* demonstrates using more complex behaviors to animate and wiggle some text around as you drag it. It does this by assigning a complex binding to each letter:

``` qml
            x: follow ? follow.x + follow.width : container.width / 6
            y: follow ? follow.y : container.height / 2
```

Then, it uses behaviors to animate the movement of each letter:

``` qml
            Behavior on x { enabled: container.animated; SpringAnimation { spring: 3; damping: 0.3; mass: 1.0 } }
            Behavior on y { enabled: container.animated; SpringAnimation { spring: 3; damping: 0.3; mass: 1.0 } }
```

<span id="tv-tennis"></span>
Tv Tennis
---------

*Tv Tennis* uses complex behaviors to make the paddles follow a ball to simulate an infinite tennis game. Again, a binding which depends on other values is applied to the position and a behavior provided the animation.

``` qml
y: ball.direction == 'left' ? ball.y - 45 : page.height/2 -45;
Behavior on y { SpringAnimation{ velocity: 300 } }
```

<span id="easing-curves"></span>
Easing Curves
-------------

*Easing Curves* shows off all the easing curves available in Qt Quick animations.

<span id="states"></span>
States
------

*States* demonstrates how the properties of an item can vary between [states](../QtQuick.qtquick-statesanimations-states/index.html).

It defines several states:

``` qml
// In state 'middleRight', move the image to middleRightRect
State {
    name: "middleRight"
    PropertyChanges { target: userIcon; x: middleRightRect.x; y: middleRightRect.y }
},
// In state 'bottomLeft', move the image to bottomLeftRect
State {
    name: "bottomLeft"
    PropertyChanges { target: userIcon; x: bottomLeftRect.x; y: bottomLeftRect.y  }
}
```

<span id="transitions"></span>
Transitions
-----------

*Transitions* takes the States example and animates the property changes by setting transitions:

``` qml
// Transitions define how the properties change when the item moves between each state
transitions: [
    // When transitioning to 'middleRight' move x,y over a duration of 1 second,
    // with OutBounce easing function.
    Transition {
        from: "*"; to: "middleRight"
        NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce; duration: 1000 }
    },
    // When transitioning to 'bottomLeft' move x,y over a duration of 2 seconds,
    // with InOutQuad easing function.
    Transition {
        from: "*"; to: "bottomLeft"
        NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad; duration: 2000 }
    },
    // For any other state changes move x,y linearly over duration of 200ms.
    Transition {
        NumberAnimation { properties: "x,y"; duration: 200 }
    }
```

<span id="pathanimation"></span>
PathAnimation
-------------

*PathAnimation* animates an image along a bezier curve using a [PathAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation).

``` qml
PathAnimation {
    id: pathAnim
    duration: 2000
    easing.type: Easing.InQuad
    target: box
    orientation: PathAnimation.RightFirst
    anchorPoint: Qt.point(box.width/2, box.height/2)
    path: Path {
        startX: 50; startY: 50
        PathCubic {
            x: window.width - 50
            y: window.height - 50
            control1X: x; control1Y: 50
            control2X: 50; control2Y: y
        }
        onChanged: canvas.requestPaint()
    }
}
```

<span id="pathinterpolator"></span>
PathInterpolator
----------------

*PathInterpolator* animates an image along the same bezier curve, using a [PathInterpolator](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.animation/#pathinterpolator) instead.

``` qml
PathInterpolator {
    id: motionPath
    path: Path {
        startX: 50; startY: 50
        PathCubic {
            x: window.width - 50
            y: window.height - 50
            control1X: x; control1Y: 50
            control2X: 50; control2Y: y
        }
        onChanged: canvas.requestPaint()
    }
    SequentialAnimation on progress {
        running: true
        loops: -1
        PauseAnimation { duration: 1000 }
        NumberAnimation {
            id: progressAnim
            running: false
            from: 0; to: 1
            duration: 2000
            easing.type: Easing.InQuad
        }
    }
}
```

Files:

-   animation/animation.qml
-   animation/basics/animators.qml
-   animation/basics/color-animation.qml
-   animation/basics/property-animation.qml
-   animation/behaviors/SideRect.qml
-   animation/behaviors/behavior-example.qml
-   animation/behaviors/tvtennis.qml
-   animation/behaviors/wigglytext.qml
-   animation/easing/easing.qml
-   animation/pathanimation/pathanimation.qml
-   animation/pathinterpolator/pathinterpolator.qml
-   animation/states/states.qml
-   animation/states/transitions.qml
-   animation/main.cpp
-   animation/animation.pro
-   animation/animation.qmlproject
-   animation/animation.qrc

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
