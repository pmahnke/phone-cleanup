---
Title: QtLocation.PlaceSearchModel
---
        
PlaceSearchModel
================

<span class="subtitle"></span>
Provides access to place search results. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import QtLocation 5.3` |
| Since:            | Qt Location 5.0         |

<span id="properties"></span>
Properties
----------

-   ****[categories](#categories-prop)**** : list&lt;Category&gt;
-   ****[count](#count-prop)**** : int
-   ****[favoritesMatchParameters](#favoritesMatchParameters-prop)**** : VariantMap
-   ****[favoritesPlugin](#favoritesPlugin-prop)**** : Plugin
-   ****[limit](#limit-prop)**** : int
-   ****[nextPagesAvailable](#nextPagesAvailable-prop)**** : bool
-   ****[plugin](#plugin-prop)**** : Plugin
-   ****[previousPagesAvailable](#previousPagesAvailable-prop)**** : bool
-   ****[recommendationId](#recommendationId-prop)**** : string
-   ****[relevanceHint](#relevanceHint-prop)**** : enumeration
-   ****[searchArea](#searchArea-prop)**** : variant
-   ****[searchTerm](#searchTerm-prop)**** : string
-   ****[status](#status-prop)**** : enum
-   ****[visibilityScope](#visibilityScope-prop)**** : enum

<span id="methods"></span>
Methods
-------

-   ****[cancel](#cancel-method)****()
-   ****[data](#data-method)****(int *index*, string *role*)
-   string ****[errorString](#errorString-method)****()
-   ****[nextPage](#nextPage-method)****()
-   ****[previousPage](#previousPage-method)****()
-   ****[reset](#reset-method)****()
-   ****[update](#update-method)****()
-   ****[updateWith](#updateWith-method)****(int *proposedSearchIndex*)

<span id="details"></span>
Detailed Description
--------------------

PlaceSearchModel provides a model of place search results within the [searchArea](#searchArea-prop). The [searchTerm](#searchTerm-prop) and [categories](#categories-prop) properties can be set to restrict the search results to places matching those criteria.

The PlaceSearchModel returns both sponsored and [organic search results](http://en.wikipedia.org/wiki/Organic_search). Sponsored search results will have the `sponsored` role set to true.

<span id="placesearchmodel-roles"></span>
The model returns data for the following roles:

| Role      | Type                                                             | Description                                                                                                                                                                                                                          |
|-----------|------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| type      | enum                                                             | The type of search result.                                                                                                                                                                                                           |
| title     | string                                                           | A string describing the search result.                                                                                                                                                                                               |
| icon      | [PlaceIcon](../QtLocation.location-cpp-qml.md#placeicon) | Icon representing the search result.                                                                                                                                                                                                 |
| distance  | real                                                             | Valid only when the `type` role is `PlaceResult`, the distance to the place from the center of the [searchArea](#searchArea-prop). If no [searchArea](#searchArea-prop) has been specified, the distance is NaN. |
| place     | [Place](../QtLocation.Place.md)                          | Valid only when the `type` role is `PlaceResult`, an object representing the place.                                                                                                                                                  |
| sponsored | bool                                                             | Valid only when the `type` role is `PlaceResult`, true if the search result is a sponsored result.                                                                                                                                   |

<span id="search-result-types"></span>
### Search Result Types

The `type` role can take on the following values:

|                                       |                                                                     |
|---------------------------------------|---------------------------------------------------------------------|
| PlaceSearchModel.UnknownSearchResult  | The contents of the search result are unknown.                      |
| PlaceSearchModel.PlaceResult          | The search result contains a place.                                 |
| PlaceSearchModel.ProposedSearchResult | The search result contains a proposed search which may be relevant. |

It can often be helpful to use a Loader to create a delegate that will choose different Components based on the search result type.

``` qml
Component {
    id: resultDelegate
    Loader {
        Component {
            id: placeResult
            Column {
                Text { text: title }
                Text { text: place.location.address.text }
            }
        }
        Component {
            id: otherResult
            Text { text: title }
        }
        sourceComponent: type == PlaceSearchModel.PlaceResult ? placeResult :
                                                                otherResult
    }
}
```

<span id="detection-of-updated-and-removed-places"></span>
Detection of Updated and Removed Places
---------------------------------------

The PlaceSearchModel listens for places that have been updated or removed from its plugin's backend. If it detects that a place has been updated and that place is currently present in the model, then it will call [Place::getDetails](../QtLocation.Place.md#getDetails-method) to refresh the details. If it detects that a place has been removed, then correspondingly the place will be removed from the model if it is currently present.

<span id="example"></span>
Example
-------

The following example shows how to use the PlaceSearchModel to search for Pizza restaurants in close proximity of a given position. A [searchTerm](#searchTerm-prop) and [searchArea](#searchArea-prop) are provided to the model and [update()](#update-method) is used to perform a lookup query. Note that the model does not incrementally fetch search results, but rather performs a single fetch when [update()](#update-method) is run. The [count](#count-prop) is set to the number of search results returned during the fetch.

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
PlaceSearchModel {
    id: searchModel
    plugin: myPlugin
    searchTerm: "pizza"
    searchArea: QtPositioning.circle(startCoordinate);
    Component.onCompleted: update()
}
```

