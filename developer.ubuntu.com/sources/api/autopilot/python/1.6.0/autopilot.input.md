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
-   <a href="../index.html" class="sub-nav-item">1.6.0</a> ›
-   autopilot.input

<!-- -->

autopilot.input
---------------

<span id="autopilot-input-generate-keyboard-mouse-and-touch-input-events"></span>
Autopilot unified input system.<a href="index.html#autopilot-unified-input-system" class="headerlink" title="Permalink to this headline"></a>
---------------------------------------------------------------------------------------------------------------------------------------------

This package provides input methods for various platforms. Autopilot aims to provide an appropriate implementation for the currently running system. For example, not all systems have an X11 stack running: on those systems, autopilot will instantiate input classes class that use something other than X11 to generate events (possibly UInput).

Test authors should instantiate the appropriate class using the `create` method on each class. Calling `create()` with no arguments will get an instance of the specified class that suits the current platform. In this case, autopilot will do it’s best to pick a suitable backend. Calling `create` with a backend name will result in that specific backend type being returned, or, if it cannot be created, an exception will be raised. For more information on creating backends, see <a href="../../1.5.0/tutorial-advanced_autopilot/index.html#tut-picking-backends" class="reference internal"><em>Advanced Backend Picking</em></a>

There are three basic input types available:

> -   <a href="../../1.5.0/autopilot.input.Keyboard/index.html#autopilot.input.Keyboard" class="reference internal" title="autopilot.input.Keyboard"><code class="xref py py-class docutils literal">Keyboard</code></a> - traditional keyboard devices.
>
> -   <a href="../../1.5.0/autopilot.input.Mouse/index.html#autopilot.input.Mouse" class="reference internal" title="autopilot.input.Mouse"><code class="xref py py-class docutils literal">Mouse</code></a> - traditional mouse devices (Currently only avaialble on the  
>     desktop).
>
> -   <a href="../../1.5.0/autopilot.input.Touch/index.html#autopilot.input.Touch" class="reference internal" title="autopilot.input.Touch"><code class="xref py py-class docutils literal">Touch</code></a> - single point-of-contact touch device.
>
The <a href="../../1.5.0/autopilot.input.Pointer/index.html#autopilot.input.Pointer" class="reference internal" title="autopilot.input.Pointer"><code class="xref py py-class docutils literal">Pointer</code></a> class is a wrapper that unifies the API of the <a href="../../1.5.0/autopilot.input.Mouse/index.html#autopilot.input.Mouse" class="reference internal" title="autopilot.input.Mouse"><code class="xref py py-class docutils literal">Mouse</code></a> and <a href="../../1.5.0/autopilot.input.Touch/index.html#autopilot.input.Touch" class="reference internal" title="autopilot.input.Touch"><code class="xref py py-class docutils literal">Touch</code></a> classes, which can be helpful if you want to write a test that can use either a mouse of a touch device. A common pattern is to use a Touch device when running on a mobile device, and a Mouse device when running on a desktop.

See also

Module `autopilot.gestures`  
Multitouch and gesture support for touch devices.

### Elements

[Keyboard](../autopilot.input.Keyboard/index.html)  
A simple keyboard device class.

[Mouse](../autopilot.input.Mouse/index.html)  
A simple mouse device class.

[Pointer](../autopilot.input.Pointer/index.html)  
A wrapper class that represents a pointing device which can either

[Touch](../autopilot.input.Touch/index.html)  
A simple touch driver class.

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
