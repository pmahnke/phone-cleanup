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
-   [SDK 15.04](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   RouteModel

RouteModel
==========

<span class="subtitle"></span>
The RouteModel type provides access to routes. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[autoUpdate](index.html#autoUpdate-prop)**** : bool
-   ****[count](index.html#count-prop)**** : int
-   ****[error](index.html#error-prop)**** : enumeration
-   ****[errorString](index.html#errorString-prop)**** : string
-   ****[measurementSystem](index.html#measurementSystem-prop)**** : Locale::MeasurementSystem
-   ****[plugin](index.html#plugin-prop)**** : Plugin
-   ****[query](index.html#query-prop)**** : RouteQuery
-   ****[status](index.html#status-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[cancel](index.html#cancel-method)****()
-   ****[get](index.html#get-method)****(int)
-   ****[reset](index.html#reset-method)****()
-   ****[update](index.html#update-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [RouteModel](index.html) type is used as part of a model/view grouping to retrieve geographic routes from a backend provider. Routes include data about driving directions between two points, walking directions with multiple waypoints, and various other similar concepts. It functions much like other Model types in QML (see for example ListModel and XmlListModel), and interacts with views such as [MapItemView](../QtLocation.MapItemView/index.html), and ListView.

Like [Map](../QtLocation.Map/index.html) and [GeocodeModel](../QtLocation.GeocodeModel/index.html), all the data for a [RouteModel](index.html) to work comes from a services plugin. This is contained in the [plugin](../QtLocation.location-places-qml/index.html#plugin) property, and this must be set before the [RouteModel](index.html) can do any useful work.

Once the plugin is set, create a [RouteQuery](../QtLocation.RouteQuery/index.html) with the appropriate waypoints and other settings, and set the [RouteModel](index.html)'s [query](index.html#query-prop) property. If [autoUpdate](index.html#autoUpdate-prop) is enabled, the update will being automatically. Otherwise, the [update](index.html#update-method) method may be used. By default, [autoUpdate](index.html#autoUpdate-prop) is disabled.

The data stored and returned in the [RouteModel](index.html) consists of [Route](../QtLocation.Route/index.html) objects, as a list with the role name "routeData". See the documentation for [Route](../QtLocation.Route/index.html) for further details on its structure and contents.

<span id="example-usage"></span>
### Example Usage

The following snippet is two-part, showing firstly the declaration of objects, and secondly a short piece of procedural code using it. We set the routeModel's [autoUpdate](index.html#autoUpdate-prop) property to false, and call [update](index.html#update-method) once the query is set up, to avoid useless extra requests halfway through the set up of the query.

``` cpp
Plugin {
    id: aPlugin
    name: "nokia"
}
RouteQuery {
    id: aQuery
}
RouteModel {
    id: routeModel
    plugin: aPlugin
    query: aQuery
    autoUpdate: false
}
```

``` cpp
{
    aQuery.addWaypoint(...)
    aQuery.addWaypoint(...)
    aQuery.travelModes = ...
    routeModel.update()
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
<td><p><span id="autoUpdate-prop"></span><span class="name">autoUpdate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property controls whether the Model automatically updates in response to changes in its attached [RouteQuery](../QtLocation.RouteQuery/index.html). The default value of this property is false.

If setting this value to 'true', note that any change at all in the [RouteQuery](../QtLocation.RouteQuery/index.html) object set in the [query](index.html#query-prop) property will trigger a new request to be sent. If you are adjusting many properties of the [RouteQuery](../QtLocation.RouteQuery/index.html) with autoUpdate enabled, this can generate large numbers of useless (and later discarded) requests.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds how many routes the model currently has. Amongst other uses, you can use this value when accessing routes via the [QtLocation::RouteModel::get](index.html#get-method) -method.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the latest error value of the routing request.

-   [RouteModel](index.html).NoError - No error has occurred
-   [RouteModel](index.html).EngineNotSetError - The plugin/service provider used does not support routing
-   [RouteModel](index.html).CommunicationError - An error occurred while communicating with the service provider
-   [RouteModel](index.html).ParseError - The response from the service provider was in an unrecognizable format
-   [RouteModel](index.html).UnsupportedOptionError - The requested operation or one of the options for the operation are not supported by the service provider.
-   [RouteModel](index.html).UnknownError - An error occurred which does not fit into any of the other categories

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-prop"></span><span class="name">errorString</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the textual presentation of latest routing error. If no error has occurred or the model has been reset, an empty string is returned.

An empty string may also be returned if an error occurred which has no associated textual representation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="measurementSystem-prop"></span><span class="name">measurementSystem</span> : <span class="type">Locale::MeasurementSystem</span></p></td>
</tr>
</tbody>
</table>

This property holds the measurement system which will be used when calculating the route. This property is changed when the [Plugin::locales](../QtLocation.Plugin/index.html#locales-prop) property of [plugin](index.html#plugin-prop) changes.

If setting this property it must be set after the [plugin](index.html#plugin-prop) property is set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="plugin-prop"></span><span class="name">plugin</span> : <span class="type"><a href="../QtLocation.Plugin/index.html">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the plugin that providers the actual routing service. Note that all plugins do not necessarily provide routing (could for example provide only geocoding or maps).

A valid plugin must be set before the [RouteModel](index.html) can perform any useful operations.

**See also** [Plugin](../QtLocation.location-places-qml/index.html#plugin).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="query-prop"></span><span class="name">query</span> : <span class="type"><a href="../QtLocation.RouteQuery/index.html">RouteQuery</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the data of the route request. The primary data are the waypoint coordinates and possible further preferences (means of traveling, things to avoid on route etc).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the current status of the model.

-   [RouteModel](index.html).Null - No route requests have been issued or [reset](index.html#reset-method) has been called.
-   [RouteModel](index.html).Ready - Route request(s) have finished successfully.
-   [RouteModel](index.html).Loading - Route request has been issued but not yet finished
-   [RouteModel](index.html).Error - Routing error has occurred, details are in [error](index.html#error-prop) and [errorString](index.html#errorString-prop)

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancel-method"></span><span class="name">cancel</span>()</p></td>
</tr>
</tbody>
</table>

Cancels any outstanding requests and clears errors. Model status will be set to either [RouteModel](index.html).Null or [RouteModel](index.html).Ready.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="get-method"></span><span class="name">get</span>(<span class="type">int</span>)</p></td>
</tr>
</tbody>
</table>

Returns the Route at given index. Use [count](index.html#count-prop) property to check the amount of routes available. The routes are indexed from zero, so the accessible range is 0...(count - 1).

If you access out of bounds, a zero (null object) is returned and a warning is issued.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reset-method"></span><span class="name">reset</span>()</p></td>
</tr>
</tbody>
</table>

Resets the model. All route data is cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to [RouteModel](index.html).Null

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="update-method"></span><span class="name">update</span>()</p></td>
</tr>
</tbody>
</table>

Instructs the [RouteModel](index.html) to update its data. This is most useful when [autoUpdate](index.html#autoUpdate-prop) is disabled, to force a refresh when the query has been changed.

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
