---
Title: Ubuntu.Components.PageHeadSections
---
        
PageHeadSections
================

<span class="subtitle"></span>
PageHeadSections is used to configure the sections for a Page. More...

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
<td>Since:</td>
<td>Ubuntu.Components 1.1</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../sdk-14.10/QtQml.QtObject.md">QtObject</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[enabled](#enabled-prop)**** : bool
-   ****[model](#model-prop)**** : var
-   ****[selectedIndex](#selectedIndex-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

These sections will be shown in the bottom part of the header. This component does not need to be instantiated by the developer, it is automatically part of [PageHeadConfiguration](../Ubuntu.Components.PageHeadConfiguration.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Set this property to false to disable user interaction to change the selected section. Default value: true

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

List of strings that represent section names. Example:

``` qml
import Ubuntu.Components 1.2
import QtQuick 2.4
MainView {
    width: units.gu(50)
    height: units.gu(80)
    Page {
        id: page
        title: "Sections"
        head {
            sections {
                model: ["one", "two", "three"]
            }
        }
        Label {
            anchors.centerIn: parent
            text: "Section " + page.head.sections.selectedIndex
        }
    }
}
```

It is strongly recommended to limit the number of sections to two or three.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedIndex-prop"></span><span class="name">selectedIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The index of the currently selected section in [model](#model-prop).

