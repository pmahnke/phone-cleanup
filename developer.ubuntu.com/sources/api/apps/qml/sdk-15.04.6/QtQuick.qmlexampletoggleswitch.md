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

-   Qt Quick Examples - Toggle Switch

Qt Quick Examples - Toggle Switch
=================================

<span class="subtitle"></span>
<span id="details"></span>
This example shows how to create a reusable switch component in QML.

The code for this example can be found in the `examples/quick/customitems/slideswitch` directory.

The objects that compose the switch are:

-   a `on` property (the interface to interact with the switch),
-   two images (the background image and the knob),
-   two mouse regions for user interation (on the background image and on the knob),
-   two states (an *on* state and an *off* state),
-   two functions or slots to react to the user interation (`toggle()` and `dorelease()`),
-   and a transition that describe how to go from one state to the other.

<span id="switch-qml"></span>
Switch.qml
----------

``` qml
import QtQuick 2.0
Item {
    id: toggleswitch
    width: background.width; height: background.height
    property bool on: false
    function toggle() {
        if (toggleswitch.state == "on")
            toggleswitch.state = "off";
        else
            toggleswitch.state = "on";
    }
    function releaseSwitch() {
        if (knob.x == 1) {
            if (toggleswitch.state == "off") return;
        }
        if (knob.x == 78) {
            if (toggleswitch.state == "on") return;
        }
        toggle();
    }
    Image {
        id: background
        source: "background.png"
        MouseArea { anchors.fill: parent; onClicked: toggle() }
    }
    Image {
        id: knob
        x: 1; y: 2
        source: "knob.png"
        MouseArea {
            anchors.fill: parent
            drag.target: knob; drag.axis: Drag.XAxis; drag.minimumX: 1; drag.maximumX: 78
            onClicked: toggle()
            onReleased: releaseSwitch()
        }
    }
    states: [
        State {
            name: "on"
            PropertyChanges { target: knob; x: 78 }
            PropertyChanges { target: toggleswitch; on: true }
        },
        State {
            name: "off"
            PropertyChanges { target: knob; x: 1 }
            PropertyChanges { target: toggleswitch; on: false }
        }
    ]
    transitions: Transition {
        NumberAnimation { properties: "x"; easing.type: Easing.InOutQuad; duration: 200 }
    }
}
```

<span id="walkthrough"></span>
Walkthrough
-----------

<span id="interface"></span>
### Interface

``` qml
    property bool on: false
```

This property is the interface of the switch. By default, the switch is off and this property is `false`. It can be used to activate/deactivate the switch or to query its current state.

In this example:

``` qml
Item {
    Switch {
        id: mySwitch
        on: true
    }
    Text {
        text: "The switch is on"
        visible: mySwitch.on == true
    }
}
```

the text will only be visible when the switch is on.

<span id="images-and-user-interaction"></span>
### Images and user interaction

``` qml
    Image {
        id: background
        source: "background.png"
        MouseArea { anchors.fill: parent; onClicked: toggle() }
    }
```

First, we create the background image of the switch. In order for the switch to toggle when the user clicks on the background, we add a [MouseArea](../QtQuick.MouseArea/index.html) as a child item of the image. A `MouseArea` has a `onClicked` property that is triggered when the item is clicked. For the moment we will just call a `toggle()` function. We will see what this function does in a moment.

``` qml
    Image {
        id: knob
        x: 1; y: 2
        source: "knob.png"
        MouseArea {
            anchors.fill: parent
            drag.target: knob; drag.axis: Drag.XAxis; drag.minimumX: 1; drag.maximumX: 78
            onClicked: toggle()
            onReleased: releaseSwitch()
        }
    }
```

Then, we place the image of the knob on top of the background. The interaction here is a little more complex. We want the knob to move with the finger when it is clicked. That is what the `drag` property of the `MouseArea` is for. We also want to toggle the switch if the knob is released between state. We handle this case in the `dorelease()` function that is called in the `onReleased` property.

<span id="states"></span>
### States

``` qml
    states: [
        State {
            name: "on"
            PropertyChanges { target: knob; x: 78 }
            PropertyChanges { target: toggleswitch; on: true }
        },
        State {
            name: "off"
            PropertyChanges { target: knob; x: 1 }
            PropertyChanges { target: toggleswitch; on: false }
        }
    ]
```

We define the two states of the switch:

-   In the *on* state the knob is on the right (`x` position is 78) and the `on` property is `true`.
-   In the *off* state the knob is on the left (`x` position is 1) and the `on` property is `false`.

For more information on states see [Qt Quick States](../QtQuick.qtquick-statesanimations-states/index.html).

<span id="functions"></span>
### Functions

We add two JavaScript functions to our switch:

``` qml
    function toggle() {
        if (toggleswitch.state == "on")
            toggleswitch.state = "off";
        else
            toggleswitch.state = "on";
    }
```

This first function is called when the background image or the knob are clicked. We simply want the switch to toggle between the two states (*on* and *off*).

``` qml
    function releaseSwitch() {
        if (knob.x == 1) {
            if (toggleswitch.state == "off") return;
        }
        if (knob.x == 78) {
            if (toggleswitch.state == "on") return;
        }
        toggle();
    }
```

This second function is called when the knob is released and we want to make sure that the knob does not end up between states (neither *on* nor *off*). If it is the case call the `toggle()` function otherwise we do nothing.

For more information on scripts see JavaScript Expressions in QML Documents.

<span id="transition"></span>
### Transition

``` qml
    transitions: Transition {
        NumberAnimation { properties: "x"; easing.type: Easing.InOutQuad; duration: 200 }
    }
```

At this point, when the switch toggles between the two states the knob will instantly change its `x` position between 1 and 78. In order for the knob to move smoothly we add a transition that will animate the `x` property with an easing curve for a duration of 200ms.

For more information on transitions see [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html).

<span id="usage"></span>
Usage
-----

The switch can be used in a QML file, like this:

``` qml
    Switch { anchors.centerIn: parent; on: false }
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
