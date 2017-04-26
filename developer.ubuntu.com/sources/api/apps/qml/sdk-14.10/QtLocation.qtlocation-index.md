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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtLocation/index.html" class="sub-nav-item">QtLocation</a> ›

<!-- -->

-   Qt Location

Qt Location
===========

<span class="subtitle"></span>
<span id="details"></span>
The Qt Location API provides mapping, navigation, and place search via QML and C++ interfaces.

The API has not been released yet but due to its platform-independent nature is available on all Qt platforms.

<span id="overview"></span>
Overview
--------

The Qt Location API gives developers the ability to determine a position by using a variety of possible sources, including satellite, or wifi, or text file, and so on. That information can then be used to determine a position in a map context with appropriate navigation and to embed, in the map, defined places with descriptive metadata. These three parts allow a device to know where it is and its location with respect to important features. Using features such as roads, destinations, routes, and other navigation attributes, applications can specify beginning and end-points for navigation and awareness of objects that may aid or hinder a journey.

<span id="getting-started"></span>
Getting Started
---------------

To load the Qt Location module, add the following statement to your .qml files

``` cpp
import QtLocation 5.3
```

For C++ projects include the header appropriate for the current use case, for example applications using routes may use

``` cpp
#include <QGeoRoute> 
```

The .pro file should have the *location* keyword added

``` cpp
QT += location
```

<span id="api-sub-modules"></span>
### API Sub-Modules

The API is split into sub-modules, which each have QML and C++ APIs. It focuses on Map and Place information. The required position data can be retrieved via the QtPositioning module.

<span id="places"></span>
#### Places

Places is the natural complement to Positioning, providing a source of geographic data about places of interest (POIs). As well as providing the location, size and other vitals about a POI, the Places API can also retrieve images, reviews and other rich content related to the place.

|                      |                                                         |                                                         |
|----------------------|---------------------------------------------------------|---------------------------------------------------------|
| Places introduction: | [for QML](../QtLocation.location-places-qml/index.html) | [for C++](../QtLocation.location-places-cpp/index.html) |

<span id="maps-and-navigation"></span>
#### Maps and Navigation

Maps and Navigation provides Qt Quick user interface components for displaying geographic information on a map, as well as allowing user interaction with map objects and the display itself. It also contains utilities for geocoding (finding a geographic coordinate from a street address) and navigation (including driving and walking directions).

|                                   |                                                       |                                                       |
|-----------------------------------|-------------------------------------------------------|-------------------------------------------------------|
| Maps and Navigation introduction: | [for QML](../QtLocation.location-maps-qml/index.html) | [for C++](../QtLocation.location-maps-cpp/index.html) |

<span id="api-references-and-examples"></span>
API References and Examples
---------------------------

Alphabetized lists of all classes and user interface components in the API, as well as detailed example applications to demonstrate their usage.

|                                                                             |                                                                               |
|-----------------------------------------------------------------------------|-------------------------------------------------------------------------------|
| QML API Reference                                                           | Full list of QML components in the Qt Location API                            |
| [C++ API Reference by domain](../QtLocation.qtlocation-cpp/index.html)      | Full list of C++ classes and methods of the Qt Location APIs sorted by domain |
| C++ API Reference                                                           | Full list of C++ classes and methods of the Qt Location APIs                  |
| Example Apps                                                                | Examples demonstrating use of the Qt Location APIs                            |
| [Maps and Navigation Tutorial](../QtLocation.qml-location5-maps/index.html) | Tutorial introducing the QML Maps Types                                       |

<span id="plugin-references-and-parameters"></span>
Plugin References and Parameters
--------------------------------

Information about plugins, important notes on their usage, parameters that can be provided to influence their behavior.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../QtLocation.location-plugin-nokia/index.html">Qt Location Nokia Plugin</a></p></td>
<td><p>Uses the relevant Nokia services provided by Nokia.</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtLocation.location-plugin-osm/index.html">Qt Location Open Street Map Plugin</a></p></td>
<td><p>Uses Open Street Map and related services.</p></td>
</tr>
</tbody>
</table>

<span id="implementing-new-back-ends-and-porting"></span>
### Implementing New Back-Ends and Porting

For systems integrators and distributors, information relating to making Qt Location available for a new platform.

|                                                                |                                                       |
|----------------------------------------------------------------|-------------------------------------------------------|
| [GeoServices](../QtLocation.qtlocation-geoservices/index.html) | Information about the Qt Location GeoServices plugins |
| [Places](../QtLocation.location-places-backend/index.html)     | Information for places backend implementors           |

<span id="new-since-qt-4"></span>
New Since Qt 4
--------------

In Qt 4 Qt Mobility provided some location functionality for Positioning and Maps with Landmarks support. The new Qt Location API has had an extensive reworking of [Map](../QtLocation.Map/index.html)s and [Place](../QtLocation.Place/index.html)s (formerly Landmarks). Also both C++ and QML APIs have been reworked to be simpler to use.

New features of Qt Location includes

-   Maps are now part of the Qt Quick scenegraph, and rendered using hardware-accelerated OpenGL
-   Arbitrary Qt Quick items on the map are supported using [MapQuickItem](../QtLocation.MapQuickItem/index.html)
-   Now possible to create map overlays with a model
-   Built-in support for pinch-to-zoom gestures, flicking , and panning (see [MapGestureArea](../QtLocation.MapGestureArea/index.html))
-   Vast performance improvements over Qt Mobility 1.2, especially for large map polylines and objects in general
-   Full QML API now available for routing and geocoding -- compatible with standard QML model-view design
-   Service provider feature detection without having to open all the available plugins
-   Unified [Plugin](../QtLocation.Plugin/index.html) QML type used by routing/geocoding/maps etc with easy-to-set [PluginParameter](../QtLocation.PluginParameter/index.html)
-   Two plugins are supplied with Qt (a Nokia and an OSM plugin for GeoServices).
-   Landmarks API is replaced by the Places API
-   [Place](../QtLocation.Place/index.html) supports viewing of richer content such as reviews, images, and editorials
-   [Place](../QtLocation.Place/index.html) supports locale handling, sponsored search results, and supplier attribution

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
