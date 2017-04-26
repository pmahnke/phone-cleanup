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
-   [SDK 15.04.5](../index.html) ›
-   [ScopeJS](../ScopeJS/index.html) ›

<!-- -->

-   CategorisedResult

CategorisedResult
=================

A result, including the category it belongs to.

-   Methods

<span id="art"></span>
String **`art`**( `  ` )
Get the "art" property of this Result. This method returns an empty string if this attribute is not of type String.

**Returns:** &lt;String&gt;
The value of "art" or the empty string.

<span id="category"></span>
<a href="../ScopeJS.Category/index.html" class="crosslink">Category</a> **`category`**( `  ` )
Get the category instance this result belongs to.

**Returns:** &lt;<a href="../ScopeJS.Category/index.html" class="crosslink">Category</a>&gt;
The category instance.

<span id="contains"></span>
Boolean **`contains`**( `key ` )
Check if this Result has an attribute.

**Parameters:**
-   `key` **&lt;Object&gt;**

    The attribute name.

**Returns:** &lt;Boolean&gt;
True if the attribute is set.

<span id="direct_activation"></span>
Boolean **`direct_activation`**( `  ` )
Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result.

**Returns:** &lt;Boolean&gt;
True if this result needs to be activated directly.

<span id="dnd_uri"></span>
String **`dnd_uri`**( `  ` )
Get the "dnd\_uri" property of this Result. This method returns an empty string if this attribute is not of type String.

**Returns:** &lt;String&gt;
The value of "dnd\_uri" or the empty string.

<span id="get"></span>
**`get`**( `key ` )
Gets the value of a custom metadata attribute.

**Parameters:**
-   `key` **&lt;String&gt;**

    The name of the attribute.

**Returns:**
Attribute value or null

<span id="has_stored_result"></span>
Boolean **`has_stored_result`**( `  ` )
Check if this Result instance has a stored result.

**Returns:** &lt;Boolean&gt;
True if there is a stored result

<span id="is_account_login_result"></span>
Boolean **`is_account_login_result`**( `  ` )
Check if this result is an online account login result.

**Returns:** &lt;Boolean&gt;
True if this result is an online account login result.

<span id="retrieve"></span>
<a href="../ScopeJS.Result/index.html" class="crosslink">Result</a> **`retrieve`**( `  ` )
Get a stored result.

**Returns:** &lt;<a href="../ScopeJS.Result/index.html" class="crosslink">Result</a>&gt;
stored result

<span id="set"></span>
**`set`**( `key, value ` )
Sets the value of a custom metadata attribute.

**Parameters:**
-   `key` **&lt;String&gt;**

    The name of the attribute.

-   `value` **&lt;Object&gt;**

    The value of the attribute.

<span id="set_art"></span>
**`set_art`**( `art ` )
Set the "art" attribute of this result.

**Parameters:**
-   `art` **&lt;String&gt;**

<span id="set_category"></span>
**`set_category`**( `category ` )
Updates the category of this result.

**Parameters:**
-   `category` **&lt;Object&gt;**

    The category for the result.

<span id="set_dnd_uri"></span>
**`set_dnd_uri`**( `dnd_uri ` )
Set the "dnd\_uri" attribute of this result.

**Parameters:**
-   `dnd_uri` **&lt;String&gt;**

<span id="set_intercept_activation"></span>
**`set_intercept_activation`**( `  ` )
Indicates to the receiver that this scope should intercept activation requests for this result. By default, a scope receives preview requests for the results it creates, but does not receive activation requests (they are handled directly by the shell). Intercepting activation implies intercepting preview requests as well; this is important for scopes that forward results from other scopes and call set\_intercept\_activation() on these scopes. A scope that sets intercept activation flag for a result should re-implement Scope.activate() and provide an implementation of ActivationQuery that handles the actual activation. If not called, the result will be activated directly by the Unity shell whithout involving the scope, assuming an appropriate URI schema handler is present on the system.

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

<span id="store"></span>
**`store`**( `The, intercept_activation ` )
This method is meant to be used by aggregator scopes which want to modify results they receive, but want to keep a copy of the original result so that they can be correctly handled by the original scopes who created them when it comes to activation or previews. Scopes middleware will automatically pass the correct inner stored result to the activation or preview request handler

**Parameters:**
-   `The` **&lt;<a href="../ScopeJS.Result/index.html" class="crosslink">Result</a>&gt;**

    original result to store within this result.

-   `intercept_activation` **&lt;Boolean&gt;**

    True if this scope should receive activation and preview requests.

<span id="title"></span>
String **`title`**( `  ` )
Get the "title" property of this Result. This method returns an empty string if this attribute is not of type String.

**Returns:** &lt;String&gt;
The value of "title" or the empty string.

<span id="uri"></span>
String **`uri`**( `  ` )
Get the "uri" property of this Result. This method returns an empty string if this attribute is not of type String.

**Returns:** &lt;String&gt;
The value of "uri" or the empty string.

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
