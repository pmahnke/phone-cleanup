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
-   [autopilot.process](../autopilot.process/index.html) ›

<!-- -->

-   Window

Window
======

 *class* `autopilot.process.``Window`<a href="index.html#Window" class="reference internal"></a><a href="index.html#autopilot.process.Window" class="headerlink" title="Permalink to this definition"></a>  
 `x_id`<a href="index.html#Window.x_id" class="reference internal"></a><a href="index.html#autopilot.process.Window.x_id" class="headerlink" title="Permalink to this definition"></a>  
Get the X11 Window Id.

 `x_win`<a href="index.html#Window.x_win" class="reference internal"></a><a href="index.html#autopilot.process.Window.x_win" class="headerlink" title="Permalink to this definition"></a>  
Get the X11 window object of the underlying window.

 `get_wm_state`<a href="index.html#Window.get_wm_state" class="reference internal"></a><a href="index.html#autopilot.process.Window.get_wm_state" class="headerlink" title="Permalink to this definition"></a>  
Get the state of the underlying window.

 `name`<a href="index.html#Window.name" class="reference internal"></a><a href="index.html#autopilot.process.Window.name" class="headerlink" title="Permalink to this definition"></a>  
Get the window name.

Note

This may change according to the current locale. If you want a unique string to match windows against, use the x\_id instead.

 `title`<a href="index.html#Window.title" class="reference internal"></a><a href="index.html#autopilot.process.Window.title" class="headerlink" title="Permalink to this definition"></a>  
Get the window title.

This may be different from the application name.

Note

This may change depending on the current locale.

 `geometry`<a href="index.html#Window.geometry" class="reference internal"></a><a href="index.html#autopilot.process.Window.geometry" class="headerlink" title="Permalink to this definition"></a>  
Get the geometry for this window.

|          |                                         |
|----------|-----------------------------------------|
| Returns: | Tuple containing (x, y, width, height). |

 `is_maximized`<a href="index.html#Window.is_maximized" class="reference internal"></a><a href="index.html#autopilot.process.Window.is_maximized" class="headerlink" title="Permalink to this definition"></a>  
Is the window maximized?

Maximized in this case means both maximized vertically and horizontally. If a window is only maximized in one direction it is not considered maximized.

 `application`<a href="index.html#Window.application" class="reference internal"></a><a href="index.html#autopilot.process.Window.application" class="headerlink" title="Permalink to this definition"></a>  
Get the application that owns this window.

This method may return None if the window does not have an associated application. The ‘desktop’ window is one such example.

 `user_visible`<a href="index.html#Window.user_visible" class="reference internal"></a><a href="index.html#autopilot.process.Window.user_visible" class="headerlink" title="Permalink to this definition"></a>  
Is this window visible to the user in the switcher?

 `is_hidden`<a href="index.html#Window.is_hidden" class="reference internal"></a><a href="index.html#autopilot.process.Window.is_hidden" class="headerlink" title="Permalink to this definition"></a>  
Is this window hidden?

Windows are hidden when the ‘Show Desktop’ mode is activated.

 `is_focused`<a href="index.html#Window.is_focused" class="reference internal"></a><a href="index.html#autopilot.process.Window.is_focused" class="headerlink" title="Permalink to this definition"></a>  
Is this window focused?

 `is_valid`<a href="index.html#Window.is_valid" class="reference internal"></a><a href="index.html#autopilot.process.Window.is_valid" class="headerlink" title="Permalink to this definition"></a>  
Is this window object valid?

Invalid windows are caused by windows closing during the construction of this object instance.

 `monitor`<a href="index.html#Window.monitor" class="reference internal"></a><a href="index.html#autopilot.process.Window.monitor" class="headerlink" title="Permalink to this definition"></a>  
Returns the monitor to which the windows belongs to

 `closed`<a href="index.html#Window.closed" class="reference internal"></a><a href="index.html#autopilot.process.Window.closed" class="headerlink" title="Permalink to this definition"></a>  
Returns True if the window has been closed

 `close`()<a href="index.html#Window.close" class="reference internal"></a><a href="index.html#autopilot.process.Window.close" class="headerlink" title="Permalink to this definition"></a>  
Close the window.

 `set_focus`()<a href="index.html#Window.set_focus" class="reference internal"></a><a href="index.html#autopilot.process.Window.set_focus" class="headerlink" title="Permalink to this definition"></a>  

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
