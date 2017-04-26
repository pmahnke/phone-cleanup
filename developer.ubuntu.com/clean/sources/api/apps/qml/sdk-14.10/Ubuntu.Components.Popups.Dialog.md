---
Title: Ubuntu.Components.Popups.Dialog
---
        
Dialog
======

<span class="subtitle"></span>
The Dialog caters for cases in which the application requires the user to determine between optional actions. The Dialog will interrupt the user flow and lock the view for further interaction before the user has selected a desired action. It can only be closed by selecting an optional action confirming or cancelling the operation. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import Ubuntu.Components.Popups 1.0</code></td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.Popups.PopupBase.md">PopupBase</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[caller](#caller-prop)**** : Item` (preliminary)`
-   ****[callerMargin](#callerMargin-prop)**** : real
-   ****[contents](#contents-prop)**** : list&lt;Object&gt;` (preliminary)`
-   ****[edgeMargins](#edgeMargins-prop)**** : real
-   ****[modal](#modal-prop)**** : bool
-   ****[pointerTarget](#pointerTarget-prop)**** : Item
-   ****[text](#text-prop)**** : string` (preliminary)`
-   ****[title](#title-prop)**** : string` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

[See also the Design Guidelines on Dialogs](http://design.ubuntu.com/apps/building-blocks/dialog).

Example:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.Popups 1.0
Item {
    width: units.gu(80)
    height: units.gu(80)
    Component {
         id: dialog
         Dialog {
             id: dialogue
             title: "Save file"
             text: "Are you sure that you want to save this file?"
             Button {
                 text: "cancel"
                 onClicked: PopupUtils.close(dialogue)
             }
             Button {
                 text: "overwrite previous version"
                 color: UbuntuColors.orange
                 onClicked: PopupUtils.close(dialogue)
             }
             Button {
                 text: "save a copy"
                 color: UbuntuColors.orange
                 onClicked: PopupUtils.close(dialogue)
             }
         }
    }
    Button {
        anchors.centerIn: parent
        id: saveButton
        text: "save"
        onClicked: PopupUtils.open(dialog)
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
<td><p><span id="caller-prop"></span><span class="name">caller</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The Item such as a [Button](../Ubuntu.Components.Button.md) that the user interacted with to open the Dialog. This property will be used for the automatic positioning of the Dialog next to the caller, if possible.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="callerMargin-prop"></span><span class="name">callerMargin</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the margin from the dialog's caller. The property is themed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contents-prop"></span><span class="qmldefault">default</span><span class="name">contents</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="https://developer.ubuntu.comapps/qml/sdk-14.10/Ubuntu.Components.Object/">Object</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Content will be put inside a column in the foreround of the Dialog.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="edgeMargins-prop"></span><span class="name">edgeMargins</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the margins from the dialog's dismissArea. The property is themed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modal-prop"></span><span class="name">modal</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

The property controls whether the dialog is modal or not. Modal dialogs block event propagation to items under dismissArea, when non-modal ones let these events passed to these items. In addition, non-modal dialogs do not dim the dismissArea.

The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pointerTarget-prop"></span><span class="name">pointerTarget</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the item to which the pointer should be anchored to. This can be same as the caller or any child of the caller. By default the property is set to caller.

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

**This QML property is under development and is subject to change.**

The question to the user.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="title-prop"></span><span class="name">title</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The title of the question to ask the user.

