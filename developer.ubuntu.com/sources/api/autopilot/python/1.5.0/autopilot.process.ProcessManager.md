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
-   [autopilot.process](../autopilot.process/index.html) ›

<!-- -->

-   ProcessManager

ProcessManager
==============

 *class* `autopilot.process.``ProcessManager`<a href="index.html#ProcessManager" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager" class="headerlink" title="Permalink to this definition"></a>  
A simple process manager class.

The process manager is used to handle processes, windows and applications. This class should not be instantiated directly however. To get an instance of the keyboard class, call <a href="index.html#autopilot.process.ProcessManager.create" class="reference internal" title="autopilot.process.ProcessManager.create"><code class="xref py py-meth docutils literal">create</code></a> instead.

 `KNOWN_APPS` *= {'System Settings': {'process-name': 'unity-control-center', 'desktop-file': 'unity-control-center.desktop'}, 'Mahjongg': {'process-name': 'gnome-mahjongg', 'desktop-file': 'gnome-mahjongg.desktop'}, 'Text Editor': {'process-name': 'gedit', 'desktop-file': 'gedit.desktop'}, 'Terminal': {'process-name': 'gnome-terminal', 'desktop-file': 'gnome-terminal.desktop'}, 'Character Map': {'process-name': 'gucharmap', 'desktop-file': 'gucharmap.desktop'}, 'Remmina': {'process-name': 'remmina', 'desktop-file': 'remmina.desktop'}, 'Calculator': {'process-name': 'gnome-calculator', 'desktop-file': 'gcalctool.desktop'}}*<a href="index.html#autopilot.process.ProcessManager.KNOWN_APPS" class="headerlink" title="Permalink to this definition"></a>  

 *static* `create`(*preferred\_backend=''*)<a href="index.html#ProcessManager.create" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.create" class="headerlink" title="Permalink to this definition"></a>  
Get an instance of the <a href="index.html#autopilot.process.ProcessManager" class="reference internal" title="autopilot.process.ProcessManager"><code class="xref py py-class docutils literal">ProcessManager</code></a> class.

For more infomration on picking specific backends, see <a href="../tutorial-advanced_autopilot/index.html#tut-picking-backends" class="reference internal"><em>Advanced Backend Picking</em></a>

|             |                                                                                                                    |
|-------------|--------------------------------------------------------------------------------------------------------------------|
| Parameters: | **preferred\_backend** –                                                                                           
  A string containing a hint as to which backend you would like. Possible backends are:                               
                                                                                                                      
  -   `BAMF` - Get process information using the BAMF Application                                                     
      Matching Framework.                                                                                             |
| Raises:     | RuntimeError if autopilot cannot instantate any of the possible backends.                                          |
| Raises:     | RuntimeError if the preferred\_backend is specified and is not one of the possible backends for this device class. |
| Raises:     | `BackendException` if the preferred\_backend is set, but that backend could not be instantiated.                   |

 *classmethod* `register_known_application`(*name*, *desktop\_file*, *process\_name*)<a href="index.html#ProcessManager.register_known_application" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.register_known_application" class="headerlink" title="Permalink to this definition"></a>  
Register an application with autopilot.

After calling this method, you may call <a href="index.html#autopilot.process.ProcessManager.start_app" class="reference internal" title="autopilot.process.ProcessManager.start_app"><code class="xref py py-meth docutils literal">start_app</code></a> or <a href="index.html#autopilot.process.ProcessManager.start_app_window" class="reference internal" title="autopilot.process.ProcessManager.start_app_window"><code class="xref py py-meth docutils literal">start_app_window</code></a> with the name parameter to start this application. You need only call this once within a test run - the application will remain registerred until the test run ends.

|             |                                                                                                                   |
|-------------|-------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **name** – The name to be used when launching the application.                                                
  -   **desktop\_file** – The filename (without path component) of the desktop file used to launch the application.  
  -   **process\_name** – The name of the executable process that gets run.                                          |
| Raises:     | **KeyError** if application has been registered already                                                           |

 *classmethod* `unregister_known_application`(*name*)<a href="index.html#ProcessManager.unregister_known_application" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.unregister_known_application" class="headerlink" title="Permalink to this definition"></a>  
Unregister an application with the known\_apps dictionary.

|             |                                                                |
|-------------|----------------------------------------------------------------|
| Parameters: | **name** – The name to be used when launching the application. |
| Raises:     | **KeyError** if the application has not been registered.       |

 `start_app`(*app\_name*, *files=\[\]*, *locale=None*)<a href="index.html#ProcessManager.start_app" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.start_app" class="headerlink" title="Permalink to this definition"></a>  
Start one of the known applications, and kill it on tear down.

Warning

This method will clear all instances of this application on tearDown, not just the one opened by this method! We recommend that you use the <a href="index.html#autopilot.process.ProcessManager.start_app_window" class="reference internal" title="autopilot.process.ProcessManager.start_app_window"><code class="xref py py-meth docutils literal">start_app_window</code></a> method instead, as it is generally safer.

|             |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|-------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **app\_name** – The application name. *This name must either already be registered as one of the built-in applications that are supported by autopilot, or must have been registered using* <a href="index.html#autopilot.process.ProcessManager.register_known_application" class="reference internal" title="autopilot.process.ProcessManager.register_known_application"><code class="xref py py-meth docutils literal">register_known_application</code></a> *beforehand.* 
  -   **files** – (Optional) A list of paths to open with the given application. *Not all applications support opening files in this way.*                                                                                                                                                                                                                                                                                                                                            
  -   **locale** – (Optional) The locale will to set when the application is launched. *If you want to launch an application without any localisation being applied, set this parameter to ‘C’.*                                                                                                                                                                                                                                                                                      |
