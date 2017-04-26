---
Title: Ubuntu.Components.ActionItem
---
        
ActionItem
==========

<span class="subtitle"></span>
A visual representation of an Action. The API of ActionItem is a copy of the API of Action, with additional properties to define visual aspects of the ActionItem. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import Ubuntu.Components 1.1</code></td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a>, <a href="Ubuntu.Components.TextField.md">TextField</a>, and <a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a>.</p></td>
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

If [action](#action-prop) is set, the values of the other properties will by default be identical to the [Action](../Ubuntu.Components.Action.md)'s property values. Setting the other properties will override the properties copied from the [Action](../Ubuntu.Components.Action.md).

See [ToolbarItems](../Ubuntu.Components.ToolbarItems.md) for examples of how to use [ToolbarButton](../Ubuntu.Components.ToolbarButton.md) or other ActionItems in a toolbar.

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

The [Action](../Ubuntu.Components.Action.md) associated with this [ActionItem](index.html). If action is set, the values of the Action properties are copied to the values of the [ActionItem](index.html) properties.

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
<td><p><span id="iconName-prop"></span><span class="name">iconName</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The icon associated with the [actionItem](index.html) in the suru icon theme. Default value: action.iconName.

**Note:** The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:

-   Ubuntu Touch: /usr/share/icons/suru
-   Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

If both [iconSource](#iconSource-prop) and iconName are defined, iconName will be ignored.

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

The image associated with the [actionItem](index.html). Default value: action.iconSource.

This is the URL of any image file If both iconSource and [iconName](#iconName-prop) are defined, [iconName](#iconName-prop) will be ignored.

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
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The title of the [actionItem](index.html). Default value: action.text

Signal Documentation
--------------------

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

Called when the [actionItem](index.html) is triggered.

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

