---
Title: QtLocation.RouteQuery
---
        
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

-   ****[excludedAreas](#excludedAreas-prop)**** : list&lt;georectangle&gt;
-   ****[featureTypes](#featureTypes-prop)**** : QList&lt;FeatureType&gt;
-   ****[maneuverDetail](#maneuverDetail-prop)**** : enumeration
-   ****[numberAlternativeRoutes](#numberAlternativeRoutes-prop)**** : int
-   ****[routeOptimizations](#routeOptimizations-prop)**** : enumeration
-   ****[segmentDetail](#segmentDetail-prop)**** : enumeration
-   ****[travelModes](#travelModes-prop)**** : enumeration
-   ****[waypoints](#waypoints-prop)**** : QJSValue

<span id="methods"></span>
Methods
-------

-   ****[addExcludedArea](#addExcludedArea-method)****(georectangle)
-   ****[addWaypoint](#addWaypoint-method)****(coordinate)
-   ****[clearExcludedAreas](#clearExcludedAreas-method)****()
-   ****[clearWaypoints](#clearWaypoints-method)****()
-   FeatureWeight ****[featureWeight](#featureWeight-method)****(FeatureType *featureType*)
-   ****[removeExcludedArea](#removeExcludedArea-method)****(georectangle)
-   ****[removeWaypoint](#removeWaypoint-method)****(coordinate)
-   ****[resetFeatureWeights](#resetFeatureWeights-method)****()
-   ****[setFeatureWeight](#setFeatureWeight-method)****(FeatureType, FeatureWeight)

<span id="details"></span>
Detailed Description
--------------------

A [RouteQuery](index.html) contains all the parameters necessary to make a request to a routing service, which can then populate the contents of a [RouteModel](../QtLocation.RouteModel.md).

These parameters describe key details of the route, such as [waypoints](#waypoints-prop) to pass through, [excludedAreas](#excludedAreas-prop) to avoid, the [travelModes](#travelModes-prop) in use, as well as detailed preferences on how to optimize the route and what features to prefer or avoid along the path (such as toll roads, highways, etc).

[RouteQuery](index.html) objects are used exclusively to fill out the value of a [RouteModel](../QtLocation.RouteModel.md)'s [query](../QtLocation.RouteModel.md#query-prop) property, which can then begin the retrieval process to populate the model.

<span id="example-usage"></span>
### Example Usage

The following snipped shows an incomplete example of creating a [RouteQuery](index.html) object and setting it as the value of a [RouteModel](../QtLocation.RouteModel.md)'s [query](../QtLocation.RouteModel.md#query-prop) property.

``` cpp
RouteQuery {
    id: aQuery
}
RouteModel {
    query: aQuery
    autoUpdate: false
}
```

For a more complete example, see the documentation for the [RouteModel](../QtLocation.RouteModel.md) type, and the Mapviewer example.

**See also** [RouteModel](../QtLocation.RouteModel.md).

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

Excluded areas can be set as part of the [RouteQuery](index.html) type declaration or dynamically with the functions provided.

**See also** [addExcludedArea](#addExcludedArea-method), [removeExcludedArea](#removeExcludedArea-method), and [clearExcludedAreas](#clearExcludedAreas-method).

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

-   [RouteQuery](index.html).NoFeature - No features will be taken into account when planning the route
-   [RouteQuery](index.html).TollFeature - Consider tollways when planning the route
-   [RouteQuery](index.html).HighwayFeature - Consider highways when planning the route
-   [RouteQuery](index.html).PublicTransitFeature - Consider public transit when planning the route
-   [RouteQuery](index.html).FerryFeature - Consider ferries when planning the route
-   [RouteQuery](index.html).TunnelFeature - Consider tunnels when planning the route
-   [RouteQuery](index.html).DirtRoadFeature - Consider dirt roads when planning the route
-   [RouteQuery](index.html).ParksFeature - Consider parks when planning the route
-   [RouteQuery](index.html).MotorPoolLaneFeature - Consider motor pool lanes when planning the route

**See also** [setFeatureWeight](#setFeatureWeight-method) and [featureWeight](#featureWeight-method).

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

-   [RouteQuery](index.html).NoManeuvers - No maneuvers should be included with the route
-   [RouteQuery](index.html).BasicManeuvers - Basic maneuvers will be included with the route

The default value is [RouteQuery](index.html).BasicManeuvers

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

-   [RouteQuery](index.html).ShortestRoute - Minimize the length of the journey
-   [RouteQuery](index.html).FastestRoute - Minimize the traveling time for the journey
-   [RouteQuery](index.html).MostEconomicRoute - Minimize the cost of the journey
-   [RouteQuery](index.html).MostScenicRoute - Maximize the scenic potential of the journey

The default value is [RouteQuery](index.html).FastestRoute

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

-   [RouteQuery](index.html).NoSegmentData - No segment data should be included with the route
-   [RouteQuery](index.html).BasicSegmentData - Basic segment data will be included with the route

The default value is [RouteQuery](index.html).BasicSegmentData

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

-   [RouteQuery](index.html).CarTravel - The route will be optimized for someone who is driving a car
-   [RouteQuery](index.html).PedestrianTravel - The route will be optimized for someone who is walking
-   [RouteQuery](index.html).BicycleTravel - The route will be optimized for someone who is riding a bicycle
-   [RouteQuery](index.html).PublicTransitTravel - The route will be optimized for someone who is making use of public transit
-   [RouteQuery](index.html).TruckTravel - The route will be optimized for someone who is driving a truck

The default value is [RouteQuery](index.html).CarTravel

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

Waypoints can be set as part of the [RouteQuery](index.html) type declaration or dynamically with the functions provided.

**See also** [addWaypoint](#addWaypoint-method), [removeWaypoint](#removeWaypoint-method), and [clearWaypoints](#clearWaypoints-method).

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

**See also** [removeExcludedArea](#removeExcludedArea-method) and [clearExcludedAreas](#clearExcludedAreas-method).

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

**See also** [removeWaypoint](#removeWaypoint-method) and [clearWaypoints](#clearWaypoints-method).

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

**See also** [addExcludedArea](#addExcludedArea-method) and [removeExcludedArea](#removeExcludedArea-method).

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

**See also** [removeWaypoint](#removeWaypoint-method) and [addWaypoint](#addWaypoint-method).

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

**See also** [featureTypes](#featureTypes-prop), [setFeatureWeight](#setFeatureWeight-method), and [resetFeatureWeights](#resetFeatureWeights-method).

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

**See also** [addExcludedArea](#addExcludedArea-method) and [clearExcludedAreas](#clearExcludedAreas-method).

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

**See also** [addWaypoint](#addWaypoint-method) and [clearWaypoints](#clearWaypoints-method).

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

**See also** [featureTypes](#featureTypes-prop), [setFeatureWeight](#setFeatureWeight-method), and [featureWeight](#featureWeight-method).

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

-   [RouteQuery](index.html).NeutralFeatureWeight - The presence or absence of the feature will not affect the planning of the route
-   [RouteQuery](index.html).PreferFeatureWeight - Routes which contain the feature will be preferred over those that do not
-   [RouteQuery](index.html).RequireFeatureWeight - Only routes which contain the feature will be considered, otherwise no route will be returned
-   [RouteQuery](index.html).AvoidFeatureWeight - Routes which do not contain the feature will be preferred over those that do
-   [RouteQuery](index.html).DisallowFeatureWeight - Only routes which do not contain the feature will be considered, otherwise no route will be returned

**See also** [featureTypes](#featureTypes-prop), [resetFeatureWeights](#resetFeatureWeights-method), and [featureWeight](#featureWeight-method).

