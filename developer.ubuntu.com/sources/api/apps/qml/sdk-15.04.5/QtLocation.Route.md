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
-   [SDK 15.04.5](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   Route

Route
=====

<span class="subtitle"></span>
The Route type represents one geographical route. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[bounds](../../sdk-15.04.1/QtLocation.Route/index.html#bounds-prop)**** : georectangle
-   ****[distance](../../sdk-15.04.1/QtLocation.Route/index.html#distance-prop)**** : real
-   ****[path](../../sdk-15.04.1/QtLocation.Route/index.html#path-prop)**** : QJSValue
-   ****[segments](../../sdk-15.04.1/QtLocation.Route/index.html#segments-prop)**** : list&lt;RouteSegment&gt;
-   ****[travelTime](../../sdk-15.04.1/QtLocation.Route/index.html#travelTime-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

A Route type contains high level information about a route, such as the length the route, the estimated travel time for the route, and enough information to render a basic image of the route on a map.

The QGeoRoute object also contains a list of RouteSegment objects which describe subsections of the route in greater detail.

The primary means of acquiring Route objects is [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html).

<span id="example"></span>
Example
-------

This example shows how to display a route's maneuvers in a ListView:

``` qml
import QtQuick 2.0
import QtLocation 5.3
RouteModel {
    id: routeModel
    // model initialization
}
ListView {
    spacing: 10
    model: routeModel.status == RouteModel.Ready ? routeModel.get(0).segments : null
    visible: model ? true : false
    delegate: Row {
        width: parent.width
        spacing: 10
        property bool hasManeuver : modelData.maneuver && modelData.maneuver.valid
        visible: hasManeuver
        Text { text: (1 + index) + "." }
        Text {
            text: hasManeuver ? modelData.maneuver.instructionText : ""
        }
    }
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
<td><p><span id="bounds-prop"></span><span class="name">bounds</span> : <span class="type">georectangle</span></p></td>
</tr>
</tbody>
</table>

Read-only property which holds a bounding box which encompasses the entire route.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="distance-prop"></span><span class="name">distance</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Read-only property which holds distance covered by this route, in meters.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="path-prop"></span><span class="name">path</span> : <span class="type">QJSValue</span></p></td>
</tr>
</tbody>
</table>

Read-only property which holds the geographical coordinates of this route. Coordinates are listed in the order in which they would be traversed by someone traveling along this segment of the route.

To access individual segments you can use standard list accessors: 'path.length' indicates the number of objects and 'path\[index starting from zero\]' gives the actual object.

**See also** QtPositioning::coordinate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="segments-prop"></span><span class="name">segments</span> : <span class="type">list</span>&lt;<span class="type"><a href="../../sdk-15.04.1/QtLocation.RouteSegment/index.html">RouteSegment</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Read-only property which holds the list of [RouteSegment](../../sdk-15.04.1/QtLocation.RouteSegment/index.html) objects of this route.

To access individual segments you can use standard list accessors: 'segments.length' indicates the number of objects and 'segments\[index starting from zero\]' gives the actual objects.

**See also** [RouteSegment](../../sdk-15.04.1/QtLocation.RouteSegment/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="travelTime-prop"></span><span class="name">travelTime</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Read-only property which holds the estimated amount of time it will take to traverse this route, in seconds.

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
