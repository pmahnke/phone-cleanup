<a href="https://developer.ubuntu.com/" class="logo-ubuntu"><img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/logos/logo-ubuntu-orange.svg" width="106" height="25" /> <span>developer</span></a>

-   [Jump to content](index.html#main-content)
-   [Desktop](https://developer.ubuntu.com/en/desktop/)
-   [Phone](https://developer.ubuntu.com/en/phone/)
-   [Core](https://developer.ubuntu.com/core)
-   [Community](https://developer.ubuntu.com/en/community/)
-   [Publish](https://developer.ubuntu.com/en/publish/)
-   [My Apps](https://myapps.developer.ubuntu.com/)

Search

<img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/search-white.svg" alt="Search" height="28" />

-   [APIs](../../../../index.html) ›
-   [Apps](../../../index.html) ›
-   [QML](../../index.html) ›
-   [SDK 15.04.1](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   PlaceSearchModel

PlaceSearchModel
================

<span class="subtitle"></span>
Provides access to place search results. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[categories](index.html#categories-prop)**** : list&lt;Category&gt;
-   ****[count](index.html#count-prop)**** : int
-   ****[favoritesMatchParameters](index.html#favoritesMatchParameters-prop)**** : VariantMap
-   ****[favoritesPlugin](index.html#favoritesPlugin-prop)**** : Plugin
-   ****[limit](index.html#limit-prop)**** : int
-   ****[nextPagesAvailable](index.html#nextPagesAvailable-prop)**** : bool
-   ****[plugin](index.html#plugin-prop)**** : Plugin
-   ****[previousPagesAvailable](index.html#previousPagesAvailable-prop)**** : bool
-   ****[recommendationId](index.html#recommendationId-prop)**** : string
-   ****[relevanceHint](index.html#relevanceHint-prop)**** : enumeration
-   ****[searchArea](index.html#searchArea-prop)**** : variant
-   ****[searchTerm](index.html#searchTerm-prop)**** : string
-   ****[status](index.html#status-prop)**** : enum
-   ****[visibilityScope](index.html#visibilityScope-prop)**** : enum

<span id="methods"></span>
Methods
-------

-   ****[cancel](index.html#cancel-method)****()
-   ****[data](index.html#data-method)****(int *index*, string *role*)
-   string ****[errorString](index.html#errorString-method)****()
-   ****[nextPage](index.html#nextPage-method)****()
-   ****[previousPage](index.html#previousPage-method)****()
-   ****[reset](index.html#reset-method)****()
-   ****[update](index.html#update-method)****()
-   ****[updateWith](index.html#updateWith-method)****(int *proposedSearchIndex*)

<span id="details"></span>
Detailed Description
--------------------

[PlaceSearchModel](index.html) provides a model of place search results within the [searchArea](index.html#searchArea-prop). The [searchTerm](index.html#searchTerm-prop) and [categories](../QtLocation.location-places-backend/index.html#categories) properties can be set to restrict the search results to places matching those criteria.

The [PlaceSearchModel](index.html) returns both sponsored and [organic search results](http://en.wikipedia.org/wiki/Organic_search). Sponsored search results will have the `sponsored` role set to true.

<span id="placesearchmodel-roles"></span>
The model returns data for the following roles:

| Role      | Type                                                             | Description                                                                                                                                                                                                                          |
|-----------|------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| type      | enum                                                             | The type of search result.                                                                                                                                                                                                           |
| title     | string                                                           | A string describing the search result.                                                                                                                                                                                               |
| icon      | [PlaceIcon](../QtLocation.location-cpp-qml/index.html#placeicon) | Icon representing the search result.                                                                                                                                                                                                 |
| distance  | real                                                             | Valid only when the `type` role is `PlaceResult`, the distance to the place from the center of the [searchArea](index.html#searchArea-prop). If no [searchArea](index.html#searchArea-prop) has been specified, the distance is NaN. |
| place     | [Place](../QtLocation.location-cpp-qml/index.html#place)         | Valid only when the `type` role is `PlaceResult`, an object representing the place.                                                                                                                                                  |
| sponsored | bool                                                             | Valid only when the `type` role is `PlaceResult`, true if the search result is a sponsored result.                                                                                                                                   |

<span id="search-result-types"></span>
### Search Result Types

The `type` role can take on the following values:

|                                                     |                                                                     |
|-----------------------------------------------------|---------------------------------------------------------------------|
| [PlaceSearchModel](index.html).UnknownSearchResult  | The contents of the search result are unknown.                      |
| [PlaceSearchModel](index.html).PlaceResult          | The search result contains a place.                                 |
| [PlaceSearchModel](index.html).ProposedSearchResult | The search result contains a proposed search which may be relevant. |

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

The [PlaceSearchModel](index.html) listens for places that have been updated or removed from its plugin's backend. If it detects that a place has been updated and that place is currently present in the model, then it will call [Place::getDetails](../QtLocation.Place/index.html#getDetails-method) to refresh the details. If it detects that a place has been removed, then correspondingly the place will be removed from the model if it is currently present.

<span id="example"></span>
Example
-------

The following example shows how to use the [PlaceSearchModel](index.html) to search for Pizza restaurants in close proximity of a given position. A [searchTerm](index.html#searchTerm-prop) and [searchArea](index.html#searchArea-prop) are provided to the model and [update()](index.html#update-method) is used to perform a lookup query. Note that the model does not incrementally fetch search results, but rather performs a single fetch when [update()](index.html#update-method) is run. The [count](index.html#count-prop) is set to the number of search results returned during the fetch.

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

The [PlaceSearchModel](index.html) API has some limited support for paging. The [nextPage()](index.html#nextPage-method) and [previousPage()](index.html#previousPage-method) functions as well as the [limit](index.html#limit-prop) property can be used to access paged search results. When the [limit](index.html#limit-prop) property is set the search result page contains at most [limit](index.html#limit-prop) entries (of type place result). For example, if the backend has 5 search results in total \[a,b,c,d,e\], and assuming the first page is shown and limit of 3 has been set then a,b,c is returned. The [nextPage()](index.html#nextPage-method) would return d,e. The [nextPagesAvailable](index.html#nextPagesAvailable-prop) and [previousPagesAvailable](index.html#previousPagesAvailable-prop) properties can be used to check for further pages. At the moment the API does not support the means to retrieve the total number of items available from the backed. Note that support for [nextPage()](index.html#nextPage-method), [previousPage()](index.html#previousPage-method) and [limit](index.html#limit-prop) can vary according to the [plugin](../QtLocation.location-places-qml/index.html#plugin).

**See also** CategoryModel and QPlaceManager.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="categories-prop"></span><span class="name">categories</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtLocation.Category/index.html">Category</a></span>&gt;</p></td>
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

This property holds a set of parameters used to specify how search result places are matched to favorites in the [favoritesPlugin](index.html#favoritesPlugin-prop).

By default the parameter map is empty and implies that the favorites plugin matches by [alternative identifiers](../QtLocation.location-places-backend/index.html#alternative-identifier-cross-referencing). Generally, an application developer will not need to set this property.

In cases where the favorites plugin does not support matching by alternative identifiers, then the [plugin documentation](../QtLocation.qtlocation-index/index.html#plugin-references-and-parameters) should be consulted to see precisely what key-value parameters to set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="favoritesPlugin-prop"></span><span class="name">favoritesPlugin</span> : <span class="type"><a href="../QtLocation.Plugin/index.html">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the [Plugin](../QtLocation.location-places-qml/index.html#plugin) which will be used to search for favorites. Any places from the search which can be cross-referenced or matched in the favoritesPlugin will have their [favorite](../QtLocation.Place/index.html#favorite-prop) property set to the corresponding [Place](../QtLocation.location-cpp-qml/index.html#place) from the favoritesPlugin.

If the favoritesPlugin is not set, the [favorite](../QtLocation.Place/index.html#favorite-prop) property of the places in the results will always be null.

**See also** [Favorites](../QtLocation.Place/index.html#favorites).

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

**See also** [nextPage()](index.html#nextPage-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="plugin-prop"></span><span class="name">plugin</span> : <span class="type"><a href="../QtLocation.Plugin/index.html">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the [Plugin](../QtLocation.location-places-qml/index.html#plugin) which will be used to perform the search.

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

**See also** [previousPage()](index.html#previousPage-method).

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

If this property is set to a geocircle its radius property may be left unset, in which case the [Plugin](../QtLocation.location-places-qml/index.html#plugin) will choose an appropriate radius for the search.

Support for specifying a search area can vary according to the [plugin](../QtLocation.location-places-qml/index.html#plugin) backend implementation. For example, some may support a search center only while others may only support geo rectangles.

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

**See also** [update()](index.html#update-method) and [status](index.html#status-prop).

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

Updates the model based on the provided query parameters. The model will be populated with a list of places matching the search parameters specified by the type's properties. Search criteria is specified by setting properties such as the [searchTerm](index.html#searchTerm-prop), [categories](../QtLocation.location-places-backend/index.html#categories), [searchArea](index.html#searchArea-prop) and [limit](index.html#limit-prop). Support for these properties may vary according to [plugin](../QtLocation.location-places-qml/index.html#plugin). `update()` then submits the set of criteria to the [plugin](../QtLocation.location-places-qml/index.html#plugin) to process.

While the model is updating the [status](index.html#status-prop) of the model is set to `PlaceSearchModel.Loading`. If the model is successfully updated the [status](index.html#status-prop) is set to `PlaceSearchModel.Ready`, while if it unsuccessfully completes, the [status](index.html#status-prop) is set to `PlaceSearchModel.Error` and the model cleared.

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

**See also** [cancel()](index.html#cancel-method) and [status](index.html#status-prop).

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

[Back to top](index.html#)

-   [Desktop](https://developer.ubuntu.com/en/desktop/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/desktop/)
    -   [Get started](http://snapcraft.io/?utm_source=developer.ubuntu.com&utm_medium=devportal&utm_term=snaps%20snapcraft%20desktop&utm_content=menu&utm_campaign=duc_snappers)
    -   [Examples](https://github.com/ubuntu/snappy-playpen)

-   [Phone](https://developer.ubuntu.com/en/phone/)
    -----------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/phone/)
    -   [Scopes](https://developer.ubuntu.com/en/phone/scopes/)
    -   [Apps](https://developer.ubuntu.com/en/phone/apps/)
    -   [Web Apps](https://developer.ubuntu.com/en/phone/web/)
    -   [Platform](https://developer.ubuntu.com/en/phone/platform/)
    -   [Devices](https://developer.ubuntu.com/en/phone/devices/)

-   [Core](https://developer.ubuntu.com/core)
    -----------------------------------------

    -   [Overview](https://developer.ubuntu.com/core)
    -   [Get started](https://developer.ubuntu.com/core/get-started)
    -   [Tutorials](https://developer.ubuntu.com/core/tutorials)
    -   [Examples](https://developer.ubuntu.com/core/examples)
    -   [Publish and distribute](https://developer.ubuntu.com/core/publish-and-distribute)
    -   [Documentation](https://developer.ubuntu.com/core/documentation)
    -   [Troubleshooting](https://developer.ubuntu.com/core/troubleshooting)

-   [Community](https://developer.ubuntu.com/en/community/)
    -------------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/community/)
    -   [App development training](https://developer.ubuntu.com/en/community/training/)
    -   [Core apps](https://developer.ubuntu.com/en/community/core-apps/)
    -   [Blog](https://developer.ubuntu.com/en/community/blog/)

-   [Publish](https://developer.ubuntu.com/en/publish/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/publish/)
    -   [Application states](https://developer.ubuntu.com/en/publish/application-states/)
    -   [Packaging click apps](https://developer.ubuntu.com/en/publish/packaging-click-apps/)
    -   [Creating a good icon](https://developer.ubuntu.com/en/publish/creating-a-good-icon/)
    -   [Web](https://developer.ubuntu.com/en/publish/web/)
    -   [Security policy groups](https://developer.ubuntu.com/en/publish/security-policy-groups/)
    -   [Choosing a license](https://developer.ubuntu.com/en/publish/choosing-a-license/)
    -   [Other forms of submitting apps](https://developer.ubuntu.com/en/publish/other-forms-of-submitting-apps/)
    -   [Scopes](https://developer.ubuntu.com/en/publish/scopes/)

-   View in:
    --------

    -   [English](index.html "Change to language: English")
    -   [Simplified Chinese](index.html "Change to language: Simplified Chinese")

-   [Download](http://ubuntu.com/download/)
    ---------------------------------------

    -   [Overview](http://ubuntu.com/download)
    -   [Cloud](http://ubuntu.com/download/cloud)
    -   [Server](http://ubuntu.com/download/server)
    -   [Desktop](http://ubuntu.com/download/desktop)
    -   [Ubuntu Kylin](http://ubuntu.com/download/ubuntu-kylin)
    -   [Alternative downloads](http://ubuntu.com/download/alternative-downloads)

-   [Support](http://ubuntu.com/support/)
    -------------------------------------

    -   [Overview](http://ubuntu.com/support)
    -   [Security notices](http://www.ubuntu.com/usn/)

-   [About](http://ubuntu.com/about/)
    ---------------------------------

    -   [About Ubuntu](http://ubuntu.com/about/about-ubuntu)
    -   [Careers](http://www.canonical.com/careers)
    -   [Canonical and Ubuntu](http://ubuntu.com/about/canonical-and-ubuntu)
    -   [Contact us](http://ubuntu.com/about/contact-us)
    -   [Canonical news feed](http://insights.ubuntu.com/feed/)

© 2015 Canonical Ltd. Ubuntu and Canonical are registered trademarks of Canonical Ltd.

-   [Legal information](http://www.ubuntu.com/legal)
-   [Report a bug on this site](https://bugs.launchpad.net/developer-ubuntu-com/)

<span class="accessibility-aid">[Go to the top of the page](index.html#)</span>
