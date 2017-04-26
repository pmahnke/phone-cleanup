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
-   [autopilot.input](../autopilot.input/index.html) ›

<!-- -->

-   Pointer

Pointer
=======

 *class* `autopilot.input.``Pointer`(*device*)<a href="../../1.5.0/autopilot.input.Pointer/index.html#Pointer" class="reference internal"></a><a href="index.html#autopilot.input.Pointer" class="headerlink" title="Permalink to this definition"></a>  
A wrapper class that represents a pointing device which can either be a mouse or a touch, and provides a unified API.

This class is useful if you want to run tests with either a mouse or a touch device, and want to write your tests to use a single API. Create this wrapper by passing it either a mouse or a touch device, like so:

    pointer_device = Pointer(Mouse.create())

or, like so:

    pointer_device = Pointer(Touch.create())

Warning

Some operations only make sense for certain devices. This class attempts to minimise the differences between the Mouse and Touch APIs, but there are still some operations that will cause exceptions to be raised. These are documented in the specific methods below.

 `x`<a href="../../1.5.0/autopilot.input.Pointer/index.html#Pointer.x" class="reference internal"></a><a href="index.html#autopilot.input.Pointer.x" class="headerlink" title="Permalink to this definition"></a>  
Pointer X coordinate.

If the wrapped device is a <a href="../../1.5.0/autopilot.input.Touch/index.html#autopilot.input.Touch" class="reference internal" title="autopilot.input.Touch"><code class="xref py py-class docutils literal">Touch</code></a> device, this will return the last known X coordinate, which may not be a sensible value.

 `y`<a href="../../1.5.0/autopilot.input.Pointer/index.html#Pointer.y" class="reference internal"></a><a href="index.html#autopilot.input.Pointer.y" class="headerlink" title="Permalink to this definition"></a>  
Pointer Y coordinate.

If the wrapped device is a <a href="../../1.5.0/autopilot.input.Touch/index.html#autopilot.input.Touch" class="reference internal" title="autopilot.input.Touch"><code class="xref py py-class docutils literal">Touch</code></a> device, this will return the last known Y coordinate, which may not be a sensible value.

 `press`(*button=1*)<a href="../../1.5.0/autopilot.input.Pointer/index.html#Pointer.press" class="reference internal"></a><a href="index.html#autopilot.input.Pointer.press" class="headerlink" title="Permalink to this definition"></a>  
Press the pointer at it’s current location.

If the wrapped device is a mouse, you may pass a button specification. If it is a touch device, passing anything other than 1 will raise a ValueError exception.

 `release`(*button=1*)<a href="../../1.5.0/autopilot.input.Pointer/index.html#Pointer.release" class="reference internal"></a><a href="index.html#autopilot.input.Pointer.release" class="headerlink" title="Permalink to this definition"></a>  
Releases the pointer at it’s current location.

If the wrapped device is a mouse, you may pass a button specification. If it is a touch device, passing anything other than 1 will raise a ValueError exception.

 `click`(*button=1*, *press\_duration=0.1*, *time\_between\_events=0.1*)<a href="../../1.5.0/autopilot.input.Pointer/index.html#Pointer.click" class="reference internal"></a><a href="index.html#autopilot.input.Pointer.click" class="headerlink" title="Permalink to this definition"></a>  
Press and release at the current pointer location.

If the wrapped device is a mouse, the button specification is used. If it is a touch device, passing anything other than 1 will raise a ValueError exception.

|             |                                                                                                                                                              |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **time\_between\_events** – takes floating point to represent the delay time between subsequent clicks/taps. Default value 0.1 represents tenth of a second. |

 `move`(*x*, *y*)<a href="../../1.5.0/autopilot.input.Pointer/index.html#Pointer.move" class="reference internal"></a><a href="index.html#autopilot.input.Pointer.move" class="headerlink" title="Permalink to this definition"></a>  
Moves the pointer to the specified coordinates.

