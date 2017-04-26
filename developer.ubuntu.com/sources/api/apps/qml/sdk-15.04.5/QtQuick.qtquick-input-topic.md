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
-   [QML](../../index.html) ›
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.5</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Important Concepts In Qt Quick - User Input

Important Concepts In Qt Quick - User Input
===========================================

<span class="subtitle"></span>
<span id="details"></span>
Being able to respond to user-input is a fundamental part of user-interface design. Depending on the use-case that an application solves, and the form-factor of the device that the application runs on, the best way to receive user-input may be different.

<span id="touch"></span>
Touch
-----

Allowing users to physically touch a screen to interact with an application is a popular user-interface paradigm on portable devices like smartphones and tablets.

Qt Quick was designed specifically with touch-driven user-interfaces in mind, and thus touch events are supported in various visual object types, from [Flickable](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.touchinteraction/#flickable) lists to the generic [MultiPointTouchArea](../QtQuick.MultiPointTouchArea/index.html) type, as well as in the [MouseArea](../QtQuick.MouseArea/index.html) type (which will be documented thoroughly in a proceeding section).

<span id="mouse"></span>
Mouse
-----

Mouse input is another important user input for user interfaces. Detecting and reacting to clicks and presses according to the mouse cursor position is a fundamental concept in user-interface design.

Qt Quick provides the [MouseArea](../QtQuick.MouseArea/index.html) visual object type which automatically receives mouse events (including clicks and wheel events) which allows developers to create custom user-interface objects to handle mouse input. Please see the documentation about [mouse events in Qt Quick](../QtQuick.qtquick-input-mouseevents/index.html) for more information on the topic.

<span id="keyboard-input-and-keyboard-focus"></span>
Keyboard Input and Keyboard Focus
---------------------------------

Supporting input from a keyboard is a vital component of the user interface of many applications.

Any visual item can receive keyboard input through the [Keys](../QtQuick.Keys/index.html) attached type. Additionally, the issue of *keyboard focus* arises when multiple items are required to receive key events, as these events must be passed to the correct item. See the documentation about [Keyboard focus in Qt Quick](../QtQuick.qtquick-input-focus/index.html) for more information on this topic.

Qt Quick also provides visual text items which automatically receive keyboard events and key-presses, and displays the appropriate text. See the documentation about [text input](../QtQuick.qtquick-input-textinput/index.html) for in-depth information on the topic.

<span id="device-motion-gestures"></span>
Device Motion Gestures
----------------------

Detecting device gestures with an accelerometer, or through camera-based gesture recognition, can allow users to interact with an application without requiring their full and undevided attention. It can also provide a more interactive and engaging experience.

Qt Quick itself does not offer first-class support for physical device motion gestures; however, the Qt Sensors module provides QML types with support for such gestures. See the Qt Sensors module documentation for more information on the topic.

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
