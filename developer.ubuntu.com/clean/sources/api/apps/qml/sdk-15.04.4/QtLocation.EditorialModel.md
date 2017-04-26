---
Title: QtLocation.EditorialModel
---
        
EditorialModel
==============

<span class="subtitle"></span>
The EditorialModel type provides a model of place editorials. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[batchSize](../../sdk-15.04.1/QtLocation.EditorialModel.md#batchSize-prop)**** : int
-   ****[place](../../sdk-15.04.1/QtLocation.EditorialModel.md#place-prop)**** : Place
-   ****[totalCount](../../sdk-15.04.1/QtLocation.EditorialModel.md#totalCount-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The [EditorialModel](../../sdk-15.04.1/QtLocation.EditorialModel.md) is a read-only model used to fetch editorials related to a [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place). Binding a [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place) via [EditorialModel::place](../../sdk-15.04.1/QtLocation.EditorialModel.md#place-prop) initiates an initial fetch of editorials. The model performs fetches incrementally and is intended to be used in conjunction with a View such as a ListView. When the View reaches the last of the editorials currently in the model, a fetch is performed to retrieve more if they are available. The View is automatically updated as the editorials are received. The number of editorials which are fetched at a time is specified by the [batchSize](../../sdk-15.04.1/QtLocation.EditorialModel.md#batchSize-prop) property. The total number of editorials available can be accessed via the [totalCount](../../sdk-15.04.1/QtLocation.EditorialModel.md#totalCount-prop) property.

The model returns data for the following roles:

| Role        | Type                                                         | Description                                                                                                                          |
|-------------|--------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| text        | string                                                       | The editorial's textual description of the place. It can be either rich (HTML based) text or plain text depending upon the provider. |
| title       | string                                                       | The title of the editorial.                                                                                                          |
| language    | string                                                       | The language that the editorial is written in.                                                                                       |
| supplier    | [Supplier](../../sdk-15.04.1/QtLocation.Supplier.md) | The supplier of the editorial.                                                                                                       |
| user        | [User](../../sdk-15.04.1/QtLocation.User.md)         | The user who contributed the editorial.                                                                                              |
| attribution | string                                                       | Attribution text which must be displayed when displaying the editorial.                                                              |

<span id="example"></span>
Example
-------

The following example shows how to display editorials for a place:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
EditorialModel {
    id: editorialModel
    batchSize: 3
    place: place
}
ListView {
    model: editorialModel
    delegate: Item {
        anchors.fill: parent
        Column {
            width: parent.width
            clip: true
            Text {
                text: title
                width: parent.width
                wrapMode: Text.WordWrap
                font.pixelSize: 24
            }
            Text {
                text: text
                width: parent.width
                wrapMode: Text.WordWrap
                font.pixelSize: 20
            }
            Row {
                Image {
                    width: 16
                    height: 16
                    source: supplier.icon.url(Qt.size(width, height), Icon.List)
                }
                Text {
                    text: "Provided by " + supplier.name
                    font.pixelSize: 16
                }
            }
            Text {
                text: "Contributed by " + user.name
                font.pixelSize: 16
            }
            Text {
                text: attribution
                font.pixelSize: 8
            }
        }
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
<td><p><span id="batchSize-prop"></span><span class="name">batchSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the batch size to use when fetching more editorials items.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="place-prop"></span><span class="name">place</span> : <span class="type"><a href="../sdk-15.04.1/QtLocation.Place.md">Place</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the Place that the editorials are for.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="totalCount-prop"></span><span class="name">totalCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the total number of editorial items for the place.

