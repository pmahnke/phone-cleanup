---
Title: Ubuntu.Components.ListItems.Caption
---
        
Caption
=======

<span class="subtitle"></span>
List item that shows a piece of text. More...

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
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[text](#text-prop)**** : string` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

Examples:

``` qml
import Ubuntu.Components.ListItems 1.0 as ListItem
Column {
    ListItem.Standard {
        text: "Default list item."
    }
    ListItem.Caption {
        text: "This is a caption text, which can span multiple lines."
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
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The text that is shown in the list item as a label.

