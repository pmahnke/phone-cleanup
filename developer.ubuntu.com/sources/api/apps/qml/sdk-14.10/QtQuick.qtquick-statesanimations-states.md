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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick States

Qt Quick States
===============

<span class="subtitle"></span>
<span id="details"></span> <span id="related-types"></span>
Related Types
-------------

Many user interface designs are *state driven*; interfaces have configurations that differ depending on the current state. For example, a traffic signal will configure its flags or lights depending on its state. While in the signal's `stop` state, a red light will turn on while the yellow and the green lights will turn off. In the `caution` state, the yellow light is on while the other lights are turned off.

In QML, *states* are a set of property configurations defined in a [State](../QtQuick.State/index.html) type. Different configurations could, for example:

-   Show some UI components and hide others
-   Present different available actions to the user
-   Start, stop, or pause animations
-   Execute some script required in the new state
-   Change a property value for a particular item
-   Show a different view or screen

All [Item](../QtQuick.Item/index.html)-based objects have a `state` property, and can specify additional states by adding new `State` objects to the item's [states](../QtQuick.Item/index.html#states-prop) property. Each state within a component has a unique `name`, an empty string being the default. To change the current state of an item, set the [state](../QtQuick.Item/index.html#state-prop) property to the name of the state.

Non-Item objects may use states through the [StateGroup](../QtQuick.StateGroup/index.html) type.

<span id="creating-states"></span>
Creating States
---------------

To create a state, add a [State](../QtQuick.State/index.html) object to the item's [states](../QtQuick.Item/index.html#states-prop) property, which holds a list of states for that item.

A warning `signal` component may have two states, the `NORMAL` and the `CRITICAL` state. Suppose that in the `NORMAL` state, the `color` of the signal should be `green` and the warning `flag` is down. Meanwhile, in the `CRITICAL` state, the `color` should be `red` and the flag is `up`. We may model the states using the `State` type and the color and flag configurations with the `PropertyChanges` type.

``` qml
Rectangle {
    id: signal
    width: 200; height: 200
    state: "NORMAL"
    states: [
        State {
            name: "NORMAL"
            PropertyChanges { target: signal; color: "green"}
            PropertyChanges { target: flag; state: "FLAG_DOWN"}
        },
        State {
            name: "CRITICAL"
            PropertyChanges { target: signal; color: "red"}
            PropertyChanges { target: flag; state: "FLAG_UP"}
        }
    ]
}
```

The [PropertyChanges](../QtQuick.PropertyChanges/index.html) type will change the values of object properties. Objects are referenced through their id. Objects outside the component are also referenced using the `id` property, exemplified by the property change to the external `flag` object.

Further, the state may change by assigning the `state` property with the appropriate signal state. A state switch could be in a [MouseArea](../QtQuick.MouseArea/index.html) type, assigning a different state whenever the signal receives a mouse click.

``` qml
Rectangle {
    id: signalswitch
    width: 75; height: 75
    color: "blue"
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (signal.state == "NORMAL")
                signal.state = "CRITICAL"
            else
                signal.state = "NORMAL"
        }
    }
}
```

The State type is not limited to performing modifications on property values. It can also:

-   Run some script using [StateChangeScript](../QtQuick.StateChangeScript/index.html)
-   Override an existing signal handler for an object using [PropertyChanges](../QtQuick.PropertyChanges/index.html)
-   Re-parent an [Item](../QtQuick.Item/index.html) using [ParentChange](../QtQuick.ParentChange/index.html)
-   Modify anchor values using [AnchorChanges](../QtQuick.AnchorChanges/index.html)

<span id="the-default-state"></span>
The Default State
-----------------

Every [Item](../QtQuick.Item/index.html) based component has a `state` property and a *default state*. The default state is the empty string (`""`) and contains all of an item's initial property values. The default state is useful for managing property values before state changes. Setting the `state` property to an empty string will load the default state.

<span id="the-when-property"></span>
The `when` Property
-------------------

For convenience, the State type has a `when` property that can bind to expressions to change the state whenever the bound expression evaluates to `true`. The `when` property will revert the state back to the default state when the expression evaluates to false.

``` qml
Rectangle {
    id: bell
    width: 75; height: 75
    color: "yellow"
    states: State {
                name: "RINGING"
                when: (signal.state == "CRITICAL")
                PropertyChanges {target: speaker; play: "RING!"}
            }
}
```

The `bell` component will change to the `RINGING` state whenever the `signal.state` is `CRITICAL`.

<span id="animating-state-changes"></span>
Animating State Changes
-----------------------

State changes induce abrupt value changes. The [Transition](../QtQuick.Transition/index.html) type allow smoother changes during state changes. In transitions, animations and interpolation behaviors are definable. The [Animation and Transitions](../QtQuick.qtquick-statesanimations-animations/index.html) article has more information about creating state animations.

The States and Transitions example demonstrates how to declare a basic set of states and apply animated transitions between them.

[Using Qt Quick Behaviors with States](../QtQuick.qtquick-statesanimations-behaviors/index.html) explains a common problem when using Behaviors to animate state changes.

<span id="state-fast-forwarding"></span>
State Fast Forwarding
---------------------

In order for Transition to correctly animate state changes, it is sometimes necessary for the engine to fast forward and rewind a state (that is, internally set and unset the state) before it is finally applied. The process is as follows:

1.  The state is fast forwarded to determine the complete set of end values.
2.  The state is rewound.
3.  The state is fully applied, with transitions.

In some cases this may cause unintended behavior. For example, a state that changes a view's *model* or a Loader's *sourceComponent* will set these properties multiple times (to apply, rewind, and then reapply), which can be relatively expensive.

State fast forwarding should be considered an implementation detail, and may change in later versions.

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
