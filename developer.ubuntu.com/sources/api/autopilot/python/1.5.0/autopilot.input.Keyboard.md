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
-   [autopilot.input](../autopilot.input/index.html) ›

<!-- -->

-   Keyboard

Keyboard
========

 *class* `autopilot.input.``Keyboard`<a href="index.html#Keyboard" class="reference internal"></a><a href="index.html#autopilot.input.Keyboard" class="headerlink" title="Permalink to this definition"></a>  
A simple keyboard device class.

The keyboard class is used to generate key events while in an autopilot test. This class should not be instantiated directly. To get an instance of the keyboard class, call <a href="index.html#autopilot.input.Keyboard.create" class="reference internal" title="autopilot.input.Keyboard.create"><code class="xref py py-meth docutils literal">create</code></a> instead.

 *static* `create`(*preferred\_backend=''*)<a href="index.html#Keyboard.create" class="reference internal"></a><a href="index.html#autopilot.input.Keyboard.create" class="headerlink" title="Permalink to this definition"></a>  
Get an instance of the <a href="index.html#autopilot.input.Keyboard" class="reference internal" title="autopilot.input.Keyboard"><code class="xref py py-class docutils literal">Keyboard</code></a> class.

For more infomration on picking specific backends, see <a href="../tutorial-advanced_autopilot/index.html#tut-picking-backends" class="reference internal"><em>Advanced Backend Picking</em></a>

For details regarding backend limitations please see: <a href="../tutorial-advanced_autopilot/index.html#keyboard-backend-limitations" class="reference internal"><em>Keyboard backend limitations</em></a>

Warning

The **OSK** (On Screen Keyboard) backend option does not implement either <a href="index.html#autopilot.input.Keyboard.press" class="reference internal" title="autopilot.input.Keyboard.press"><code class="xref py py-meth docutils literal">press</code></a> or <a href="index.html#autopilot.input.Keyboard.release" class="reference internal" title="autopilot.input.Keyboard.release"><code class="xref py py-meth docutils literal">release</code></a> methods due to technical implementation details and will raise a NotImplementedError exception if used.

|             |                                                                                                                    |
|-------------|--------------------------------------------------------------------------------------------------------------------|
| Parameters: | **preferred\_backend** –                                                                                           
  A string containing a hint as to which backend you would like. Possible backends are:                               
                                                                                                                      
  -   `X11` - Generate keyboard events using the X11 client                                                           
      libraries.                                                                                                      
                                                                                                                      
  -   `UInput` - Use UInput kernel-level device driver.                                                               
  -   `OSK` - Use the graphical On Screen Keyboard as a backend.                                                      |
| Raises:     | RuntimeError if autopilot cannot instantate any of the possible backends.                                          |
| Raises:     | RuntimeError if the preferred\_backend is specified and is not one of the possible backends for this device class. |
| Raises:     | `BackendException` if the preferred\_backend is set, but that backend could not be instantiated.                   |

 `focused_type`(*input\_target*, *pointer=None*)<a href="index.html#Keyboard.focused_type" class="reference internal"></a><a href="index.html#autopilot.input.Keyboard.focused_type" class="headerlink" title="Permalink to this definition"></a>  
Type into an input widget.

This context manager takes care of making sure a particular *input\_target* UI control is selected before any text is entered.

Some backends extend this method to perform cleanup actions at the end of the context manager block. For example, the OSK backend dismisses the keyboard.

If the *pointer* argument is None (default) then either a Mouse or Touch pointer will be created based on the current platform.

An example of using the context manager (with an OSK backend):

    from autopilot.input import Keyboard

    text_area = self._launch_test_input_area()
    keyboard = Keyboard.create('OSK')
    with keyboard.focused_type(text_area) as kb:
        kb.type("Hello World.")
        self.assertThat(text_area.text, Equals("Hello World"))
    # Upon leaving the context managers scope the keyboard is dismissed
    # with a swipe

 `press`(*keys*, *delay=0.2*)<a href="index.html#Keyboard.press" class="reference internal"></a><a href="index.html#autopilot.input.Keyboard.press" class="headerlink" title="Permalink to this definition"></a>  
Send key press events only.

|             |                                                                                                        |
|-------------|--------------------------------------------------------------------------------------------------------|
| Parameters: | -   **keys** – Keys you want pressed.                                                                  
  -   **delay** – The delay (in Seconds) after pressing the keys before returning control to the caller.  |
| Raises:     | NotImplementedError If called when using the OSK Backend.                                              |

Warning

The **OSK** backend does not implement the press method and will raise a NotImplementedError if called.

Example:

    press('Alt+F2')

presses the ‘Alt’ and ‘F2’ keys, but does not release them.

 `release`(*keys*, *delay=0.2*)<a href="index.html#Keyboard.release" class="reference internal"></a><a href="index.html#autopilot.input.Keyboard.release" class="headerlink" title="Permalink to this definition"></a>  
Send key release events only.

|             |                                                                                                         |
|-------------|---------------------------------------------------------------------------------------------------------|
| Parameters: | -   **keys** – Keys you want released.                                                                  
  -   **delay** – The delay (in Seconds) after releasing the keys before returning control to the caller.  |
| Raises:     | NotImplementedError If called when using the OSK Backend.                                               |

Warning

The **OSK** backend does not implement the press method and will raise a NotImplementedError if called.

Example:

    release('Alt+F2')

releases the ‘Alt’ and ‘F2’ keys.

 `press_and_release`(*keys*, *delay=0.2*)<a href="index.html#Keyboard.press_and_release" class="reference internal"></a><a href="index.html#autopilot.input.Keyboard.press_and_release" class="headerlink" title="Permalink to this definition"></a>  
Press and release all items in ‘keys’.

This is the same as calling ‘press(keys);release(keys)’.

|             |                                                                               |
|-------------|-------------------------------------------------------------------------------|
| Parameters: | -   **keys** – Keys you want pressed and released.                            
  -   **delay** – The delay (in Seconds) after pressing and releasing each key.  |

Example:

    press_and_release('Alt+F2')

presses both the ‘Alt’ and ‘F2’ keys, and then releases both keys.

 `type`(*string*, *delay=0.1*)<a href="index.html#Keyboard.type" class="reference internal"></a><a href="index.html#autopilot.input.Keyboard.type" class="headerlink" title="Permalink to this definition"></a>  
Simulate a user typing a string of text.

|             |                                                                                                                                                                                        |
|-------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **string** – The string to text to type.                                                                                                                                           
  -   **delay** – The delay (in Seconds) after pressing and releasing each key. Note that the default value here is shorter than for the press, release and press\_and\_release methods.  |

Note

Only ‘normal’ keys can be typed with this method. Control characters (such as ‘Alt’ will be interpreted as an ‘A’, and ‘l’, and a ‘t’).

 `on_test_end`(*\*args*)<a href="index.html#autopilot.input.Keyboard.on_test_end" class="headerlink" title="Permalink to this definition"></a>  

 `on_test_start`(*\*args*)<a href="index.html#autopilot.input.Keyboard.on_test_start" class="headerlink" title="Permalink to this definition"></a>  

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
