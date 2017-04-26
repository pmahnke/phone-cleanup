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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.1</a> ›
-   <a href="../QtLocation/index.html" class="sub-nav-item">QtLocation</a> ›

<!-- -->

-   QML Places API

QML Places API
==============

<span class="subtitle"></span>
<span id="details"></span> <span id="overview"></span>
Overview
--------

The Places API allows users to discover places of interest and view details about them, such as address and contact information. Some places may have additional content associated with them, such as images and reviews. The Places API also facilitates management of places and categories, allowing users to save and remove them.

<span id="introductory-concepts"></span>
Introductory Concepts
---------------------

<span id="plugin"></span>
### Plugin

A [Plugin](index.html#plugin) is an abstraction for a backend. One [Plugin](index.html#plugin) might access places from a REST server while another may access places from a local database. The following instantiates a [Plugin](index.html#plugin) object by providing a name of "nokia". The [Plugin](index.html#plugin) name identifies which backend to choose from. Plugins may also be provided with a set of [parameters](../QtLocation.PluginParameter/index.html), which essentially takes the form of a set of key-value pairs. The [parameters](../QtLocation.PluginParameter/index.html) that can be specified vary among the different [Plugin](index.html#plugin) backends. For documentation on the possible [parameters](../QtLocation.PluginParameter/index.html) and nuances of each [Plugin](index.html#plugin), see the [Plugin References](../QtLocation.qtlocation-index/index.html#plugin-references-and-parameters).

``` qml
Plugin {
    id: myPlugin
    name: "nokia"
    //specify plugin parameters as necessary
    //PluginParameter {...}
    //PluginParameter {...}
    //...
}
```

**Note:** The Nokia plugin must be supplied with some mandatory parameters as outlined in the [Nokia Plugin](../QtLocation.location-plugin-nokia/index.html#mandatory-parameters) documentation.

<span id="models-views-and-delegates"></span>
### Models, Views and Delegates

The QML Places API is built around the notion of models, views and delegates.

|              |                                                                                                                                                                                                                                                                                              |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Model**    | A model holds data items and maintains their structure. The model is also responsible for retrieving the items from a data source.                                                                                                                                                           |
| **View**     | A view is a visual container that displays the data and manages how visual items are shown such as in a list or a grid. The view may also be responsible for navigating the data, for example, scrolling through the visual items during a flicking motion.                                  |
| **Delegate** | A delegate defines how individual data elements should appear as visual items in the view. The models expose a set of data roles and the delegate uses them to construct a visual item. The delegate may also define behaviour such as an operation to invoke when a visual item is clicked. |

The Common Use Cases section below demonstrates concrete examples of how these concepts fit together.

<span id="common-use-cases"></span>
Common Use Cases
----------------

<span id="searching-for-places"></span>
### Searching for Places

Searching is accomplished via the [PlaceSearchModel](../QtLocation.PlaceSearchModel/index.html). The [plugin](../QtLocation.PlaceSearchModel/index.html#plugin-prop) property specifies which backend to perform search operations against. Search parameters may be provided through properties such as the [searchTerm](../QtLocation.PlaceSearchModel/index.html#searchTerm-prop) and [searchArea](../QtLocation.PlaceSearchModel/index.html#searchArea-prop). A search operation can then be started by invoking the [update()](../QtLocation.PlaceSearchModel/index.html#update-method) method. For simplicity, the snippet below invokes [update()](../QtLocation.PlaceSearchModel/index.html#update-method) once construction of the model as been completed, typically [update()](../QtLocation.PlaceSearchModel/index.html#update-method) would be invoked in response to a user action such as a button click. While the search operation is underway the [PlaceSearchModel::status](../QtLocation.PlaceSearchModel/index.html#status-prop) property transitions into the `Loading` state and when successfully completed moves into the `Ready` state.

``` qml
PlaceSearchModel {
    id: searchModel
    plugin: myPlugin
    searchTerm: "pizza"
    searchArea: QtPositioning.circle(startCoordinate);
    Component.onCompleted: update()
}
```

<span id="display-search-results-using-a-listview"></span>
### Display Search Results using a ListView

A ListView can be used to show the search results found by the model. It defines the visual region for where the results are shown, and in the case below fills the entirety of its parent. The ListView has built in behavior that enables the region to respond to flicking events and to scroll appropriately.

In the snippet below, the search model has been assigned to the ListView's model property. When the model is updated with new results, the ListView is automatically updated to reflect the model's new data items.

A simple delegate has been bound to the ListView's delegate property. The [PlaceSearchModel](../QtLocation.PlaceSearchModel/index.html) exposes a set of [roles](../QtLocation.PlaceSearchModel/index.html#placesearchmodel-roles) of which the *title* and *place* roles have been used below, these are of type string and [Place](../QtLocation.location-cpp-qml/index.html#place) respectively. Essentially for each data item that should be visible in the view, the view invokes the delegate to create a visual representation of the item.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>ListView {
    anchors.fill: parent
    model: searchModel
    delegate: Component {
        Column {
            Text { text: title }
            Text { text: place.location.address.text }
        }
    }
    spacing: 10
}</code></pre></td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/83a3d51e-3b66-4934-8d36-49d205587fba-api/apps/qml/sdk-15.04.1/location-places-qml/images/places-list.png" /></td>
</tr>
</tbody>
</table>

**Note:** For simplicty's sake we have assumed that every search result is of [type](../QtLocation.PlaceSearchModel/index.html#search-result-types) `PlaceSearchResult` and so always have access to the *place* role, other search result types may not have a *place* role.

See the [Places List](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtLocation.places_list/) example for full source code.

<span id="display-search-results-using-a-mapitemview"></span>
### Display Search Results using a MapItemView

Instead of a ListView, the [PlaceSearchModel](../QtLocation.PlaceSearchModel/index.html) can be used in conjunction with a [MapItemView](../QtLocation.MapItemView/index.html) to display markers on a map. Firstly a [Map](../QtLocation.Map/index.html) is used to define the visual region occupied by the map, in this case it fills the entirety of its parent. Other properties are specified such as the [plugin](../QtLocation.Map/index.html#plugin-prop) providing the maps, and the map's [center](../QtLocation.Map/index.html#center-prop) and [zoomLevel](../QtLocation.Map/index.html#zoomLevel-prop).

Inside the [Map](../QtLocation.Map/index.html), a [MapItemView](../QtLocation.MapItemView/index.html) is declared, where the [model](../QtLocation.MapItemView/index.html#model-prop) property has been set to the search model and a [delegate](../QtLocation.MapItemView/index.html#delegate-prop) consisting of a [MapQuickItem](../QtLocation.MapQuickItem/index.html) is used to display a marker image. A marker is shown for every place that was found by the search model. The delegate uses the *place* role to position the marker.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>Map {
    id: map
    anchors.fill: parent
    plugin: myPlugin;
    center {
        latitude: -27.47
        longitude: 153.025
    }
    zoomLevel: 13
    MapItemView {
        model: searchModel
        delegate: MapQuickItem {
            coordinate: place.location.coordinate
            anchorPoint.x: image.width * 0.5
            anchorPoint.y: image.height
            sourceItem: Image {
                id: image
                source: &quot;marker.png&quot;
            }
        }
    }
}</code></pre></td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/1cf25225-6c8f-4d72-a945-5564b3fd0a7d-api/apps/qml/sdk-15.04.1/location-places-qml/images/places-map.jpg" /></td>
</tr>
</tbody>
</table>

**Note:** For simplicty's sake we have assumed that every search result is of [type](../QtLocation.PlaceSearchModel/index.html#search-result-types) `PlaceSearchResult` and so always have access to the *place* role, other search result types may not have a *place* role.

See the [Places Map](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtLocation.places_map/) example for full source code.

<span id="fetching-place-details"></span>
### Fetching Place Details

In order to save bandwidth, sometimes a backend will only return places which are partially populated with details. This can be checked with the [Place::detailsFetched](../QtLocation.Place/index.html#detailsFetched-prop) property which indicates whether all availalable details have been fetched or not. If not, the [Place::getDetails](../QtLocation.Place/index.html#getDetails-method)() method can be invoked to fetch the remaining details.

``` qml
if (!place.detailsFetched)
    place.getDetails();
```

<span id="saving-and-removing-places"></span>
### Saving and Removing Places

Some backends may support saving and removing places. This can be done by calling the [Place::save](../QtLocation.Place/index.html#save-method)() and [Place::remove](../QtLocation.Place/index.html#remove-method)() methods respectively. Note that in order to save a [Place](../QtLocation.location-cpp-qml/index.html#place), a [Plugin](index.html#plugin) must be assigned to specify which backend we are saving to. The [status](../QtLocation.Place/index.html#status-prop) property will transition into the `Saving` state while the save operation is happening and on successful completion will move to the `Ready` state. The following snippet shows how to save and remove a place using javascript.

``` qml
//creating and saving a place
var place = Qt.createQmlObject('import QtLocation 5.3; Place { }', parent);
place.plugin = myPlugin;
place.name = "New York";
place.location.coordinate.latitude = 40.7
place.location.coordinate.longitude = -74.0
place.save();
//removing a place
place.remove();
```

<span id="learn-more"></span>
### Learn More

The above snippets only exhibit a small subset of Places functionality. Refer to the [Places Types](index.html#places-types) shown below for richer content such as [images](../QtLocation.ImageModel/index.html), [reviews](../QtLocation.ReviewModel/index.html) etc, as well as more indepth descriptions and explanations.

See also the [Places (QML)](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtLocation.places/) example for a more comprehensive demonstration on how to use the API.

<span id="places-types"></span>
Places Types
------------

<span id="data-types"></span>
### Data Types

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../QtLocation.Category/index.html">Category</a></p></td>
<td><p>Type represents a category that a Place can be associated with</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.ContactDetail/index.html">ContactDetail</a></p></td>
<td><p>Type holds a contact detail such as a phone number or a website address</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.ContactDetails/index.html">ContactDetails</a></p></td>
<td><p>Type holds contact details for a Place</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.ExtendedAttributes/index.html">ExtendedAttributes</a></p></td>
<td><p>Type holds additional data about a Place</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.Icon/index.html">Icon</a></p></td>
<td><p>Type represents an icon image source which can have multiple sizes</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.Place/index.html">Place</a></p></td>
<td><p>Type represents a location that is a position of interest</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.PlaceAttribute/index.html">PlaceAttribute</a></p></td>
<td><p>Type holds generic place attribute information</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.Ratings/index.html">Ratings</a></p></td>
<td><p>Type holds place rating information</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.Supplier/index.html">Supplier</a></p></td>
<td><p>Holds data regarding the supplier of a place, a place's image, review, or editorial</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.User/index.html">User</a></p></td>
<td><p>Type identifies a user who contributed a particular Place content item</p></td>
</tr>
</tbody>
</table>

<span id="models"></span>
### Models

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../QtLocation.CategoryModel/index.html">CategoryModel</a></p></td>
<td><p>Type provides a model of the categories supported by a Plugin</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.EditorialModel/index.html">EditorialModel</a></p></td>
<td><p>Type provides a model of place editorials</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.ImageModel/index.html">ImageModel</a></p></td>
<td><p>Type provides a model of place images</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.PlaceSearchModel/index.html">PlaceSearchModel</a></p></td>
<td><p>Provides access to place search results</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.PlaceSearchSuggestionModel/index.html">PlaceSearchSuggestionModel</a></p></td>
<td><p>Provides access to search term suggestions</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.ReviewModel/index.html">ReviewModel</a></p></td>
<td><p>Provides access to reviews of a Place</p></td>
</tr>
</tbody>
</table>

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
