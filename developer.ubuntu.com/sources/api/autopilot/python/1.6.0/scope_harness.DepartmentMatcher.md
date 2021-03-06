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

-   DepartmentMatcher

DepartmentMatcher
=================

 *class* `scope_harness.``DepartmentMatcher`(*(object)arg1*)<a href="index.html#scope_harness.DepartmentMatcher" class="headerlink" title="Permalink to this definition"></a>  
Matcher object that holds constraints for matching departments.

 `all_label`(*(DepartmentMatcher)arg1*, *(str)arg2*) → DepartmentMatcher :<a href="index.html#scope_harness.DepartmentMatcher.all_label" class="headerlink" title="Permalink to this definition"></a>  
Set the department alternate (the ‘all’ variant’) label to match

 `child`(*(DepartmentMatcher)arg1*, *(ChildDepartmentMatcher)arg2*) → DepartmentMatcher :<a href="index.html#scope_harness.DepartmentMatcher.child" class="headerlink" title="Permalink to this definition"></a>  
Set the matcher for child department

 `has_at_least`(*(DepartmentMatcher)arg1*, *(int)arg2*) → DepartmentMatcher :<a href="index.html#scope_harness.DepartmentMatcher.has_at_least" class="headerlink" title="Permalink to this definition"></a>  
Set the minimum number of departments

 `has_exactly`(*(DepartmentMatcher)arg1*, *(int)arg2*) → DepartmentMatcher :<a href="index.html#scope_harness.DepartmentMatcher.has_exactly" class="headerlink" title="Permalink to this definition"></a>  
Set the exact number of departments

 `id`(*(DepartmentMatcher)arg1*, *(str)arg2*) → DepartmentMatcher :<a href="index.html#scope_harness.DepartmentMatcher.id" class="headerlink" title="Permalink to this definition"></a>  
Set the department id to match

 `is_hidden`(*(DepartmentMatcher)arg1*, *(bool)arg2*) → DepartmentMatcher :<a href="index.html#scope_harness.DepartmentMatcher.is_hidden" class="headerlink" title="Permalink to this definition"></a>  
Set the ‘hidden’ flag to match

 `is_root`(*(DepartmentMatcher)arg1*, *(bool)arg2*) → DepartmentMatcher :<a href="index.html#scope_harness.DepartmentMatcher.is_root" class="headerlink" title="Permalink to this definition"></a>  
Set the ‘root’ flag to match

 `label`(*(DepartmentMatcher)arg1*, *(str)arg2*) → DepartmentMatcher :<a href="index.html#scope_harness.DepartmentMatcher.label" class="headerlink" title="Permalink to this definition"></a>  
Set the department name (label) to match

 `match`(*(DepartmentMatcher)arg1*, *(Department)arg2*) → MatchResult :<a href="index.html#scope_harness.DepartmentMatcher.match" class="headerlink" title="Permalink to this definition"></a>  
> Match the department

match( (ResultMatcher)arg1, (MatchResult)arg2, (Department)arg3) -&gt; None :  
Match the department

 `mode`(*(DepartmentMatcher)arg1*, *(DepartmentMatcherMode)arg2*) → DepartmentMatcher :<a href="index.html#scope_harness.DepartmentMatcher.mode" class="headerlink" title="Permalink to this definition"></a>  
Set the matching mode, see DepartmentMatcherMode.

 `parent_id`(*(DepartmentMatcher)arg1*, *(str)arg2*) → DepartmentMatcher :<a href="index.html#scope_harness.DepartmentMatcher.parent_id" class="headerlink" title="Permalink to this definition"></a>  
Set the id of parent department to match

 `parent_label`(*(DepartmentMatcher)arg1*, *(str)arg2*) → DepartmentMatcher :<a href="index.html#scope_harness.DepartmentMatcher.parent_label" class="headerlink" title="Permalink to this definition"></a>  
Set the label of parent department to match

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
