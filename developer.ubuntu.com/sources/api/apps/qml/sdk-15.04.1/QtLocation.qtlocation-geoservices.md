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

-   Qt Location GeoServices

Qt Location GeoServices
=======================

<span class="subtitle"></span>
<span id="details"></span>
The Qt Location provides the majority of its functionality through GeoService plugins. This document outlines how to develop a new GeoService plugin.

<span id="plugin-description"></span>
Plugin Description
------------------

Each plugin is described by a json file. The json describes the plugins capabilities and version. Below is an example of a json file used by the OpenStreenMap plugin:

``` cpp
{
    "Keys": ["osm"],
    "Provider": "osm",
    "Version": 100,
    "Experimental": false,
    "Features": [
        "OnlineMappingFeature",
        "OnlineGeocodingFeature",
        "ReverseGeocodingFeature",
        "OnlineRoutingFeature"
    ]
}
```

The entries have the following meaning:

| Key          | Description                                                                                                                                                                                                                                                                                     |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Keys         | The unique name/key of the plugin. Each GeoService plugin must have a unique name.                                                                                                                                                                                                              |
| Provider     | The provider name of the services. Multiple plugins may have the same name. In such cases the Version string will be used to further distinguish the plugins.                                                                                                                                   |
| Experimental | Marks the service plugin as experimental. API developers may choose to ignore such plugins when instanciating QGeoServiceProvider::QGeoServiceProvider().                                                                                                                                       |
| Version      | The plugin version. If multiple plugins have the same provider name, the plugin with the higest version will be used.                                                                                                                                                                           |
| Features     | List of features provided by the plugin/service. Each feature is a string representation of the corresponding features in QGeoServiceProvider. For more details see QGeoServiceProvider::routingFeatures(), QGeoServiceProvider::geocodingFeatures() and QGeoServiceProvider::placesFeatures(). |

<span id="implementing-plugins"></span>
Implementing Plugins
--------------------

A plugin implementer needs to subclass QGeoServiceProviderFactory and as many of the ManagerEngine classes as they want to provide implementations for.

Subclassing QGeoServiceProviderFactory will only involves overriding of one of the following methods:

-   QGeoServiceProviderFactory::createGeocodingManagerEngine()
-   QGeoServiceProviderFactory::createRoutingManagerEngine()
-   QGeoServiceProviderFactory::createPlaceManagerEngine()

If a plugin does not provide an engine the relevant function should return 0.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QGeoCodingManagerEngine</p></td>
<td><p>Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide support for geocoding operations</p></td>
</tr>
<tr class="even">
<td><p>QGeoRoutingManagerEngine</p></td>
<td><p>Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide access to geographic routing information</p></td>
</tr>
<tr class="odd">
<td><p>QGeoServiceProviderFactory</p></td>
<td><p>Factory class used as the plugin interface for services related to geographical information</p></td>
</tr>
<tr class="even">
<td><p>QPlaceManagerEngine</p></td>
<td><p>Interface for implementers of QGeoServiceProvider plugins who want to provide access to place functionality</p></td>
</tr>
</tbody>
</table>

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
