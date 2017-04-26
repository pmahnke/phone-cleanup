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

-   QML Maps

QML Maps
========

<span class="subtitle"></span>
<span id="details"></span> <span id="overview"></span>
Overview
--------

The [Map](../QtLocation.Map/index.html) type allows the display of a map and placing objects within the map. Various points of interest can be defined and added to the map for display. Also the [Map](../QtLocation.Map/index.html) has features to control how the map is displayed. With the Map item you can center the map, zoom, pinch and make the item flickable.

The places to be added to the map are [MapItems](../QtLocation.location-maps-qml/index.html#putting-objects-on-a-map-map-overlay-objects). The item's position is defined by a coordinate which includes latitude, longitude and altitude. The item is then displayed automatically after it is added to the Map. [MapItems](../QtLocation.location-maps-qml/index.html#putting-objects-on-a-map-map-overlay-objects) or [Map](../QtLocation.Map/index.html).

<span id="position-on-map"></span>
### Position on map

All position APIs are part of the QtPositioning module. The basic piece of position information is the coordinate. A coordinate encapsulates data for the latitude, longitude and altitude of the location. Altitude is in meters. It also has a method to determine distance to another coordinate. The coordinate type may also be held within a Location element, this will also have information on a bounding box size to determine sufficient proximity to the location and a location address.

Here is an example of a client that uses a position source to center a [map](../QtLocation.Map/index.html) on the current position:

``` cpp
Rectangle {
    import QtPositioning 5.2
    import QtLocation 5.3
    ...
    map : Map {
        // initialize map
        ...
    }
    PositionSource {
        onPositionChanged: {
            // center the map on the current position
            map.center = position.coordinate
        }
    }
}
```

<span id="geocoding"></span>
### Geocoding

[Geocoding](http://en.wikipedia.org/wiki/Geocoding) is the derivation of geographical coordinates (latitude and longitude) from other geographical references to the locations. For example, this can be a street address. Reverse geocoding is also possible with a street address being used to determine a geographical coordinate. Geocoding is performed by using the GeoCodeModel type.

The following code examples are a small part of the `map` component in the [Map Viewer (QML)](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtLocation.mapviewer/) example. The snippets demonstrate the declaration of the [GeocodeModel](../QtLocation.GeocodeModel/index.html) component.

In the snippet we see that the `geocodeModel` property contains the plugin and two signal handlers. One for changes in status (`onStatusChanged` ) and the other to update the centering of the Map object (`onLocationsChanged` ).

``` qml
    property GeocodeModel geocodeModel: GeocodeModel {
        plugin: map.plugin
        onStatusChanged: {
            if ((status == GeocodeModel.Ready) || (status == GeocodeModel.Error))
                map.geocodeFinished()
        }
        onLocationsChanged:
        {
            if (count == 1) {
                map.center.latitude = get(0).coordinate.latitude
                map.center.longitude = get(0).coordinate.longitude
            }
        }
    }
    MapItemView {
        model: geocodeModel
        delegate: pointDelegate
    }
```

These geocoding features are called from a higher level piece of code. In this snippet we see an `onGoButtonClicked` signal handler that extracts the address from the user interface and then creates a query for the [GeocodeModel](../QtLocation.GeocodeModel/index.html) to process and determine the geographical coordinates.

``` qml
        Address {
            id: geocodeAddress
        }
        onGoButtonClicked: {
            // manage the UI state transitions
            page.state = ""
            messageDialog.state = ""
            // fill out the Address element
            geocodeAddress.street = dialogModel.get(0).inputText
            geocodeAddress.city = dialogModel.get(1).inputText
            geocodeAddress.state = dialogModel.get(2).inputText
            geocodeAddress.country = dialogModel.get(3).inputText
            geocodeAddress.postalCode = dialogModel.get(4).inputText
            // send the geocode request
            map.geocodeModel.query = geocodeAddress
            map.geocodeModel.update()
        }
```

<span id="navigation"></span>
### Navigation

A very important function of the [Map](../QtLocation.Map/index.html) type is navigation from one place to a destination with possible waypoints along the route. The route will be divided up into a series of segments. At the end of each segment is a vertex called a *maneuver*. The *segments* contain information about the time and distance to the end of the segment. The *maneuvers* contain information about what to do next, how to get onto the next segment, if there is one. So a *maneuver* contains navigational information, for example "turn right now".

To find a suitable route we will need to use a [RouteQuery](../QtLocation.RouteQuery/index.html) to define the selection criteria and adding any required waypoints. The [RouteModel](../QtLocation.RouteModel/index.html) should return a list of [RouteSegment](../QtLocation.RouteSegment/index.html)s that defines the route to the destination complete with navigation advice at the joins between segments, called [RouteManeuver](../QtLocation.RouteManeuver/index.html)s

There are many options that you can add to the query to narrow the criteria. The [RouteQuery](../QtLocation.RouteQuery/index.html) properties can include

|                                                                                             |                                                        |
|---------------------------------------------------------------------------------------------|--------------------------------------------------------|
| [numberAlternativeRoutes](../QtLocation.RouteQuery/index.html#numberAlternativeRoutes-prop) | The number of alternative routes                       |
| [travelModes](../QtLocation.RouteQuery/index.html#travelModes-prop)                         | Travel modes                                           |
| [routeOptimizations](../QtLocation.RouteQuery/index.html#routeOptimizations-prop)           | Required route optimizations                           |
| [segmentDetail](../QtLocation.RouteQuery/index.html#segmentDetail-prop)                     | Level of detail in segments                            |
| [maneuverDetail](../QtLocation.RouteQuery/index.html#maneuverDetail-prop)                   | Level of detail in maneuvers between segments          |
| [waypoints](../QtLocation.RouteQuery/index.html#waypoints-prop)                             | A list of waypoints                                    |
| [excludedAreas](../QtLocation.RouteQuery/index.html#excludedAreas-prop)                     | A list of excluded areas that the route must not cross |
| [featureTypes](../QtLocation.RouteQuery/index.html#featureTypes-prop)                       | Relevant map features, for example highway, ferry      |

In the following example a default [RouteQuery](../QtLocation.RouteQuery/index.html) is declared, later to be defined by some user input, and used in `routeModel` as the query. The `routeInfoModel` is a ListModel that can be updated using an `update()` function that we will look at later.

``` qml
    property RouteQuery routeQuery: RouteQuery {}
    property RouteModel routeModel: RouteModel {
        plugin : map.plugin
        query: routeQuery
        onStatusChanged: {
            if (status == RouteModel.Ready) {
                switch (count) {
                case 0:
                    clearAll() // technically not an error
                    map.routeError()
                    break
                case 1:
                    routeInfoModel.update()
                    break
                }
            } else if (status == RouteModel.Error) {
                clearAll()
                map.routeError()
            }
        }
        function clearAll() {
            routeInfoModel.update()
        }
    }
```

The user enters, via a dialog, some information such as the starting point of the route, some waypoints and the destination. All of these locations are waypoints so the locations from start to finish will be entered as a sequence of waypoints. Then other query properties can be set that may be specific to this trip.

``` qml
        function calculateRoute() {
            // clear away any old data in the query
            map.routeQuery.clearWaypoints();
            // add the start and end coords as waypoints on the route
            map.routeQuery.addWaypoint(startCoordinate)
            map.routeQuery.addWaypoint(endCoordinate)
            map.routeQuery.travelModes = routeDialog.travelMode
            map.routeQuery.routeOptimizations = routeDialog.routeOptimization
            for (var i=0; i<9; i++) {
                map.routeQuery.setFeatureWeight(i, 0)
            }
            for (var i=0; i<routeDialog.features.length; i++) {
                map.routeQuery.setFeatureWeight(routeDialog.features[i], RouteQuery.AvoidFeatureWeight)
            }
            map.routeModel.update();
            // center the map on the start coord
            map.center = startCoordinate;
    }
```

The `routeInfoModel` ListModel is used to grab the results of the query and construct a suitable list for display. The ListModel `routeInfoModel` contains an `update()` function that loops through the segments extracting the segment length, instruction text and distance to the next instruction. The extracted data is formatted for display as it is retrieved.

``` qml
    ListModel {
        id: routeInfoModel
        property string travelTime
        property string distance
        function update() {
            clear()
            if (routeModel.count > 0) {
                for (var i = 0; i < routeModel.get(0).segments.length; i++) {
                    append({
                        "instruction": routeModel.get(0).segments[i].maneuver.instructionText,
                        "distance": formatDistance(routeModel.get(0).segments[i].maneuver.distanceToNextInstruction)
                    });
                }
            }
            travelTime = routeModel.count == 0 ? "" : formatTime(routeModel.get(0).travelTime)
            distance = routeModel.count == 0 ? "" : formatDistance(routeModel.get(0).distance)
        }
    }
    MapItemView {
        model: routeModel
        delegate: routeDelegate
        autoFitViewport: true
    }
```

For more information on the example see the [Map Viewer (QML)](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtLocation.mapviewer/) example.

<span id="zoom-pinch-and-flickable"></span>
### Zoom, Pinch and Flickable

The [Map](../QtLocation.Map/index.html) item also supports user interface interactions with the map using tactile and mouse gestures. That is features such as swiping to pan, pinching to zoom.

Enabling and configuring pinch and flickable is easy within the [Map](../QtLocation.Map/index.html) type.

``` qml
Map {
    id: map
    zoomLevel: (maximumZoomLevel - minimumZoomLevel)/2
    center {
        latitude: -27.5796
        longitude: 153.1003
    }
    // Enable pinch gestures to zoom in and out
    gesture.flickDeceleration: 3000
    gesture.enabled: true
}
```

Zoom can also be controlled by other objects like sliders, as shown in the example, by implementing the `onValueChanged` handler to update the Map [zoomLevel](../QtLocation.Map/index.html#zoomLevel-prop).

<span id="types"></span>
Types
-----

<span id="maps"></span>
#### Maps

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../QtLocation.Map/index.html">Map</a></p></td>
<td><p>Type displays a map</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.MapCircle/index.html">MapCircle</a></p></td>
<td><p>Type displays a geographic circle on a Map</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.MapGestureArea/index.html">MapGestureArea</a></p></td>
<td><p>Type provides Map gesture interaction</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.MapItemView/index.html">MapItemView</a></p></td>
<td><p>Used to populate Map from a model</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.MapPinchEvent/index.html">MapPinchEvent</a></p></td>
<td><p>Type provides basic information about pinch event</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.MapPolygon/index.html">MapPolygon</a></p></td>
<td><p>Type displays a polygon on a Map</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.MapPolyline/index.html">MapPolyline</a></p></td>
<td><p>Type displays a polyline on a map</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.MapQuickItem/index.html">MapQuickItem</a></p></td>
<td><p>Type displays an arbitrary Qt Quick object on a Map</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.MapRectangle/index.html">MapRectangle</a></p></td>
<td><p>Type displays a rectangle on a Map</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.MapRoute/index.html">MapRoute</a></p></td>
<td><p>Type displays a Route on a Map</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.MapType/index.html">MapType</a></p></td>
<td><p>Type holds information about a map type</p></td>
</tr>
</tbody>
</table>

<span id="geocoding"></span>
#### Geocoding

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../QtLocation.GeocodeModel/index.html">GeocodeModel</a></p></td>
<td><p>Type provides support for searching operations related to geographic information</p></td>
</tr>
</tbody>
</table>

<span id="routing"></span>
#### Routing

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../QtLocation.Route/index.html">Route</a></p></td>
<td><p>Type represents one geographical route</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.RouteManeuver/index.html">RouteManeuver</a></p></td>
<td><p>Type represents the information relevant to the point at which two RouteSegments meet</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.RouteModel/index.html">RouteModel</a></p></td>
<td><p>Type provides access to routes</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.RouteQuery/index.html">RouteQuery</a></p></td>
<td><p>Type is used to provide query parameters to a RouteModel</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtLocation.RouteSegment/index.html">RouteSegment</a></p></td>
<td><p>Type represents a segment of a Route</p></td>
</tr>
</tbody>
</table>

<span id="example"></span>
Example
-------

The above snippets are taken from the [Map Viewer (QML)](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtLocation.mapviewer/) example.

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