<span id="paging"></span>
Paging
------

The PlaceSearchModel API has some limited support for paging. The [nextPage()](#nextPage-method) and [previousPage()](#previousPage-method) functions as well as the [limit](#limit-prop) property can be used to access paged search results. When the [limit](#limit-prop) property is set the search result page contains at most [limit](#limit-prop) entries (of type place result). For example, if the backend has 5 search results in total \[a,b,c,d,e\], and assuming the first page is shown and limit of 3 has been set then a,b,c is returned. The [nextPage()](#nextPage-method) would return d,e. The [nextPagesAvailable](#nextPagesAvailable-prop) and [previousPagesAvailable](#previousPagesAvailable-prop) properties can be used to check for further pages. At the moment the API does not support the means to retrieve the total number of items available from the backed. Note that support for [nextPage()](#nextPage-method), [previousPage()](#previousPage-method) and [limit](#limit-prop) can vary according to the [plugin](#plugin-prop).

**See also** CategoryModel and QPlaceManager.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="categories-prop"></span><span class="name">categories</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtLocation.Category.md">Category</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of categories to be used when searching. Returned search results will be for places that match at least one of the categories.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of results the model has.

Note that it does not refer to the total number of search results available in the backend. The total number of search results is not currently supported by the API.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="favoritesMatchParameters-prop"></span><span class="name">favoritesMatchParameters</span> : <span class="type">VariantMap</span></p></td>
</tr>
</tbody>
</table>

This property holds a set of parameters used to specify how search result places are matched to favorites in the [favoritesPlugin](#favoritesPlugin-prop).

By default the parameter map is empty and implies that the favorites plugin matches by [alternative identifiers](../QtLocation.location-places-backend.md#alternative-identifier-cross-referencing). Generally, an application developer will not need to set this property.

In cases where the favorites plugin does not support matching by alternative identifiers, then the [plugin documentation](../QtLocation.qtlocation-index.md#plugin-references-and-parameters) should be consulted to see precisely what key-value parameters to set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="favoritesPlugin-prop"></span><span class="name">favoritesPlugin</span> : <span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the [Plugin](../QtLocation.Plugin.md) which will be used to search for favorites. Any places from the search which can be cross-referenced or matched in the favoritesPlugin will have their [favorite](../QtLocation.Place.md#favorite-prop) property set to the corresponding [Place](../QtLocation.Place.md) from the favoritesPlugin.

If the favoritesPlugin is not set, the [favorite](../QtLocation.Place.md#favorite-prop) property of the places in the results will always be null.

**See also** [Favorites](../QtLocation.Place.md#favorites).

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

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nextPagesAvailable-prop"></span><span class="name">nextPagesAvailable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether there is one or more additional pages of search results available.

**See also** [nextPage()](#nextPage-method).

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

This property holds the [Plugin](../QtLocation.Plugin.md) which will be used to perform the search.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousPagesAvailable-prop"></span><span class="name">previousPagesAvailable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether there is one or more previous pages of search results available.

**See also** [previousPage()](#previousPage-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="recommendationId-prop"></span><span class="name">recommendationId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the placeId to be used in order to find recommendations for similar places.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relevanceHint-prop"></span><span class="name">relevanceHint</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds a relevance hint used in the search query. The hint is given to the provider to help but not dictate the ranking of results. For example, the distance hint may give closer places a higher ranking but it does not necessarily mean the results will be strictly ordered according to distance. A provider may ignore the hint altogether.

|                                        |                                                                                                                                                               |
|----------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| SearchResultModel.UnspecifiedHint      | No relevance hint is given to the provider.                                                                                                                   |
| SearchResultModel.DistanceHint         | The distance of the place from the user's current location is important to the user. This hint is only meaningful when a circular search area is used.        |
| SearchResultModel.LexicalPlaceNameHint | The lexical ordering of place names (in ascending alphabetical order) is relevant to the user. This hint is useful for providers based on a local data store. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searchArea-prop"></span><span class="name">searchArea</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the search area. The search result returned by the model will be within the search area.

If this property is set to a geocircle its radius property may be left unset, in which case the [Plugin](../QtLocation.Plugin.md) will choose an appropriate radius for the search.

Support for specifying a search area can vary according to the [plugin](#plugin-prop) backend implementation. For example, some may support a search center only while others may only support geo rectangles.

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

This property holds search term used in query. The search term is a free-form text string.

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

|                                        |                                                                |
|----------------------------------------|----------------------------------------------------------------|
| [PlaceSearchModel](index.html).Null    | No search query has been executed. The model is empty.         |
| [PlaceSearchModel](index.html).Ready   | The search query has completed, and the results are available. |
| [PlaceSearchModel](index.html).Loading | A search query is currently being executed.                    |
| [PlaceSearchModel](index.html).Error   | An error occurred when executing the previous search query.    |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visibilityScope-prop"></span><span class="name">visibilityScope</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

This property holds the visibility scope of the places to search. Only places with the specified visibility will be returned in the search results.

The visibility scope can be one of:

|                             |                                                                                                   |
|-----------------------------|---------------------------------------------------------------------------------------------------|
| Place.UnspecifiedVisibility | No explicit visibility scope specified, places with any visibility may be part of search results. |
| Place.DeviceVisibility      | Only places stored on the local device will be part of the search results.                        |
| Place.PrivateVisibility     | Only places that are private to the current user will be part of the search results.              |
| Place.PublicVisibility      | Only places that are public will be part of the search results.                                   |

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

Cancels an ongoing search operation immediately and sets the model status to [PlaceSearchModel](index.html).Ready. The model retains any search results it had before the operation was started.

If an operation is not ongoing, invoking cancel() has no effect.

**See also** [update()](#update-method) and [status](#status-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-method"></span><span class="name">data</span>(<span class="type">int</span> <em>index</em>, <span class="type">string</span> <em>role</em>)</p></td>
</tr>
</tbody>
</table>

Returns the data for a given *role* at the specified row *index*.

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

This read-only property holds the textual presentation of latest place search model error. If no error has occurred or if the model was cleared an empty string is returned.

An empty string may also be returned if an error occurred which has no associated textual representation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nextPage-method"></span><span class="name">nextPage</span>()</p></td>
</tr>
</tbody>
</table>

Updates the model to display the next page of search results. If there is no next page then this method does nothing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousPage-method"></span><span class="name">previousPage</span>()</p></td>
</tr>
</tbody>
</table>

Updates the model to display the previous page of search results. If there is no previous page then this method does nothing.

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

Resets the model. All search results are cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to [PlaceSearchModel](index.html).Null.

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

Updates the model based on the provided query parameters. The model will be populated with a list of places matching the search parameters specified by the type's properties. Search criteria is specified by setting properties such as the [searchTerm](#searchTerm-prop), [categories](#categories-prop), [searchArea](#searchArea-prop) and [limit](#limit-prop). Support for these properties may vary according to [plugin](#plugin-prop). `update()` then submits the set of criteria to the [plugin](#plugin-prop) to process.

While the model is updating the [status](#status-prop) of the model is set to `PlaceSearchModel.Loading`. If the model is successfully updated the [status](#status-prop) is set to `PlaceSearchModel.Ready`, while if it unsuccessfully completes, the [status](#status-prop) is set to `PlaceSearchModel.Error` and the model cleared.

``` cpp
PlaceSearchModel {
    id: model
    plugin: backendPlugin
    searchArea: QtPositioning.circle(QtPositioning.coordinate(10, 10))
    ...
}
MouseArea {
    ...
    onClicked: {
        model.searchTerm = "pizza";
        model.categories = null;  //not searching by any category
        model.searchArea.center.latitude = -27.5;
        model.searchArea.center.longitude = 153;
        model.update();
    }
}
```

**See also** [cancel()](#cancel-method) and [status](#status-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateWith-method"></span><span class="name">updateWith</span>(<span class="type">int</span> <em>proposedSearchIndex</em>)</p></td>
</tr>
</tbody>
</table>

Updates the model based on the ProposedSearchResult at index *proposedSearchIndex*. The model will be populated with a list of places matching the proposed search. Model status will be set to [PlaceSearchModel](index.html).Loading. If the model is updated successfully status will be set to [PlaceSearchModel](index.html).Ready. If an error occurs status will be set to [PlaceSearchModel](index.html).Error and the model cleared.

If *proposedSearchIndex* does not reference a ProposedSearchResult this method does nothing.

