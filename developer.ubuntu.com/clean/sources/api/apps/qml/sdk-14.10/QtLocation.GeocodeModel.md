---
Title: QtLocation.GeocodeModel
---
        
GeocodeModel
============

<span class="subtitle"></span>
The GeocodeModel type provides support for searching operations related to geographic information. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import QtLocation 5.3` |
| Since:            | Qt Location 5.0         |

<span id="properties"></span>
Properties
----------

-   ****[autoUpdate](#autoUpdate-prop)**** : bool
-   ****[bounds](#bounds-prop)**** : geoshape
-   ****[count](#count-prop)**** : int
-   ****[error](#error-prop)**** : enumeration
-   ****[errorString](#errorString-prop)**** : string
-   ****[limit](#limit-prop)**** : int
-   ****[offset](#offset-prop)**** : int
-   ****[plugin](#plugin-prop)**** : Plugin
-   ****[query](#query-prop)**** : QVariant
-   ****[status](#status-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[cancel](#cancel-method)****()
-   Location ****[get](#get-method)****(int)
-   ****[reset](#reset-method)****()
-   ****[update](#update-method)****()

<span id="details"></span>
Detailed Description
--------------------

The GeocodeModel type is used as part of a model/view grouping to match addresses or search strings with geographic locations. How the geographic locations generated are used or displayed is decided by any Views attached to the GeocodeModel (for example a [MapItemView](../QtLocation.MapItemView.md) or ListView).

Like [Map](../QtLocation.Map.md) and [RouteModel](../QtLocation.RouteModel.md), all the data for a GeocodeModel to work comes from a services plugin. This is contained in the [plugin](#plugin-prop) property, and this must be set before the GeocodeModel can do any useful work.

Once the plugin is set, the [query](#query-prop) property can be used to specify the address or search string to match. If [autoUpdate](#autoUpdate-prop) is enabled, the Model will update its output automatically. Otherwise, the [update](#update-method) method may be used. By default, [autoUpdate](#autoUpdate-prop) is disabled.

The data stored and returned in the GeocodeModel consists of Location objects, as a list with the role name "locationData". See the documentation for Location for further details on its structure and contents.

<span id="example-usage"></span>
### Example Usage

The following snippet is two-part, showing firstly the declaration of objects, and secondly a short piece of procedural code using it. We set the geocodeModel's [autoUpdate](#autoUpdate-prop) property to false, and call [update](#update-method) once the query is set up. In this case, as we use a string value in [query](#query-prop), only one update would occur, even with [autoUpdate](#autoUpdate-prop) enabled. However, if we provided an Address object we may inadvertently trigger multiple requests whilst setting its properties.

``` cpp
Plugin {
    id: aPlugin
}
GeocodeModel {
    id: geocodeModel
    plugin: aPlugin
    autoUpdate: false
}
```

``` cpp
{
    geocodeModel.query = "53 Brandl St, Eight Mile Plains, Australia"
    geocodeModel.update()
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

This property controls whether the Model automatically updates in response to changes in its attached query. The default value of this property is false.

If setting this value to 'true' and using an Address or coordinate as the query, note that any change at all in the object's properties will trigger a new request to be sent. If you are adjusting many properties of the object whilst autoUpdate is enabled, this can generate large numbers of useless (and later discarded) requests.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bounds-prop"></span><span class="name">bounds</span> : <span class="type">geoshape</span></p></td>
</tr>
</tbody>
</table>

This property holds the bounding area used to limit the results to those within the area. This is particularly useful if query is only partially filled out, as the service will attempt to (reverse) geocode all matches for the specified data.

Accepted types are georectangle and geocircle.

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

This property holds how many locations the model currently has. Amongst other uses, you can use this value when accessing locations via the [GeocodeModel::get](#get-method) -method.

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

This read-only property holds the latest error value of the geocoding request.

-   [GeocodeModel](index.html).NoError - No error has occurred
-   [GeocodeModel](index.html).EngineNotSetError - The plugin/service provider used does not support (reverse) geocoding
-   [GeocodeModel](index.html).CommunicationError - An error occurred while communicating with the service provider
-   [GeocodeModel](index.html).ParseError - The response from the service provider was in an unrecognizable format
-   [GeocodeModel](index.html).UnsupportedOptionError - The requested operation or one of the options for the operation are not supported by the service provider.
-   [GeocodeModel](index.html).CombinationError - An error occurred while results where being combined from multiple sources
-   [GeocodeModel](index.html).UnknownError - An error occurred which does not fit into any of the other categories

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

This read-only property holds the textual presentation of latest geocoding error. If no error has occurred or the model has been reset, an empty string is returned.

An empty string may also be returned if an error occurred which has no associated textual representation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="limit-prop"></span><span class="name">limit</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum number of results. The limit and [offset](#offset-prop) values are only applicable with free string geocoding (that is they are not considered when using addresses or coordinates in the search query).

If limit is -1 the entire result set will be returned, otherwise at most limit results will be returned. The limit and [offset](#offset-prop) results can be used together to implement paging.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="offset-prop"></span><span class="name">offset</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property tells not to return the first 'offset' number of the results. The [limit](#limit-prop) and offset values are only applicable with free string geocoding (that is they are not considered when using addresses or coordinates in the search query).

The [limit](#limit-prop) and offset results can be used together to implement paging.

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

This property holds the plugin that provides the actual geocoding service. Note that all plugins do not necessarily provide geocoding (could for example provide only routing or maps).

**See also** [Plugin](../QtLocation.Plugin.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="query-prop"></span><span class="name">query</span> : <span class="type">QVariant</span></p></td>
</tr>
</tbody>
</table>

This property holds the data of the geocoding request. The property accepts three types of queries which determine both the data and the type of action to be performed:

-   Address - Geocoding (address to coordinate)
-   coordinate - Reverse geocoding (coordinate to address)
-   string - Geocoding (address to coordinate)

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

-   [GeocodeModel](index.html).Null - No geocode requests have been issued or [reset](#reset-method) has been called.
-   [GeocodeModel](index.html).Ready - Geocode request(s) have finished successfully.
-   [GeocodeModel](index.html).Loading - Geocode request has been issued but not yet finished
-   [GeocodeModel](index.html).Error - Geocoding error has occurred, details are in [error](#error-prop) and [errorString](#errorString-prop)

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

Cancels any outstanding requests and clears errors. Model status will be set to either [GeocodeModel](index.html).Null or [GeocodeModel](index.html).Ready.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="get-method"></span><span class="type">Location</span> <span class="name">get</span>(<span class="type">int</span>)</p></td>
</tr>
</tbody>
</table>

Returns the Location at given index. Use [count](#count-prop) property to check the amount of locations available. The locations are indexed from zero, so the accessible range is 0...(count - 1).

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

Resets the model. All location data is cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to [GeocodeModel](index.html).Null

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

Instructs the [GeocodeModel](index.html) to update its data. This is most useful when [autoUpdate](#autoUpdate-prop) is disabled, to force a refresh when the query has been changed.

