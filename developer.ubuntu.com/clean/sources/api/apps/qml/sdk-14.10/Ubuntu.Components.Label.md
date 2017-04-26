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
<td><code>import Ubuntu.Components 1.1</code></td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Text.md">Text</a></p></td>
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
<td><p><span id="fontSize-prop"></span><span class="name">fontSize</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
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

