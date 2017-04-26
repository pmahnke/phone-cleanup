---
Title: Ubuntu.Components.Tab
---
        
Tab
===

<span class="subtitle"></span>
Component to represent a single tab in a Tabs environment. More...

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
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[index](#index-prop)**** : int
-   ****[page](#page-prop)**** : Item
-   ****[title](#title-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Examples: See [Tabs](../Ubuntu.Components.Tabs.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="index-prop"></span><span class="qmlreadonly">read-only</span><span class="name">index</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the index of the tab within the Tabs.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="page-prop"></span><span class="name">page</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The contents of the page. Use a [Page](../Ubuntu.Components.Page.md) or a Loader that loads an external [Page](../Ubuntu.Components.Page.md).

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

The title that is shown on the tab button used to select this tab.