| Returns:    | A <a href="../autopilot.process.Application/index.html#autopilot.process.Application" class="reference internal" title="autopilot.process.Application"><code class="xref py py-class docutils literal">Application</code></a> instance.                                                                                                                                                                                                                                            |

 `start_app_window`(*app\_name*, *files=\[\]*, *locale=None*)<a href="index.html#ProcessManager.start_app_window" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.start_app_window" class="headerlink" title="Permalink to this definition"></a>  
Open a single window for one of the known applications, and close it at the end of the test.

|             |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|-------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **app\_name** – The application name. *This name must either already be registered as one of the built-in applications that are supported by autopilot, or must have been registered with* <a href="index.html#autopilot.process.ProcessManager.register_known_application" class="reference internal" title="autopilot.process.ProcessManager.register_known_application"><code class="xref py py-meth docutils literal">register_known_application</code></a> *beforehand.* 
  -   **files** – (Optional) Should be a list of paths to open with the given application. *Not all applications support opening files in this way.*                                                                                                                                                                                                                                                                                                                                 
  -   **locale** – (Optional) The locale will to set when the application is launched. *If you want to launch an application without any localisation being applied, set this parameter to ‘C’.*                                                                                                                                                                                                                                                                                     |
| Raises:     | **AssertionError** if no window was opened, or more than one window was opened.                                                                                                                                                                                                                                                                                                                                                                                                   |
| Returns:    | A <a href="../autopilot.process.Window/index.html#autopilot.process.Window" class="reference internal" title="autopilot.process.Window"><code class="xref py py-class docutils literal">Window</code></a> instance.                                                                                                                                                                                                                                                               |

 `get_open_windows_by_application`(*app\_name*)<a href="index.html#ProcessManager.get_open_windows_by_application" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.get_open_windows_by_application" class="headerlink" title="Permalink to this definition"></a>  
Get a list of ~autopilot.process.Window\` instances for the given application name.

|             |                                                                                                                                                                                                                              |
|-------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **app\_name** – The name of one of the well-known applications.                                                                                                                                                              |
| Returns:    | A list of <a href="../autopilot.process.Window/index.html#autopilot.process.Window" class="reference internal" title="autopilot.process.Window"><code class="xref py py-class docutils literal">Window</code></a> instances. |

 `close_all_app`(*app\_name*)<a href="index.html#ProcessManager.close_all_app" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.close_all_app" class="headerlink" title="Permalink to this definition"></a>  

 `get_app_instances`(*app\_name*)<a href="index.html#ProcessManager.get_app_instances" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.get_app_instances" class="headerlink" title="Permalink to this definition"></a>  

 `app_is_running`(*app\_name*)<a href="index.html#ProcessManager.app_is_running" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.app_is_running" class="headerlink" title="Permalink to this definition"></a>  

 `get_running_applications`(*user\_visible\_only=True*)<a href="index.html#ProcessManager.get_running_applications" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.get_running_applications" class="headerlink" title="Permalink to this definition"></a>  
Get a list of the currently running applications.

If user\_visible\_only is True (the default), only applications visible to the user in the switcher will be returned.

 `get_running_applications_by_desktop_file`(*desktop\_file*)<a href="index.html#ProcessManager.get_running_applications_by_desktop_file" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.get_running_applications_by_desktop_file" class="headerlink" title="Permalink to this definition"></a>  
Return a list of applications with the desktop file *desktop\_file*.

This method will return an empty list if no applications are found with the specified desktop file.

 `get_open_windows`(*user\_visible\_only=True*)<a href="index.html#ProcessManager.get_open_windows" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.get_open_windows" class="headerlink" title="Permalink to this definition"></a>  
Get a list of currently open windows.

If *user\_visible\_only* is True (the default), only applications visible to the user in the switcher will be returned.

The result is sorted to be in stacking order.

 `wait_until_application_is_running`(*desktop\_file*, *timeout*)<a href="index.html#ProcessManager.wait_until_application_is_running" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.wait_until_application_is_running" class="headerlink" title="Permalink to this definition"></a>  
Wait until a given application is running.

|             |                                                                                                                                       |
|-------------|---------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **desktop\_file** (*string*) – The name of the application desktop file.                                                          
  -   **timeout** (*integer*) – The maximum time to wait, in seconds. *If set to something less than 0, this method will wait forever.*  |
| Returns:    | true once the application is found, or false if the application was not found until the timeout was reached.                          |

 `launch_application`(*desktop\_file*, *files=\[\]*, *wait=True*)<a href="index.html#ProcessManager.launch_application" class="reference internal"></a><a href="index.html#autopilot.process.ProcessManager.launch_application" class="headerlink" title="Permalink to this definition"></a>  
Launch an application by specifying a desktop file.

|             |                                                                                                        |
|-------------|--------------------------------------------------------------------------------------------------------|
| Parameters: | **files** (*List of strings*) – List of files to pass to the application. *Not all apps support this.* |

Note

If wait is True, this method will wait up to 10 seconds for the application to appear.

|          |                                             |
|----------|---------------------------------------------|
| Raises:  | **TypeError** on invalid *files* parameter. |
| Returns: | The Gobject process object.                 |

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
