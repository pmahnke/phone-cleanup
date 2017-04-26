---
Title: Ubuntu.Components.ListItems.SingleValue
---
        
SingleValue
===========

<span class="subtitle"></span>
A list item displaying a single value More...

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
<td><p><a href="Ubuntu.Components.ListItems.Base.md">Base</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[value](#value-prop)**** : string` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

Examples:

``` qml
import Ubuntu.Components.ListItems 1.0 as ListItem
Column {
    ListItem.SingleValue {
        text: "Label"
        value: "Status"
        onClicked: selected = !selected
    }
    ListItem.SingleValue {
        text: "Label"
        iconName: "compose"
        value: "Parameter"
        progression: true
        onClicked: print("clicked")
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
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The values that will be shown next to the label text

