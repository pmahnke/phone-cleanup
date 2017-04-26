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
-   [1.5.0](../index.html) ›
-   [scope\_harness](../scope_harness/index.html) ›

<!-- -->

-   Result

Result
======

 *class* `scope_harness.``Result`<a href="index.html#scope_harness.Result" class="headerlink" title="Permalink to this definition"></a>  
Represents a read-only view on a result returned by a scope

 `__getitem__`(*(Result)arg1*, *(str)arg2*) → object :<a href="index.html#scope_harness.Result.__getitem__" class="headerlink" title="Permalink to this definition"></a>  
Get result attribute by name.

|             |                                      |
|-------------|--------------------------------------|
| Parameters: | **arg2** (*string*) – attribute name |
| Returns:    | attribute value                      |
| Raises:     | ValueError if not found              |

 `__init__`()<a href="index.html#scope_harness.Result.__init__" class="headerlink" title="Permalink to this definition"></a>  
Raises an exception This class cannot be instantiated from Python

 `__module__` *= 'scope\_harness'*<a href="index.html#scope_harness.Result.__module__" class="headerlink" title="Permalink to this definition"></a>  

 `__reduce__`()<a href="index.html#scope_harness.Result.__reduce__" class="headerlink" title="Permalink to this definition"></a>  

 `art`<a href="index.html#scope_harness.Result.art" class="headerlink" title="Permalink to this definition"></a>  

 `attributes`<a href="index.html#scope_harness.Result.attributes" class="headerlink" title="Permalink to this definition"></a>  

 `background`<a href="index.html#scope_harness.Result.background" class="headerlink" title="Permalink to this definition"></a>  

 `dnd_uri`<a href="index.html#scope_harness.Result.dnd_uri" class="headerlink" title="Permalink to this definition"></a>  

 `emblem`<a href="index.html#scope_harness.Result.emblem" class="headerlink" title="Permalink to this definition"></a>  

 `long_press`(*(Result)arg1*) → AbstractView :<a href="index.html#scope_harness.Result.long_press" class="headerlink" title="Permalink to this definition"></a>  
Activates the result, as if user long-pressed it. Returns an instance of PreviewView (if result was previewed) or None (if result’s uri was a canned scope query)

|          |                     |
|----------|---------------------|
| Returns: | PreviewView or None |

 `mascot`<a href="index.html#scope_harness.Result.mascot" class="headerlink" title="Permalink to this definition"></a>  

 `subtitle`<a href="index.html#scope_harness.Result.subtitle" class="headerlink" title="Permalink to this definition"></a>  

 `summary`<a href="index.html#scope_harness.Result.summary" class="headerlink" title="Permalink to this definition"></a>  

 `tap`(*(Result)arg1*) → AbstractView :<a href="index.html#scope_harness.Result.tap" class="headerlink" title="Permalink to this definition"></a>  
Activates the result, as if user tapped it. Returns an instance of PreviewView (if result was previewed) or ResultsView (if result’s uri was a canned scope query, resulting in a new search)

|          |                                        |
|----------|----------------------------------------|
| Returns: | instance of PreviewView or ResultsView |

 `tap_action`(*(Result)arg1*, *(str)arg2*) → AbstractView :<a href="index.html#scope_harness.Result.tap_action" class="headerlink" title="Permalink to this definition"></a>  
Activates result action. Returns the ResultsView where affected result may potentially be updated.

 `title`<a href="index.html#scope_harness.Result.title" class="headerlink" title="Permalink to this definition"></a>  

 `uri`<a href="index.html#scope_harness.Result.uri" class="headerlink" title="Permalink to this definition"></a>  

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
