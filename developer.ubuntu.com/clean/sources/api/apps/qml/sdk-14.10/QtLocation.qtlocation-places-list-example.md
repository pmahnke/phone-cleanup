---
Title: QtLocation.qtlocation-places-list-example
---
        
Places List (QML)
=================

<span class="subtitle"></span>
<span id="details"></span>
The Places List example demonstrates how to search for and display a list of places using a ListView.

![](https://developer.ubuntu.com/static/devportal_uploaded/e8554d1d-caf2-495c-96c9-7ec745e827ee-api/apps/qml/sdk-14.10/qtlocation-places-list-example/images/places-list.png)

To write a QML application that will show places in a list, we start by making the following import declarations.

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
```

Instantiate a [Plugin](../QtLocation.Plugin.md) instance. The [Plugin](../QtLocation.Plugin.md) is effectively the backend from where places are sourced from. Because the `nokia` plugin has been specified, some mandatory parameters need to be filled in, see the [Nokia Plugin](../QtLocation.location-plugin-nokia.md#mandatory-parameters) documentation for details:

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

Next we instantiate a [PlaceSearchModel](../QtLocation.PlaceSearchModel.md) which we can use to specify search parameters and perform a places search operation. For illustrative purposes, [update()](../QtLocation.PlaceSearchModel.md#update-method) is invoked once construction of the model is complete. Typically [update()](../QtLocation.PlaceSearchModel.md#update-method) would be invoked in response to a user action such as a button click.

``` qml
PlaceSearchModel {
    id: searchModel
    plugin: myPlugin
    searchTerm: "pizza"
    searchArea: QtPositioning.circle(startCoordinate);
    Component.onCompleted: update()
}
```

Finally we instantiate a ListView to show the search results found by the model. An inline delegate has been used and we have assumed that every search result is of [type](../QtLocation.PlaceSearchModel.md#search-result-types) `PlaceSearchesult`. Consequently it is assumed that we always have access to the *place* [role](../QtLocation.PlaceSearchModel.md#placesearchmodel-roles), other search result types may not have a *place* [role](../QtLocation.PlaceSearchModel.md#placesearchmodel-roles).

``` qml
ListView {
    anchors.fill: parent
    model: searchModel
    delegate: Component {
        Column {
            Text { text: title }
            Text { text: place.location.address.text }
        }
    }
    spacing: 10
}
```

Files:

-   places\_list/places\_list.qml
-   places\_list/main.cpp
-   places\_list/places\_list.pro

