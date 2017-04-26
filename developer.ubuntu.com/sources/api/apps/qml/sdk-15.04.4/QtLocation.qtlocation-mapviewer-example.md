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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.4</a> ›
-   <a href="../QtLocation/index.html" class="sub-nav-item">QtLocation</a> ›

<!-- -->

-   Map Viewer (QML)

Map Viewer (QML)
================

<span class="subtitle"></span>
<span id="details"></span>
This is a large example covering many basic uses of maps, positioning, and navigation services in Qt Location. This page is divided into sections covering each of these areas of functionality with snippets from the code.

The Map Viewer example can work with any of the available geo services plugins. However, some plugins may require additional [plugin parameters](../../sdk-15.04.1/QtLocation.PluginParameter/index.html) in order to function correctly. [Plugin parameters](../../sdk-15.04.1/QtLocation.PluginParameter/index.html) can be passed on the command line using the `--plugin` argument, which takes the form:

``` cpp
--plugin.<parameter name> <parameter value>
```

Refer to the documentation for each of the geo services plugins for details on what plugin parameters they support. The Nokia services plugin supplied with Qt requires an *app\_id* and *token* pair. See "[Qt Location Nokia Plugin](../../sdk-15.04.1/QtLocation.location-plugin-nokia/index.html)" for details.

QML types shown in this example:

-   Displaying a map
    -   [Map](../../sdk-15.04.1/QtLocation.Map/index.html)
    -   [MapGestureArea](../../sdk-15.04.1/QtLocation.MapGestureArea/index.html)
    -   coordinate
-   Finding an address
    -   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html)
    -   [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView/index.html)
    -   [MapCircle](../../sdk-15.04.1/QtLocation.MapCircle/index.html)
-   Directions and travel routes
    -   [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html)
    -   [MapRoute](../../sdk-15.04.1/QtLocation.MapRoute/index.html)

![](https://developer.ubuntu.com/static/devportal_uploaded/011bd6d2-c505-42c3-8044-175a014ac70f-api/apps/qml/sdk-15.04.1/qtlocation-mapviewer-example/images/example-mapviewer.png)

<span id="displaying-a-map"></span>
### Displaying a Map

Drawing a map on-screen is accomplished using the Map type, as shown below.

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
center {
    latitude: -27.5796
    longitude: 153.1003
}
}
```

In this example, we give the map an initial center coordinate with a set latitude and longitude. We also set the initial zoom level to 50% (halfway between the maximum and minimum).

The calls to "pinch" and "flick" are used to enable gestures on the map. The flick gesture is also sometimes known as "kinetic panning", and provides a more intuitive feel for panning the map both on touch screens and with a mouse.

As we do not specify a plugin for supplying map data, the platform default will be used. This is typically the "nokia" plugin, which provides data from Nokia services. Additional licensing conditions do apply to the use of this data, please see the documentation for further details.

<span id="finding-an-address-geocoding"></span>
### Finding an Address (Geocoding)

To locate a certain address or place on the map uses a process called geocoding. In order to perform a geocode operation, we first need to adjust our Map object to be able to receive the result.

Receiving results of geocoding is done through a [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html), which is typically instantiated as a property of the Map component:

``` qml
    property GeocodeModel geocodeModel: GeocodeModel {
    }
```

Then, to display the contents of the [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html) we use a [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView/index.html):

``` qml
    MapItemView {
        model: geocodeModel
        delegate: pointDelegate
    }
```

[MapItemView](../../sdk-15.04.1/QtLocation.MapItemView/index.html) uses an object called a "delegate" to act as a template for the items it creates. This can contain any map object desired, but in this case we show a [MapCircle](../../sdk-15.04.1/QtLocation.MapCircle/index.html):

``` qml
    Component {
        id: pointDelegate
        MapCircle {
            radius: 1000
            color: circleMouseArea.containsMouse ? "lime" : "red"
            opacity: 0.6
            center: locationData.coordinate
        }
    }
