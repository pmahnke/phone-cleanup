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
-   [SDK 15.04.4](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   RouteQuery

RouteQuery
==========

<span class="subtitle"></span>
The RouteQuery type is used to provide query parameters to a RouteModel. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[excludedAreas](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#excludedAreas-prop)**** : list&lt;georectangle&gt;
-   ****[featureTypes](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#featureTypes-prop)**** : QList&lt;FeatureType&gt;
-   ****[maneuverDetail](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#maneuverDetail-prop)**** : enumeration
-   ****[numberAlternativeRoutes](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#numberAlternativeRoutes-prop)**** : int
-   ****[routeOptimizations](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#routeOptimizations-prop)**** : enumeration
-   ****[segmentDetail](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#segmentDetail-prop)**** : enumeration
-   ****[travelModes](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#travelModes-prop)**** : enumeration
-   ****[waypoints](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#waypoints-prop)**** : QJSValue

<span id="methods"></span>
Methods
-------

-   ****[addExcludedArea](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#addExcludedArea-method)****(georectangle)
-   ****[addWaypoint](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#addWaypoint-method)****(coordinate)
-   ****[clearExcludedAreas](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#clearExcludedAreas-method)****()
-   ****[clearWaypoints](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#clearWaypoints-method)****()
-   FeatureWeight ****[featureWeight](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#featureWeight-method)****(FeatureType *featureType*)
-   ****[removeExcludedArea](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#removeExcludedArea-method)****(georectangle)
-   ****[removeWaypoint](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#removeWaypoint-method)****(coordinate)
-   ****[resetFeatureWeights](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#resetFeatureWeights-method)****()
-   ****[setFeatureWeight](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#setFeatureWeight-method)****(FeatureType, FeatureWeight)

<span id="details"></span>
Detailed Description
--------------------

A [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html) contains all the parameters necessary to make a request to a routing service, which can then populate the contents of a [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html).

These parameters describe key details of the route, such as [waypoints](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#waypoints-prop) to pass through, [excludedAreas](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#excludedAreas-prop) to avoid, the [travelModes](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#travelModes-prop) in use, as well as detailed preferences on how to optimize the route and what features to prefer or avoid along the path (such as toll roads, highways, etc).

[RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html) objects are used exclusively to fill out the value of a [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html)'s [query](../../sdk-15.04.1/QtLocation.RouteModel/index.html#query-prop) property, which can then begin the retrieval process to populate the model.

<span id="example-usage"></span>
### Example Usage

The following snipped shows an incomplete example of creating a [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html) object and setting it as the value of a [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html)'s [query](../../sdk-15.04.1/QtLocation.RouteModel/index.html#query-prop) property.

``` cpp
RouteQuery {
    id: aQuery
}
RouteModel {
    query: aQuery
    autoUpdate: false
}
```

For a more complete example, see the documentation for the [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html) type, and the Mapviewer example.

**See also** [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="excludedAreas-prop"></span><span class="name">excludedAreas</span> : <span class="type">list</span>&lt;<span class="type">georectangle</span>&gt;</p></td>
</tr>
</tbody>
</table>

Areas that the route must not cross.

Excluded areas can be set as part of the [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html) type declaration or dynamically with the functions provided.

**See also** [addExcludedArea](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#addExcludedArea-method), [removeExcludedArea](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#removeExcludedArea-method), and [clearExcludedAreas](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#clearExcludedAreas-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="featureTypes-prop"></span><span class="name">featureTypes</span> : <span class="type">QList</span>&lt;<span class="type">FeatureType</span>&gt;</p></td>
</tr>
</tbody>
</table>

List of features that will be considered when planning the route. Features with a weight of NeutralFeatureWeight will not be returned.

-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).NoFeature - No features will be taken into account when planning the route
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).TollFeature - Consider tollways when planning the route
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).HighwayFeature - Consider highways when planning the route
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).PublicTransitFeature - Consider public transit when planning the route
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).FerryFeature - Consider ferries when planning the route
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).TunnelFeature - Consider tunnels when planning the route
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).DirtRoadFeature - Consider dirt roads when planning the route
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).ParksFeature - Consider parks when planning the route
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).MotorPoolLaneFeature - Consider motor pool lanes when planning the route

**See also** [setFeatureWeight](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#setFeatureWeight-method) and [featureWeight](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#featureWeight-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maneuverDetail-prop"></span><span class="name">maneuverDetail</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The level of detail which will be used in the representation of routing maneuvers.

-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).NoManeuvers - No maneuvers should be included with the route
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).BasicManeuvers - Basic maneuvers will be included with the route

The default value is [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).BasicManeuvers

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="numberAlternativeRoutes-prop"></span><span class="name">numberAlternativeRoutes</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The number of alternative routes requested when requesting routes. The default value is 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="routeOptimizations-prop"></span><span class="name">routeOptimizations</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The route optimizations which should be considered during the planning of the route. Values can be combined with OR ('|') -operator.

-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).ShortestRoute - Minimize the length of the journey
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).FastestRoute - Minimize the traveling time for the journey
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).MostEconomicRoute - Minimize the cost of the journey
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).MostScenicRoute - Maximize the scenic potential of the journey

The default value is [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).FastestRoute

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="segmentDetail-prop"></span><span class="name">segmentDetail</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The level of detail which will be used in the representation of routing segments.

-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).NoSegmentData - No segment data should be included with the route
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).BasicSegmentData - Basic segment data will be included with the route

The default value is [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).BasicSegmentData

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="travelModes-prop"></span><span class="name">travelModes</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The travel modes which should be considered during the planning of the route. Values can be combined with OR ('|') -operator.

-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).CarTravel - The route will be optimized for someone who is driving a car
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).PedestrianTravel - The route will be optimized for someone who is walking
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).BicycleTravel - The route will be optimized for someone who is riding a bicycle
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).PublicTransitTravel - The route will be optimized for someone who is making use of public transit
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).TruckTravel - The route will be optimized for someone who is driving a truck

