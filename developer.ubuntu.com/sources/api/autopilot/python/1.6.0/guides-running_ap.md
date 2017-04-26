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

<!-- -->

-   Running Autopilot

Running Autopilot
=================

Autopilot test suites can be run with any python test runner (for example, the built-in testtools runner). However, several autopilot features are only available if you use the autopilot runner.

List Tests<a href="index.html#list-tests" class="headerlink" title="Permalink to this headline"></a>
----------------------------------------------------------------------------------------------------

Autopilot can list all tests found within a particular module:

    $ autopilot3 list <modulename>

where *&lt;modulename&gt;* is the base name of the module you want to look at. The module must either be in the current working directory, or be importable by python. For example, to list the tests inside autopilot itself, you can run:

    $ autopilot3 list autopilot
       autopilot.tests.test_ap_apps.GtkTests.test_can_launch_qt_app
       autopilot.tests.test_ap_apps.QtTests.test_can_launch_qt_app
       autopilot.tests.test_application_mixin.ApplicationSupportTests.test_can_create
       autopilot.tests.test_application_mixin.ApplicationSupportTests.test_launch_raises_ValueError_on_unknown_kwargs
       autopilot.tests.test_application_mixin.ApplicationSupportTests.test_launch_raises_ValueError_on_unknown_kwargs_with_known
       autopilot.tests.test_application_mixin.ApplicationSupportTests.test_launch_with_bad_types_raises_typeerror
       autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_can_register_new_application
       autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_can_unregister_application
       autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_registering_app_twice_raises_KeyError
       autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_unregistering_unknown_application_raises_KeyError
       ...

        81 total tests.

Some results have been omitted for clarity.

The list command takes only one option:

<span class="option">-ro</span>, <span class="option">--run-order</span>
 
Display tests in the order in which they will be run, rather than alphabetical order (which is the default).

Run Tests<a href="index.html#run-tests" class="headerlink" title="Permalink to this headline"></a>
--------------------------------------------------------------------------------------------------

Running autopilot tests is very similar to listing tests:

    $ autopilot3 run <modulename>

However, the run command has many more options to customize the run behavior:

<span class="option">-h</span>, <span class="option">--help</span>
show this help message and exit
<span class="option">-o OUTPUT</span>, <span class="option">--output OUTPUT</span>
 
Write test result report to file. Defaults to stdout. If given a directory instead of a file will write to a file in that directory named: &lt;hostname&gt;\_&lt;dd.mm.yyy\_HHMMSS&gt;.log
<span class="option">-f FORMAT</span>, <span class="option">--format FORMAT</span>
 
Specify desired output format. Default is “text”. Other option is ‘xml’ to produce junit xml format.
<span class="option">-r</span>, <span class="option">--record</span>
Record failing tests. Required ‘recordmydesktop’ app to be installed. Videos are stored in /tmp/autopilot.
-rd PATH, –record-directory PATH  
Directory to put recorded tests (only if -r) specified.

|                                                                       |                                                                          |
|-----------------------------------------------------------------------|--------------------------------------------------------------------------|
| <span class="option">-v</span>, <span class="option">--verbose</span> | If set, autopilot will output test log data to stderr during a test run. |

### Common use cases<a href="index.html#common-use-cases" class="headerlink" title="Permalink to this headline"></a>

1.  **Run autopilot and save the test log**:

        $ autopilot3 run -o . <modulename>

> Autopilot will create a text log file named &lt;hostname&gt;\_&lt;dd.mm.yyy\_HHMMSS&gt;.log with the contents of the test log.

1.  **Run autopilot and record failing tests**:

        $ autopilot3 run -r --rd . <modulename>

> Videos are recorded as *ogg-vorbis* files, with an .ogv extension. They will be named with the test id that failed. All videos will be placed in the directory specified by the `-rd` option - in this case the currect directory. If this option is omitted, videos will be placed in `/tmp/autopilot/`.

1.  **Save the test log as jUnitXml format**:

        $ autopilot3 run -o results.xml -f xml <modulename>

> The file ‘results.xml’ will be created when all the tests have completed, and will be in the jUnitXml file format. This is useful when running the autopilot tests within a jenkins environment.

<span id="launching-application-to-introspect"></span>
Launching an Application to Introspect<a href="index.html#launching-an-application-to-introspect" class="headerlink" title="Permalink to this headline"></a>
------------------------------------------------------------------------------------------------------------------------------------------------------------

In order to be able to introspect an application, it must first be launched with introspection enabled. Autopilot provides the **launch** command to enable this:

    $ autopilot3 launch <application> <app_parameters>

The *&lt;application&gt;* parameter could be the full path to the application, or the name of an application located somewhere on `$PATH`. *&lt;app\_parameter&gt;* is passed on to the application being launched.

A simple Gtk example to launch gedit:

    $ autopilot3 launch gedit

A Qt example which passes on parameters to the application being launched:

    $ autopilot3 launch qmlscene my_app.qml

Autopilot launch attempts to detect if you are launching either a Gtk or Qt application so that it can enable the correct libraries. If it is unable to determine this you will need to specify the type of application it is by using the -i argument. This allows “Gtk” or “Qt” frameworks to be specified when launching the application. The default value (“Auto”) will try to detect which interface to load automatically.

A typical error in this situation will be “Error: Could not determine introspection type to use for application”. In which case the -i option should be specified with the correct application framework type to fix the problem:

    $ autopilot3 launch -i Qt address-book-app

Once an application has launched with introspection enabled, it will be possible to launch autopilot vis and view the introspection tree, see: <a href="index.html#visualise-introspection-tree" class="reference internal"><em>Visualise Introspection Tree</em></a>.

<span id="id1"></span>
Visualise Introspection Tree<a href="index.html#visualise-introspection-tree" class="headerlink" title="Permalink to this headline"></a>
----------------------------------------------------------------------------------------------------------------------------------------

A very common thing to want to do while writing autopilot tests is see the structure of the application being tested. To support this, autopilot includes a simple application to help visualize the introspection tree. To start it, make sure the application you wish to test is running (see: <a href="index.html#launching-application-to-introspect" class="reference internal"><em>Launching an Application to Introspect</em></a>), and then run:

    $ autopilot3 vis

The result should be a window similar to below:

![../../\_images/ap\_vis\_front\_page.png](https://developer.ubuntu.com/api/autopilot/python/_images/ap_vis_front_page.png)
Selecting a connection from the drop-down box allows you to inspect different autopilot-supporting applications. If Unity is running, the Unity connection should always be present. If other applications have been started with the autopilot support enabled, they should appear in this list as well. Once a connection is selected, the introspection tree is rendered in the left-hand pane, and the details of each object appear in the right-hand pane.

![../../\_images/ap\_vis\_object.png](https://developer.ubuntu.com/api/autopilot/python/_images/ap_vis_object.png)
Autopilot vis also has the ability to search the object tree for nodes that match a given name (such as “LauncherController”, for example), and draw a transparent overlay over a widget if it contains position information. These tools, when combined can make finding certain parts of an application introspection tree much easier.

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
