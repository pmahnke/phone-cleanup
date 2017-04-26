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
-   [QtOrganizer](../QtOrganizer/index.html) ›

<!-- -->

-   Collection

Collection
==========

<span class="subtitle"></span>
The Collection element represents a collection of items in an organizer manager. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[collectionId](index.html#collectionId-prop)**** : string
-   ****[color](index.html#color-prop)**** : color
-   ****[description](index.html#description-prop)**** : string
-   ****[image](index.html#image-prop)**** : url
-   ****[name](index.html#name-prop)**** : string
-   ****[secondaryColor](index.html#secondaryColor-prop)**** : color

<span id="methods"></span>
Methods
-------

-   var ****[extendedMetaData](index.html#extendedMetaData-method)****(key)
-   var ****[metaData](index.html#metaData-method)****(key)
-   ****[setExtendedMetaData](index.html#setExtendedMetaData-method)****(key, value)
-   ****[setMetaData](index.html#setMetaData-method)****(key, value)

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collectionId-prop"></span><span class="name">collectionId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the ID of the collection.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds the color meta data of a collection.

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

This property holds the description meta data of a collection.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="image-prop"></span><span class="name">image</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property holds the image url meta data of a collection.

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

This property holds the name meta data of a collection.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="secondaryColor-prop"></span><span class="name">secondaryColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds the secondary color meta data of a collection.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extendedMetaData-method"></span><span class="type">var</span> <span class="name">extendedMetaData</span>(<span class="type">key</span>)</p></td>
</tr>
</tbody>
</table>

Returns the value of extended metadata with the given *key*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData-method"></span><span class="type">var</span> <span class="name">metaData</span>(<span class="type">key</span>)</p></td>
</tr>
</tbody>
</table>

Returns the meta data stored in this collection for the given *key*. Possible keys include:

-   Collection.KeyName
-   Collection.KeyDescription
-   Collection.KeyColor
-   Collection.KeyImage
-   Collection.KeyExtended

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setExtendedMetaData-method"></span><span class="name">setExtendedMetaData</span>(<span class="type">key</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

Sets the value of the extended metadata with the given *key* to *value*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setMetaData-method"></span><span class="name">setMetaData</span>(<span class="type">key</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

Sets the meta data of the collection for the given *key* to the given *value*. Possible keys include:

-   Collection.KeyName
-   Collection.KeyDescription
-   Collection.KeyColor
-   Collection.KeySecondaryColor
-   Collection.KeyImage
-   Collection.KeyExtended

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
