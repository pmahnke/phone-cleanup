---
Title: Ubuntu.Components.ScrollView
---
        
ScrollView
==========

<span class="subtitle"></span>
ScrollView is a scrollable view that features scrollbars and scrolling via keyboard keys. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
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

-   ****[contentItem](#contentItem-prop)**** : Item
-   ****[flickableItem](#flickableItem-prop)**** : Item
-   ****[viewport](#viewport-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

[ScrollView](index.html) is the recommended component to use in the implementation of scrollable content. It features scrollbars and handles keyboard input. Old applications that implemented scrollable views directly using the [Scrollbar](../Ubuntu.Components.Scrollbar.md) component should migrate to [ScrollView](index.html), to ensure the UX is ready for convergent devices and is consistent with the rest of the platform.

Adding scrollbars and keyboard input handling to a QML item is as simple as wrapping that item in a [ScrollView](index.html), as shown in the following example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
ScrollView {
    width: units.gu(40)
    height: units.gu(30)
    Rectangle {
        width: units.gu(140)
        height: units.gu(40)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "blue" }
        }
    }
}
```

NOTE: the items that are wrapped in the [ScrollView](index.html) are reparanted to [viewport](#viewport-prop).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentItem-prop"></span><span class="qmldefault">default</span><span class="name">contentItem</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The contentItem of the [ScrollView](index.html). This is set by the user. Note that the definition of contentItem is somewhat different to that of a Flickable, where the contentItem is implicitly created.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickableItem-prop"></span><span class="qmlreadonly">read-only</span><span class="name">flickableItem</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The flickableItem of the [ScrollView](index.html). If the [contentItem](#contentItem-prop) provided to the [ScrollView](index.html) is a Flickable, that will be the flickableItem. Otherwise [ScrollView](index.html) will create a Flickable which will hold the items provided as children.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="viewport-prop"></span><span class="qmlreadonly">read-only</span><span class="name">viewport</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the viewport Item. The children of the [ScrollView](index.html) element are reparented to this item to make sure the scrollbars are correctly positioned and the items are clipped at their boundaries.