```

With these three objects, we have enough to receive Geocode responses and display them on our Map. The final piece is to send the actual Geocode request.

In this example, we have a utility component called Dialog which we use to display the user interface requesting geocoding parameters. You can create a similar component yourself using Dialog.qml in this example as a reference, or drive the process using any other UI you wish.

To send a geocode request, first we create an Address object, and fill it in with the desired parameters. Then we set "map.geocodeModel.query" to the filled in Address, and call update() on the [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).

``` qml
    InputDialog {
        id: geocodeDialog
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
    }
```

<span id="directions-and-travel-routes"></span>
### Directions and Travel Routes

Similar to the [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html), Qt Location also features the [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html) type, which allows information about routes (for example driving directions) between two or more points, to be received and used with a Map.

Here again, we instantiate the [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html) as a property of our Map:

``` qml
    property RouteQuery routeQuery: RouteQuery {}
    property RouteModel routeModel: RouteModel {
        plugin : map.plugin
        query: routeQuery
    }
```

To display the contents of a model to the user, we need a view. Once again we will use a [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView/index.html), to display the Routes as objects on the Map:

``` qml
    MapItemView {
        model: routeModel
        delegate: routeDelegate
        autoFitViewport: true
    }
```

To act as a template for the objects we wish the view to create, we create a delegate component:

``` qml
    Component {
        id: routeDelegate
        MapRoute {
            route: routeData
            line.color: routeMouseArea.containsMouse ? "lime" : "red"
            line.width: 5
            smooth: true
            opacity: 0.8
    }
```

With the model, view and delegate now complete, the only missing component is some kind of control over the model to begin the Route request process. In the simplest case, we can fill out a Route request using two already available coordinates, which we store inside the RouteDialog component:

``` qml
    RouteDialog {
        id: routeDialog
        property variant startCoordinate
        property variant endCoordinate
    }
```

In the next snippet, we show how to set up the request object and instruct the model to update. We also instruct the map to center on the start coordinate for our routing request.

``` qml
        function calculateRoute() {
            // clear away any old data in the query
            map.routeQuery.clearWaypoints();
            // add the start and end coords as waypoints on the route
            map.routeQuery.addWaypoint(startCoordinate)
            map.routeQuery.addWaypoint(endCoordinate)
            map.routeQuery.travelModes = routeDialog.travelMode
            map.routeQuery.routeOptimizations = routeDialog.routeOptimization
            map.routeModel.update();
            // center the map on the start coord
            map.center = startCoordinate;
```

This is all that is required to display a Route on the Map. However, it is also useful to be able to retrieve the written directions and explanation of the travel route. In the example, these are displayed in the pull-out on the left-hand side of the map. To create this pull-out's contents, we use a standard ListModel and ListView pair. The data in the ListModel is built from the routeModel's output:

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
```

Inside the [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html), we add an [onStatusChanged](../../sdk-15.04.1/QtLocation.RouteModel/index.html#status-prop) handler, which calls the `update()` function we defined on the model:

``` qml
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
```

Files:

-   mapviewer/mapviewer.qml
-   mapviewer/qmlmapviewerwrapper.cpp
-   mapviewer/content/dialogs/Message.qml
-   mapviewer/content/dialogs/RouteDialog.qml
-   mapviewer/content/map/3dItem.qml
-   mapviewer/content/map/CircleItem.qml
-   mapviewer/content/map/ImageItem.qml
-   mapviewer/content/map/MapComponent.qml
-   mapviewer/content/map/Marker.qml
-   mapviewer/content/map/MiniMap.qml
-   mapviewer/content/map/PolygonItem.qml
-   mapviewer/content/map/PolylineItem.qml
-   mapviewer/content/map/RectangleItem.qml
-   mapviewer/content/map/VideoItem.qml
-   mapviewer/mapviewer.pro
-   mapviewer/mapviewerwrapper.qrc

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
