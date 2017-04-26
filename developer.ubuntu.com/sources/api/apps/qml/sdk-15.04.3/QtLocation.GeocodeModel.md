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
-   [SDK 15.04.3](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   GeocodeModel

GeocodeModel
============

<span class="subtitle"></span>
The GeocodeModel type provides support for searching operations related to geographic information. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[autoUpdate](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#autoUpdate-prop)**** : bool
-   ****[bounds](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#bounds-prop)**** : geoshape
-   ****[count](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#count-prop)**** : int
-   ****[error](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#error-prop)**** : enumeration
-   ****[errorString](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#errorString-prop)**** : string
-   ****[limit](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#limit-prop)**** : int
-   ****[offset](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#offset-prop)**** : int
-   ****[plugin](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#plugin-prop)**** : Plugin
-   ****[query](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#query-prop)**** : QVariant
-   ****[status](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#status-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[cancel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#cancel-method)****()
-   Location ****[get](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#get-method)****(int)
-   ****[reset](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#reset-method)****()
-   ****[update](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#update-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html) type is used as part of a model/view grouping to match addresses or search strings with geographic locations. How the geographic locations generated are used or displayed is decided by any Views attached to the [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html) (for example a [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView/index.html) or ListView).

Like [Map](../../sdk-15.04.1/QtLocation.Map/index.html) and [RouteModel](../../sdk-15.04.1/QtLocation.RouteModel/index.html), all the data for a [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html) to work comes from a services plugin. This is contained in the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin) property, and this must be set before the [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html) can do any useful work.

Once the plugin is set, the [query](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#query-prop) property can be used to specify the address or search string to match. If [autoUpdate](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#autoUpdate-prop) is enabled, the Model will update its output automatically. Otherwise, the [update](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#update-method) method may be used. By default, [autoUpdate](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#autoUpdate-prop) is disabled.

The data stored and returned in the [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html) consists of Location objects, as a list with the role name "locationData". See the documentation for Location for further details on its structure and contents.

<span id="example-usage"></span>
### Example Usage

The following snippet is two-part, showing firstly the declaration of objects, and secondly a short piece of procedural code using it. We set the geocodeModel's [autoUpdate](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#autoUpdate-prop) property to false, and call [update](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#update-method) once the query is set up. In this case, as we use a string value in [query](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#query-prop), only one update would occur, even with [autoUpdate](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#autoUpdate-prop) enabled. However, if we provided an Address object we may inadvertently trigger multiple requests whilst setting its properties.

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

This property holds how many locations the model currently has. Amongst other uses, you can use this value when accessing locations via the [GeocodeModel::get](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#get-method) -method.

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

-   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).NoError - No error has occurred
-   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).EngineNotSetError - The plugin/service provider used does not support (reverse) geocoding
-   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).CommunicationError - An error occurred while communicating with the service provider
-   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).ParseError - The response from the service provider was in an unrecognizable format
-   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).UnsupportedOptionError - The requested operation or one of the options for the operation are not supported by the service provider.
-   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).CombinationError - An error occurred while results where being combined from multiple sources
-   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).UnknownError - An error occurred which does not fit into any of the other categories

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

This property holds the maximum number of results. The limit and [offset](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#offset-prop) values are only applicable with free string geocoding (that is they are not considered when using addresses or coordinates in the search query).

If limit is -1 the entire result set will be returned, otherwise at most limit results will be returned. The limit and [offset](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#offset-prop) results can be used together to implement paging.

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

This property tells not to return the first 'offset' number of the results. The [limit](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#limit-prop) and offset values are only applicable with free string geocoding (that is they are not considered when using addresses or coordinates in the search query).

The [limit](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#limit-prop) and offset results can be used together to implement paging.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="plugin-prop"></span><span class="name">plugin</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Plugin/index.html">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the plugin that provides the actual geocoding service. Note that all plugins do not necessarily provide geocoding (could for example provide only routing or maps).

**See also** [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin).

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

-   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).Null - No geocode requests have been issued or [reset](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#reset-method) has been called.
-   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).Ready - Geocode request(s) have finished successfully.
-   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).Loading - Geocode request has been issued but not yet finished
-   [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).Error - Geocoding error has occurred, details are in [error](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#error-prop) and [errorString](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#errorString-prop)

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

Cancels any outstanding requests and clears errors. Model status will be set to either [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).Null or [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).Ready.

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

Returns the Location at given index. Use [count](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#count-prop) property to check the amount of locations available. The locations are indexed from zero, so the accessible range is 0...(count - 1).

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

Resets the model. All location data is cleared, any outstanding requests are aborted and possible errors are cleared. Model status will be set to [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html).Null

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

Instructs the [GeocodeModel](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html) to update its data. This is most useful when [autoUpdate](../../sdk-15.04.1/QtLocation.GeocodeModel/index.html#autoUpdate-prop) is disabled, to force a refresh when the query has been changed.

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
