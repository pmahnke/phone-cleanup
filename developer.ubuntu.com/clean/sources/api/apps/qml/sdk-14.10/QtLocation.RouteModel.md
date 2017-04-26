---
Title: QtLocation.RouteModel
---
        
RouteModel
==========

<span class="subtitle"></span>
The RouteModel type provides access to routes. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import QtLocation 5.3` |
| Since:            | Qt Location 5.0         |

<span id="properties"></span>
Properties
----------

-   ****[autoUpdate](#autoUpdate-prop)**** : bool
-   ****[count](#count-prop)**** : int
-   ****[error](#error-prop)**** : enumeration
-   ****[errorString](#errorString-prop)**** : string
-   ****[measurementSystem](#measurementSystem-prop)**** : Locale::MeasurementSystem
-   ****[plugin](#plugin-prop)**** : Plugin
-   ****[query](#query-prop)**** : RouteQuery
-   ****[status](#status-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[cancel](#cancel-method)****()
-   ****[get](#get-method)****(int)
-   ****[reset](#reset-method)****()
-   ****[update](#update-method)****()

<span id="details"></span>
Detailed Description
--------------------

The RouteModel type is used as part of a model/view grouping to retrieve geographic routes from a backend provider. Routes include data about driving directions between two points, walking directions with multiple waypoints, and various other similar concepts. It functions much like other Model types in QML (see for example ListModel and XmlListModel), and interacts with views such as [MapItemView](../QtLocation.MapItemView.md), and ListView.

Like [Map](../QtLocation.Map.md) and [GeocodeModel](../QtLocation.GeocodeModel.md), all the data for a RouteModel to work comes from a services plugin. This is contained in the [plugin](#plugin-prop) property, and this must be set before the RouteModel can do any useful work.

Once the plugin is set, create a [RouteQuery](../QtLocation.RouteQuery.md) with the appropriate waypoints and other settings, and set the RouteModel's [query](#query-prop) property. If [autoUpdate](#autoUpdate-prop) is enabled, the update will being automatically. Otherwise, the [update](#update-method) method may be used. By default, [autoUpdate](#autoUpdate-prop) is disabled.

The data stored and returned in the RouteModel consists of [Route](../QtLocation.Route.md) objects, as a list with the role name "routeData". See the documentation for [Route](../QtLocation.Route.md) for further details on its structure and contents.

<span id="example-usage"></span>
### Example Usage

The following snippet is two-part, showing firstly the declaration of objects, and secondly a short piece of procedural code using it. We set the routeModel's [autoUpdate](#autoUpdate-prop) property to false, and call [update](#update-method) once the query is set up, to avoid useless extra requests halfway through the set up of the query.

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

This property controls whether the Model automatically updates in response to changes in its attached [RouteQuery](../QtLocation.RouteQuery.md). The default value of this property is false.

If setting this value to 'true', note that any change at all in the [RouteQuery](../QtLocation.RouteQuery.md) object set in the [query](#query-prop) property will trigger a new request to be sent. If you are adjusting many properties of the [RouteQuery](../QtLocation.RouteQuery.md) with autoUpdate enabled, this can generate large numbers of useless (and later discarded) requests.

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

This property holds how many routes the model currently has. Amongst other uses, you can use this value when accessing routes via the [QtLocation::RouteModel::get](#get-method) -method.

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

This property holds the measurement system which will be used when calculating the route. This property is changed when the [Plugin::locales](../QtLocation.Plugin.md#locales-prop) property of [plugin](#plugin-prop) changes.

If setting this property it must be set after the [plugin](#plugin-prop) property is set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="plugin-prop"></span><span class="name">plugin</span> : <span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the plugin that providers the actual routing service. Note that all plugins do not necessarily provide routing (could for example provide only geocoding or maps).

A valid plugin must be set before the [RouteModel](index.html) can perform any useful operations.

**See also** [Plugin](../QtLocation.Plugin.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="query-prop"></span><span class="name">query</span> : <span class="type"><a href="QtLocation.RouteQuery.md">RouteQuery</a></span></p></td>
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

-   [RouteModel](index.html).Null - No route requests have been issued or [reset](#reset-method) has been called.
-   [RouteModel](index.html).Ready - Route request(s) have finished successfully.
-   [RouteModel](index.html).Loading - Route request has been issued but not yet finished
-   [RouteModel](index.html).Error - Routing error has occurred, details are in [error](#error-prop) and [errorString](#errorString-prop)

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

Returns the Route at given index. Use [count](#count-prop) property to check the amount of routes available. The routes are indexed from zero, so the accessible range is 0...(count - 1).

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

Instructs the [RouteModel](index.html) to update its data. This is most useful when [autoUpdate](#autoUpdate-prop) is disabled, to force a refresh when the query has been changed.