The default value is [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).CarTravel

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="waypoints-prop"></span><span class="name">waypoints</span> : <span class="type">QJSValue</span></p></td>
</tr>
</tbody>
</table>

The waypoint coordinates of the desired route. The waypoints should be given in order from origin to destination. Two or more coordinates are needed.

Waypoints can be set as part of the [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html) type declaration or dynamically with the functions provided.

**See also** [addWaypoint](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#addWaypoint-method), [removeWaypoint](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#removeWaypoint-method), and [clearWaypoints](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#clearWaypoints-method).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addExcludedArea-method"></span><span class="name">addExcludedArea</span>(<span class="type">georectangle</span>)</p></td>
</tr>
</tbody>
</table>

Adds the given area to excluded areas (areas that the route must not cross). Same area can only be added once.

**See also** [removeExcludedArea](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#removeExcludedArea-method) and [clearExcludedAreas](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#clearExcludedAreas-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addWaypoint-method"></span><span class="name">addWaypoint</span>(<span class="type">coordinate</span>)</p></td>
</tr>
</tbody>
</table>

Appends a coordinate to the list of waypoints. Same coordinate can be set multiple times.

**See also** [removeWaypoint](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#removeWaypoint-method) and [clearWaypoints](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#clearWaypoints-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clearExcludedAreas-method"></span><span class="name">clearExcludedAreas</span>()</p></td>
</tr>
</tbody>
</table>

Clears all excluded areas (areas that the route must not cross).

**See also** [addExcludedArea](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#addExcludedArea-method) and [removeExcludedArea](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#removeExcludedArea-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clearWaypoints-method"></span><span class="name">clearWaypoints</span>()</p></td>
</tr>
</tbody>
</table>

Clears all waypoints.

**See also** [removeWaypoint](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#removeWaypoint-method) and [addWaypoint](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#addWaypoint-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="featureWeight-method"></span><span class="type">FeatureWeight</span> <span class="name">featureWeight</span>(<span class="type">FeatureType</span> <em>featureType</em>)</p></td>
</tr>
</tbody>
</table>

Gets the weight for the *featureType*.

**See also** [featureTypes](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#featureTypes-prop), [setFeatureWeight](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#setFeatureWeight-method), and [resetFeatureWeights](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#resetFeatureWeights-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeExcludedArea-method"></span><span class="name">removeExcludedArea</span>(<span class="type">georectangle</span>)</p></td>
</tr>
</tbody>
</table>

Removes the given area to excluded areas (areas that the route must not cross).

**See also** [addExcludedArea](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#addExcludedArea-method) and [clearExcludedAreas](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#clearExcludedAreas-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeWaypoint-method"></span><span class="name">removeWaypoint</span>(<span class="type">coordinate</span>)</p></td>
</tr>
</tbody>
</table>

Removes the given from the list of waypoints. In case same coordinate appears multiple times, the most recently added coordinate instance is removed.

**See also** [addWaypoint](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#addWaypoint-method) and [clearWaypoints](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#clearWaypoints-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resetFeatureWeights-method"></span><span class="name">resetFeatureWeights</span>()</p></td>
</tr>
</tbody>
</table>

Resets all feature weights to their default state (NeutralFeatureWeight).

**See also** [featureTypes](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#featureTypes-prop), [setFeatureWeight](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#setFeatureWeight-method), and [featureWeight](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#featureWeight-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setFeatureWeight-method"></span><span class="name">setFeatureWeight</span>(<span class="type">FeatureType</span>, <span class="type">FeatureWeight</span>)</p></td>
</tr>
</tbody>
</table>

Defines the weight to associate with a feature during the planning of a route.

Following lists the possible feature weights:

-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).NeutralFeatureWeight - The presence or absence of the feature will not affect the planning of the route
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).PreferFeatureWeight - Routes which contain the feature will be preferred over those that do not
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).RequireFeatureWeight - Only routes which contain the feature will be considered, otherwise no route will be returned
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).AvoidFeatureWeight - Routes which do not contain the feature will be preferred over those that do
-   [RouteQuery](../../sdk-15.04.1/QtLocation.RouteQuery/index.html).DisallowFeatureWeight - Only routes which do not contain the feature will be considered, otherwise no route will be returned

**See also** [featureTypes](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#featureTypes-prop), [resetFeatureWeights](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#resetFeatureWeights-method), and [featureWeight](../../sdk-15.04.1/QtLocation.RouteQuery/index.html#featureWeight-method).

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
