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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.1</a> ›
-   <a href="../QtLocation/index.html" class="sub-nav-item">QtLocation</a> ›

<!-- -->

-   Qt Location Nokia Plugin

Qt Location Nokia Plugin
========================

<span class="subtitle"></span>
<span id="details"></span> <span id="overview"></span>
Overview
--------

Included with Qt Location is a geo services plugin which accesses the relevant Nokia services provided by Nokia. The use of these services is governed by the terms and conditions available at [Qt Location Nokia Plugin - Nokia Services Terms and Conditions](../QtLocation.location-plugin-nokia-terms/index.html).

Note that accepting the terms and conditions only applies those terms and conditions to the use of the Nokia geo services plugin and does not limit the use of the other geo services plugins that may be included with Qt.

The Nokia geo services plugin can be loaded by using the plugin key "nokia".

The online plugin uses the tiled map classes, which caches tile data in heap memory and texture memory.

<span id="parameters"></span>
Parameters
----------

<span id="mandatory-parameters"></span>
### Mandatory parameters

The following table lists mandatory parameters that *must* be passed to the Nokia plugin.

| Parameter | Description                                                                                            |
|-----------|--------------------------------------------------------------------------------------------------------|
| app\_id   | Client *app\_id* part of the app\_id/token pair used for authentication by all managers.               |
| token     | Client *token* part of the app\_id/token pair for the service used for authentication by all managers. |

The Nokia geo services plugin requires an application id and token pair to authenticate the application with the Nokia services. To obtain an application id and token pair visit <http://api.developer.nokia.com/>

<span id="optional-parameters"></span>
### Optional parameters

The following table lists optional parameters that can be passed to the Nokia plugin.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>proxy</td>
<td>Proxy server URL used by all managers. For usage of the system proxy just pass &quot;system&quot; as value.
<p><strong>Note:</strong> See the notes in QNetworkProxyFactory::systemProxyForQuery() for further information.</p></td>
</tr>
<tr class="even">
<td>mapping.host</td>
<td>Base map tile service URL used by mapping manager.</td>
</tr>
<tr class="odd">
<td>mapping.host.aerial</td>
<td>Aerial map tile service URL used by mapping manager. For all satellite, hybrid and terrain schemes.</td>
</tr>
<tr class="even">
<td>mapping.cache.directory</td>
<td>Map tile cache directory used as network disk cache.
<p>Default place for the cache is &quot;QtLocation&quot; directory in QStandardPaths::writableLocation(QStandardPaths::GenericCacheLocation).</p></td>
</tr>
<tr class="odd">
<td>mapping.cache.disk.size</td>
<td>Map tile disk cache size in bytes. Default size of the cache is 20MB.</td>
</tr>
<tr class="even">
<td>mapping.cache.memory.size</td>
<td>Map tile memory cache size in bytes. Default size of the cache is 3MB.</td>
</tr>
<tr class="odd">
<td>mapping.cache.texture.size</td>
<td>Map tile texture cache size in bytes. Default size of the cache is 6MB. Note that the texture cache has a hard minimum size which depends on the size of the map viewport (it must contain enough data to display the tiles currently visible on the display). This value is the amount of cache to be used in addition to the bare minimum.</td>
</tr>
<tr class="even">
<td>geocoding.host</td>
<td>Geocoding service URL used by geocoding manager.</td>
</tr>
<tr class="odd">
<td>routing.host</td>
<td>Routing service URL used by routing manager.</td>
</tr>
<tr class="even">
<td>places.host</td>
<td>Search service URL used by search manager.</td>
</tr>
<tr class="odd">
<td>places.api_version</td>
<td>Version of the REST API used by the places manager. Currently versions 1 and 2 are supported. The version 1 is deprecated and will not be part of the final Qt release. The default is version 2.</td>
</tr>
<tr class="even">
<td>places.theme</td>
<td>Specifies the icon theme to be used for places and categories. If no theme is explicitly provided then the platform theme is used. A default non-platform specific theme can be specified using a value of &quot;default&quot;. The supported themes are &quot;wp7_dark&quot; and &quot;default&quot;. On desktop platforms the &quot;default&quot; theme is the platform theme.</td>
</tr>
</tbody>
</table>

<span id="parameter-usage-example"></span>
Parameter Usage Example
-----------------------

The following two examples show how to create a Nokia plugin instance with parameters supplied for an application id and token, which is required for authentication.

<span id="qml"></span>
### QML

``` cpp
Plugin {
    name: "nokia"
    PluginParameter { name: "app_id"; value: "myapp" }
    PluginParameter { name: "token"; value: "abcdefg12345" }
}
```

<span id="c"></span>
### C++

``` cpp
QMap<QString,QVariant> params;
params["app_id"] = "myapp";
params["token"] = "abcdefg12345";
QGeoServiceProvider *gsp = new QGeoServiceProvider("nokia", params);
```

<span id="places"></span>
Places
------

The Nokia provider remotely accesses places (read-only) from a REST based server. The specific capabilities and behaviours are outlined below:

<span id="capabilities"></span>
### Capabilities

