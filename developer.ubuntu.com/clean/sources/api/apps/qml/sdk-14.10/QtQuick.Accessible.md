---
Title: QtQuick.Accessible
---
        
Accessible
==========

<span class="subtitle"></span>
Enables accessibility of QML items More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | `import QtQuick 2.2` |

<span id="properties"></span>
Properties
----------

-   ****[description](#description-prop)**** : string
-   ****[name](#name-prop)**** : string
-   ****[role](#role-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

This class is part of Accessibility for Qt Quick Applications.

Items the user interacts with or that give information to the user need to expose their information in a semantic way. Then assistive tools can make use of that information to enable users to interact with the application in various ways.

This enables Qt Quick applications to be used with screen-readers for example.

The most important properties to set are [name](#name-prop) and [role](#role-prop).

**See also** Accessibility.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="description-prop"></span><span class="name">description</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property sets an accessible description. Similar to the name it describes the item. The description can be a little more verbose and tell what the item does, for example the functionallity of the button it describes.

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

This property sets an accessible name. For a button for example, this should have a binding to its text. In general this property should be set to a simple and concise but human readable name. Do not include the type of control you want to represent but just the name.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="role-prop"></span><span class="name">role</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This flags sets the semantic type of the widget. A button for example would have "Button" as type. The value must be one of QAccessible::Role . Example:

``` qml
Item {
    id: myButton
    Text {
        id: label
        // ...
    }
    Accessible.name: label.text
    Accessible.role: Accessible.Button
    function accessiblePressAction() {
        //...
    }
}
```

Some roles have special semantics. In order to implement check boxes for example a "checked" property is expected.

| **Role**                         | **Expected property**                       |                                                                                                                                           |
|----------------------------------|---------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| Button                           | function accessiblePressAction              | Called when the button receives a press action. The implementation should visually simulate a button click and perform the button action. |
| CheckBox, Radiobutton            | checked                                     | The check state of the check box. Updated on Press, Check and Uncheck actions.                                                            |
| Slider, SpinBox, Dial, ScrollBar | value, minimumValue, maximumValue, stepSize | value will be updated on increase and decrase actions, in accordance with the other properties                                            |

