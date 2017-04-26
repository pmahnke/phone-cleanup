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

-   Contribute

Contribute
==========

Contents

-   <a href="index.html#contribute" id="id1" class="reference internal">Contribute</a>
    -   <a href="index.html#autopilot-contributing" id="id2" class="reference internal">Autopilot: Contributing</a>
        -   <a href="index.html#q-how-can-i-contribute-to-autopilot" id="id3" class="reference internal">Q. How can I contribute to autopilot?</a>
        -   <a href="index.html#q-where-can-i-get-help-support" id="id4" class="reference internal">Q. Where can I get help / support?</a>
        -   <a href="index.html#q-how-do-i-download-the-code" id="id5" class="reference internal">Q. How do I download the code?</a>
        -   <a href="index.html#q-how-do-i-submit-the-code-for-a-merge-proposal" id="id6" class="reference internal">Q. How do I submit the code for a merge proposal?</a>
        -   <a href="index.html#q-how-do-i-list-or-run-the-tests-for-the-autopilot-source-code" id="id7" class="reference internal">Q. How do I list or run the tests for the autopilot source code?</a>
        -   <a href="index.html#q-which-version-of-python-can-autopilot-use" id="id8" class="reference internal">Q. Which version of Python can Autopilot use?</a>

<a href="index.html#id2" class="toc-backref">Autopilot: Contributing</a><a href="index.html#autopilot-contributing" class="headerlink" title="Permalink to this headline"></a>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### <a href="index.html#id3" class="toc-backref">Q. How can I contribute to autopilot?</a><a href="index.html#q-how-can-i-contribute-to-autopilot" class="headerlink" title="Permalink to this headline"></a>

-   Documentation: We can always use more documentation.  
    -   if you don’t know how to submit a merge proposal on launchpad, you can write a <a href="https://bugs.launchpad.net/autopilot/+filebug" class="reference external">bug</a> with new documentation and someone will submit a merge proposal for you. They will give you credit for your documentation in the merge proposal.

-   New Features: Check out our existing <a href="https://blueprints.launchpad.net/autopilot" class="reference external">Blueprints</a> or create some yourself... Then code!

-   Test and Fix: No project is perfect, log some <a href="https://bugs.launchpad.net/autopilot/+filebug" class="reference external">bugs</a> or <a href="https://bugs.launchpad.net/autopilot" class="reference external">fix some bugs</a>.

### <a href="index.html#id4" class="toc-backref">Q. Where can I get help / support?</a><a href="index.html#q-where-can-i-get-help-support" class="headerlink" title="Permalink to this headline"></a>

The developers hang out in the \#ubuntu-autopilot IRC channel on irc.freenode.net.

### <a href="index.html#id5" class="toc-backref">Q. How do I download the code?</a><a href="index.html#q-how-do-i-download-the-code" class="headerlink" title="Permalink to this headline"></a>

Autopilot is using Launchpad and Bazaar for source code hosting. If you’re new to Bazaar, or distributed version control in general, take a look at the <a href="http://doc.bazaar.canonical.com/bzr.dev/en/mini-tutorial/index.html" class="reference external">Bazaar mini-tutorial first.</a>

Install bzr open a terminal and type:

    $ sudo apt-get install bzr

Download the code:

    $ bzr branch lp:autopilot

This will create an autopilot directory and place the latest code there. You can also view the autopilot code <a href="https://launchpad.net/autopilot" class="reference external">on the web</a>.

### <a href="index.html#id6" class="toc-backref">Q. How do I submit the code for a merge proposal?</a><a href="index.html#q-how-do-i-submit-the-code-for-a-merge-proposal" class="headerlink" title="Permalink to this headline"></a>

After making the desired changes to the code or documentation and making sure the tests still run type:

    $ bzr commit

Write a quick one line description of the bug that was fixed or the documentation that was written.

Signup for a <a href="https://help.launchpad.net/YourAccount/NewAccount" class="reference external">launchpad account</a>, if you don’t have one. Then using your launchpad id type:

    $ bzr push lp:~<launchpad-id>/autopilot/<text about merge here>

Example:

    $ bzr push lp:~chris.gagnon/autopilot/bug-fix-lp234567

All new features should have unit and/or functional test to make sure someone doesn’t remove or break your new code with a future commit.

<span id="listing-source-tests"></span>
### <a href="index.html#id7" class="toc-backref">Q. How do I list or run the tests for the autopilot source code?</a><a href="index.html#q-how-do-i-list-or-run-the-tests-for-the-autopilot-source-code" class="headerlink" title="Permalink to this headline"></a>

Running autopilot from the source code root directory (the directory containing the autopilot/ bin/ docs/ debian/ etc. directories) will use the local copy and not the system installed version.

An example from branching to running:

    $ bzr branch lp:autopilot ~/src/autopilot/trunk
    $ cd ~/src/autopilot/trunk
    $ python3 -m autopilot.run list autopilot.tests

    Loading tests from: /home/example/src/autopilot/trunk

    autopilot.tests.functional.test_ap_apps.ApplicationLaunchTests.test_creating_app_for_non_running_app_fails
    autopilot.tests.functional.test_ap_apps.ApplicationLaunchTests.test_creating_app_proxy_for_running_app_not_on_dbus_fails

    # .. snip ..

    autopilot.tests.unit.test_version_utility_fns.VersionFnTests.test_package_version_returns_none_when_running_from_source

    255 total tests.

Note

The ‘Loading tests from:’ or ‘Running tests from:’ line will inform you where autopilot is loading the tests from.

To run a specific suite or a single test in a suite, be more specific with the tests path.

For example, running all unit tests:

    $ python3 -m autopilot.run run autopilot.tests.unit

For example, running just the ‘InputStackKeyboardTypingTests’ suite:

    $ python3 -m autopilot.run run autopilot.tests.functional.test_input_stack.InputStackKeyboardTypingTests

Or running a single test in the ‘test\_version\_utility\_fns’ suite:

    $ python3 -m autopilot.run run autopilot.tests.unit.test_version_utility_fns.VersionFnTests.test_package_version_returns_none_when_running_from_source

### <a href="index.html#id8" class="toc-backref">Q. Which version of Python can Autopilot use?</a><a href="index.html#q-which-version-of-python-can-autopilot-use" class="headerlink" title="Permalink to this headline"></a>

Autopilot supports Python 3.4.

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
