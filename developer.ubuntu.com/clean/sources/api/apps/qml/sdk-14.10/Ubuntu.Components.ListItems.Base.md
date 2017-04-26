---
Title: Ubuntu.Components.ListItems.Base
---
        
Base
====

<span class="subtitle"></span>
Parent class of various list item classes that can have an icon and a progression symbol. More...

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
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.ListItems.MultiValue.md">MultiValue</a>, <a href="Ubuntu.Components.ListItems.SingleValue.md">SingleValue</a>, and <a href="Ubuntu.Components.ListItems.Subtitled.md">Subtitled</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[fallbackIconName](#fallbackIconName-prop)**** : string
-   ****[fallbackIconSource](#fallbackIconSource-prop)**** : url` (preliminary)`
-   ****[iconFrame](#iconFrame-prop)**** : bool` (preliminary)`
-   ****[progression](#progression-prop)**** : bool` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

Examples: See subclasses **This component is under heavy development.**

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fallbackIconName-prop"></span><span class="name">fallbackIconName</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The icon shown in the list item if iconName failed to load (optional).

If both [fallbackIconSource](#fallbackIconSource-prop) and fallbackIconName are defined, fallbackIconName will be ignored.

**Note:** The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:

-   Ubuntu Touch: /usr/share/icons/suru
-   Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fallbackIconSource-prop"></span><span class="name">fallbackIconSource</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The location of the icon to show in the list item if iconSource failed to load (optional).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconFrame-prop"></span><span class="name">iconFrame</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Show or hide the frame around the icon

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="progression-prop"></span><span class="name">progression</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Show or hide the progression symbol.

