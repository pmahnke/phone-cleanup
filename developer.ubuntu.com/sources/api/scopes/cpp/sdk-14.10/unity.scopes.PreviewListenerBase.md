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
-   [C++](../../index.html) ›
-   [SDK 14.10](../index.html) ›

<!-- -->

-   PreviewListenerBase

PreviewListenerBase
===================

Abstract base class for a scope to respond to preview requests. [More...](index.html#details)

`#include <unity/scopes/PreviewListenerBase.h>`

Inheritance diagram for unity::scopes::PreviewListenerBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/727a7a21-0754-4e87-a15e-4112a5d522cb-api/scopes/cpp/sdk-14.10/unity.scopes.PreviewListenerBase/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

<span id="a5e9fe1fa664cbb65a0389e5a39caf78b" class="anchor"></span> virtual void 
<a href="index.html#a5e9fe1fa664cbb65a0389e5a39caf78b" class="el">push</a> (<a href="../unity.scopes/index.html#a5b970e3c73bf25548398b32e79b2224d" class="el">ColumnLayoutList</a> const &layouts)=0
 
Called by the scopes runtime for each column layout definition returned by preview().
 
<span id="a1b4c366abea27471dc9ee31873c9c37a" class="anchor"></span> virtual void 
<a href="index.html#a1b4c366abea27471dc9ee31873c9c37a" class="el">push</a> (<a href="../unity.scopes/index.html#aed3b7b1daf2e49d0a820ef931caa792d" class="el">PreviewWidgetList</a> const &)=0
 
Called by the scopes runtime for each preview chunk that is returned by preview().
 
<span id="a2c11160354d49672100522d3e476b7e3" class="anchor"></span> virtual void 
<a href="index.html#a2c11160354d49672100522d3e476b7e3" class="el">push</a> (std::string const &key, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &value)=0
 
Called by the scopes runtime for each data field that is returned by preview().
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/07d17a39-1b22-404b-8979-ceac1e2092a5-api/scopes/cpp/sdk-14.10/unity.scopes.PreviewListenerBase/closed.png) Public Member Functions inherited from <a href="../unity.scopes.ListenerBase/index.html" class="el">unity::scopes::ListenerBase</a>
virtual void 
<a href="../unity.scopes.ListenerBase/index.html#afb44937749b61c9e3ebfa20ec6e4634b" class="el">finished</a> (<a href="../unity.scopes.CompletionDetails/index.html" class="el">CompletionDetails</a> const &details)=0
 
Called once by the scopes run time after the final result for a request was sent. More...
 
virtual void 
<a href="../unity.scopes.ListenerBase/index.html#a3b38fa642754142f40968f3ff8d1bdc8" class="el">info</a> (<a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a> const &op\_info)
 
Called by the scopes run time each time a scope reports additional information about the reply to a query. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class for a scope to respond to preview requests.

An instance of this class must be returned from <a href="../unity.scopes.Scope/index.html#a82b24083994e676524b10c407f281aa4" class="el" title="Initiates preview request. ">Scope::preview()</a>.

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
