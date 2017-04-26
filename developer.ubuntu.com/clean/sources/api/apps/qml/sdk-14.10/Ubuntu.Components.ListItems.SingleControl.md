---
Title: Ubuntu.Components.ListItems.SingleControl
---
        
SingleControl
=============

<span class="subtitle"></span>
A list item containing a single control More...

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
<td><p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[control](#control-prop)**** : Item` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

Examples:

``` qml
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 1.0 as ListItem
Column {
    ListItem.SingleControl {
        control: Button {
            anchors {
                margins: units.gu(1)
                fill: parent
            }
            text: "Large button"
        }
    }
}
```

**This component is under heavy development.**

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="control-prop"></span><span class="name">control</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The control of this [SingleControl](index.html) list item. The control will automatically be re-parented to, and centered in, this list item.

