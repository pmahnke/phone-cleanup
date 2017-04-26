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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.5</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Using Qt Quick Behaviors with States

Using Qt Quick Behaviors with States
====================================

<span class="subtitle"></span>
<span id="details"></span> <span id="using-behaviors-with-states"></span>
Using Behaviors with States
---------------------------

In some cases you may choose to use a Behavior to animate a property change caused by a state change. While this works well for some situations, in other situations it may lead to unexpected behavior.

Here's an example that shows the problem:

``` qml
import QtQuick 2.0
Rectangle {
    width: 400
    height: 400
    Rectangle {
        id: coloredRect
        width: 100
        height: 100
        anchors.centerIn: parent
        color: "red"
        Behavior on color {
            ColorAnimation {}
        }
        MouseArea {
            id: mouser
            anchors.fill: parent
            hoverEnabled: true
        }
        states: State {
            name: "GreenState"
            when: mouser.containsMouse
            PropertyChanges {
                target: coloredRect
                color: "green"
            }
        }
    }
}
```

Testing the example by quickly and repeatedly moving the mouse in to and out of the colored rectangle shows that the colored rectangle will settle into a green color over time, never returning to full red. This is not what we wanted! The problem occurs because we have used a Behavior to animate the change in color, and our state change is trigged by the mouse entering or exiting the [MouseArea](../QtQuick.MouseArea/index.html), which is easily interrupted.

To state the problem more formally, using States and Behaviors together can cause unexpected behavior when:

-   a Behavior is used to animate a property change, specifically when moving from an explicitly defined state back to the implicit base state; and
-   this Behavior can be interrupted to (re-)enter an explicitly defined state.

The problem occurs because of the way the base state is defined for QML: as the "snapshot" state of the application just prior to entering an explicitly defined state. In this case, if we are in the process of animating from green back to red, and interrupt the animation to return to "GreenState", the base state will include the color in its intermediate, mid-animation form.

While future versions of QML should be able to handle this situation more gracefully, there are currently several ways to rework your application to avoid this problem.

1. Use a transition to animate the change, rather than a Behavior.

``` qml
import QtQuick 2.0
Rectangle {
    width: 400
    height: 400
    Rectangle {
        id: coloredRect
        width: 100
        height: 100
        anchors.centerIn: parent
        color: "red"
        MouseArea {
            id: mouser
            anchors.fill: parent
            hoverEnabled: true
        }
        states: State {
            name: "GreenState"
            when: mouser.containsMouse
            PropertyChanges {
                target: coloredRect
                color: "green"
            }
        }
        transitions: Transition {
            ColorAnimation {}
        }
    }
}
```

2. Use a conditional binding to change the property value, rather than a state

``` qml
import QtQuick 2.0
Rectangle {
    width: 400
    height: 400
    Rectangle {
        id: coloredRect
        width: 100
        height: 100
        anchors.centerIn: parent
        color: mouser.containsMouse ? "green" : "red"
        Behavior on color {
            ColorAnimation {}
        }
        MouseArea {
            id: mouser
            anchors.fill: parent
            hoverEnabled: true
        }
    }
}
```

3. Use only explicitly defined states, rather than an implicit base state

``` qml
import QtQuick 2.0
Rectangle {
    width: 400
    height: 400
    Rectangle {
        id: coloredRect
        width: 100
        height: 100
        anchors.centerIn: parent
        Behavior on color {
            ColorAnimation {}
        }
        MouseArea {
            id: mouser
            anchors.fill: parent
            hoverEnabled: true
        }
        states: [
        State {
            name: "GreenState"
            when: mouser.containsMouse
            PropertyChanges {
                target: coloredRect
                color: "green"
            }
        },
        State {
            name: "RedState"
            when: !mouser.containsMouse
            PropertyChanges {
                target: coloredRect
                color: "red"
            }
        }]
    }
}
```

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
