---
Title: Ubuntu.Components.Button
---
        
Button
======

<span class="subtitle"></span>
Standard Ubuntu button. More...

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
<td><p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.ComboButton.md">ComboButton</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[action](#action-prop)**** : Action
-   ****[activeFocusOnPress](#activeFocusOnPress-prop)**** : bool
-   ****[color](#color-prop)**** : color
-   ****[font](#font-prop)**** : font
-   ****[gradient](#gradient-prop)**** : Gradient
-   ****[hovered](#hovered-prop)**** : bool
-   ****[iconName](#iconName-prop)**** : string
-   ****[iconPosition](#iconPosition-prop)**** : string
-   ****[iconSource](#iconSource-prop)**** : url
-   ****[pressed](#pressed-prop)**** : bool
-   ****[strokeColor](#strokeColor-prop)**** : color
-   ****[style](#style-prop)**** : Component
-   ****[text](#text-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[clicked](#clicked-signal)****()
-   ****[pressAndHold](#pressAndHold-signal)****()
-   ****[triggered](#triggered-signal)****(var *value*)

<span id="methods"></span>
Methods
-------

-   ****[trigger](#trigger-method)****(*value*)

<span id="details"></span>
Detailed Description
--------------------

[See also the Design Guidelines on Buttons](http://design.ubuntu.com/apps/building-blocks/buttons).

Examples:

``` qml
Column {
    Button {
        text: "Send"
        onClicked: print("clicked text-only Button")
    }
    Button {
        iconName: "compose"
        gradient: UbuntuColors.greyGradient
        onClicked: print("clicked icon-only Button")
    }
    Button {
        iconName: "compose"
        text: "Icon on left"
        iconPosition: "left"
        onClicked: print("clicked text and icon Button")
    }
}
```

An [Action](../Ubuntu.Components.Action.md) can be used to specify **clicked**, iconSource and text. Example:

``` qml
 Item {
     Action {
         id: action1
         text: "Click me"
         onTriggered: print("action!")
         iconName: "compose"
     }
     Button {
         anchors.centerIn: parent
         action: action1
         color: UbuntuColors.warmGrey
     }
}
```

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
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-color.html">color</a></span></p></td>
</tr>
</tbody>
</table>

The background color of the button.

**See also** [gradient](#gradient-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font-prop"></span><span class="name">font</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-font.html">font</a></span></p></td>
</tr>
</tbody>
</table>

The font used for the button's text.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gradient-prop"></span><span class="name">gradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td>
</tr>
</tbody>
</table>

The gradient used to fill the background of the button.

Standard Ubuntu gradients are defined in [UbuntuColors](../Ubuntu.Components.UbuntuColors.md).

If both a gradient and a color are specified, the gradient will be used.

**See also** [color](#color-prop).

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
<td><p><span id="iconPosition-prop"></span><span class="name">iconPosition</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The position of the icon relative to the text. Options are "left" and "right". The default value is "left".

If only text or only an icon is defined, this property is ignored and the text or icon is centered horizontally and vertically in the button.

Currently this is a string value. We are waiting for support for enums: https://bugreports.qt-project.org/browse/QTBUG-14861

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
<td><p><span id="strokeColor-prop"></span><span class="name">strokeColor</span> : <span class="type"><a href="#color-prop">color</a></span></p></td>
</tr>
</tbody>
</table>

If set to a color, the button has a stroke border instead of a filled shape.

This QML property was introduced in Ubuntu.Components 1.1.

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

The title of the [actionItem](../Ubuntu.Components.ActionItem.md). Default value: action.text

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
<td><p><span id="trigger-method"></span><span class="name">trigger</span>( <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Trigger this action item if it is enabled.

