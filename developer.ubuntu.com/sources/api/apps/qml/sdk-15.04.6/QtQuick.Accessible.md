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
-   [SDK 15.04.6](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   Accessible

Accessible
==========

<span class="subtitle"></span>
Enables accessibility of QML items More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[checkStateMixed](index.html#checkStateMixed-prop)**** : bool
-   ****[checkable](index.html#checkable-prop)**** : bool
-   ****[checked](index.html#checked-prop)**** : bool
-   ****[defaultButton](index.html#defaultButton-prop)**** : bool
-   ****[description](index.html#description-prop)**** : string
-   ****[editable](index.html#editable-prop)**** : bool
-   ****[focusable](index.html#focusable-prop)**** : bool
-   ****[focused](index.html#focused-prop)**** : bool
-   ****[ignored](index.html#ignored-prop)**** : bool
-   ****[multiLine](index.html#multiLine-prop)**** : bool
-   ****[name](index.html#name-prop)**** : string
-   ****[passwordEdit](index.html#passwordEdit-prop)**** : bool
-   ****[pressed](index.html#pressed-prop)**** : bool
-   ****[readOnly](index.html#readOnly-prop)**** : bool
-   ****[role](index.html#role-prop)**** : enumeration
-   ****[searchEdit](index.html#searchEdit-prop)**** : bool
-   ****[selectable](index.html#selectable-prop)**** : bool
-   ****[selectableText](index.html#selectableText-prop)**** : bool
-   ****[selected](index.html#selected-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[decreaseAction](index.html#decreaseAction-signal)****()
-   ****[increaseAction](index.html#increaseAction-signal)****()
-   ****[pressAction](index.html#pressAction-signal)****()
-   ****[toggleAction](index.html#toggleAction-signal)****()

<span id="details"></span>
Detailed Description
--------------------

This class is part of the Accessibility for Qt Quick Applications.

Items the user interacts with or that give information to the user need to expose their information to the accessibility framework. Then assistive tools can make use of that information to enable users to interact with the application in various ways. This enables Qt Quick applications to be used with screen-readers for example.

The most important properties are [name](index.html#name-prop), [description](index.html#description-prop) and [role](index.html#role-prop).

Example implementation of a simple button:

``` qml
Rectangle {
    id: myButton
    Text {
        id: label
        text: "next"
    }
    Accessible.role: Accessible.Button
    Accessible.name: label.text
    Accessible.description: "shows the next page"
    Accessible.onPressAction: {
        // do a button click
    }
}
```

The [role](index.html#role-prop) is set to `Button` to indicate the type of control. Accessible.name is the most important information and bound to the text on the button. The name is a short and consise description of the control and should reflect the visual label. In this case it is not clear what the button does with the name only, so [description](index.html#description-prop) contains an explanation. There is also a signal handler [Accessible.pressAction](index.html#pressAction-signal) which can be invoked by assistive tools to trigger the button. This signal handler needs to have the same effect as tapping or clicking the button would have.

**See also** Accessibility.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="checkStateMixed-prop"></span><span class="name">checkStateMixed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is in the partially checked state.

By default this property is `false`.

**See also** [checked](index.html#checked-prop) and [checkable](index.html#checkable-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="checkable-prop"></span><span class="name">checkable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is checkable (like a check box or some buttons).

By default this property is `false`.

**See also** [checked](index.html#checked-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="checked-prop"></span><span class="name">checked</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is currently checked.

By default this property is `false`.

**See also** [checkable](index.html#checkable-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultButton-prop"></span><span class="name">defaultButton</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is the default button of a dialog.

By default this property is `false`.

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
<td><p><span id="editable-prop"></span><span class="name">editable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item has editable text.

By default this property is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focusable-prop"></span><span class="name">focusable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is focusable.

By default, this property is `false` except for items where the role is one of `CheckBox`, `RadioButton`, `Button`, `MenuItem`, `PageTab`, `EditableText`, `SpinBox`, `ComboBox`, `Terminal` or `ScrollBar`.

**See also** [focused](index.html#focused-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focused-prop"></span><span class="name">focused</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item currently has the active focus.

By default, this property is `false`, but it will return `true` for items that have QQuickItem::hasActiveFocus() returning `true`.

**See also** [focusable](index.html#focusable-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ignored-prop"></span><span class="name">ignored</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item should be ignored by the accessibility framework.

Sometimes an item is part of a group of items that should be treated as one. For example two labels might be visually placed next to each other, but separate items. For accessibility purposes they should be treated as one and thus they are represented by a third invisible item with the right geometry.

For example a speed display adds "m/s" as a smaller label:

``` qml
Row {
    Label {
        id: speedLabel
        text: "Speed: 5"
        Accessible.ignored: true
    }
    Label {
        text: qsTr("m/s")
        Accessible.ignored: true
    }
    Accessible.role: Accessible.StaticText
    Accessible.name: speedLabel.text + " meters per second"
}
```

By default this property is `false`.

This QML property was introduced in Qt 5.4.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="multiLine-prop"></span><span class="name">multiLine</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item has multiple text lines.

By default this property is `false`.

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
<td><p><span id="passwordEdit-prop"></span><span class="name">passwordEdit</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is a password text edit.

By default this property is `false`.

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

This property holds whether this item is pressed (for example a button during a mouse click).

By default this property is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="readOnly-prop"></span><span class="name">readOnly</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates that a text field is read only.

It is relevant when the role is QAccessible::EditableText and set to be read-only. By default this property is `false`.

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

This flags sets the semantic type of the widget. A button for example would have "Button" as type. The value must be one of QAccessible::Role.

Some roles have special semantics. In order to implement check boxes for example a "checked" property is expected.

| **Role**                         | **Properties and signals**                                                                                                            | **Explanation**                                                                                                                                                                                                                                                                                     |
|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| All interactive elements         | [focusable](index.html#focusable-prop) and [focused](index.html#focused-prop)                                                         | All elements that the user can interact with should have focusable set to `true` and set focus to `true` when they have the focus. This is important even for applications that run on touch-only devices since screen readers often implement a virtual focus that can be moved from item to item. |
| Button, CheckBox, RadioButton    | [Accessible.pressAction](index.html#pressAction-signal)                                                                               | A button should have a signal handler with the name `onPressAction`. This signal may be emitted by an assistive tool such as a screen-reader. The implementation needs to behave the same as a mouse click or tap on the button.                                                                    |
| CheckBox, RadioButton            | [checkable](index.html#checkable-prop), [checked](index.html#checked-prop), [Accessible.toggleAction](index.html#toggleAction-signal) | The check state of the check box. Updated on Press, Check and Uncheck actions.                                                                                                                                                                                                                      |
| Slider, SpinBox, Dial, ScrollBar | `value`, `minimumValue`, `maximumValue`, `stepSize`                                                                                   | These properties reflect the state and possible values for the elements.                                                                                                                                                                                                                            |
| Slider, SpinBox, Dial, ScrollBar | [Accessible.increaseAction](index.html#increaseAction-signal), [Accessible.decreaseAction](index.html#decreaseAction-signal)          | Actions to increase and decrease the value of the element.                                                                                                                                                                                                                                          |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searchEdit-prop"></span><span class="name">searchEdit</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is input for a search query. This property will only affect editable text.

By default this property is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectable-prop"></span><span class="name">selectable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item can be selected.

By default this property is `false`.

**See also** [selected](index.html#selected-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectableText-prop"></span><span class="name">selectableText</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item contains selectable text.

By default this property is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selected-prop"></span><span class="name">selected</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is selected.

By default this property is `false`.

**See also** [selectable](index.html#selectable-prop).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="decreaseAction-signal"></span><span class="name">decreaseAction</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a decrease action is received from an assistive tool such as a screen-reader.

The corresponding handler is `onDecreaseAction`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="increaseAction-signal"></span><span class="name">increaseAction</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a increase action is received from an assistive tool such as a screen-reader.

The corresponding handler is `onIncreaseAction`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressAction-signal"></span><span class="name">pressAction</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a press action is received from an assistive tool such as a screen-reader.

The corresponding handler is `onPressAction`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toggleAction-signal"></span><span class="name">toggleAction</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a toggle action is received from an assistive tool such as a screen-reader.

The corresponding handler is `onToggleAction`.

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
