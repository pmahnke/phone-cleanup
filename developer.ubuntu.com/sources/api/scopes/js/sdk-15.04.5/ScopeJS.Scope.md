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

-   Scope

Scope
=====

Scope corresponds to the bridge between the ubuntu scope runtime and the actual scope.

A Scope object is not directly constructible but it is automatically created when the scope module is imported and is accessible through the 'self' exported member.

After the scopes runtime has obtained initialization runtime configurations from the scope, it calls start(), which allows the scope to intialize itself. This is followed by a call to run().

When the scope should complete its activities, the runtime calls stop().

-   Methods
-   Properties

<span id="initialize"></span>
**`initialize`**( `options, runtime_config ` )
This member function is the entry point to setting up a scope's behavior and configuring it to the runtime scope.

**Parameters:**
-   `options` **&lt;Object&gt;**

    A dictionary of options for the scope runtime. The option keys are: - scope\_id: the scope id

-   `runtime_config` **&lt;Object&gt;**

    A dictionary of runtime configuration settings for the scope runtime. The configuration keys are: - run {Function()}: Callback called by the scopes run time after it has called start() to hand a thread of control to the scope - starting {Function(String: scope\_id)}: Callback called by the scopes run time after the create function completes - stop {Function()}: Callback called by the scopes run time when the scope should shut down - search {Function(CannedQuery: canned\_query, SearchMetaData: metadata)}: Callback called by the scopes run time when a scope needs to instantiate a query - perform\_action {Function(Result: result, ActionMetaData: metadata, String: widget\_id, String: ation\_id)}: Callback invoked when a scope is requested to handle a preview action - preview {Function(Result: result, ActionMetaData: metadata)}: Callback invoked when a scope is requested to create a preview for a particular result

##### Example

``` code
         var scopes = require('unity-js-scopes')
                         scopes.self.initialize(
                           {}, {
                             run: function() {}
                             start: function(scope_id) {
                               console.log('Starting scope id: '
                                 + scope_id
                                 + ', '
                                 + scopes.self.scope_config)
                             },
                             search: function(canned_query, metadata) {}
                           }
                         );
```

<span id="cache_directory"></span>
`cache_directory` &lt;**Unknown**&gt;
Returns a directory that is (exclusively) writable for the scope

<span id="registry"></span>
`registry` &lt;**Unknown**&gt;
Returns the scope registry

<span id="scope_directory"></span>
`scope_directory` &lt;**Unknown**&gt;
Returns the directory that stores the scope's configuration files and shared library

<span id="settings"></span>
`settings` &lt;**Unknown**&gt;
Returns a dictionary with the scope's current settings

<span id="tmp_directory"></span>
`tmp_directory` &lt;**Unknown**&gt;
Returns a tmp directory that is (exclusively) writable for the scope

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
