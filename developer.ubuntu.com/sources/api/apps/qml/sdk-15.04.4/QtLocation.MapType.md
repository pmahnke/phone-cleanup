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

-   MapType

MapType
=======

<span class="subtitle"></span>
The MapType type holds information about a map type. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[description](../../sdk-15.04.1/QtLocation.MapType/index.html#description-prop)**** : string
-   ****[mobile](../../sdk-15.04.1/QtLocation.MapType/index.html#mobile-prop)**** : bool
-   ****[name](../../sdk-15.04.1/QtLocation.MapType/index.html#name-prop)**** : string
-   ****[night](../../sdk-15.04.1/QtLocation.MapType/index.html#night-prop)**** : bool
-   ****[style](../../sdk-15.04.1/QtLocation.MapType/index.html#style-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

This includes the map type's [name](../../sdk-15.04.1/QtLocation.MapType/index.html#name-prop) and [description](../../sdk-15.04.1/QtLocation.MapType/index.html#description-prop), the [style](../../sdk-15.04.1/QtLocation.MapType/index.html#style-prop) and a flag to indicate if the map type is optimized for mobile devices ([mobile](../../sdk-15.04.1/QtLocation.MapType/index.html#mobile-prop)).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="description-prop"></span><span class="name">description</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the description of the map type as a single formatted string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mobile-prop"></span><span class="name">mobile</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the map type is optimized for the use on a mobile device.

Map types for mobile devices usually have higher constrast to counteract the effects of sunlight and a reduced color for improved readability.

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

This read-only property holds the name of the map type as a single formatted string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="night-prop"></span><span class="name">night</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the map type is optimized for use at night.

Map types suitable for use at night usually have a dark background.

This QML property was introduced in Qt Location 5.4.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This read-only property gives access to the style of the map type.

-   [MapType](../../sdk-15.04.1/QtLocation.MapType/index.html).NoMap - No map.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType/index.html).StreetMap - A street map.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType/index.html).SatelliteMapDay - A map with day-time satellite imagery.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType/index.html).SatelliteMapNight - A map with night-time satellite imagery.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType/index.html).TerrainMap - A terrain map.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType/index.html).HybridMap - A map with satellite imagery and street information.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType/index.html).GrayStreetMap - A gray-shaded street map.
-   MapType::PedestrianMap - A street map suitable for pedestriants.
-   MapType::CarNavigationMap - A street map suitable for car navigation.
-   [MapType](../../sdk-15.04.1/QtLocation.MapType/index.html).CustomMap - A custom map type.

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
