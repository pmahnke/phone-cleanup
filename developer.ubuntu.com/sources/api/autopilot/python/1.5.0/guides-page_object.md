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
-   <a href="../index.html" class="sub-nav-item">1.5.0</a> ›

<!-- -->

-   Page Object Pattern

Page Object Pattern
===================

Contents

-   <a href="index.html#page-object-pattern" id="id1" class="reference internal">Page Object Pattern</a>
    -   <a href="index.html#introducing-the-page-object-pattern" id="id2" class="reference internal">Introducing the Page Object Pattern</a>
        -   <a href="index.html#the-public-methods-represent-the-services-that-the-page-offers" id="id3" class="reference internal">1. The public methods represent the services that the page offers.</a>
        -   <a href="index.html#try-not-to-expose-the-internals-of-the-page" id="id4" class="reference internal">2. Try not to expose the internals of the page.</a>
        -   <a href="index.html#methods-return-other-pageobjects" id="id5" class="reference internal">3. Methods return other PageObjects</a>
        -   <a href="index.html#assertions-should-exist-only-in-tests" id="id6" class="reference internal">4. Assertions should exist only in tests</a>
        -   <a href="index.html#need-not-represent-an-entire-page" id="id7" class="reference internal">5. Need not represent an entire page</a>
        -   <a href="index.html#actions-which-produce-multiple-results-should-have-a-test-for-each-result" id="id8" class="reference internal">6. Actions which produce multiple results should have a test for each result</a>

<a href="index.html#id2" class="toc-backref">Introducing the Page Object Pattern</a><a href="index.html#introducing-the-page-object-pattern" class="headerlink" title="Permalink to this headline"></a>
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Automated testing of an application through the Graphical User Interface (GUI) is inherently fragile. These tests require regular review and attention during the development cycle. This is known as Interface Sensitivity (<a href="https://books.google.com/books?isbn=0132797461" class="reference external">“even minor changes to the interface can cause tests to fail”</a>). Utilizing the page-object pattern, alleviates some of the problems stemming from this fragility, allowing us to do automated user acceptance testing (UAT) in a sustainable manner.

The Page Object Pattern comes from the <a href="https://code.google.com/p/selenium/wiki/PageObjects" class="reference external">Selenium community</a> and is the best way to turn a flaky and unmaintainable user acceptance test into a stable and useful part of your release process. A page is what’s visible on the screen at a single moment. A user story consists of a user jumping from page to page until they achieve their goal. Thus pages are modeled as objects following these guidelines:

1.  The public methods represent the services that the page offers.
2.  Try not to expose the internals of the page.
3.  Methods return other PageObjects.
4.  Assertions should exist only in tests
5.  Objects need not represent the entire page.
6.  Actions which produce multiple results should have a test for each result

Lets take the page objects of the <a href="http://bazaar.launchpad.net/~ubuntu-clock-dev/ubuntu-clock-app/trunk/view/399/tests/autopilot/ubuntu_clock_app/emulators.py" class="reference external">Ubuntu Clock App</a> as an example, with some simplifications. This application is written in QML and Javascript using the <a href="http://developer.ubuntu.com/apps/sdk/" class="reference external">Ubuntu SDK</a>.

### <a href="index.html#id3" class="toc-backref">1. The public methods represent the services that the page offers.</a><a href="index.html#the-public-methods-represent-the-services-that-the-page-offers" class="headerlink" title="Permalink to this headline"></a>

This application has a stopwatch page that lets users measure elapsed time. It offers services to start, stop and reset the watch, so we start by defining the stop watch page object as follows:

    class Stopwatch(object):

        def start(self):
            raise NotImplementedError()

        def stop(self):
            raise NotImplementedError()

        def reset(self):
            raise NotImplementedError()

### <a href="index.html#id4" class="toc-backref">2. Try not to expose the internals of the page.</a><a href="index.html#try-not-to-expose-the-internals-of-the-page" class="headerlink" title="Permalink to this headline"></a>

The internals of the page are more likely to change than the services it offers. A stopwatch will keep the same three services we defined above even if the whole design changes. In this case, we reset the stop watch by clicking a button on the bottom-left of the window, but we hide that as an implementation detail behind the public methods. In Python, we can indicate that a method is for internal use only by adding a single leading underscore to its name. So, lets implement the reset\_stopwatch method:

    def reset(self):
        self._click_reset_button()

    def _click_reset_button(self):
        reset_button = self.wait_select_single(
            'ImageButton', objectName='resetButton')
        self.pointing_device.click_object(reset_button)

Now if the designers go crazy and decide that it’s better to reset the stop watch in a different way, we will have to make the change only in one place to keep all the tests working. Remember that this type of tests has Interface Sensitivity, that’s unavoidable; but we can reduce the impact of interface changes with proper encapsulation and turn these tests into a useful way to verify that a change in the GUI didn’t introduce any regressions.

