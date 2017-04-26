---
Title: QtLocation.RouteManeuver
---
        
RouteManeuver
=============

<span class="subtitle"></span>
The RouteManeuver type represents the information relevant to the point at which two RouteSegments meet. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[direction](#direction-prop)**** : enumeration
-   ****[distanceToNextInstruction](#distanceToNextInstruction-prop)**** : real
-   ****[instructionText](#instructionText-prop)**** : string
-   ****[position](#position-prop)**** : coordinate
-   ****[timeToNextInstruction](#timeToNextInstruction-prop)**** : int
-   ****[valid](#valid-prop)**** : bool
-   ****[waypoint](#waypoint-prop)**** : coordinate
-   ****[waypointValid](#waypointValid-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

[RouteSegment](../QtLocation.RouteSegment.md) instances can be thought of as edges on a routing graph, with [RouteManeuver](index.html) instances as optional labels attached to the vertices of the graph.

The most interesting information held in a [RouteManeuver](index.html) instance is normally the textual navigation to provide and the position at which to provide it, accessible by [instructionText](#instructionText-prop) and [position](#position-prop) respectively.

<span id="example"></span>
Example
-------

The following QML snippet demonstrates how to print information about a route maneuver:

``` qml
import QtQuick 2.0
import QtLocation 5.3
Text {
    text: "Distance till next maneuver: " + routeManeuver.distanceToNextInstruction + " meters, estimated time: " + routeManeuver.timeToNextInstruction + " seconds."
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Describes the change in direction associated with the instruction text that is associated with a [RouteManeuver](index.html).

-   [RouteManeuver](index.html).NoDirection - There is no direction associated with the instruction text
-   [RouteManeuver](index.html).DirectionForward - The instruction indicates that the direction of travel does not need to change
-   [RouteManeuver](index.html).DirectionBearRight - The instruction indicates that the direction of travel should bear to the right
-   [RouteManeuver](index.html).DirectionLightRight - The instruction indicates that a light turn to the right is required
-   [RouteManeuver](index.html).DirectionRight - The instruction indicates that a turn to the right is required
-   [RouteManeuver](index.html).DirectionHardRight - The instruction indicates that a hard turn to the right is required
-   [RouteManeuver](index.html).DirectionUTurnRight - The instruction indicates that a u-turn to the right is required
-   [RouteManeuver](index.html).DirectionUTurnLeft - The instruction indicates that a u-turn to the left is required
-   [RouteManeuver](index.html).DirectionHardLeft - The instruction indicates that a hard turn to the left is required
-   [RouteManeuver](index.html).DirectionLeft - The instruction indicates that a turn to the left is required
-   [RouteManeuver](index.html).DirectionLightLeft - The instruction indicates that a light turn to the left is required
-   [RouteManeuver](index.html).DirectionBearLeft - The instruction indicates that the direction of travel should bear to the left

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="distanceToNextInstruction-prop"></span><span class="name">distanceToNextInstruction</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the distance, in meters, between the point at which the associated instruction was issued and the point that the next instruction should be issued.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="instructionText-prop"></span><span class="name">instructionText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds textual navigation instruction.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="position-prop"></span><span class="name">position</span> : <span class="type">coordinate</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds where the [instructionText](#instructionText-prop) should be displayed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="timeToNextInstruction-prop"></span><span class="name">timeToNextInstruction</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the estimated time it will take to travel from the point at which the associated instruction was issued and the point that the next instruction should be issued, in seconds.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="valid-prop"></span><span class="name">valid</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds whether this maneuver is valid or not.

Invalid maneuvers are used when there is no information that needs to be attached to the endpoint of a QGeoRouteSegment instance.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="waypoint-prop"></span><span class="name">waypoint</span> : <span class="type">coordinate</span></p></td>
</tr>
</tbody>
</table>

This property holds the waypoint associated with this maneuver. All maneuvers do not have a waypoint associated with them, this can be checked with [waypointValid](#waypointValid-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="waypointValid-prop"></span><span class="name">waypointValid</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds whether this [waypoint](#waypoint-prop), associated with this maneuver, is valid or not.

