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
-   [Apps](../../../index.html) ›
-   [HTML5](../../index.html) ›
-   [SDK 15.04.3](../index.html) ›
-   [RuntimeApi](../RuntimeApi/index.html) ›

<!-- -->

-   RuntimeApi

RuntimeApi
==========

The RuntimeApi object

<span id="RuntimeApi"></span>
**`RuntimeApi`**( `  ` )
##### Example

``` code
  var api = external.getUnityObject('1.0');
      api.RuntimeApi.getApplication(function(application) {
        console.log('Application name: ' + application.getApplicationName());
      });
```

-   Methods
-   Properties

<span id="getApplication"></span>
**`getApplication`**( `callback ` )
Creates an Application object.

**Parameters:**
-   `callback` **&lt;Function (Application)&gt;**

<span id="getApplicationName"></span>
String **`getApplicationName`**( `  ` )
Retrieves the application name.

**Returns:** &lt;String&gt;
application name

<span id="getApplicationWritableLocation"></span>
String **`getApplicationWritableLocation`**( `  ` )
Retrieves the fileystem location where the application is allowed to write its data in.

**Returns:** &lt;String&gt;
application writable location path

<span id="getInputMethodName"></span>
String **`getInputMethodName`**( `  ` )
Retrieves the current input method's name. The name varies depending on the platform e.g. maliit can be part of the name for a maliit based Virtual Keyboard (possibly mangled with e.g. 'phablet'), when a keyboard is there the name can be empty, ...

**Returns:** &lt;String&gt;
current input method name

<span id="getPlatformInfos"></span>
Object **`getPlatformInfos`**( `  ` )
Retrieves current platform information.

**Returns:** &lt;Object&gt;
platform information as a dictionary with the following keys:

-   name: the platform name

<span id="getScreenOrientation"></span>
ScreenOrientation **`getScreenOrientation`**( `  ` )
Retrieves the current screen orientation.

**Returns:** &lt;ScreenOrientation&gt;
current screen orientation.

<span id="onAboutToQuit"></span>
**`onAboutToQuit`**( `callback ` )
Sets up a callback that is to be called when the application is about to quit.

**Parameters:**
-   `callback` **&lt;Function()&gt;**

    Function to be called when the application is about to quit.

<span id="onActivated"></span>
**`onActivated`**( `callback ` )
Sets up a callback that is to be called when the application has been activated (from background).

**Parameters:**
-   `callback` **&lt;Function()&gt;**

    Function to be called when the application has been activated.

<span id="onApplicationNameChanged"></span>
**`onApplicationNameChanged`**( `callback ` )
Sets up a callback that is to be called when the application's name changed.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    Function to be called when the application's name has changed.

<span id="onDeactivated"></span>
**`onDeactivated`**( `callback ` )
Sets up a callback that is to be called when the application has been deactivated (background).

**Parameters:**
-   `callback` **&lt;Function()&gt;**

    Function to be called when the application has been deactivated.

<span id="onInputMethodVisibilityChanged"></span>
**`onInputMethodVisibilityChanged`**( `callback ` )
Sets up a callback that is to be called when the On Screen Keyboard visibility has changed.

**Parameters:**
-   `callback` **&lt;Function(Bool)&gt;**

    Function to be called when the On Screen Keyboard visibility has changed (received the visibility as an arg).

<span id="onScreenOrientationChanged"></span>
**`onScreenOrientationChanged`**( `callback ` )
Sets up a callback that is to be called when the application's screen has changed its orientation.

**Parameters:**
-   `callback` **&lt;Function(ScreenOrientation)&gt;**

    Function to be called when the application's screen orientation has changed.

<span id="setupUriHandler"></span>
**`setupUriHandler`**( `callback ` )
Sets up a URI handler. The application can be sent URIs to open.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    Function to be called with the current list of uris to open

<span id="ScreenOrientation"></span>
`ScreenOrientation` &lt;**Object**&gt; *(static)*
Enumeration of the available types of ScreenOrientation.

Values:

``` code
Landscape: The application screen is in landscape mode
                
                InvertedLandscape: The application screen is in inverted landscape mode
                
                Portrait: The application screen is in portrait mode
                
                InvertedPortrait: The application screen is in inverted portrait mode
                
                Unknown: The application screen is in an unknown mode
```

##### Example

``` code
var api = external.getUnityObject('1.0');
                var orientation = api.RuntimeApi.ScreenOrientation;
                // use orientation.Landscape or orientation.Portrait
```

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