If the wrapped device is a mouse, the mouse will animate to the specified coordinates. If the wrapped device is a touch device, this method will determine where the next <a href="../../1.5.0/autopilot.input.Pointer/index.html#autopilot.input.Pointer.press" class="reference internal" title="autopilot.input.Pointer.press"><code class="xref py py-meth docutils literal">press</code></a>, <a href="../../1.5.0/autopilot.input.Pointer/index.html#autopilot.input.Pointer.release" class="reference internal" title="autopilot.input.Pointer.release"><code class="xref py py-meth docutils literal">release</code></a> or <a href="../../1.5.0/autopilot.input.Pointer/index.html#autopilot.input.Pointer.click" class="reference internal" title="autopilot.input.Pointer.click"><code class="xref py py-meth docutils literal">click</code></a> will occur.

 `click_object`(*object\_proxy*, *button=1*, *press\_duration=0.1*, *time\_between\_events=0.1*)<a href="../../1.5.0/autopilot.input.Pointer/index.html#Pointer.click_object" class="reference internal"></a><a href="index.html#autopilot.input.Pointer.click_object" class="headerlink" title="Permalink to this definition"></a>  
Attempts to move the pointer to ‘object\_proxy’s centre point. and click a button

It does this by looking for several attributes, in order. The first attribute found will be used. The attributes used are (in order):

> -   globalRect (x,y,w,h)
> -   center\_x, center\_y
> -   x, y, w, h

If the wrapped device is a mouse, the button specification is used. If it is a touch device, passing anything other than 1 will raise a ValueError exception.

|             |                                                                                                                                                              |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **time\_between\_events** – takes floating point to represent the delay time between subsequent clicks/taps. Default value 0.1 represents tenth of a second. |

 `move_to_object`(*object\_proxy*)<a href="../../1.5.0/autopilot.input.Pointer/index.html#Pointer.move_to_object" class="reference internal"></a><a href="index.html#autopilot.input.Pointer.move_to_object" class="headerlink" title="Permalink to this definition"></a>  
Attempts to move the pointer to ‘object\_proxy’s centre point.

It does this by looking for several attributes, in order. The first attribute found will be used. The attributes used are (in order):

> -   globalRect (x,y,w,h)
> -   center\_x, center\_y
> -   x, y, w, h

|         |                                                                                                   |
|---------|---------------------------------------------------------------------------------------------------|
| Raises: | **ValueError** if none of these attributes are found, or if an attribute is of an incorrect type. |

 `position`()<a href="../../1.5.0/autopilot.input.Pointer/index.html#Pointer.position" class="reference internal"></a><a href="index.html#autopilot.input.Pointer.position" class="headerlink" title="Permalink to this definition"></a>  
Returns the current position of the pointer.

|          |             |
|----------|-------------|
| Returns: | (x,y) tuple |

 `drag`(*x1*, *y1*, *x2*, *y2*, *rate=10*, *time\_between\_events=0.01*)<a href="../../1.5.0/autopilot.input.Pointer/index.html#Pointer.drag" class="reference internal"></a><a href="index.html#autopilot.input.Pointer.drag" class="headerlink" title="Permalink to this definition"></a>  
Perform a press, move and release.

This is to keep a common API between Mouse and Finger as long as possible.

The pointer will be dragged from the starting point to the ending point with multiple moves. The number of moves, and thus the time that it will take to complete the drag can be altered with the rate parameter.

|             |                                                                                                                                                                               |
|-------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **x1** – The point on the x axis where the drag will start from.                                                                                                          
  -   **y1** – The point on the y axis where the drag will starts from.                                                                                                          
  -   **x2** – The point on the x axis where the drag will end at.                                                                                                               
  -   **y2** – The point on the y axis where the drag will end at.                                                                                                               
  -   **rate** – The number of pixels the mouse will be moved per iteration. Default is 10 pixels. A higher rate will make the drag faster, and lower rate will make it slower.  
  -   **time\_between\_events** – The number of seconds that the drag will wait between iterations.                                                                              |

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
