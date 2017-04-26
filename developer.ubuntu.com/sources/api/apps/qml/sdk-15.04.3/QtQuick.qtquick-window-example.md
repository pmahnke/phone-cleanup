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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.3</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Examples - Window and Screen

Qt Quick Examples - Window and Screen
=====================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/689285d9-44f8-4386-a537-fdd6b5d90034-api/apps/qml/sdk-15.04.3/qtquick-window-example/images/qml-window-example.png)

*Window and Screen* shows how to:

-   create a window in QML
-   control its visibility
-   present a splash screen during application startup
-   access the properties of the [Screen](../QtQuick.Window.Screen/index.html)

It also demonstrates how to package QML into resources and provide an icon to create a standalone QML desktop application.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="window-implementation"></span>
Window Implementation
---------------------

A splash screen can be created with the Qt.SplashScreen flag, and should be ApplicationModal to prevent interaction with the main window. If the splash window is also transparent, and showing a partially transparent image, then it will look like a shaped window.

``` qml
Window {
    id: splash
    color: "transparent"
    title: "Splash Window"
    modality: Qt.ApplicationModal
    flags: Qt.SplashScreen
    property int timeoutInterval: 2000
    signal timeout
```

In this example a Timer will automatically dismiss the splash screen, but in a real application you might want to connect to a signal from the application logic to hide the splash when initialization is complete.

``` qml
Timer {
    interval: timeoutInterval; running: true; repeat: false
    onTriggered: {
        visible = false
        splash.timeout()
    }
}
```

The main window in this example is the control window, with some buttons and checkboxes to control and provide feedback on the state of a secondary window. Each checkbox has a binding to the property whose state it is displaying, and also an onClicked handler to change the state. This is the typical pattern to create a two-way binding while avoiding binding loops.

``` qml
Shared.CheckBox {
    text: "Windowed"
    height: showButton.height
    width: col.cellWidth
    Binding on checked { value: testWindow.visibility === Window.Windowed }
    onClicked: testWindow.visibility = Window.Windowed
}
```

[Screen](../QtQuick.Window.Screen/index.html) has several properties which are generally useful to applications which need to rotate some content when the screen orientation changes, to position windows on the screen or to convert real units to logical pixel units. ScreenInfo.qml (which is displayed inline in window.qml, or can be run by itself with qmlscene) simply displays the property values, while the splash screen uses them to center the window on the screen.

``` qml
    x: (Screen.width - splashImage.width) / 2
    y: (Screen.height - splashImage.height) / 2
```

If a [Window](../QtQuick.Window.Window/index.html) is nested inside an [Item](../QtQuick.Item/index.html) or another Window, the inner window becomes *transient for* the outer one (see [Window](../QtQuick.Window.Window/index.html) for more explanation). But if you want to create multiple top-level windows as unrelated peers, you can create them inside a non-visual QtObject root item, as this example does.

Files:

-   window/ScreenInfo.qml
-   window/Splash.qml
-   window/window.qml
-   window/resources/icon.svg
-   window/main.cpp
-   window/window.pro
-   window/window.qrc

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
