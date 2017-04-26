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

-   RouteManeuver

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

-   ****[direction](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#direction-prop)**** : enumeration
-   ****[distanceToNextInstruction](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#distanceToNextInstruction-prop)**** : real
-   ****[instructionText](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#instructionText-prop)**** : string
-   ****[position](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#position-prop)**** : coordinate
-   ****[timeToNextInstruction](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#timeToNextInstruction-prop)**** : int
-   ****[valid](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#valid-prop)**** : bool
-   ****[waypoint](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#waypoint-prop)**** : coordinate
-   ****[waypointValid](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#waypointValid-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

[RouteSegment](../../sdk-15.04.1/QtLocation.RouteSegment/index.html) instances can be thought of as edges on a routing graph, with [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html) instances as optional labels attached to the vertices of the graph.

The most interesting information held in a [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html) instance is normally the textual navigation to provide and the position at which to provide it, accessible by [instructionText](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#instructionText-prop) and [position](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#position-prop) respectively.

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

Describes the change in direction associated with the instruction text that is associated with a [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).

-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).NoDirection - There is no direction associated with the instruction text
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).DirectionForward - The instruction indicates that the direction of travel does not need to change
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).DirectionBearRight - The instruction indicates that the direction of travel should bear to the right
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).DirectionLightRight - The instruction indicates that a light turn to the right is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).DirectionRight - The instruction indicates that a turn to the right is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).DirectionHardRight - The instruction indicates that a hard turn to the right is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).DirectionUTurnRight - The instruction indicates that a u-turn to the right is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).DirectionUTurnLeft - The instruction indicates that a u-turn to the left is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).DirectionHardLeft - The instruction indicates that a hard turn to the left is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).DirectionLeft - The instruction indicates that a turn to the left is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).DirectionLightLeft - The instruction indicates that a light turn to the left is required
-   [RouteManeuver](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html).DirectionBearLeft - The instruction indicates that the direction of travel should bear to the left

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

This read-only property holds where the [instructionText](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#instructionText-prop) should be displayed.

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

This property holds the waypoint associated with this maneuver. All maneuvers do not have a waypoint associated with them, this can be checked with [waypointValid](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#waypointValid-prop).

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

This read-only property holds whether this [waypoint](../../sdk-15.04.1/QtLocation.RouteManeuver/index.html#waypoint-prop), associated with this maneuver, is valid or not.

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
