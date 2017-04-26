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
-   [SDK 15.04.4](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   State

State
=====

<span class="subtitle"></span>
Defines configurations of objects and properties More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[changes](index.html#changes-prop)**** : list&lt;Change&gt;
-   ****[extend](index.html#extend-prop)**** : string
-   ****[name](index.html#name-prop)**** : string
-   ****[when](index.html#when-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

A *state* is a set of batched changes from the default configuration.

All items have a default state that defines the default configuration of objects and property values. New states can be defined by adding State items to the [states](../QtQuick.Item/index.html#states-prop) property to allow items to switch between different configurations. These configurations can, for example, be used to apply different sets of property values or execute different scripts.

The following example displays a single [Rectangle](../QtQuick.Rectangle/index.html). In the default state, the rectangle is colored black. In the "clicked" state, a [PropertyChanges](../QtQuick.PropertyChanges/index.html) object changes the rectangle's color to red. Clicking within the [MouseArea](../QtQuick.MouseArea/index.html) toggles the rectangle's state between the default state and the "clicked" state, thus toggling the color of the rectangle between black and red.

``` qml
import QtQuick 2.0
Rectangle {
    id: myRect
    width: 100; height: 100
    color: "black"
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: myRect.state == 'clicked' ? myRect.state = "" : myRect.state = 'clicked';
    }
    states: [
        State {
            name: "clicked"
            PropertyChanges { target: myRect; color: "red" }
        }
    ]
}
```

Notice the default state is referred to using an empty string ("").

States are commonly used together with [Transitions](../QtQuick.qtquick-statesanimations-animations/index.html) to provide animations when state changes occur.

**Note:** Setting the state of an object from within another state of the same object is not allowed.

**See also** [States example](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtQuick.animation/#states), [Qt Quick States](../QtQuick.qtquick-statesanimations-states/index.html), [Transitions](../QtQuick.qtquick-statesanimations-animations/index.html), and Qt QML.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="changes-prop"></span><span class="qmldefault">default</span><span class="name">changes</span> : <span class="type">list</span>&lt;<span class="type">Change</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the changes to apply for this state

By default these changes are applied against the default state. If the state extends another state, then the changes are applied against the state being extended.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extend-prop"></span><span class="name">extend</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the state that this state extends.

When a state extends another state, it inherits all the changes of that state.

The state being extended is treated as the base state in regards to the changes specified by the extending state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the state.

Each state should have a unique name within its item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="when-prop"></span><span class="name">when</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds when the state should be applied.

This should be set to an expression that evaluates to `true` when you want the state to be applied. For example, the following [Rectangle](../QtQuick.Rectangle/index.html) changes in and out of the "hidden" state when the [MouseArea](../QtQuick.MouseArea/index.html) is pressed:

``` qml
Rectangle {
    id: myRect
    width: 100; height: 100
    color: "red"
    MouseArea { id: mouseArea; anchors.fill: parent }
    states: State {
        name: "hidden"; when: mouseArea.pressed
        PropertyChanges { target: myRect; opacity: 0 }
    }
}
```

If multiple states in a group have `when` clauses that evaluate to `true` at the same time, the first matching state will be applied. For example, in the following snippet `state1` will always be selected rather than `state2` when sharedCondition becomes `true`.

``` qml
Item {
    states: [
        State { name: "state1"; when: sharedCondition },
        State { name: "state2"; when: sharedCondition }
    ]
    // ...
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
