---
Title: Ubuntu.Components.ListItems.ValueSelector
---
        
ValueSelector
=============

<span class="subtitle"></span>
List item displaying single selected value when not expanded, where expanding it opens a listing of all the possible values for selection. More...

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

-   ****[expanded](#expanded-prop)**** : bool` (preliminary)`
-   ****[fallbackIconName](#fallbackIconName-prop)**** : string
-   ****[fallbackIconSource](#fallbackIconSource-prop)**** : url` (preliminary)`
-   ****[iconFrame](#iconFrame-prop)**** : bool` (preliminary)`
-   ****[selectedIndex](#selectedIndex-prop)**** : int` (preliminary)`
-   ****[values](#values-prop)**** : variant` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

\*\*\*\*DEPRECATED! PLEASE USE ITEM SELECTOR OR FOR THE UBUNTU SHAPE VERSION THE OPTION SELECTOR.\*\*\*\*

**This component is under heavy development.**

Examples:

``` qml
import Ubuntu.Components.ListItems 1.0 as ListItem
Column {
    width: 250
    ListItem.ValueSelector {
        text: "Standard"
        values: ["Value 1", "Value 2", "Value 3", "Value 4"]
    }
    ListItem.ValueSelector {
        text: "Disabled"
        values: ["Value 1", "Value 2", "Value 3", "Value 4"]
        enabled: false
    }
    ListItem.ValueSelector {
        text: "Expanded"
        values: ["Value 1", "Value 2", "Value 3", "Value 4"]
        expanded: true
    }
    ListItem.ValueSelector {
        text: "Icon"
        iconName: "compose"
        values: ["Value 1", "Value 2", "Value 3", "Value 4"]
        selectedIndex: 2
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
<td><p><span id="expanded-prop"></span><span class="name">expanded</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Specifies whether the selector is 'open' or 'closed'.

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
<td><p><span id="selectedIndex-prop"></span><span class="name">selectedIndex</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The index of the currently selected element from the [values](#values-prop) array.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="values-prop"></span><span class="name">values</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-variant.html">variant</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The list of values that will be shown under the label text

