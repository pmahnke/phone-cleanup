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
<td>import Ubuntu.Components.Styles .</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../sdk-14.10/QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[contentHeight](#contentHeight-prop)**** : real
-   ****[fontSize](#fontSize-prop)**** : string
-   ****[fontWeight](#fontWeight-prop)**** : int
-   ****[maximumNumberOfActions](#maximumNumberOfActions-prop)**** : int
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
<td><p><span id="contentHeight-prop"></span><span class="name">contentHeight</span> : <span class="type">real</span></p></td>
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
<td><p><span id="fontSize-prop"></span><span class="name">fontSize</span> : <span class="type">string</span></p></td>
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
<td><p><span id="fontWeight-prop"></span><span class="name">fontWeight</span> : <span class="type">int</span></p></td>
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
<td><p><span id="maximumNumberOfActions-prop"></span><span class="name">maximumNumberOfActions</span> : <span class="type">int</span></p></td>
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
<td><p><span id="textLeftMargin-prop"></span><span class="name">textLeftMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Left margin of title text.

