---
Title: Ubuntu.Components.Slider
---
        
Slider
======

<span class="subtitle"></span>
Slider is a component to select a value from a continuous range of values. More...

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
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[activeFocusOnPress](#activeFocusOnPress-prop)**** : bool
-   ****[live](#live-prop)**** : bool
-   ****[maximumValue](#maximumValue-prop)**** : real
-   ****[minimumValue](#minimumValue-prop)**** : real
-   ****[pressed](#pressed-prop)**** : bool
-   ****[style](#style-prop)**** : Component
-   ****[value](#value-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[touched](#touched-signal)****(bool *onThumb*)

<span id="methods"></span>
Methods
-------

-   ****[formatValue](#formatValue-method)****(*v*)

<span id="details"></span>
Detailed Description
--------------------

The slider's sensing area is defined by the width and height, therefore styles should take this into account when defining the visuals, and alter these values to align the graphics' sizes.

[See also the Design Guidelines on Sliders](https://design.ubuntu.com/apps/building-blocks/selection#slider).

Example:

``` qml
Item {
    Slider {
        function formatValue(v) { return v.toFixed(2) }
        minimumValue: -3.14
        maximumValue: 3.14
        value: 0.0
        live: true
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
<td><p><span id="live-prop"></span><span class="name">live</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defines whether the value is updated while the thumb is dragged or just when the thumb is released.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumValue-prop"></span><span class="name">maximumValue</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The maximum value from the continuous range of values. If this value is lesser than [minimumValue](#minimumValue-prop), the component will be in an inconsistent state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumValue-prop"></span><span class="name">minimumValue</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The minimum value from the continuous range of values. If this value is greater than [maximumValue](#maximumValue-prop), the component will be in an inconsistent state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the Slider is currently being pressed.

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
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current value of the slider. This property is not changed while the thumb is dragged unless the live property is set to true.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touched-signal"></span><span class="name">touched</span>(<span class="type">bool</span> <em>onThumb</em>)</p></td>
</tr>
</tbody>
</table>

The signal is emitted when there is a click on the slider. The onThumb parameter provides information if the click, was inside of the thumb element.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="formatValue-method"></span><span class="name">formatValue</span>( <em>v</em>)</p></td>
</tr>
</tbody>
</table>

This function is used by the value indicator to show the current value. Reimplement this function if you want to show different information. By default, the value v is rounded to the nearest interger value.

