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
-   [SDK 15.04](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   Transition

Transition
==========

<span class="subtitle"></span>
Defines animated transitions that occur on state changes More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[animations](index.html#animations-prop)**** : list&lt;Animation&gt;
-   ****[enabled](index.html#enabled-prop)**** : bool
-   ****[from](index.html#from-prop)**** : string
-   ****[reversible](index.html#reversible-prop)**** : bool
-   ****[running](index.html#running-prop)**** : bool
-   ****[to](index.html#to-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

A Transition defines the animations to be applied when a [State](../QtQuick.State/index.html) change occurs.

For example, the following [Rectangle](../QtQuick.Rectangle/index.html) has two states: the default state, and an added "moved" state. In the "moved state, the rectangle's position changes to (50, 50). The added Transition specifies that when the rectangle changes between the default and the "moved" state, any changes to the `x` and `y` properties should be animated, using an `Easing.InOutQuad`.

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
    states: State {
        name: "moved"; when: mouseArea.pressed
        PropertyChanges { target: rect; x: 50; y: 50 }
    }
    transitions: Transition {
        NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
    }
}
```

Notice the example does not require [to](../QtQuick.PropertyAnimation/index.html#to-prop) and [from](../QtQuick.PropertyAnimation/index.html#from-prop) values for the [NumberAnimation](../QtQuick.NumberAnimation/index.html). As a convenience, these properties are automatically set to the values of `x` and `y` before and after the state change; the `from` values are provided by the current values of `x` and `y`, and the `to` values are provided by the [PropertyChanges](../QtQuick.PropertyChanges/index.html) object. If you wish, you can provide [to](../QtQuick.PropertyAnimation/index.html#to-prop) and [from](../QtQuick.PropertyAnimation/index.html#from-prop) values anyway to override the default values.

By default, a Transition's animations are applied for any state change in the parent item. The Transition [from](index.html#from-prop) and [to](index.html#to-prop) values can be set to restrict the animations to only be applied when changing from one particular state to another.

To define multiple transitions, specify [Item::transitions](../QtQuick.Item/index.html#transitions-prop) as a list:

``` qml
transitions: [
  Transition {
      from: "stop"; to: "go"
      PropertyAnimation { target: stopLight
                          properties: "color"; duration: 1000 }
  },
  Transition {
      from: "go"; to: "stop"
      PropertyAnimation { target: goLight
                          properties: "color"; duration: 1000 }
  } ]
```

If multiple Transitions are specified, only a single (best-matching) Transition will be applied for any particular state change. In the example above, when changing to `state1`, the first transition will be used, rather than the more generic second transition.

If a state change has a Transition that matches the same property as a [Behavior](../QtQuick.Behavior/index.html), the Transition animation overrides the [Behavior](../QtQuick.Behavior/index.html) for that state change.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html), [States example](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.animation/#states), [Qt Quick States](../QtQuick.qtquick-statesanimations-states/index.html), and Qt QML.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="animations-prop"></span><span class="qmldefault">default</span><span class="name">animations</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtQuick.Animation/index.html">Animation</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of the animations to be run for this transition.

``` qml
```

The top-level animations are run in parallel. To run them sequentially, define them within a [SequentialAnimation](../QtQuick.SequentialAnimation/index.html):

``` qml
transitions: Transition {
    SequentialAnimation {
        PropertyAnimation { property: "x"; duration: 1000 }
        ColorAnimation { duration: 1000 }
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the Transition will be run when moving from the `from` state to the `to` state.

By default a Transition is enabled.

Note that in some circumstances disabling a Transition may cause an alternative Transition to be used in its place. In the following example, although the first Transition has been set to animate changes from "state1" to "state2", this transition has been disabled by setting `enabled` to `false`, so any such state change will actually be animated by the second Transition instead.

``` qml
Item {
    states: [
        State { name: "state1" },
        State { name: "state2" }
    ]
    transitions: [
        Transition { from: "state1"; to: "state2"; enabled: false },
        Transition {
            // ...
        }
    ]
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="name">from</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties indicate the state changes that trigger the transition.

The default values for these properties is "\*" (that is, any state).

For example, the following transition has not set the `to` and `from` properties, so the animation is always applied when changing between the two states (i.e. when the mouse is pressed and released).

``` qml
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    MouseArea { id: mouseArea; anchors.fill: parent }
    states: State {
        name: "brighter"; when: mouseArea.pressed
        PropertyChanges { target: rect; color: "yellow" }
    }
    transitions: Transition {
        ColorAnimation { duration: 1000 }
    }
}
```

If the transition was changed to this:

``` qml
transitions: Transition {
    to: "brighter"
    ColorAnimation { duration: 1000 }
}
```

The animation would only be applied when changing from the default state to the "brighter" state (i.e. when the mouse is pressed, but not on release).

Multiple `to` and `from` values can be set by using a comma-separated string.

**See also** [reversible](index.html#reversible-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reversible-prop"></span><span class="name">reversible</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the transition should be automatically reversed when the conditions that triggered this transition are reversed.

The default value is false.

By default, transitions run in parallel and are applied to all state changes if the [from](index.html#from-prop) and [to](index.html#to-prop) states have not been set. In this situation, the transition is automatically applied when a state change is reversed, and it is not necessary to set this property to reverse the transition.

However, if a [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) is used, or if the [from](index.html#from-prop) or [to](index.html#to-prop) properties have been set, this property will need to be set to reverse a transition when a state change is reverted. For example, the following transition applies a sequential animation when the mouse is pressed, and reverses the sequence of the animation when the mouse is released:

``` qml
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    MouseArea { id: mouseArea; anchors.fill: parent }
    states: State {
        name: "brighter"
        when: mouseArea.pressed
        PropertyChanges { target: rect; color: "yellow"; x: 50 }
    }
    transitions: Transition {
        SequentialAnimation {
            PropertyAnimation { property: "x"; duration: 1000 }
            ColorAnimation { duration: 1000 }
        }
    }
}
```

If the transition did not set the `to` and `reversible` values, then on the mouse release, the transition would play the [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.animation/#propertyanimation) before the [ColorAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.animation/#coloranimation) instead of reversing the sequence.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the transition is currently running.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties indicate the state changes that trigger the transition.

The default values for these properties is "\*" (that is, any state).

For example, the following transition has not set the `to` and `from` properties, so the animation is always applied when changing between the two states (i.e. when the mouse is pressed and released).

``` qml
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    MouseArea { id: mouseArea; anchors.fill: parent }
    states: State {
        name: "brighter"; when: mouseArea.pressed
        PropertyChanges { target: rect; color: "yellow" }
    }
    transitions: Transition {
        ColorAnimation { duration: 1000 }
    }
}
```

If the transition was changed to this:

``` qml
transitions: Transition {
    to: "brighter"
    ColorAnimation { duration: 1000 }
}
```

The animation would only be applied when changing from the default state to the "brighter" state (i.e. when the mouse is pressed, but not on release).

Multiple `to` and `from` values can be set by using a comma-separated string.

**See also** [reversible](index.html#reversible-prop).

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
