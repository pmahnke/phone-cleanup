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
-   [Autopilot](../../../index.html) ›
-   [Python](../../index.html) ›
-   [1.6.0](../index.html) ›
-   [scope\_harness](../scope_harness/index.html) ›

<!-- -->

-   ResultsView

ResultsView
===========

 *class* `scope_harness.``ResultsView`<a href="index.html#scope_harness.ResultsView" class="headerlink" title="Permalink to this definition"></a>  
This is the main class for driving search and inspecting search results. Set search\_query property to invoke search, then inspect categories property to access returned categories and their results. Use browse\_department method to change active department.

 `active_scope`<a href="index.html#scope_harness.ResultsView.active_scope" class="headerlink" title="Permalink to this definition"></a>  

 `alt_department_id`<a href="index.html#scope_harness.ResultsView.alt_department_id" class="headerlink" title="Permalink to this definition"></a>  

 `browse_alt_department`(*(ResultsView)arg1*, *(str)arg2*) → Department :<a href="index.html#scope_harness.ResultsView.browse_alt_department" class="headerlink" title="Permalink to this definition"></a>  
Go to a specific alternate (e.g. the top-right selection filter if provided by the scope) department by id. Returns Department instance.

 `browse_department`(*(ResultsView)arg1*, *(str)arg2*) → Department :<a href="index.html#scope_harness.ResultsView.browse_department" class="headerlink" title="Permalink to this definition"></a>  
Go to a specific department by id. Returns Department instance.

 `categories`<a href="index.html#scope_harness.ResultsView.categories" class="headerlink" title="Permalink to this definition"></a>  

 `category`(*(ResultsView)arg1*, *(int)arg2*) → Category :<a href="index.html#scope_harness.ResultsView.category" class="headerlink" title="Permalink to this definition"></a>  
> Get Category instance by row index

category( (ResultsView)arg1, (str)arg2) -&gt; Category :  
Get Category instance by id

 `customizations`<a href="index.html#scope_harness.ResultsView.customizations" class="headerlink" title="Permalink to this definition"></a>  

 `department_id`<a href="index.html#scope_harness.ResultsView.department_id" class="headerlink" title="Permalink to this definition"></a>  

 `description`<a href="index.html#scope_harness.ResultsView.description" class="headerlink" title="Permalink to this definition"></a>  

 `display_name`<a href="index.html#scope_harness.ResultsView.display_name" class="headerlink" title="Permalink to this definition"></a>  

 `has_alt_departments`<a href="index.html#scope_harness.ResultsView.has_alt_departments" class="headerlink" title="Permalink to this definition"></a>  

 `has_departments`<a href="index.html#scope_harness.ResultsView.has_departments" class="headerlink" title="Permalink to this definition"></a>  

 `icon_hint`<a href="index.html#scope_harness.ResultsView.icon_hint" class="headerlink" title="Permalink to this definition"></a>  

 `query_id`<a href="index.html#scope_harness.ResultsView.query_id" class="headerlink" title="Permalink to this definition"></a>  

 `scope_id`<a href="index.html#scope_harness.ResultsView.scope_id" class="headerlink" title="Permalink to this definition"></a>  

 `search_hint`<a href="index.html#scope_harness.ResultsView.search_hint" class="headerlink" title="Permalink to this definition"></a>  

 `search_query`<a href="index.html#scope_harness.ResultsView.search_query" class="headerlink" title="Permalink to this definition"></a>  

 `session_id`<a href="index.html#scope_harness.ResultsView.session_id" class="headerlink" title="Permalink to this definition"></a>  

 `settings`<a href="index.html#scope_harness.ResultsView.settings" class="headerlink" title="Permalink to this definition"></a>  

 `shortcut`<a href="index.html#scope_harness.ResultsView.shortcut" class="headerlink" title="Permalink to this definition"></a>  

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
