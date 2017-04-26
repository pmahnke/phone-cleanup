---
Title: Ubuntu.Components.UbuntuColors
---
        
UbuntuColors
============

<span class="subtitle"></span>
Singleton defining the Ubuntu color palette. More...

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
<td><p><a href="../sdk-14.10/QtQml.QtObject.md">QtObject</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[blue](#blue-prop)**** : color
-   ****[darkGrey](#darkGrey-prop)**** : color
-   ****[green](#green-prop)**** : color
-   ****[greyGradient](#greyGradient-prop)**** : Gradient
-   ****[lightGrey](#lightGrey-prop)**** : color
-   ****[orange](#orange-prop)**** : color
-   ****[orangeGradient](#orangeGradient-prop)**** : Gradient
-   ****[purple](#purple-prop)**** : color
-   ****[red](#red-prop)**** : color

<span id="details"></span>
Detailed Description
--------------------

Each color of the Ubuntu color palette is accesible from it. For more information on how to appropriately use the colors according to the context, please refer to the [Ubuntu brand guidelines](http://design.ubuntu.com/brand/colour-palette).

Example of use:

``` qml
Rectangle {
   color: UbuntuColors.orange
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
<td><p><span id="blue-prop"></span><span class="qmlreadonly">read-only</span><span class="name">blue</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Blue. Recommended for text selection and text cursor.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="darkGrey-prop"></span><span class="qmlreadonly">read-only</span><span class="name">darkGrey</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Dark grey. Recommended for text and action icons.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="green-prop"></span><span class="qmlreadonly">read-only</span><span class="name">green</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Green. Recommended for positive action buttons.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="greyGradient-prop"></span><span class="name">greyGradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td>
</tr>
</tbody>
</table>

Ubuntu grey gradient

**See also** [Button::gradient](../Ubuntu.Components.Button.md#gradient-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lightGrey-prop"></span><span class="qmlreadonly">read-only</span><span class="name">lightGrey</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Light grey. Recommended for neutral action buttons and secondary text.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orange-prop"></span><span class="qmlreadonly">read-only</span><span class="name">orange</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Orange. Recommended for branded elements, display progress and intensity, textual links on light backgrounds.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orangeGradient-prop"></span><span class="name">orangeGradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td>
</tr>
</tbody>
</table>

Ubuntu orange gradient

**See also** [Button::gradient](../Ubuntu.Components.Button.md#gradient-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="purple-prop"></span><span class="qmlreadonly">read-only</span><span class="name">purple</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Purple. Recommended for proper nouns in list items.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="red-prop"></span><span class="qmlreadonly">read-only</span><span class="name">red</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Red. Recommended for negative and irreversible action buttons, errors and alerts.

This QML property was introduced in Ubuntu.Components 1.1.