|                                                   |              |
|---------------------------------------------------|--------------|
| Storage                                           | remote       |
| Read/Write                                        | read-only    |
| Icons                                             | yes          |
| Search term suggestions                           | yes          |
| Recommendations                                   | yes          |
| Category structure                                | Hierarchical |
| (Rich) Content images                             | yes          |
| (Rich) Content reviews                            | yes          |
| (Rich) Content editorials                         | yes          |
| All details fetched during search                 | no           |
| Paging offset index                               | no           |
| Paging limit                                      | yes          |
| Distance relevance hint                           | no           |
| Lexical name relevance hint                       | no           |
| Extended Attributes                               | yes          |
| Notifications for added/removed places/categories | no           |
| visibility scopes                                 | public       |
| favorites matching/(usable as favoritesPlugin)    | no           |

<span id="plugin-specific-behaviors-and-limitations"></span>
### Plugin Specific Behaviors and Limitations.

<span id="search"></span>
#### Search

The following list shows what core place data is returned during a place search:

-   name
-   location
-   contact information
-   attribution
-   categories
-   rating
-   visibility

The following list shows further details that may be retrieved via QPlaceManager::getDetails()

-   supplier
-   extended attributes

<span id="searching-for-places"></span>
#### Searching for Places

<span id="search-term-and-categories"></span>
##### Search Term and Categories

The `nokia` plugin supports searching with a *search term* and *category or categories*, however both are not supported simultaneously.

-   Valid usage: *search term* + *search center*
-   Valid usage: *category* + *search center*
-   Invalid usage: *search term* + *category* + *search center*

This limitation applies when using the `nokia` plugin with PlaceSearchModel and QPlaceManager::search().

<span id="search-area"></span>
##### Search Area

The `nokia` plugin only supports provision of a *search center* when searching for places via PlaceSearchModel and QPlaceManager::search(). A search center can be provided via a bounding circle, however the radius should be kept at the default value of -1. Typically a developer should not have to set the radius at all. If a developer sets a radius, it is ignored by the plugin and the boundaries are not honored.

In a similar manner only the center of a bounding box is taken into consideration when searching. The boundaries of the box are not honored.

A search center *must* be provided for all searches.

<span id="relevancy-hints"></span>
##### Relevancy Hints

The `nokia` plugin does not support relevancy hints. Any relevancy hints supplied to a search request are consequently ignored.

<span id="search-term-suggestions"></span>
#### Search Term suggestions

Only a partial *search term* and *search center* is supported when retrieving suggestions. This limitation applies when using the `nokia` plugin with the PlaceSearchSuggestionModel and QPlaceManager::searchSuggestions().

Both search term and search center *must* be provided when retrieving search term suggestions.

<span id="recommendations"></span>
#### Recommendations

Only a given *place identifier* is supported as a parameter for a recommendations. No other parameters such as limit, offset, and search area are supported. This limitation applies when using the `nokia` plugin with PlaceSearchModel and QPlaceManager::search().

<span id="icons-themes-base-urls-and-variants"></span>
#### Icons themes, base urls and variants

Icons are provided in the form of "base urls" which reference valid icon images. For example, if the "wp7\_dark" theme was specified, then an icon url might look something like http://&lt;server&gt;/01.icon.wp7\_dark and this references an actual icon image.

However these urls are "base urls" in the sense that they can be appended onto, to provide variants. For example, one could add ".list.png" to the above url to get the list variant of the icon, http://&lt;server&gt;/01.icon.wp7\_dark.list.png.

The following table shows the themes provided by the `nokia` plugin, along with any variants supported for those themes:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Theme</th>
<th>Supported type variants and appendage strings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>&quot;default&quot;</td>
<td>no variants supported</td>
</tr>
<tr class="even">
<td>&quot;wp7_dark&quot;</td>
<td><ul>
<li>list : &quot;.list.png&quot;</li>
<li>map: &quot;.map.png&quot;</li>
</ul>
<p>(Note: the default base urls reference a map type icons)</p></td>
</tr>
</tbody>
</table>

<span id="extended-attributes"></span>
#### Extended Attributes

The supported set of attributes provided by `nokia` plugin are not fixed and may grow over time. Also the attributes provided may vary according to a place by place basis, e.g one place may provide opening hours while another does not. At the time of writing, it is known that some places provide `openingHours` (QPlaceAttribute::OpeningHours) and `payment` (QPlaceAttribute::Payment) methods but other attributes may be made available by the backend server. All places provided by the plugin will have the `x_provider` (QPlaceAttribute::Provider) attribute set to `nokia`.

<span id="restrictions-of-usage-extendedattributes-and-content"></span>
#### Restrictions of Usage - ExtendedAttributes and Content

The extended attributes and rich content of places are not permitted to be saved. For QML this is related to Place::extendedAttributes, ImageModel, ReviewModel, and EditorialModel. For C++ this relates to QPlace::extendedAttribute(), QPlace::content() and QPlaceManager::getPlaceContent().

(Note that the `nokia` plugin is a read-only source of places and does not support saving functionality at all.)

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
