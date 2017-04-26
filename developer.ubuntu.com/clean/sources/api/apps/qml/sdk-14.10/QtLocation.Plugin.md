---
Title: QtLocation.Plugin
---
        
Plugin
======

<span class="subtitle"></span>
The Plugin type describes a Location based services plugin. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import QtLocation 5.3` |
| Since:            | Qt Location 5.0         |

<span id="properties"></span>
Properties
----------

-   ****[allowExperimental](#allowExperimental-prop)**** : bool
-   ****[availableServiceProviders](#availableServiceProviders-prop)**** : stringlist
-   ****[isAttached](#isAttached-prop)**** : bool
-   ****[locales](#locales-prop)**** : stringlist
-   ****[name](#name-prop)**** : string
-   ****[parameters](#parameters-prop)**** : list&lt;PluginParameter&gt;
-   ****[preferred](#preferred-prop)**** : stringlist
-   ****[required](#required-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   bool ****[supportsGeocoding](#supportsGeocoding-method)****(GeocodingFeatures *features*)
-   bool ****[supportsMapping](#supportsMapping-method)****(MappingFeatures *features*)
-   bool ****[supportsPlaces](#supportsPlaces-method)****(PlacesFeatures *features*)
-   bool ****[supportsRouting](#supportsRouting-method)****(RoutingFeatures *features*)

<span id="details"></span>
Detailed Description
--------------------

The Plugin type is used to declaratively specify which available GeoServices plugin should be used for various tasks in the Location API. Plugins are used by [Map](../QtLocation.Map.md), [RouteModel](../QtLocation.RouteModel.md), and [GeocodeModel](../QtLocation.GeocodeModel.md) types, as well as a variety of others.

Plugins recognized by the system have a [name](#name-prop) property, a simple string normally indicating the name of the service that the Plugin retrieves data from. They also have a variety of features, which can be test for using the [supportsRouting()](#supportsRouting-method), [supportsGeocoding()](#supportsGeocoding-method), [supportsMapping()](#supportsMapping-method) and [supportsPlaces()](#supportsPlaces-method) methods.

When a Plugin object is created, it is "detached" and not associated with any actual service plugin. Once it has received information via setting its [name](#name-prop), [preferred](#preferred-prop), or [required](#required-prop) properties, it will choose an appropriate service plugin to attach to. Plugin objects can only be attached once; to use multiple plugins, create multiple Plugin objects.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a Plugin object being created with the [required](#required-prop) and [preferred](#preferred-prop) properties set. This Plugin will attach to the first plugin found plugin that supports both mapping and geocoding, and will prefer plugins named "nokia" or "foo" to any others.

``` cpp
Plugin {
    id: plugin
    preferred: ["nokia", "foo"]
    required: Plugin.AnyMappingFeatures | Plugin.AnyGeocodingFeatures
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
<td><p><span id="allowExperimental-prop"></span><span class="name">allowExperimental</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates if experimental plugins can be used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableServiceProviders-prop"></span><span class="name">availableServiceProviders</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of all available service plugins' names. This can be used to manually enumerate the available plugins if the control provided by [name](#name-prop) and [required](#required-prop) is not sufficient for your needs.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isAttached-prop"></span><span class="name">isAttached</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates if the Plugin is attached to another Plugin.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="locales-prop"></span><span class="name">locales</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property contains an ordered list of preferred plugin locales. If the first locale cannot be accommodated, then the backend falls back to using the second, and so on. By default the locales property contains the system locale.

The locales are specified as strings which have the format "language\[\_script\]\[\_country\]" or "C", where:

-   language is a lowercase, two-letter, ISO 639 language code,
-   script is a titlecase, four-letter, ISO 15924 script code,
-   country is an uppercase, two- or three-letter, ISO 3166 country code (also "419" as defined by United Nations),
-   the "C" locale is identical in behavior to English/UnitedStates as per QLocale

If the first specified locale cannot be accommodated, the [Plugin](index.html) falls back to the next and so forth. Some [Plugin](index.html) backends may not support a set of locales which are rigidly defined. An arbitrary example is that some [Place](../QtLocation.Place.md)'s in France could have French and English localizations, while certain areas in America may only have the English localization available. In the above scenario, the set of supported locales is context dependent on the search location.

If the [Plugin](index.html) cannot accommodate any of the preferred locales, the manager falls back to using a supported language that is backend specific.

For [Plugin](index.html)'s that do not support locales, the locales list is always empty.

The following code demonstrates how to set a single and multiple locales:

``` qml
//single locale
Plugin {
    locales: "en_US"
}
//multiple locales
Plugin {
    locales: ["fr_FR","en_US"]
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the plugin. Setting this property will cause the Plugin to only attach to a plugin with exactly this name. The value of [required](#required-prop) will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parameters-prop"></span><span class="qmldefault">default</span><span class="name">parameters</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtLocation.PluginParameter.md">PluginParameter</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of plugin parameters.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preferred-prop"></span><span class="name">preferred</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property contains an ordered list of preferred plugin names, which will be checked for the required features set in [required](#required-prop) before any other available plugins are checked.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="required-prop"></span><span class="name">required</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property contains the set of features that will be required by the Plugin object when choosing which service plugin to attach to. If the [name](#name-prop) property is set, this has no effect.

Any of the following values or a bitwise combination of multiple values may be set:

-   Plugin.NoFeatures
-   Plugin.GeocodingFeature
-   Plugin.ReverseGeocodingFeature
-   Plugin.RoutingFeature
-   Plugin.MappingFeature
-   Plugin.AnyPlacesFeature

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportsGeocoding-method"></span><span class="type">bool</span> <span class="name">supportsGeocoding</span>(<span class="type">GeocodingFeatures</span> <em>features</em>)</p></td>
</tr>
</tbody>
</table>

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

The *features* parameter can be any flag combination of:

| Feature                          | Description                                                          |
|----------------------------------|----------------------------------------------------------------------|
| Plugin.NoGeocodingFeatures       | No geocoding features are supported.                                 |
| Plugin.OnlineGeocodingFeature    | Online geocoding is supported.                                       |
| Plugin.OfflineGeocodingFeature   | Offline geocoding is supported.                                      |
| Plugin.ReverseGeocodingFeature   | Reverse geocoding is supported.                                      |
| Plugin.LocalizedGeocodingFeature | Supports returning geocoding results with localized addresses.       |
| Plugin.AnyGeocodingFeatures      | Matches a geo service provider that provides any geocoding features. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportsMapping-method"></span><span class="type">bool</span> <span class="name">supportsMapping</span>(<span class="type">MappingFeatures</span> <em>features</em>)</p></td>
</tr>
</tbody>
</table>

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

The *features* parameter can be any flag combination of:

| Feature                        | Description                                                        |
|--------------------------------|--------------------------------------------------------------------|
| Plugin.NoMappingFeatures       | No mapping features are supported.                                 |
| Plugin.OnlineMappingFeature    | Online mapping is supported.                                       |
| Plugin.OfflineMappingFeature   | Offline mapping is supported.                                      |
| Plugin.LocalizedMappingFeature | Supports returning localized map data.                             |
| Plugin.AnyMappingFeatures      | Matches a geo service provider that provides any mapping features. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportsPlaces-method"></span><span class="type">bool</span> <span class="name">supportsPlaces</span>(<span class="type">PlacesFeatures</span> <em>features</em>)</p></td>
</tr>
</tbody>
</table>

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

The *features* parameter can be any flag combination of:

| Feature                            | Description                                                             |
|------------------------------------|-------------------------------------------------------------------------|
| Plugin.NoPlacesFeatures            | No places features are supported.                                       |
| Plugin.OnlinePlacesFeature         | Online places is supported.                                             |
| Plugin.OfflinePlacesFeature        | Offline places is supported.                                            |
| Plugin.SavePlaceFeature            | Saving categories is supported.                                         |
| Plugin.RemovePlaceFeature          | Removing or deleting places is supported.                               |
| Plugin.PlaceRecommendationsFeature | Searching for recommended places similar to another place is supported. |
| Plugin.SearchSuggestionsFeature    | Search suggestions is supported.                                        |
| Plugin.LocalizedPlacesFeature      | Supports returning localized place data.                                |
| Plugin.NotificationsFeature        | Notifications of place and category changes is supported.               |
| Plugin.PlaceMatchingFeature        | Supports matching places from two different geo service providers.      |
| Plugin.AnyPlacesFeatures           | Matches a geo service provider that provides any places features.       |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportsRouting-method"></span><span class="type">bool</span> <span class="name">supportsRouting</span>(<span class="type">RoutingFeatures</span> <em>features</em>)</p></td>
</tr>
</tbody>
</table>

This method returns a boolean indicating whether the specified set of *features* are supported by the geo service provider plugin. True is returned if all specified *features* are supported; otherwise false is returned.

The *features* parameter can be any flag combination of:

| Feature                           | Description                                                            |
|-----------------------------------|------------------------------------------------------------------------|
| Plugin.NoRoutingFeatures          | No routing features are supported.                                     |
| Plugin.OnlineRoutingFeature       | Online routing is supported.                                           |
| Plugin.OfflineRoutingFeature      | Offline routing is supported.                                          |
| Plugin.LocalizedRoutingFeature    | Supports returning routes with localized addresses and instructions.   |
| Plugin.RouteUpdatesFeature        | Updating an existing route based on the current position is supported. |
| Plugin.AlternativeRoutesFeature   | Supports returning alternative routes.                                 |
| Plugin.ExcludeAreasRoutingFeature | Supports specifying a areas which the returned route must not cross.   |
| Plugin.AnyRoutingFeatures         | Matches a geo service provider that provides any routing features.     |

