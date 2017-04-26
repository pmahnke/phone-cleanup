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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04</a> ›
-   <a href="../QtLocation/index.html" class="sub-nav-item">QtLocation</a> ›

<!-- -->

-   Maps and Navigation (QML)

Maps and Navigation (QML)
=========================

<span class="subtitle"></span>
<span id="details"></span>
**Maps and Navigation** provides QtQuick user interface types for displaying geographic information on a map, as well as allowing user interaction with map overlay objects and the display itself. It also contains utilities for geocoding (finding a geographic coordinate from a street address) and navigation (including driving and walking directions).

It builds upon the API concepts and types in the QML Positioning API. A more hands-on introduction of the Maps and Navigation types can be found in the [Maps and Navigation tutorial](../QtLocation.qml-location5-maps/index.html).

<span id="maps"></span>
Maps
----

<span id="displaying-maps"></span>
### Displaying Maps

Displaying a map is done using the [Map](../QtLocation.Map/index.html) QML types. The Map type supports user interaction through the [MapGestureArea](../QtLocation.MapGestureArea/index.html) QML type. The Map object draws the map on-screen using OpenGL (ES), allowing for hardware-accelerated rendering where available.

**Key Types**

|                                                           |                                                                                                            |
|-----------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
| [Plugin](../QtLocation.Plugin/index.html)                 | A location-based services plugin provides data including map data which is then displayed in a Map object. |
| [Map](../QtLocation.Map/index.html)                       | QtQuick item to display a map on-screen.                                                                   |
| [MapGestureArea](../QtLocation.MapGestureArea/index.html) | Interaction helper for panning, flicking and pinch-to-zoom gesture on a Map.                               |

Note that the client must create a [Plugin](../QtLocation.Plugin/index.html) object prior to using a [Map](../QtLocation.Map/index.html) type in order to have access to map data to display.

<span id="putting-objects-on-a-map-map-overlay-objects"></span>
### Putting Objects on a Map (Map Overlay Objects)

Maps can also contain map overlay objects, which are used to display information on its surface. There is a set of basic pre-defined map overlay objects, as well as the ability to implement custom map overlay objects using the [MapQuickItem](../QtLocation.MapQuickItem/index.html) type, which can contain any standard QtQuick item.

**Key Types**

|                                                       |                                                                                                                                                                            |
|-------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [MapCircle](../QtLocation.MapCircle/index.html)       | A geographic circle (all points at a set distance from a center), optionally with a border.                                                                                |
| [MapRectangle](../QtLocation.MapRectangle/index.html) | A rectangle whose top left and bottom right points are specified as coordinate types, optionally with a border.                                                            |
| [MapPolygon](../QtLocation.MapPolygon/index.html)     | A polygon made of an arbitrary list of coordinates.                                                                                                                        |
| [MapPolyline](../QtLocation.MapPolyline/index.html)   | A polyline made of an arbitrary list of coordinates.                                                                                                                       |
| [MapQuickItem](../QtLocation.MapQuickItem/index.html) | Turns any arbitrary QtQuick Item into a map overlay object. [MapQuickItem](../QtLocation.MapQuickItem/index.html) is an enabler for specifying custom map overlay objects. |

<span id="model-view-design-with-map-overlay-objects"></span>
### Model-View Design with Map Overlay Objects

To automatically generate map overlay objects based on the contents of a QtQuick model (for example a ListModel item), the [MapItemView](../QtLocation.MapItemView/index.html) type is available. It accepts any map overlay object as its delegate, and can only be created within a [Map](../QtLocation.Map/index.html).

**Key Types**

|                                                     |                                                                                 |
|-----------------------------------------------------|---------------------------------------------------------------------------------|
| [MapItemView](../QtLocation.MapItemView/index.html) | Populates a Map with map overlay objects based on the data provided by a model. |

<span id="interaction-with-map-overlay-objects"></span>
### Interaction with Map Overlay Objects

Properties of map overlay objects that influence their appearance on the display can be changed at any time, and many can also be used in animations. Animating coordinate-based map overlay objects, such as [MapPolygon](../QtLocation.MapPolygon/index.html) and [MapPolyline](../QtLocation.MapPolyline/index.html), is not yet available.

<span id="geocoding-address-to-coordinate-and-vice-versa"></span>
Geocoding -- Address to Coordinate and Vice Versa
-------------------------------------------------

Geocoding is the translation of geographic coordinates into addresses, or vice versa. Such a translation usually involves sending the source data to a server which then performs the translation and returns the results, although some location-based service provider [plugins](../QtLocation.Plugin/index.html) may be able to provide some geocoding functionality without sending data to a remote server. The availability and accuracy of the translation usually depends on the location or address being translated, as different areas of the Earth are mapped to varying degrees of accuracy.

A geocoding query in QML is performed using the [GeocodeModel](../QtLocation.GeocodeModel/index.html) type. For an address-to-coordinate query, its `query` property may be set to either an Address object or a string containing the textual form of the address to search for. To perform the reverse, the same property can be set to a coordinate instead. Results are made available in the contents of the model.

**Key Types**

|                                                       |                                                                                                                                                                                  |
|-------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Plugin](../QtLocation.Plugin/index.html)             | A location-based services plugin provides data including geocoding translation results which are exposed to clients via a [GeocodeModel](../QtLocation.GeocodeModel/index.html). |
| [GeocodeModel](../QtLocation.GeocodeModel/index.html) | Queries the Plugin for geocoding translations and provides access to results via indexes in the model.                                                                           |
| Address                                               | Structured address for use in queries and results of geocoding.                                                                                                                  |

Note that the client must create a [Plugin](../QtLocation.Plugin/index.html) object prior to using a [GeocodeModel](../QtLocation.GeocodeModel/index.html) object. This will enable access to geocoding translation services and thus data to display.

<span id="routing-and-navigation"></span>
Routing and Navigation
----------------------

Routing is the determination of a navigable path from one point to another on a map. Given a map that is aware of features that aid or hinder navigation, such as bridges, waterways and so on, a series of segments that make up the journey can be constructed. If these [RouteSegment](../QtLocation.RouteSegment/index.html)s are simple then we can add navigation information at the connecting points, [RouteManeuver](../QtLocation.RouteManeuver/index.html)s, between the segments.

**Key Types**

|                                                         |                                                                          |
|---------------------------------------------------------|--------------------------------------------------------------------------|
| [Route](../QtLocation.Route/index.html)                 | The entire path to be navigated.                                         |
| [RouteSegment](../QtLocation.RouteSegment/index.html)   | The individual components of a route.                                    |
| [RouteManeuver](../QtLocation.RouteManeuver/index.html) | The navigation information that joins segments.                          |
| [RouteModel](../QtLocation.RouteModel/index.html)       | The means of making requests on the backend to supply route information. |

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
