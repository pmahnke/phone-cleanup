---
Title: autopilot.application.UpstartApplicationLauncher
---
        
UpstartApplicationLauncher
==========================

 *class* `autopilot.application.``UpstartApplicationLauncher`(*case\_addDetail=None*, *emulator\_base=None*, *dbus\_bus='session'*)<a href="#autopilot.application.UpstartApplicationLauncher" class="headerlink" title="Permalink to this definition"></a>  
A launcher class that launches applications with UpstartAppLaunch.A class that knows how to launch an application with a certain type of introspection enabled.

|             |                                                                                                                             |
|-------------|-----------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **case\_addDetail** – addDetail method to use.                                                                          
  -   **proxy\_base** – custom proxy base class to use, defaults to None                                                       
  -   **dbus\_bus** – dbus bus to use, if set to something other than the default (‘session’) the environment will be patched  |

 `launch`(*app\_id*, *app\_uris=\[\]*)<a href="#autopilot.application.UpstartApplicationLauncher.launch" class="headerlink" title="Permalink to this definition"></a>  
Launch an application with upstart.

This method launches an application via the `upstart-app-launch` library, on platforms that support it.

Usage is similar to NormalApplicationLauncher:

    from autopilot.application import UpstartApplicationLauncher
    launcher = UpstartApplicationLauncher()
    launcher.setUp()
    app_proxy = launcher.launch('gallery-app')

Parameters:

-   **app\_id** – name of the application to launch
-   **app\_uris** – list of separate application uris to launch

Raises RuntimeError:

 

If the specified application cannot be launched.

Returns:

proxy object for the launched package application

<!-- -->

 `autopilot.application.``get_application_launcher_wrapper`(*app\_path*)<a href="#autopilot.application.get_application_launcher_wrapper" class="headerlink" title="Permalink to this definition"></a>  
Return an instance of `ApplicationLauncher` that knows how to launch the application at ‘app\_path’.

