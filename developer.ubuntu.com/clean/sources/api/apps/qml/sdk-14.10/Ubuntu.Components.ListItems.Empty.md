---
Title: Ubuntu.Components.ListItems.Empty
---
        
Empty
=====

<span class="subtitle"></span>
A list item with no contents. The Empty class can be used for generic list items containing other components such as buttons. It is selectable and can take mouse clicks. It will attempt to detect if a thin dividing line at the bottom of the item is suitable, but this behaviour can be overridden (using showDivider). For specific types of list items, see its subclasses. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import Ubuntu.Components.ListItems 1.0</code></td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.ListItems.Base.md">Base</a>, <a href="Ubuntu.Components.ListItems.Expandable.md">Expandable</a>, <a href="Ubuntu.Components.ListItems.SingleControl.md">SingleControl</a>, <a href="Ubuntu.Components.ListItems.Standard.md">Standard</a>, and <a href="Ubuntu.Components.ListItems.ValueSelector.md">ValueSelector</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[action](#action-prop)**** : Action
-   ****[activeFocusOnPress](#activeFocusOnPress-prop)**** : bool
-   ****[backgroundIndicator](#backgroundIndicator-prop)**** : list&lt;Item&gt;` (preliminary)`
-   ****[confirmRemoval](#confirmRemoval-prop)**** : bool` (preliminary)`
-   ****[divider](#divider-prop)**** : ThinDivider` (preliminary)`
-   ****[highlightWhenPressed](#highlightWhenPressed-prop)**** : bool` (preliminary)`
-   ****[hovered](#hovered-prop)**** : bool
-   ****[iconName](#iconName-prop)**** : string
-   ****[iconSource](#iconSource-prop)**** : url
-   ****[pressed](#pressed-prop)**** : bool
-   ****[removable](#removable-prop)**** : bool` (preliminary)`
-   ****[selected](#selected-prop)**** : bool` (preliminary)`
-   ****[showDivider](#showDivider-prop)**** : bool` (preliminary)`
-   ****[style](#style-prop)**** : Component
-   ****[swipingState](#swipingState-prop)**** : string` (preliminary)`
-   ****[text](#text-prop)**** : string
-   ****[waitingConfirmationForRemoval](#waitingConfirmationForRemoval-prop)**** : bool` (preliminary)`

<span id="signals"></span>
Signals
-------

-   ****[clicked](#clicked-signal)****()
-   ****[itemRemoved](#itemRemoved-signal)****()` (preliminary)`
-   ****[pressAndHold](#pressAndHold-signal)****()
-   ****[triggered](#triggered-signal)****(var *value*)

<span id="methods"></span>
Methods
-------

-   ****[cancelItemRemoval](#cancelItemRemoval-method)****()` (preliminary)`
-   ****[trigger](#trigger-method)****(*value*)

<span id="details"></span>
Detailed Description
--------------------

The item will still remain in memory after being removed from the list so it is up to the application to destroy it. This can be handled by the signal [itemRemoved](#itemRemoved-signal) that is fired after all animation is done.

Examples:

``` qml
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 1.0 as ListItem
Item {
    Model {
        id: contactModel
        ListElement {
            name: "Bill Smith"
            number: "555 3264"
        }
        ListElement {
            name: "John Brown"
            number: "555 8426"
        }
    }
    ListView {
         width: 180; height: 200
         model: contactModel
         delegate: ListItem.Empty {
            height: units.gu(6)
            removable: true
            onItemRemoved: contactModel.remove(index)
            Text {
                text: name + " " + number
                anchors.centerIn: parent
            }
        }
    }
}
```

See the documentation of the derived classes of Empty for more examples. **This component is under heavy development.**

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="action-prop"></span><span class="name">action</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

The [Action](../Ubuntu.Components.Action.md) associated with this [ActionItem](../Ubuntu.Components.ActionItem.md). If action is set, the values of the Action properties are copied to the values of the [ActionItem](../Ubuntu.Components.ActionItem.md) properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocusOnPress-prop"></span><span class="name">activeFocusOnPress</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

The property specifies whether the [StyledItem](../Ubuntu.Components.StyledItem.md) can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor [StyledItem](../Ubuntu.Components.StyledItem.md) or derived is having the property value false, the focus will not be gained automatically.

In the following example the [TextField](../Ubuntu.Components.TextField.md) will stay focused when clicked on the red rectangle.

``` qml
import QtQuick 2.2
import Ubuntu.Components 1.1
Column {
    width: units.gu(50)
    height: units.gu(100)
    StyledItem {
        objectName: "passiveScope"
        width: parent.width
        height: units.gu(30)
        Rectangle {
            anchors.fill: parent
            color: "red"
            StyledItem {
                objectName: "activeScope"
                activeFocusOnPress: true
                anchors.fill: parent
            }
        }
    }
    TextField {
        id: input
        text: "The input stays focus even if red box is clicked"
    }
    Component.onCompleted: input.forceActiveFocus()
    Connections {
        target: window
        onActiveFocusItemChanged: console.debug("focus on", window.activeFocusItem)
    }
}
```

The default value is `false`.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backgroundIndicator-prop"></span><span class="name">backgroundIndicator</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="QtQuick.Item.md">Item</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Defines the item background item to be showed during the item swiping

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="confirmRemoval-prop"></span><span class="name">confirmRemoval</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Defines if the item needs confirmation before removing by swiping.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="divider-prop"></span><span class="name">divider</span> : <span class="type"><a href="Ubuntu.Components.ListItems.ThinDivider.md">ThinDivider</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Exposes our the bottom line divider.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightWhenPressed-prop"></span><span class="name">highlightWhenPressed</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Highlight the list item when it is pressed. This is used to disable the highlighting of the full list item when custom highlighting needs to be implemented (for example in ListItem.Standard which can have a split).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hovered-prop"></span><span class="name">hovered</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

True if the mouse cursor hovers over the button's mouse area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconName-prop"></span><span class="name">iconName</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The icon associated with the [actionItem](../Ubuntu.Components.ActionItem.md) in the suru icon theme. Default value: action.iconName.

**Note:** The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:

-   Ubuntu Touch: /usr/share/icons/suru
-   Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

If both [iconSource](../Ubuntu.Components.ActionItem.md#iconSource-prop) and iconName are defined, iconName will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconSource-prop"></span><span class="name">iconSource</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The image associated with the [actionItem](../Ubuntu.Components.ActionItem.md). Default value: action.iconSource.

This is the URL of any image file If both iconSource and [iconName](../Ubuntu.Components.ActionItem.md#iconName-prop) are defined, [iconName](../Ubuntu.Components.ActionItem.md#iconName-prop) will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="name">pressed</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

True if the user presses a mouse button in the button's mouse area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removable-prop"></span><span class="name">removable</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Defines if this item can be removed or not.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selected-prop"></span><span class="name">selected</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Specifies whether the list item is selected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showDivider-prop"></span><span class="name">showDivider</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Set to show or hide the thin bottom divider line (drawn by the [ThinDivider](../Ubuntu.Components.ListItems.ThinDivider.md) component). This line is shown by default except in cases where this item is the delegate of a [ListView](../QtQuick.ListView.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

Component instantiated immediately and placed below everything else.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="swipingState-prop"></span><span class="qmlreadonly">read-only</span><span class="name">swipingState</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The current swiping state ("SwipingRight" or "")

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The title of the [actionItem](../Ubuntu.Components.ActionItem.md). Default value: action.text

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="waitingConfirmationForRemoval-prop"></span><span class="qmlreadonly">read-only</span><span class="name">waitingConfirmationForRemoval</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Defines if the item is waiting for the user interaction during the swipe to delete

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clicked-signal"></span><span class="name">clicked</span>()</p></td>
</tr>
</tbody>
</table>

This handler is called when there is a mouse click on the button and the button is not disabled. If [action](../Ubuntu.Components.Action.md) is defined, the action will be triggered.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemRemoved-signal"></span><span class="name">itemRemoved</span>()</p></td>
</tr>
</tbody>
</table>

**This QML signal is under development and is subject to change.**

This handler is called when the item is removed from the list

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressAndHold-signal"></span><span class="name">pressAndHold</span>()</p></td>
</tr>
</tbody>
</table>

This handler is called when there is a long press.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggered-signal"></span><span class="name">triggered</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-var.html">var</a></span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Called when the [actionItem](../Ubuntu.Components.ActionItem.md) is triggered.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelItemRemoval-method"></span><span class="name">cancelItemRemoval</span>()</p></td>
</tr>
</tbody>
</table>

**This QML method is under development and is subject to change.**

Cancel item romoval

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="trigger-method"></span><span class="name">trigger</span>( <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Trigger this action item if it is enabled.

