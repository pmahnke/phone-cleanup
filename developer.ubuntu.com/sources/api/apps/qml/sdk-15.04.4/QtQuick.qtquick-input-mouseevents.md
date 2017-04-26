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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.4</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Mouse Events

Mouse Events
============

<span class="subtitle"></span>
<span id="details"></span> <span id="mouse-types"></span>
Mouse Types
-----------

-   [MouseArea](../QtQuick.MouseArea/index.html) type
-   [MouseEvent](../QtQuick.MouseEvent/index.html) object

<span id="mouse-event-handling"></span>
Mouse Event Handling
--------------------

QML uses signals and handlers to deliver mouse interactions. Specifically, Qt Quick provides the [MouseArea](../QtQuick.MouseArea/index.html) and [MouseEvent](../QtQuick.MouseEvent/index.html) types which allow developers to define signal handlers which accept mouse events within a defined area.

<span id="defining-a-mouse-area"></span>
Defining a Mouse Area
---------------------

The [MouseArea](../QtQuick.MouseArea/index.html) type receives events within a defined area. One quick way to define this area is to anchor the `MouseArea` to its parent's area using the `anchors.fill` property. If the parent is a [Rectangle](../QtQuick.Rectangle/index.html) (or any [Item](../QtQuick.Item/index.html) component), then the [MouseArea](../QtQuick.MouseArea/index.html) will fill the area defined by the parent's dimensions. Alternatively, an area smaller or larger than the parent is definable.

``` qml
Rectangle {
    id: button
    width: 100; height: 100
    MouseArea {
        anchors.fill: parent
        onClicked: console.log("button clicked")
    }
    MouseArea {
        width:150; height: 75
        onClicked: console.log("irregular area clicked")
    }
}
```

<span id="receiving-events"></span>
Receiving Events
----------------

The [MouseArea](../QtQuick.MouseArea/index.html) type provides signals and handlers to detect different mouse events. The [MouseArea](../QtQuick.MouseArea/index.html) type documentation describes these gestures in greater detail:

-   canceled
-   clicked
-   doubleClicked
-   entered
-   exited
-   positionChanged
-   pressAndHold
-   pressed
-   released

These signals have signal handlers that are invoked when the signals are emitted.

``` qml
    MouseArea {
        anchors.fill: parent
        onClicked: console.log("area clicked")
        onDoubleClicked: console.log("area double clicked")
        onEntered: console.log("mouse entered the area")
        onExited: console.log("mouse left the area")
    }
```

<span id="enabling-gestures"></span>
Enabling Gestures
-----------------

Some mouse gestures and button clicks need to be enabled before they send or receive events. Certain [MouseArea](../QtQuick.MouseArea/index.html) and [MouseEvent](../QtQuick.MouseEvent/index.html) properties enable these gestures.

To listen to (or explicitly ignore) a certain mouse button, set the appropriate mouse button to the [acceptedButtons](../QtQuick.MouseArea/index.html#acceptedButtons-prop) property.

Naturally, the mouse events, such as button presses and mouse positions, are sent during a mouse click. For example, the `containsMouse` property will only retrieve its correct value during a mouse press. The [hoverEnabled](../QtQuick.MouseArea/index.html#hoverEnabled-prop) will enable mouse events and positioning even when there are no mouse button presses. Setting the `hoverEnabled` property to `true`, in turn will enable the `entered`, `exited`, and `positionChanged` signal and their respective signal handlers.

``` qml
    MouseArea {
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onEntered: console.log("mouse entered the area")
        onExited: console.log("mouse left the area")
    }
```

Additionally, to disable the whole mouse area, set the [MouseArea](../QtQuick.MouseArea/index.html) `enabled` property to `false`.

<span id="mouseevent-object"></span>
MouseEvent Object
-----------------

Signals and their handlers receive a [MouseEvent](../QtQuick.MouseEvent/index.html) object as a parameter. The `mouse` object contain information about the mouse event. For example, the mouse button that started the event is queried through the [mouse.button](../QtQuick.MouseEvent/index.html#button-prop) property.

The `MouseEvent` object can also ignore a mouse event using its `accepted` property.

<span id="accepting-further-signals"></span>
### Accepting Further Signals

Many of the signals are sent multiple times to reflect various mouse events such as double clicking. To facilitate the classification of mouse clicks, the [MouseEvent](../QtQuick.MouseEvent/index.html) object has an `accepted` property to disable the event propagation.

To learn more about QML's event system, please read the signals and handlers, and event system document.

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
