---
Title: QtLocation.qtlocation-places-map-example
---
        
Places Map (QML)
================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/6598a2ab-3cd7-4cdf-bed5-5c7624509985-api/apps/qml/sdk-15.04/qtlocation-places-map-example/images/places-map.jpg)

To write a QML application that will show places on a map, we start by making the following import declarations.

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
```

Instantiate a [Plugin](../QtLocation.location-places-qml.md#plugin) instance. The [Plugin](../QtLocation.location-places-qml.md#plugin) is effectively the backend from where places are sourced from. Because the `nokia` plugin has been specified, some mandatory parameters need to be filled in, see the [Nokia Plugin](../QtLocation.location-plugin-nokia.md#mandatory-parameters) documentation for details:

``` qml
Plugin {
    id: myPlugin
    name: "nokia"
    //specify plugin parameters if necessary
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
    searchTerm: "Pizza"
    //Brisbane
    searchArea: QtPositioning.circle(QtPositioning.coordinate(-27.46778, 153.02778))
    Component.onCompleted: update()
}
```

The map is displayed by using the [Map](../QtLocation.Map.md) type and inside we declare the [MapItemView](../QtLocation.MapItemView.md) and supply the search model and a delegate. An inline delegate has been used and we have assumed that every search result is of [type](../QtLocation.PlaceSearchModel.md#search-result-types) `PlaceSerachesult`. Consequently it is assumed that we always have access to the *place* [role](../QtLocation.PlaceSearchModel.md#placesearchmodel-roles), other search result types may not have a *place* [role](../QtLocation.PlaceSearchModel.md#placesearchmodel-roles).

``` qml
Map {
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
                source: "marker.png"
            }
        }
    }
}
```

Files:

-   places\_map/places\_map.qml
-   places\_map/main.cpp
-   places\_map/places\_map.pro

