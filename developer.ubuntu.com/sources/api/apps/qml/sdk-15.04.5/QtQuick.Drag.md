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
-   [SDK 15.04.5](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   Drag

Drag
====

<span class="subtitle"></span>
For specifying drag and drop events for moved Items More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[active](index.html#active-attached-prop)**** : bool
-   ****[dragType](index.html#dragType-attached-prop)**** : enumeration
-   ****[hotSpot](index.html#hotSpot-attached-prop)**** : QPointF
-   ****[keys](index.html#keys-attached-prop)**** : stringlist
-   ****[mimeData](index.html#mimeData-attached-prop)**** : stringlist
-   ****[proposedAction](index.html#proposedAction-attached-prop)**** : enumeration
-   ****[source](index.html#source-attached-prop)**** : Object
-   ****[supportedActions](index.html#supportedActions-attached-prop)**** : flags
-   ****[target](index.html#target-attached-prop)**** : Object

<span id="attached-signals"></span>
Attached Signals
----------------

-   ****[dragFinished](index.html#dragFinished-signal)****(DropAction *action*)
-   ****[dragStarted](index.html#dragStarted-signal)****()

<span id="attached-methods"></span>
Attached Methods
----------------

-   void ****[cancel](index.html#cancel-method)****()
-   enumeration ****[drop](index.html#drop-method)****()
-   void ****[start](index.html#start-method)****(flags *supportedActions*)
-   void ****[startDrag](index.html#startDrag-method)****(flags *supportedActions*)

<span id="details"></span>
Detailed Description
--------------------

Using the Drag attached property, any Item can be made a source of drag and drop events within a scene.

When a drag is [active](index.html#active-attached-prop) on an item, any change in that item's position will generate a drag event that will be sent to any [DropArea](../QtQuick.DropArea/index.html) that intersects with the new position of the item. Other items which implement drag and drop event handlers can also receive these events.

The following snippet shows how an item can be dragged with a [MouseArea](../QtQuick.MouseArea/index.html). However, dragging is not limited to mouse drags; anything that can move an item can generate drag events, including touch events, animations and bindings.

``` qml
import QtQuick 2.0
Item {
    width: 200; height: 200
    DropArea {
        x: 75; y: 75
        width: 50; height: 50
        Rectangle {
            anchors.fill: parent
            color: "green"
            visible: parent.containsDrag
        }
    }
    Rectangle {
        x: 10; y: 10
        width: 20; height: 20
        color: "red"
        Drag.active: dragArea.drag.active
        Drag.hotSpot.x: 10
        Drag.hotSpot.y: 10
        MouseArea {
            id: dragArea
            anchors.fill: parent
            drag.target: parent
        }
    }
}
```

A drag can be terminated either by canceling it with Drag.[cancel()](index.html#cancel-method) or setting Drag.active to false, or it can be terminated with a drop event by calling Drag.[drop()](index.html#drop-method). If the drop event is accepted, Drag.[drop()](index.html#drop-method) will return the [drop action](index.html#supportedActions-attached-prop) chosen by the recipient of the event, otherwise it will return Qt.IgnoreAction.

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-attached-prop"></span><span class="name">Drag.active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether a drag event sequence is currently active.

Binding this property to the active property of [MouseArea::drag](../QtQuick.MouseArea/index.html#drag-prop) will cause [startDrag](index.html#startDrag-method) to be called when the user starts dragging.

Setting this property to true will also send a QDragEnter event to the scene with the item's current position. Setting it to false will send a QDragLeave event.

While a drag is active any change in an item's position will send a QDragMove event with item's new position to the scene.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragType-attached-prop"></span><span class="name">Drag.dragType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether to automatically start drags, do nothing, or to use backwards compatible internal drags. The default is to use backwards compatible internal drags.

A drag can also be started manually using [startDrag](index.html#startDrag-method).

-   Drag.None - do not start drags automatically
-   Drag.Automatic - start drags automatically
-   Drag.Internal (default) - start backwards compatible drags automatically

When using `Drag.Automatic` you should also define [mimeData](index.html#mimeData-attached-prop) and bind the [active](index.html#active-attached-prop) property to the active property of MouseArea.drag.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hotSpot-attached-prop"></span><span class="name">Drag.hotSpot</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

This property holds the drag position relative to the top left of the item.

By default this is (0, 0).

Changes to hotSpot trigger a new drag move with the updated position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keys-attached-prop"></span><span class="name">Drag.keys</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of keys that can be used by a [DropArea](../QtQuick.DropArea/index.html) to filter drag events.

Changing the keys while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mimeData-attached-prop"></span><span class="name">Drag.mimeData</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a map of mimeData that is used during [startDrag](index.html#startDrag-method).

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="proposedAction-attached-prop"></span><span class="name">Drag.proposedAction</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds an action that is recommended by the drag source as a return value from Drag.[drop()](index.html#drop-method).

Changes to proposedAction will trigger a move event with the updated proposal.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-attached-prop"></span><span class="name">Drag.source</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

This property holds an object that is identified to recipients of drag events as the source of the events. By default this is the item that the Drag property is attached to.

Changing the source while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportedActions-attached-prop"></span><span class="name">Drag.supportedActions</span> : <span class="type">flags</span></p></td>
</tr>
</tbody>
</table>

This property holds return values of Drag.[drop()](index.html#drop-method) supported by the drag source.

Changing the supportedActions while a drag is active will reset the sequence of drag events by sending a drag leave event followed by a drag enter event with the new source.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-attached-prop"></span><span class="name">Drag.target</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

While a drag is active this property holds the last object to accept an enter event from the dragged item, if the current drag position doesn't intersect any accepting targets it is null.

When a drag is not active this property holds the object that accepted the drop event that ended the drag, if no object accepted the drop or the drag was canceled the target will then be null.

Attached Signal Documentation
-----------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragFinished-signal"></span><span class="name">dragFinished</span>(<span class="type">DropAction</span> <em>action</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a drag finishes and the drag was started with the [startDrag()](index.html#startDrag-method) method or started automatically using the [dragType](index.html#dragType-attached-prop) property.

The corresponding handler is `onDragFinished`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragStarted-signal"></span><span class="name">dragStarted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a drag is started with the [startDrag()](index.html#startDrag-method) method or when it is started automatically using the [dragType](index.html#dragType-attached-prop) property.

The corresponding handler is `onDragStarted`.

Attached Method Documentation
-----------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancel-method"></span><span class="type">void</span> <span class="name">cancel</span>()</p></td>
</tr>
</tbody>
</table>

Ends a drag sequence.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="drop-method"></span><span class="type">enumeration</span> <span class="name">drop</span>()</p></td>
</tr>
</tbody>
</table>

Ends a drag sequence by sending a drop event to the target item.

Returns the action accepted by the target item. If the target item or a parent doesn't accept the drop event then Qt.IgnoreAction will be returned.

The returned drop action may be one of:

-   Qt.CopyAction Copy the data to the target
-   Qt.MoveAction Move the data from the source to the target
-   Qt.LinkAction Create a link from the source to the target.
-   Qt.IgnoreAction Ignore the action (do nothing with the data).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="type">void</span> <span class="name">start</span>(<span class="type">flags</span> <em>supportedActions</em>)</p></td>
</tr>
</tbody>
</table>

Starts sending drag events. Used for starting old-style internal drags. [startDrag](index.html#startDrag-method) is the new-style, preferred method of starting drags.

The optional *supportedActions* argument can be used to override the [supportedActions](index.html#supportedActions-attached-prop) property for the started sequence.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startDrag-method"></span><span class="type">void</span> <span class="name">startDrag</span>(<span class="type">flags</span> <em>supportedActions</em>)</p></td>
</tr>
</tbody>
</table>

Starts sending drag events.

The optional *supportedActions* argument can be used to override the [supportedActions](index.html#supportedActions-attached-prop) property for the started sequence.

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
