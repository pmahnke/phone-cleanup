---
Title: QtLocation.PlaceSearchSuggestionModel
---
        
PlaceSearchSuggestionModel
==========================

<span class="subtitle"></span>
Provides access to search term suggestions. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import QtLocation 5.3` |
| Since:            | Qt Location 5.0         |

<span id="properties"></span>
Properties
----------

-   ****[limit](#limit-prop)**** : int
-   ****[offset](#offset-prop)**** : int
-   ****[plugin](#plugin-prop)**** : Plugin
-   ****[searchArea](#searchArea-prop)**** : geoshape
-   ****[searchTerm](#searchTerm-prop)**** : string
-   ****[status](#status-prop)**** : enum
-   ****[suggestions](#suggestions-prop)**** : stringlist

<span id="methods"></span>
Methods
-------

-   ****[cancel](#cancel-method)****()
-   string ****[errorString](#errorString-method)****()
-   ****[reset](#reset-method)****()
-   ****[update](#update-method)****()

<span id="details"></span>
Detailed Description
--------------------

The PlaceSearchSuggestionModel can be used to provide search term suggestions as the user enters their search term. The properties of this model should match that of the [PlaceSearchModel](../QtLocation.PlaceSearchModel.md), which will be used to perform the actual search query, to ensure that the search suggestion results are relevant.

There are two ways of accessing the data provided by this model, either through the [suggestions](#suggestions-prop) property or through views and delegates. The latter is the preferred method.

The [offset](#offset-prop) and [limit](#limit-prop) properties can be used to access paged suggestions. When the [offset](#offset-prop) and [limit](#limit-prop) properties are set the suggestions between [offset](#offset-prop) and ([offset](#offset-prop) + [limit](#limit-prop) - 1) will be returned. Support for paging may vary from plugin to plugin.

The model returns data for the following roles:

| Role       | Type   | Description            |
|------------|--------|------------------------|
| suggestion | string | Suggested search term. |

The following example shows how to use the PlaceSearchSuggestionModel to get suggested search terms from a partial search term. The [searchArea](#searchArea-prop) is set to match what would be used to perform the actual place search with [PlaceSearchModel](../QtLocation.PlaceSearchModel.md).

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
PlaceSearchSuggestionModel {
    id: suggestionModel
    plugin: myPlugin
    // Brisbane
    searchArea: QtLocation.circle(QtLocation.coordinate(-27.46778, 153.02778))
    onSearchTermChanged: update()
}
ListView {
    model: suggestionModel
    delegate: Text { text: suggestion }
}
```

**See also** PlaceSearchModel and QPlaceManager.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="limit-prop"></span><span class="name">limit</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the limit of the number of items that will be returned.

**See also** [offset](#offset-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="offset-prop"></span><span class="name">offset</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the index of the first item in the model.

**See also** [limit](#limit-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="plugin-prop"></span><span class="name">plugin</span> : <span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the provider [Plugin](../QtLocation.Plugin.md) which will be used to perform the search.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searchArea-prop"></span><span class="name">searchArea</span> : <span class="type">geoshape</span></p></td>
</tr>
</tbody>
</table>

This property holds the search area. Search suggestion results returned by the model will be relevant to the given search area.

If this property is set to a geocircle its radius property may be left unset, in which case the [Plugin](../QtLocation.Plugin.md) will choose an appropriate radius for the search.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searchTerm-prop"></span><span class="name">searchTerm</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the partial search term used in query.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of the model. It can be one of:

|                                                  |                                                                |
|--------------------------------------------------|----------------------------------------------------------------|
| [PlaceSearchSuggestionModel](index.html).Null    | No search query has been executed. The model is empty.         |
| [PlaceSearchSuggestionModel](index.html).Ready   | The search query has completed, and the results are available. |
| [PlaceSearchSuggestionModel](index.html).Loading | A search query is currently being executed.                    |
| [PlaceSearchSuggestionModel](index.html).Error   | An error occurred when executing the previous search query.    |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="suggestions-prop"></span><span class="name">suggestions</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds the list of predicted search terms that the model currently has.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancel-method"></span><span class="name">cancel</span>()</p></td>
</tr>
</tbody>
</table>

Cancels an ongoing search suggestion operation immediately and sets the model status to [PlaceSearchSuggestionModel](index.html).Ready. The model retains any search suggestions it had before the operation was started.

If an operation is not ongoing, invoking cancel() has no effect.

**See also** [update()](#update-method) and [status](#status-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-method"></span><span class="type">string</span> <span class="name">errorString</span>() const</p></td>
</tr>
</tbody>
</table>

This read-only property holds the textual presentation of latest search suggestion model error. If no error has occurred, or if the model was cleared, an empty string is returned.

An empty string may also be returned if an error occurred which has no associated textual representation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reset-method"></span><span class="name">reset</span>()</p></td>
</tr>
</tbody>
</table>

Resets the model. All search suggestions are cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to [PlaceSearchSuggestionModel](index.html).Null.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="update-method"></span><span class="name">update</span>()</p></td>
</tr>
</tbody>
</table>

Updates the model based on the provided query parameters. The model will be populated with a list of search suggestions for the partial [searchTerm](#searchTerm-prop) and [searchArea](#searchArea-prop). If the [plugin](#plugin-prop) supports it, other parameters such as [limit](#limit-prop) and [offset](#offset-prop) may be specified. `update()` submits the set of parameters to the [plugin](#plugin-prop) to process.

While the model is updating the [status](#status-prop) of the model is set to `PlaceSearchSuggestionModel.Loading`. If the model is successfully updated, the [status](#status-prop) is set to `PlaceSearchSuggestionModel.Ready`, while if it unsuccessfully completes, the [status](#status-prop) is set to `PlaceSearchSuggestionModel.Error` and the model cleared.

This example shows use of the model

``` cpp
PlaceSeachSuggestionModel {
    id: model
    plugin: backendPlugin
    searchArea: QtPositioning.circle(QtPositioning.coordinate(10, 10))
    ...
}
MouseArea {
    ...
    onClicked: {
        model.searchTerm = "piz"
        model.searchArea.center.latitude = -27.5;
        model.searchArea.cetner.longitude = 153;
        model.update();
    }
}
```

A more detailed example can be found in the in [Places (QML)](https://developer.ubuntu.comapps/qml/sdk-14.10/QtLocation.places/#presenting-search-suggestions) example.

**See also** [cancel()](#cancel-method) and [status](#status-prop).

