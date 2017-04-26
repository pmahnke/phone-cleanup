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
-   [SDK 14.10](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   Plugin

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

-   ****[allowExperimental](index.html#allowExperimental-prop)**** : bool
-   ****[availableServiceProviders](index.html#availableServiceProviders-prop)**** : stringlist
-   ****[isAttached](index.html#isAttached-prop)**** : bool
-   ****[locales](index.html#locales-prop)**** : stringlist
-   ****[name](index.html#name-prop)**** : string
-   ****[parameters](index.html#parameters-prop)**** : list&lt;PluginParameter&gt;
-   ****[preferred](index.html#preferred-prop)**** : stringlist
-   ****[required](index.html#required-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   bool ****[supportsGeocoding](index.html#supportsGeocoding-method)****(GeocodingFeatures *features*)
-   bool ****[supportsMapping](index.html#supportsMapping-method)****(MappingFeatures *features*)
-   bool ****[supportsPlaces](index.html#supportsPlaces-method)****(PlacesFeatures *features*)
-   bool ****[supportsRouting](index.html#supportsRouting-method)****(RoutingFeatures *features*)

<span id="details"></span>
Detailed Description
--------------------

The Plugin type is used to declaratively specify which available GeoServices plugin should be used for various tasks in the Location API. Plugins are used by [Map](../QtLocation.Map/index.html), [RouteModel](../QtLocation.RouteModel/index.html), and [GeocodeModel](../QtLocation.GeocodeModel/index.html) types, as well as a variety of others.

Plugins recognized by the system have a [name](index.html#name-prop) property, a simple string normally indicating the name of the service that the Plugin retrieves data from. They also have a variety of features, which can be test for using the [supportsRouting()](index.html#supportsRouting-method), [supportsGeocoding()](index.html#supportsGeocoding-method), [supportsMapping()](index.html#supportsMapping-method) and [supportsPlaces()](index.html#supportsPlaces-method) methods.

When a Plugin object is created, it is "detached" and not associated with any actual service plugin. Once it has received information via setting its [name](index.html#name-prop), [preferred](index.html#preferred-prop), or [required](index.html#required-prop) properties, it will choose an appropriate service plugin to attach to. Plugin objects can only be attached once; to use multiple plugins, create multiple Plugin objects.

<span id="example-usage"></span>
### Example Usage

The following snippet shows a Plugin object being created with the [required](index.html#required-prop) and [preferred](index.html#preferred-prop) properties set. This Plugin will attach to the first plugin found plugin that supports both mapping and geocoding, and will prefer plugins named "nokia" or "foo" to any others.

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

This property holds a list of all available service plugins' names. This can be used to manually enumerate the available plugins if the control provided by [name](index.html#name-prop) and [required](index.html#required-prop) is not sufficient for your needs.

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

If the first specified locale cannot be accommodated, the [Plugin](index.html) falls back to the next and so forth. Some [Plugin](index.html) backends may not support a set of locales which are rigidly defined. An arbitrary example is that some [Place](../QtLocation.Place/index.html)'s in France could have French and English localizations, while certain areas in America may only have the English localization available. In the above scenario, the set of supported locales is context dependent on the search location.

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

This property holds the name of the plugin. Setting this property will cause the Plugin to only attach to a plugin with exactly this name. The value of [required](index.html#required-prop) will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parameters-prop"></span><span class="qmldefault">default</span><span class="name">parameters</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtLocation.PluginParameter/index.html">PluginParameter</a></span>&gt;</p></td>
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

This property contains an ordered list of preferred plugin names, which will be checked for the required features set in [required](index.html#required-prop) before any other available plugins are checked.

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

This property contains the set of features that will be required by the Plugin object when choosing which service plugin to attach to. If the [name](index.html#name-prop) property is set, this has no effect.

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
