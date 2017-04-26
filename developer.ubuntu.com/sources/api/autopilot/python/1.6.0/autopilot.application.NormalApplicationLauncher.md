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
-   [autopilot.application](../autopilot.application/index.html) ›

<!-- -->

-   NormalApplicationLauncher

NormalApplicationLauncher
=========================

 *class* `autopilot.application.``NormalApplicationLauncher`(*case\_addDetail=None*, *emulator\_base=None*, *dbus\_bus='session'*)<a href="index.html#autopilot.application.NormalApplicationLauncher" class="headerlink" title="Permalink to this definition"></a>  
Fixture to manage launching an application.A class that knows how to launch an application with a certain type of introspection enabled.

|             |                                                                                                                             |
|-------------|-----------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **case\_addDetail** – addDetail method to use.                                                                          
  -   **proxy\_base** – custom proxy base class to use, defaults to None                                                       
  -   **dbus\_bus** – dbus bus to use, if set to something other than the default (‘session’) the environment will be patched  |

 `launch`(*application*, *arguments=\[\]*, *app\_type=None*, *launch\_dir=None*, *capture\_output=True*)<a href="index.html#autopilot.application.NormalApplicationLauncher.launch" class="headerlink" title="Permalink to this definition"></a>  
Launch an application and return a proxy object.

Use this method to launch an application and start testing it. The arguments passed in `arguments` are used as arguments to the application to launch. Additional keyword arguments are used to control the manner in which the application is launched.

This fixture is designed to be flexible enough to launch all supported types of applications. Autopilot can automatically determine how to enable introspection support for dynamically linked binary applications. For example, to launch a binary Gtk application, a test might start with:

    from autopilot.application import NormalApplicationLauncher
    launcher = NormalApplicationLauncher()
    launcher.setUp()
    app_proxy = launcher.launch('gedit')

For use within a testcase, use useFixture:

> from autopilot.application import NormalApplicationLauncher launcher = self.useFixture(NormalApplicationLauncher()) app\_proxy = launcher.launch(‘gedit’)

Applications can be given command line arguments by supplying an `arguments` argument to this method. For example, if we want to launch `gedit` with a certain document loaded, we might do this:

    app_proxy = launcher.launch(
        'gedit', arguments=['/tmp/test-document.txt'])

... a Qt5 Qml application is launched in a similar fashion:

    app_proxy = launcher.launch(
        'qmlscene', arguments=['my_scene.qml'])

If you wish to launch an application that is not a dynamically linked binary, you must specify the application type. For example, a Qt4 python application might be launched like this:

    app_proxy = launcher.launch(
        'my_qt_app.py', app_type='qt')

Similarly, a python/Gtk application is launched like so:

    app_proxy = launcher.launch(
        'my_gtk_app.py', app_type='gtk')

|             |                                                                                                                                                                                                                                                                        |
|-------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **application** –                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                          
      The application to launch. The application can be specified as:                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                          
      > -   A full, absolute path to an executable file. (`/usr/bin/gedit`)                                                                                                                                                                                               
      > -   A relative path to an executable file. (`./build/my_app`)                                                                                                                                                                                                     
      > -   An app name, which will be searched for in $PATH (`my_app`)                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                          
  -   **arguments** – If set, the list of arguments is passed to the launched app.                                                                                                                                                                                        
  -   **app\_type** – If set, provides a hint to autopilot as to which kind of introspection to enable. This is needed when the application you wish to launch is *not* a dynamically linked binary. Valid values are ‘gtk’ or ‘qt’. These strings are case insensitive.  
  -   **launch\_dir** – If set to a directory that exists the process will be launched from that directory.                                                                                                                                                               
  -   **capture\_output** – If set to True (the default), the process output will be captured and attached to the test as test detail.                                                                                                                                    |
| Returns:    | A proxy object that represents the application. Introspection data is retrievable via this object.                                                                                                                                                                     |

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
