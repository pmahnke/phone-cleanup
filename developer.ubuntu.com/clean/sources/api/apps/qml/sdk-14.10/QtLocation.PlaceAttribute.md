---
Title: QtLocation.PlaceAttribute
---
        
PlaceAttribute
==============

<span class="subtitle"></span>
The PlaceAttribute type holds generic place attribute information. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import QtLocation 5.3` |
| Since:            | Qt Location 5.0         |

<span id="properties"></span>
Properties
----------

-   ****[attribute](#attribute-prop)**** : QPlaceAttribute
-   ****[label](#label-prop)**** : string
-   ****[text](#text-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

A place attribute stores an additional piece of information about a [Place](../QtLocation.Place.md) that is not otherwise exposed through the [Place](../QtLocation.Place.md) type. A PlaceAttribute is a textual piece of data, accessible through the [text](#text-prop) property, and a [label](#label-prop). Both the [text](#text-prop) and [label](#label-prop) properties are intended to be displayed to the user. PlaceAttributes are stored in an [ExtendedAttributes](../QtLocation.ExtendedAttributes.md) map with a unique key.

The following example shows how to display all attributes in a list:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
ListView {
    model: place.extendedAttributes.keys()
    delegate: Text {
        text: "<b>" + place.extendedAttributes[modelData].label + ": </b>" +
              place.extendedAttributes[modelData].text
    }
}
```

The following example shows how to assign and modify an attribute:

``` qml
    //assign a new attribute to a place
    var smokingAttrib = Qt.createQmlObject('import QtLocation 5.3; PlaceAttribute {}', place);
    smokingAttrib.label = "Smoking Allowed"
    smokingAttrib.text = "No"
    place.extendedAttributes.smoking = smokingAttrib;
    //modify an existing attribute
    place.extendedAttributes.smoking.text = "Yes"
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="attribute-prop"></span><span class="name">attribute</span> : <span class="type">QPlaceAttribute</span></p></td>
</tr>
</tbody>
</table>

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="label-prop"></span><span class="name">label</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the attribute label which is a user visible string describing the attribute.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the attribute text which can be used to show additional information about the place.