<span id="page-object-guide-guideline-3"></span>
### <a href="index.html#id5" class="toc-backref">3. Methods return other PageObjects</a><a href="index.html#methods-return-other-pageobjects" class="headerlink" title="Permalink to this headline"></a>

An UAT checks a user story. It will involve the journey of the user through the system, so he will move from one page to another. Lets take a look at how a journey to reset the stop watch will look like:

    stopwatch = clock_page.open_stopwatch()
    stopwatch.start()
    stopwatch.reset()

In our sample application, the first page that the user will encounter is the Clock. One of the things the user can do from this page is to open the stopwatch page, so we model that as a service that the Clock page provides. Then return the new page object that will be visible to the user after completing that step.

    class Clock(object):

        ...

        def open_stopwatch(self):
            self._switch_to_tab('StopwatchTab')
            return self.wait_select_single(Stopwatch)

Now the return value of open\_stopwatch will make available to the caller all the available services that the stopwatch exposes to the user. Thus it can be chained as a user journey from one page to the other.

### <a href="index.html#id6" class="toc-backref">4. Assertions should exist only in tests</a><a href="index.html#assertions-should-exist-only-in-tests" class="headerlink" title="Permalink to this headline"></a>

A well written UAT consists of a sequence of steps or user actions and ends with one single assertion that verifies that the user achieved its goal. The page objects are the helpers for the user actions part of the test, so it’s better to leave the check for success out of them. With that in mind, a test for the reset of the stopwatch would look like this:

    def test_restart_button_must_restart_stopwatch_time(self):
        # Set up.
        stopwatch = self.clock_page.open_stopwatch()

        stopwatch.start()
        stopwatch.reset_stopwatch()

        # Check that the stopwatch has been reset.
        self.assertThat(
            stopwatch.get_time,
            Eventually(Equals('00:00.0')))

We have to add a new method to the stopwatch page object: get\_time. But it only returns the state of the GUI as the user sees it. We leave in the test method the assertion that checks it’s the expected value.

    class Stopwatch(object):

        ...

        def get_time(self):
            return self.wait_select_single(
                'Label', objectName='time').text

### <a href="index.html#id7" class="toc-backref">5. Need not represent an entire page</a><a href="index.html#need-not-represent-an-entire-page" class="headerlink" title="Permalink to this headline"></a>

The objects we are modeling here can just represent a part of the page. Then we build the entire page that the user is seeing by composition of page parts. This way we can reuse test code for parts of the GUI that are reused in the application or between different applications. As an example, take the \_switch\_to\_tab(‘StopwatchTab’) method that we are using to open the stopwatch page. The Clock application is using the Header component provided by the Ubuntu SDK, as all the other Ubuntu applications are doing too. So, the Ubuntu SDK also provides helpers to make it easier the user acceptance testing of the applications, and you will find an object like this:

    class Header(object):

        def switch_to_tab(tab_object_name):
            """Open a tab.

            :parameter tab_object_name: The QML objectName property of the tab.
            :return: The newly opened tab.
            :raise ToolkitException: If there is no tab with that object
                name.

            """
        ...

This object just represents the header of the page, and inside the object we define the services that the header provides to the users. If you dig into the full implementation of the Clock test class you will find that in order to open the stopwatch page we end up calling Header methods.

### <a href="index.html#id8" class="toc-backref">6. Actions which produce multiple results should have a test for each result</a><a href="index.html#actions-which-produce-multiple-results-should-have-a-test-for-each-result" class="headerlink" title="Permalink to this headline"></a>

According to the guideline <a href="index.html#page-object-guide-guideline-3" class="reference internal"><em>3. Methods return other PageObjects</em></a>, we are returning page objects every time that a user action opens the option for new actions to execute. Sometimes the same action has different results depending on the context or the values used for the action. For example, the Clock app has an Alarm page. In this page you can add new alarms, but if you try to add an alarm for sometime in the past, it will result in an error. So, we will have two different tests that will look something like this:

    def test_add_alarm_for_tomorrow_must_add_to_alarm_list(self):
        tomorrow = ...
        test_alarm_name = 'Test alarm for tomorrow'
        alarm_page = self.alarm_page.add_alarm(
            test_alarm_name, tomorrow)

        saved_alarms = alarm_page.get_saved_alarms()
        self.assertIn(
            (test_alarm_name, tomorrow),
            saved_alarms)

    def test_add_alarm_for_earlier_today_must_display_error(self):
        earlier_today = ...
        test_alarm_name = 'Test alarm for earlier_today'
        error_dialog = self.alarm_page.add_alarm_with_error(
            test_alarm_name, earlier_today)

        self.assertEqual(
            error_dialog.text,
            'Please select a time in the future.')

Take a look at the methods add\_alarm and add\_alarm\_with\_error. The first one returns the Alarm page again, where the user can continue his journey or finish the test checking the result. The second one returns the error dialog that’s expected when you try to add an alarm with the wrong values.

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
