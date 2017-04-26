---
Title: Ubuntu.Components.ToolbarButton
---
        
ToolbarButton
=============

<span class="subtitle"></span>
An ActionItem that represents a button in the toolbar. ToolbarButtons should be included in ToolbarItems to define the tools of a Page. The behavior and look of the toolbar button can be specified by setting an Action for the button, or by setting the other properties inherited by the ActionItem. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.2</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.ActionItem.md">ActionItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[action](#action-prop)**** : Action
-   ****[activeFocusOnPress](#activeFocusOnPress-prop)**** : bool
-   ****[iconName](#iconName-prop)**** : string
-   ****[iconSource](#iconSource-prop)**** : url
-   ****[style](#style-prop)**** : Component
-   ****[text](#text-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[triggered](#triggered-signal)****(var *value*)

<span id="methods"></span>
Methods
-------

-   ****[trigger](#trigger-method)****(*value*)

<span id="details"></span>
Detailed Description
--------------------

Example of different ways to define the toolbar button:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(50)
    height: units.gu(80)
    Action {
        id: action1
        text: "action 1"
        iconName: "compose"
        onTriggered: print("one!")
    }
    Page {
        title: "test page"
        Label {
            anchors.centerIn: parent
            text: "Hello, world"
        }
        tools: ToolbarItems {
            // reference to an action:
            ToolbarButton {
                action: action1
            }
            // define the action:
            ToolbarButton {
                action: Action {
                    text: "Second action"
                    iconName: "add"
                    onTriggered: print("two!")
                }
                // override the text of the action:
                text: "action 2"
            }
            // no associated action:
            ToolbarButton {
                iconName: "cancel"
                text: "button"
                onTriggered: print("three!")
            }
        }
    }
}
```

See [ToolbarItems](https://developer.ubuntu.comapps/qml/sdk-15.04/Ubuntu.Components.ToolbarItems/) for more information on how to use [ToolbarButton](index.html).

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
<td><p><span id="activeFocusOnPress-prop"></span><span class="name">activeFocusOnPress</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property specifies whether the [StyledItem](../Ubuntu.Components.StyledItem.md) can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor [StyledItem](../Ubuntu.Components.StyledItem.md) or derived is having the property value false, the focus will not be gained automatically.

In the following example the [TextField](../Ubuntu.Components.TextField.md) will stay focused when clicked on the red rectangle.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
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
<td><p><span id="iconName-prop"></span><span class="name">iconName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The icon associated with the actionItem in the suru icon theme. Default value: action.iconName.

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
<td><p><span id="iconSource-prop"></span><span class="name">iconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The image associated with the actionItem. Default value: action.iconSource.

This is the URL of any image file If both iconSource and [iconName](../Ubuntu.Components.ActionItem.md#iconName-prop) are defined, [iconName](../Ubuntu.Components.ActionItem.md#iconName-prop) will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td>
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
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The title of the actionItem. Default value: action.text

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggered-signal"></span><span class="name">triggered</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Called when the actionItem is triggered.

Method Documentation
--------------------

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

