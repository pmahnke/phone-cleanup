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

-   Registry

Registry
========

White pages service for available scopes

-   Methods

<span id="get_metadata"></span>
<a href="../ScopeJS.ScopeMetadata/index.html" class="crosslink">ScopeMetadata</a> **`get_metadata`**( `id ` )
Returns the metadata for the scope with the given ID

**Parameters:**
-   `id` **&lt;String&gt;**

    Attribute definition

**Returns:** &lt;<a href="../ScopeJS.ScopeMetadata/index.html" class="crosslink">ScopeMetadata</a>&gt;

<span id="is_scope_running"></span>
Boolean **`is_scope_running`**( `scope_id ` )
Returns whether a scope is currently running or not

**Parameters:**
-   `scope_id` **&lt;String&gt;**

    The ID of the scope from which we wish to retrieve state

**Returns:** &lt;Boolean&gt;
True if the scope is running, and False if it is not running

<span id="list"></span>
Dictionary of String -&gt; ScopeMetadata **`list`**( `  ` )
Returns a map containing the metadata for all scopes

**Returns:** &lt;Dictionary of String -&gt; ScopeMetadata&gt;

<span id="list_if"></span>
Dictionary of String -&gt; ScopeMetadata **`list_if`**( `predicate ` )
Returns a map containing only those scopes for which predicate returns true

**Parameters:**
-   `predicate` **&lt;Function(ScopeMetadata)&gt;**

    a function that must return true for each metadata item to be included in the map.

**Returns:** &lt;Dictionary of String -&gt; ScopeMetadata&gt;

<span id="set_list_update_callback"></span>
**`set_list_update_callback`**( `callback ` )
Assigns a callback method to be executed when the registry's scope list changes

Note: Upon receiving this callback, you should retrieve the updated scopes list via the list() method if you wish to retain synchronisation between client and server

**Parameters:**
-   `callback` **&lt;Function()&gt;**

    The function that is invoked when an update occurs

<span id="set_scope_state_callback"></span>
**`set_scope_state_callback`**( `scope_id, callback ` )
Assigns a callback method to be executed when a scope's running state (started / stopped) changes

**Parameters:**
-   `scope_id` **&lt;String&gt;**

    The ID of the scope from which we wish to retrieve state changes

-   `callback` **&lt;Function(is\_running: Boolean)&gt;**

    The function that is invoked when a scope changes running state

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
