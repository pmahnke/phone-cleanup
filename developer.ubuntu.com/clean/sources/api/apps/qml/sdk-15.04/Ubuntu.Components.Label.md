---
Title: Ubuntu.Components.Label
---
        
Label
=====

<span class="subtitle"></span>
Text with Ubuntu styling. More...

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
<td><p><a href="../sdk-14.10/QtQuick.Text.md">Text</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[fontSize](#fontSize-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Example:

``` qml
Rectangle {
    color: UbuntuColors.coolGrey
    width: units.gu(30)
    height: units.gu(30)
    Label {
        anchors.centerIn: parent
        text: "Hello, world!"
        fontSize: "large"
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
<td><p><span id="fontSize-prop"></span><span class="name">fontSize</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The size of the text. One of the following strings (from smallest to largest):

-   "xx-small"
-   "x-small"
-   "small"
-   "medium"
-   "large"
-   "x-large"

Default value is "medium".

