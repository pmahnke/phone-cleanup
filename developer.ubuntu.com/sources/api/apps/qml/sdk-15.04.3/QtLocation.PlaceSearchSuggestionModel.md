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
-   [SDK 15.04.3](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   PlaceSearchSuggestionModel

PlaceSearchSuggestionModel
==========================

<span class="subtitle"></span>
Provides access to search term suggestions. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#limit-prop)**** : int
-   ****[offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#offset-prop)**** : int
-   ****[plugin](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#plugin-prop)**** : Plugin
-   ****[searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#searchArea-prop)**** : geoshape
-   ****[searchTerm](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#searchTerm-prop)**** : string
-   ****[status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#status-prop)**** : enum
-   ****[suggestions](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#suggestions-prop)**** : stringlist

<span id="methods"></span>
Methods
-------

-   ****[cancel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#cancel-method)****()
-   string ****[errorString](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#errorString-method)****()
-   ****[reset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#reset-method)****()
-   ****[update](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#update-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html) can be used to provide search term suggestions as the user enters their search term. The properties of this model should match that of the [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel/index.html), which will be used to perform the actual search query, to ensure that the search suggestion results are relevant.

There are two ways of accessing the data provided by this model, either through the [suggestions](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#suggestions-prop) property or through views and delegates. The latter is the preferred method.

The [offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#offset-prop) and [limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#limit-prop) properties can be used to access paged suggestions. When the [offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#offset-prop) and [limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#limit-prop) properties are set the suggestions between [offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#offset-prop) and ([offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#offset-prop) + [limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#limit-prop) - 1) will be returned. Support for paging may vary from plugin to plugin.

The model returns data for the following roles:

| Role       | Type   | Description            |
|------------|--------|------------------------|
| suggestion | string | Suggested search term. |

The following example shows how to use the [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html) to get suggested search terms from a partial search term. The [searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#searchArea-prop) is set to match what would be used to perform the actual place search with [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel/index.html).

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

**See also** [offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#offset-prop).

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

**See also** [limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#limit-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="plugin-prop"></span><span class="name">plugin</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Plugin/index.html">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the provider [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin) which will be used to perform the search.

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

If this property is set to a geocircle its radius property may be left unset, in which case the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin) will choose an appropriate radius for the search.

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

|                                                                                                          |                                                                |
|----------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
| [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html).Null    | No search query has been executed. The model is empty.         |
| [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html).Ready   | The search query has completed, and the results are available. |
| [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html).Loading | A search query is currently being executed.                    |
| [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html).Error   | An error occurred when executing the previous search query.    |

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

Cancels an ongoing search suggestion operation immediately and sets the model status to [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html).Ready. The model retains any search suggestions it had before the operation was started.

If an operation is not ongoing, invoking cancel() has no effect.

**See also** [update()](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#update-method) and [status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#status-prop).

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

Resets the model. All search suggestions are cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to [PlaceSearchSuggestionModel](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html).Null.

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

Updates the model based on the provided query parameters. The model will be populated with a list of search suggestions for the partial [searchTerm](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#searchTerm-prop) and [searchArea](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#searchArea-prop). If the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin) supports it, other parameters such as [limit](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#limit-prop) and [offset](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#offset-prop) may be specified. `update()` submits the set of parameters to the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin) to process.

While the model is updating the [status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#status-prop) of the model is set to `PlaceSearchSuggestionModel.Loading`. If the model is successfully updated, the [status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#status-prop) is set to `PlaceSearchSuggestionModel.Ready`, while if it unsuccessfully completes, the [status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#status-prop) is set to `PlaceSearchSuggestionModel.Error` and the model cleared.

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

A more detailed example can be found in the in [Places (QML)](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtLocation.places/#presenting-search-suggestions) example.

**See also** [cancel()](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#cancel-method) and [status](../../sdk-15.04.1/QtLocation.PlaceSearchSuggestionModel/index.html#status-prop).

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
