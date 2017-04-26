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

-   OptionSelectorFilter

OptionSelectorFilter
====================

A selection filter that displays a list of choices and allows one or more of them to be selected

-   Methods

<span id="active_options"></span>
Array of FilterOption **`active_options`**( `filter_state ` )
Get active options from an instance of FilterState for this filter

**Parameters:**
-   `filter_state` **&lt;Object&gt;**

    FilterState

**Returns:** &lt;Array of FilterOption&gt;
LIst of active FilterOption

<span id="add_option"></span>
**`add_option`**( `  ` )
Add a new option to this filter

**Returns:**
FilterOption The added filter option

<span id="filter_type"></span>
String **`filter_type`**( `  ` )
Get the type name of this filter

**Returns:** &lt;String&gt;
type name of this filter

<span id="has_active_option"></span>
Boolean **`has_active_option`**( `filter_state ` )
Check if an option is active for this filter

**Parameters:**
-   `filter_state` **&lt;Object&gt;**

    FilterState

**Returns:** &lt;Boolean&gt;
True if an option is active for this filter

<span id="id"></span>
String **`id`**( `  ` )
Get the identifier of this filter

**Returns:** &lt;String&gt;
identifier of this filter

<span id="label"></span>
String **`label`**( `  ` )
Get the label of this filter

**Returns:** &lt;String&gt;
label of this filter

<span id="multi_select"></span>
Boolean **`multi_select`**( `  ` )
Check if this filter supports multiple options to be selected

**Returns:** &lt;Boolean&gt;
True if this filter multiple options to be selected

<span id="options"></span>
Array of FilterOption **`options`**( `  ` )
Get all options of this filter, in the order they were added

**Returns:** &lt;Array of FilterOption&gt;

<span id="set_display_hints"></span>
**`set_display_hints`**( `hints ` )
Sets display hints for the Shell UI

**Parameters:**
-   `hints` **&lt;Int&gt;**

    0 is Default filter hint, 1 is Primary filter hint

<span id="update_state"></span>
**`update_state`**( `filter_state, option, active ` )
Marks given FilterOption of this filter instance as active (or not active) in a FilterState object. Records the given FilterOption as "selected" in the FilterState. This is meant to be used to modify a FilterState received with a search request before sending it back to the client (UI shell).

**Parameters:**
-   `filter_state` **&lt;FilterState&gt;**
-   `option` **&lt;<a href="../ScopeJS.FilterOption/index.html" class="crosslink">FilterOption</a>&gt;**
-   `active` **&lt;Boolean&gt;**

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
