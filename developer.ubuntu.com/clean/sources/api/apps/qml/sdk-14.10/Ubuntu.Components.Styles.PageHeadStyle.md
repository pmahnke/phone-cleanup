---
Title: Ubuntu.Components.Styles.PageHeadStyle
---
        
PageHeadStyle
=============

<span class="subtitle"></span>
Style API for page header. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import Ubuntu.Components.Styles .</code></td>
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

-   ****[contentHeight](#contentHeight-prop)**** : real
-   ****[fontSize](#fontSize-prop)**** : string
-   ****[fontWeight](#fontWeight-prop)**** : int
-   ****[maximumNumberOfActions](#maximumNumberOfActions-prop)**** : int
-   ****[separatorBottomSource](#separatorBottomSource-prop)**** : url
-   ****[separatorSource](#separatorSource-prop)**** : url
-   ****[textColor](#textColor-prop)**** : color
-   ****[textLeftMargin](#textLeftMargin-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The component defines the style API for the page header component.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentHeight-prop"></span><span class="name">contentHeight</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

The height of the headercontents, which is the full height of the header minus the separators shown at the bottom of it.

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

The size of the title font.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fontWeight-prop"></span><span class="name">fontWeight</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td>
</tr>
</tbody>
</table>

The weight of the title font.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumNumberOfActions-prop"></span><span class="name">maximumNumberOfActions</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td>
</tr>
</tbody>
</table>

The number of slots for actions in the header, including the optional (custom or automatic) back button in the left side of the header. If the number of actions defined is larger than the numer of actions specified here, extra actions are put into an overflow.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="separatorBottomSource-prop"></span><span class="name">separatorBottomSource</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The source of an additional image attached to the bottom of the separator. The contents of the [MainView](../Ubuntu.Components.MainView.md) will be drawn on top of the separator bottom image.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="separatorSource-prop"></span><span class="name">separatorSource</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The source of the image that separates the header from the contents of a [MainView](../Ubuntu.Components.MainView.md). The separator will be drawn over the contents.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textColor-prop"></span><span class="name">textColor</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-color.html">color</a></span></p></td>
</tr>
</tbody>
</table>

The color of the title text.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textLeftMargin-prop"></span><span class="name">textLeftMargin</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

Left margin of title text.

