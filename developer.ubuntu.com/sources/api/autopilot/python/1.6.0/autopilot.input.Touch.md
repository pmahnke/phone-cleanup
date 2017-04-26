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

-   Touch

Touch
=====

 *class* `autopilot.input.``Touch`<a href="../../1.5.0/autopilot.input.Touch/index.html#Touch" class="reference internal"></a><a href="index.html#autopilot.input.Touch" class="headerlink" title="Permalink to this definition"></a>  
A simple touch driver class.

This class can be used for any touch events that require a single active touch at once. If you want to do complex gestures (including multi-touch gestures), look at the `autopilot.gestures` module.

 *static* `create`(*preferred\_backend=''*)<a href="../../1.5.0/autopilot.input.Touch/index.html#Touch.create" class="reference internal"></a><a href="index.html#autopilot.input.Touch.create" class="headerlink" title="Permalink to this definition"></a>  
Get an instance of the <a href="../../1.5.0/autopilot.input.Touch/index.html#autopilot.input.Touch" class="reference internal" title="autopilot.input.Touch"><code class="xref py py-class docutils literal">Touch</code></a> class.

|             |                                                                                                                                                                                                                                    |
|-------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **preferred\_backend** –                                                                                                                                                                                                           
  A string containing a hint as to which backend you would like. If left blank, autopilot will pick a suitable backend for you. Specifying a backend will guarantee that either that backend is returned, or an exception is raised.  
                                                                                                                                                                                                                                      
  possible backends are:                                                                                                                                                                                                              
                                                                                                                                                                                                                                      
  -   `UInput` - Use UInput kernel-level device driver.                                                                                                                                                                               |
| Raises:     | RuntimeError if autopilot cannot instantate any of the possible backends.                                                                                                                                                          |
| Raises:     | RuntimeError if the preferred\_backend is specified and is not one of the possible backends for this device class.                                                                                                                 |
| Raises:     | `BackendException` if the preferred\_backend is set, but that backend could not be instantiated.                                                                                                                                   |

 `pressed`<a href="../../1.5.0/autopilot.input.Touch/index.html#Touch.pressed" class="reference internal"></a><a href="index.html#autopilot.input.Touch.pressed" class="headerlink" title="Permalink to this definition"></a>  
Return True if this touch is currently in use (i.e.- pressed on the ‘screen’).

 `tap`(*x*, *y*, *press\_duration=0.1*, *time\_between\_events=0.1*)<a href="../../1.5.0/autopilot.input.Touch/index.html#Touch.tap" class="reference internal"></a><a href="index.html#autopilot.input.Touch.tap" class="headerlink" title="Permalink to this definition"></a>  
Click (or ‘tap’) at given x,y coordinates.

|             |                                                                                                                                                       |
|-------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **time\_between\_events** – takes floating point to represent the delay time between subsequent taps. Default value 0.1 represents tenth of a second. |

 `tap_object`(*object*, *press\_duration=0.1*, *time\_between\_events=0.1*)<a href="../../1.5.0/autopilot.input.Touch/index.html#Touch.tap_object" class="reference internal"></a><a href="index.html#autopilot.input.Touch.tap_object" class="headerlink" title="Permalink to this definition"></a>  
Tap the center point of a given object.

It does this by looking for several attributes, in order. The first attribute found will be used. The attributes used are (in order):

> -   globalRect (x,y,w,h)
> -   center\_x, center\_y
> -   x, y, w, h

|             |                                                                                                                                                       |
|-------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **time\_between\_events** – takes floating point to represent the delay time between subsequent taps. Default value 0.1 represents tenth of a second. |
| Raises:     | **ValueError** if none of these attributes are found, or if an attribute is of an incorrect type.                                                     |

 `press`(*x*, *y*)<a href="../../1.5.0/autopilot.input.Touch/index.html#Touch.press" class="reference internal"></a><a href="index.html#autopilot.input.Touch.press" class="headerlink" title="Permalink to this definition"></a>  
Press and hold at the given x,y coordinates.

 `move`(*x*, *y*)<a href="../../1.5.0/autopilot.input.Touch/index.html#Touch.move" class="reference internal"></a><a href="index.html#autopilot.input.Touch.move" class="headerlink" title="Permalink to this definition"></a>  
Move the pointer coords to (x,y).

Note

The touch ‘finger’ must be pressed for a call to this method to be successful. (see <a href="../../1.5.0/autopilot.input.Touch/index.html#autopilot.input.Touch.press" class="reference internal" title="autopilot.input.Touch.press"><code class="xref py py-meth docutils literal">press</code></a> for further details on touch presses.)

|         |                                                                  |
|---------|------------------------------------------------------------------|
| Raises: | **RuntimeError** if called and the touch ‘finger’ isn’t pressed. |

 `release`()<a href="../../1.5.0/autopilot.input.Touch/index.html#Touch.release" class="reference internal"></a><a href="index.html#autopilot.input.Touch.release" class="headerlink" title="Permalink to this definition"></a>  
Release a previously pressed finger

 `drag`(*x1*, *y1*, *x2*, *y2*, *rate=10*, *time\_between\_events=0.01*)<a href="../../1.5.0/autopilot.input.Touch/index.html#Touch.drag" class="reference internal"></a><a href="index.html#autopilot.input.Touch.drag" class="headerlink" title="Permalink to this definition"></a>  
Perform a drag gesture.

The finger will be dragged from the starting point to the ending point with multiple moves. The number of moves, and thus the time that it will take to complete the drag can be altered with the rate parameter.

|             |                                                                                                                                                                                |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **x1** – The point on the x axis where the drag will start from.                                                                                                           
  -   **y1** – The point on the y axis where the drag will starts from.                                                                                                           
  -   **x2** – The point on the x axis where the drag will end at.                                                                                                                
  -   **y2** – The point on the y axis where the drag will end at.                                                                                                                
  -   **rate** – The number of pixels the finger will be moved per iteration. Default is 10 pixels. A higher rate will make the drag faster, and lower rate will make it slower.  
  -   **time\_between\_events** – The number of seconds that the drag will wait between iterations.                                                                               |
| Raises:     | -   **RuntimeError** – if the finger is already pressed.                                                                                                                       
  -   **RuntimeError** – if no more finger slots are available.                                                                                                                   |

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
