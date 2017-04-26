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
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   Mouse

Mouse
=====

<span class="subtitle"></span>
Attached property filtering mouse events occured inside the owner. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.2 |

<span id="properties"></span>
Properties
----------

-   ****[acceptedButtons](index.html#acceptedButtons-prop)**** : Qt::MouseButtons
-   ****[clickAndHoldThreshold](index.html#clickAndHoldThreshold-prop)**** : int
-   ****[enabled](index.html#enabled-prop)**** : bool
-   ****[forwardTo](index.html#forwardTo-prop)**** : list&lt;Item&gt;
-   ****[hoverEnabled](index.html#hoverEnabled-prop)**** : bool
-   ****[priority](index.html#priority-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[onClicked](index.html#onClicked-signal)****(MouseEvent *event*)
-   ****[onDoubleClicked](index.html#onDoubleClicked-signal)****(MouseEvent *event*)
-   ****[onEntered](index.html#onEntered-signal)****(MouseEvent *event*)
-   ****[onExited](index.html#onExited-signal)****(MouseEvent *event*)
-   ****[onPositionChanged](index.html#onPositionChanged-signal)****(MouseEvent *event*)
-   ****[onPressAndHold](index.html#onPressAndHold-signal)****(MouseEvent *event*)
-   ****[onPressed](index.html#onPressed-signal)****(MouseEvent *event*, Item *host*)
-   ****[onReleased](index.html#onReleased-signal)****(MouseEvent *event*)

<span id="details"></span>
Detailed Description
--------------------

Sometimes we need to provide additional functionality on mouse events beside a QML element's default behavior. Placing a [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html) over a component however will grab the mouse events from the component underneath, no matter if we set *preventStealing* to false or not. Setting mouse.accepted to false in *onPressed* would result in having the event forwarded to the [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html)'s parent, however [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html) will no longer receive other mouse events.

``` qml
import QtQuick 2.4
TextInput {
    width: 100
    height: 20
    MouseArea {
        anchors.fill: parent
        preventStealing: false
        // do not accept event so it gets propagated to the parent item
        onPressed: mouse.accepted = false;
        onReleased: console.log("this will not be printed")
    }
}
```

Ubuntu UI Toolkit declares filter components similar to Keys, which can be attached to any visual primitve. Mouse filter however will have effect only when attached to items handling mouse events. Events are handled through signals, where the event data is presented through the *mouse* parameter. Events should be accepted if the propagation of those to the owner is not wanted. This is not valid to [onClicked](index.html#onClicked-signal), [onPressAndHold](index.html#onPressAndHold-signal) composed events.

The previous code sample using Mouse filter, which will print the pressed and released mouse buttons would look as follows:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
TextInput {
    width: 100
    height: 20
    // do not accept event so it gets propagated to the parent item
    Mouse.onPressed: console.log("mouse button pressed: " + mouse.button)
    Mouse.onReleased: console.log("mouse button released: " + mouse.button)
}
```

The event details are reported in the *mouse* parameter, of [MouseEvent](../../sdk-14.10/QtQuick.MouseEvent/index.html) type, which extends [QtQuick](http://doc.qt.io/qt-5/qtquick-qmlmodule.html)'s [MouseEvent](../../sdk-14.10/QtQuick.MouseEvent/index.html) with additional properties.

The filter will accept the same mouse buttons the owner accepts, and will accept hover events if the owner does. However it is not possible to alter these settings through the filter. If button handling other than the default ones specified for the primitive is required, MouseAreas can be declared to handle those events.

Example of handling right button clicks over a [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html):

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
TextInput {
    width: 100
    height: 20
    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.RightButton
        onClicked: console.log("right button clicked")
    }
}
```

In this example left and middle mouse button clicks will reach [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html) as [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html) only grabs right button events.

Mouse filter can be used in combination with [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html), where the filter brings additional functionality on top of existing primitive functionality, and [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html) add new functionality to the primitive.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
TextInput {
    width: 100
    height: 20
    // do not accept event so it gets propagated to the parent item
    Mouse.onPressed: {
        if (mouse.button === Qt.LeftButton) {
            // do something
        }
    }
    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.RightButton
        Mouse.onPressed: console.log("right button clicked")
    }
}
```

As mentioned, mouse filters can be attached to any visual item. Attaching it to items that do not handle any mouse events will not have any effect. However child items which handle mouse events can forward the events they handle to their parent. In this way mouse events will land in these items too, and mouse filter attached to those can also handle the event. This is useful when creating custom types where the mouse handling item is nested into a non-mouse handling one, and we want to provide additional filtering possibility to the user. These type of items are called proxy handlers.

``` qml
Item {
    id: top
    width: 100
    height: 50
    Mouse.onPressed: console.log("mouse received from input")
    TextItem {
        anchors.fill: parent
        Mouse.forvardTo: [top]
        Mouse.onPressed: console.log("pressed over input")
        Mouse.onPressAndHold: console.log("longpress handled here")
    }
}
```

In this example the mouse press is first handled by the mouse filter attached to [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html), then it is forwarded to the top item and finally to the [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html). Accepting the mouse event will stop propagation to the top item as well as to the [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html). The topmost item itself does not handle mouse events, therefore it will be a sinple proxy handler item. However, proxies can themself handle mouse events. Therefore each mouse event signal has the *host* parameter specifying the sender of the mouse event reported.

**Note:** The forwarded events are handled in the proxy handlers only if the mouse position points inside their area. If the forwarded mouse position falls outside the target area, the event will not be reported, however will be forwarded further to the items in the list. In the following example the mouse press in red rectangle will be printed as well as the proxied mouse press from the main item.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
Item {
    id: main
    width: units.gu(40)
    height: units.gu(71)
    Mouse.onPressed: console.log("got the mouse press forwarded by " + host.objectName)
    Column {
        anchors.fill: parent
        spacing: units.gu(1)
        Rectangle {
            id: blueRect
            objectName: "BlueRect"
            width: parent.width
            height: units.gu(20)
            color: "blue"
            Mouse.forwardTo: [main]
            Mouse.onPressed: console.log("This should not be printed")
        }
        Rectangle {
            objectName: "RedRect"
            width: parent.width
            height: units.gu(20)
            color: "red"
            MouseArea {
                anchors.fill: parent
                Mouse.forwardTo: [blueRect]
                Mouse.onPressed: console.log("Pressed in " + host.objectName)
            }
        }
    }
}
```

An interesting feature that can be achieved using Mouse filter is the event "transparency" towards the [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html) lying behind the items which handle mouse events. This means for example that by forwarding mouse events occurred on a [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html) to a [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html) that stays behind it in the item hierarchy, the [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html) will also get all the events occurred on the area covered by the [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html), acting like it would be above the [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html). However, due to the nature of the [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html) event acceptance policy (all events are accepted by default) [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html) will not get these mouse events unless we set the *accepted* field of the mouse event to false in [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html). This normally leads to the [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html) no longer getting further mouse events. However, Mouse filter will continue to forward other mouse events to the [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html), so setting *accepted* to false in *onPressed*, *onReleased* will not have the default effect. This is only valid to press and release events, double-click or mouse position change will be blocked by the [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html) still.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MouseArea {
    id: topArea
    width: units.gu(50)
    height: units.gu(10)
    onPressed: {
        console.log("forwarded pressed")
        mouse.accepted = false
    }
    onReleased: {
        console.log("released")
        mouse.accepted = false
    }
    TextInput {
        width: units.gu(40)
        height: units.gu(5)
        anchors.centerIn: parent
        Mouse.forwardTo: [topArea]
        Mouse.onPressed: console.log("input pressed")
        Mouse.onReleased: console.log("input released")
    }
}
```

Mouse filter provides ability to control the order of the event dispatching. The filter can receive the events prior the owner or after the owner. This can be controlled through the [priority](index.html#priority-prop) property. In the following example we make sure the [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html) always receives the events before the filter:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
TextInput {
    id: input
    width: units.gu(40)
    height: units.gu(5)
    activeFocusOnPress: true
    Mouse.prority: Mouse.AfterItem
    Mouse.onPressed: if (input.activeFocus) console.log("Text input already handled it")
}
```

Another feature of the mouse filters is the ability to restrict when the composed events like [onClicked](index.html#onClicked-signal) and [onPressAndHold](index.html#onPressAndHold-signal) should be triggered. By default these events are triggered no matter what is the distance between the mouse pressed position and the current position after a certain timeout (for [onPressAndHold](index.html#onPressAndHold-signal)) or upon mouse release (for [onClicked](index.html#onClicked-signal)). In this way the [onClicked](index.html#onClicked-signal) will be emitted even if the user presses the mouse at the left-top edge of the component, then moves it to the right-bottom corner and releases it. This may not be the preferred behavior on certain components (like [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html)). Therefore MouseFilter provides a property which can alter this behavior, the [clickAndHoldThreshold](index.html#clickAndHoldThreshold-prop). This property specifies the radius of the area the up-mentioned composed events are emitted during a mouse move.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
TextInput {
    width: units.gu(40)
    height: units.gu(5)
    activeFocusOnPress: true
    selectByMouse: true
    // emit composed events only if the mouse moves within 2 GU radius area
    Mouse.clickAndHoldThreshold: units.gu(2)
    Mouse.onClicked: console.log("click happened within threshold value")
    Mouse.onPressAndHold: console.log("pressAndHold happened within threshold value")
}
```

Similar functionality for the case when the mouse event occurs outside of the owner is brought by the [InverseMouse](../Ubuntu.Components.InverseMouse/index.html) attached property.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="acceptedButtons-prop"></span><span class="qmlreadonly">read-only</span><span class="name">acceptedButtons</span> : <span class="type">Qt::MouseButtons</span></p></td>
</tr>
</tbody>
</table>

The property holds the accepted mouse buttons of the owner.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clickAndHoldThreshold-prop"></span><span class="name">clickAndHoldThreshold</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property holds the radius of the tolerance area the mouse can move in both x and y axis when the mouse is pressed, during which the composed events such as [onClicked](index.html#onClicked-signal) and [onPressAndHold](index.html#onPressAndHold-signal) will still be emitted. If the mouse is moved out of this area while the button is pressed, no composed events will be emitted.

When this value is 0, the signals will be emitted as in [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html), meaning the composed events will come until the mouse is moved inside the owner's area.

The default value is 0.

**Note:** The value has no effect for the forwarded events. The threshold is only valid when the host handles mouse events.

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

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="forwardTo-prop"></span><span class="name">forwardTo</span> : <span class="type">list</span>&lt;<span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The property provides a way to forward mouse presses, releases, moves and double click events to other items. This can be useful when you want other items to handle different parts of the same mouse event or to handle other mouse events.

The items listed will receive the event only if the mouse event falls into their area. Once an item that has forwarded mouse events accepts the event, that will no longer be delivered to the rest of the items in the list. This rule is also applied on the owner when the priority is set to *BeforeItem*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hoverEnabled-prop"></span><span class="qmlreadonly">read-only</span><span class="name">hoverEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property reports whether the owner accepts hover events or not. When events are accepted [onEntered](index.html#onEntered-signal), [onPositionChanged](index.html#onPositionChanged-signal) and [onExited](index.html#onExited-signal) signals containing the mouse cursor position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="priority-prop"></span><span class="name">priority</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The property specifies the event dispach relation between the filter, the elements the event is forwarded to and the owner. Similar to Keys' *priority* property, the event dispach is performed in two ways: berfore (*BeforeItem*) or after (*AfterItem*) the owner receives the events.

When *BeforeItem* is set the event dispach happens based as follows:

1.  the event is handled by the mouse filter
2.  if there are items listed in [forwardTo](index.html#forwardTo-prop) property, the event will be forwarded to those items
3.  the event is handed over the owner.

When *AfterItem* is set the event dispach happens based as follows:

1.  the event is handed over the owner;
2.  the event is handled by the mouse filter;
3.  if there are items listed in [forwardTo](index.html#forwardTo-prop) property, the event will be forwarded to those items.

The default value is *BeforeItem*.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onClicked-signal"></span><span class="name">onClicked</span>(<span class="type"><a href="../../sdk-14.10/QtQuick.MouseEvent/index.html">MouseEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

The signal reports the mouse click. The signal is not emitted if the [onPressAndHold](index.html#onPressAndHold-signal) got triggered or if [onDoubleClicked](index.html#onDoubleClicked-signal) is handled (a slot is connected to it). The *host* specifies the item that triggered the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onDoubleClicked-signal"></span><span class="name">onDoubleClicked</span>(<span class="type"><a href="../../sdk-14.10/QtQuick.MouseEvent/index.html">MouseEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

The signal reports mouse double click. The *host* specifies the item that triggered the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onEntered-signal"></span><span class="name">onEntered</span>(<span class="type"><a href="../../sdk-14.10/QtQuick.MouseEvent/index.html">MouseEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

The signal reports that the mouse has entered into the area. The signal is emitted when the hover events are enabled and the mouse enters the area or when one of the accepted mouse button is pressed. The *host* specifies the item that triggered the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onExited-signal"></span><span class="name">onExited</span>(<span class="type"><a href="../../sdk-14.10/QtQuick.MouseEvent/index.html">MouseEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

The signal reports that the mouse has left the area. The signal is emitted when the hover events are enabled for the owner or if not, when one of the accepted button is released. The *host* specifies the item that triggered the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onPositionChanged-signal"></span><span class="name">onPositionChanged</span>(<span class="type"><a href="../../sdk-14.10/QtQuick.MouseEvent/index.html">MouseEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

The signal reports the mouse pointer position change. If the hover events are enabled for the owner, the signal will come continuously. Otherwise the position chanes are reported when one of the accepted mouse buttons are being kept pressed. The *host* specifies the item that triggered the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onPressAndHold-signal"></span><span class="name">onPressAndHold</span>(<span class="type"><a href="../../sdk-14.10/QtQuick.MouseEvent/index.html">MouseEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

The signal reports the mouse press and hold. The *host* specifies the item that triggered the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onPressed-signal"></span><span class="name">onPressed</span>(<span class="type"><a href="../../sdk-14.10/QtQuick.MouseEvent/index.html">MouseEvent</a></span> <em>event</em>, <span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span> <em>host</em>)</p></td>
</tr>
</tbody>
</table>

The signal reports the mouse press. The *host* specifies the item that triggered the event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onReleased-signal"></span><span class="name">onReleased</span>(<span class="type"><a href="../../sdk-14.10/QtQuick.MouseEvent/index.html">MouseEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

The signal reports the mouse release. The *host* specifies the item that triggered the event.

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
