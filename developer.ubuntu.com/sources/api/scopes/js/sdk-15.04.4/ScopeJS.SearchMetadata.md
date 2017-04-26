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
-   [Scopes](../../../index.html) ›
-   [Javascript](../../index.html) ›
-   [SDK 15.04.4](../index.html) ›
-   [ScopeJS](../ScopeJS/index.html) ›

<!-- -->

-   SearchMetadata

SearchMetadata
==============

Metadata passed with search requests. Two forms of construction are allowed depending on the number and types of the parameters:

-   with locale and form factor or
-   with cardinality, locale, and form factor.

-   Methods

<span id="aggregated_keywords"></span>
Array of String **`aggregated_keywords`**( `  ` )
Get the list of scope keywords used to initiate this search request.

**Returns:** &lt;Array of String&gt;
The list of scope keywords used to initiate this search request.

<span id="cardinality"></span>
Int **`cardinality`**( `  ` )
Get cardinality.

**Returns:** &lt;Int&gt;

<span id="contains_hint"></span>
Boolean **`contains_hint`**( `key ` )
Check if this SearchMetadata has a hint.

**Parameters:**
-   `key` **&lt;String&gt;**

    The hint name.

**Returns:** &lt;Boolean&gt;
True if the hint is set.

<span id="form_factor"></span>
**`form_factor`**( `  ` )
Get the form factor string.

**Returns:**
The form factor string

<span id="get"></span>
String **`get`**( `key ` )
Get the value of an attribute

**Parameters:**
-   `key` **&lt;String&gt;**

**Returns:** &lt;String&gt;
, {Number} or {Object}

<span id="has_location"></span>
Boolean **`has_location`**( `  ` )
Does the SearchMetadata have a location.

**Returns:** &lt;Boolean&gt;
True if there is a location property.

<span id="hints"></span>
Dictionary **`hints`**( `  ` )
Get all hints.

**Returns:** &lt;Dictionary&gt;

<span id="internet_connectivity"></span>
ConnectivityStatus **`internet_connectivity`**( `  ` )
Get internet connectivity status.

**Returns:** &lt;ConnectivityStatus&gt;
The internet connectivity status.

<span id="is_aggregated"></span>
Boolean **`is_aggregated`**( `  ` )
Check if this search request originated from an aggregator scope.

**Returns:** &lt;Boolean&gt;
True if this search request originated from an aggregator scope.

<span id="locale"></span>
**`locale`**( `  ` )
Get the locale string.

**Returns:**
The locale string

<span id="location"></span>
Location **`location`**( `  ` )
Get location.

**Returns:** &lt;Location&gt;
data representing the current location, including attributes such as city and country.

<span id="remove_location"></span>
**`remove_location`**( `  ` )
Remove location data entirely. This method does nothing if no location data is present.

<span id="set"></span>
**`set`**( `key, value ` )
Set the value of an attribute

**Parameters:**
-   `key` **&lt;String&gt;**
-   `value` **&lt;String&gt;**

    , {Number} or {Object}

<span id="set_aggregated_keywords"></span>
**`set_aggregated_keywords`**( `aggregated_keywords ` )
Set the list of scope keywords used to initiate this search request.

**Parameters:**
-   `aggregated_keywords` **&lt;Array of String&gt;**

    The list of scope keywords used to initiate this search request.

<span id="set_cardinality"></span>
**`set_cardinality`**( `cardinality ` )
Set cardinality.

**Parameters:**
-   `cardinality` **&lt;Int&gt;**

<span id="set_hint"></span>
**`set_hint`**( `key, value ` )
Sets a hint.

**Parameters:**
-   `key` **&lt;String&gt;**

    The name of the hint.

-   `value` **&lt;Object&gt;**

    Hint value

<span id="set_internet_connectivity"></span>
**`set_internet_connectivity`**( `The ` )
Set internet connectivity status.

**Parameters:**
-   `The` **&lt;ConnectivityStatus&gt;**

    internet connectivity status.

<span id="set_location"></span>
**`set_location`**( `location ` )
Set location.

**Parameters:**
-   `location` **&lt;Location&gt;**

    data

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
