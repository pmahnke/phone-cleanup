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
-   [SDK 15.04.1](../index.html) ›
-   [ScopeJS](../ScopeJS/index.html) ›

<!-- -->

-   Result

Result
======

The attributes of a result returned by a Scope The Result API provides convenience methods for some typical attributes (title, art), but scopes are free to add and use any custom attributes with set/get methods. The only required attribute is 'uri' and it must not be empty before calling Reply.push().

-   Methods

<span id="art"></span>
String **`art`**( `  ` )
Get the "art" property of this Result

**Returns:** &lt;String&gt;

<span id="contains"></span>
Boolean **`contains`**( `  ` )
Check if this Result has an attribute

**Returns:** &lt;Boolean&gt;

<span id="direct_activation"></span>
Boolean **`direct_activation`**( `  ` )
Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result

**Returns:** &lt;Boolean&gt;

<span id="dnd_uri"></span>
String **`dnd_uri`**( `  ` )
Get the "dnd\_uri" property of this Result

**Returns:** &lt;String&gt;

<span id="get"></span>
String **`get`**( `key ` )
Get the value of an attribute

**Parameters:**
-   `key` **&lt;String&gt;**

**Returns:** &lt;String&gt;
, {Number} or {Object}

<span id="has_stored_result"></span>
Boolean **`has_stored_result`**( `  ` )
Check if this Result instance has a stored result

**Returns:** &lt;Boolean&gt;

<span id="retrieve"></span>
<a href="index.html" class="crosslink">Result</a> **`retrieve`**( `  ` )
Get a stored result

**Returns:** &lt;<a href="index.html" class="crosslink">Result</a>&gt;

<span id="set"></span>
**`set`**( `key, value ` )
Set the value of an attribute

**Parameters:**
-   `key` **&lt;String&gt;**
-   `value` **&lt;String&gt;**

<span id="set_art"></span>
**`set_art`**( `art ` )
Set the "art" attribute of this result.

**Parameters:**
-   `art` **&lt;String&gt;**

<span id="set_dnd_uri"></span>
**`set_dnd_uri`**( `dnd_uri ` )
Set the "dnd\_uri" attribute of this result.

**Parameters:**
-   `dnd_uri` **&lt;String&gt;**

<span id="set_intercept_activation"></span>
**`set_intercept_activation`**( `  ` )
Indicates to the receiver that this scope should intercept activation requests for this result

<span id="set_title"></span>
**`set_title`**( `title ` )
Set the "title" attribute of this result.

**Parameters:**
-   `title` **&lt;String&gt;**

<span id="set_uri"></span>
**`set_uri`**( `uri ` )
Set the "uri" attribute of this result.

**Parameters:**
-   `uri` **&lt;String&gt;**

<span id="title"></span>
String **`title`**( `  ` )
Get the "title" property of this Result

**Returns:** &lt;String&gt;

<span id="uri"></span>
String **`uri`**( `  ` )
Get the "uri" property of this Result

**Returns:** &lt;String&gt;

<span id="value"></span>
Dictonary **`value`**( `value ` )
Get the value of an attribute

**Parameters:**
-   `value` **&lt;String&gt;**

**Returns:** &lt;Dictonary&gt;

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
