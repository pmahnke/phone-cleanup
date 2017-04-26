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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtSensors/index.html" class="sub-nav-item">QtSensors</a> ›

<!-- -->

-   Qt Sensors - ShakeIt QML Example

Qt Sensors - ShakeIt QML Example
================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/d6c7f990-80f1-44b1-a6f3-d6fd80ae537c-api/apps/qml/sdk-14.10/qtsensors-shakeit-example/images/shakeit.png)

<span id="shakeit-in-qml"></span>
### ShakeIt in QML

The sensor gesture example demonstrates the steps for creating a QML application that uses sensor gestures and the included shake sensor.

Writing a QML application that uses the Shake QML sensorgestures type requires the following steps:

Import the Sensors Declarative module.

``` qml
import QtSensors 5.0
```

Add a [SensorGesture](../QtSensors.SensorGesture/index.html) QML type.

``` qml
    SensorGesture {
```

In the [SensorGesture](../QtSensors.SensorGesture/index.html) type, specify which gesture to be used. Note that this can be a comma separated list. Here we are only interested in one gesture recognizer.

``` qml
        gestures : ["QtSensors.shake", "QtSensors.whip", "QtSensors.twist", "QtSensors.cover",
            "QtSensors.hover", "QtSensors.turnover", "QtSensors.pickup", "QtSensors.slam" , "QtSensors.doubletap"]
```

Use the 'enabled' property to start the sensor gesture.

``` qml
        enabled: true
```

Use the onDetected signal to do stuff.

``` qml
        onDetected:{
            console.debug(gesture)
            label.text = gesture
            if (gesture == "shake") {
                window.state == "rotated" ? window.state = "default" : window.state = "rotated"
                timer.start()
            }
            if (gesture == "whip") {
                window.state == "whipped" ? window.state = "default" : window.state = "whipped"
                timer.start()
            }
            if (gesture == "twistRight") {
                window.state == "twistedR" ? window.state = "default" : window.state = "twistedR"
                timer.start()
            }
            if (gesture == "twistLeft") {
                window.state == "twistedL" ? window.state = "default" : window.state = "twistedL"
                timer.start()
            }
            if (gesture == "cover") {
                window.state == "covered" ? window.state = "default" : window.state = "covered"
                timer.start()
            }
            if (gesture == "hover") {
                window.state == "hovered" ? window.state = "default" : window.state = "hovered"
                timer.start()
            }
            if (gesture == "turnover") {
                window.state = "default"
                loopy2a_mono.play();
                timer.start()
            }
            if (gesture == "pickup") {
                window.state = "default"
                phone.play()
                timer.start()
            }
            if (gesture == "slam") {
                window.state == "slammed" ? window.state = "default" : window.state = "slammed"
                timer.start()
            }
            if (gesture == "doubletap") {
                window.state == "doubletapped" ? window.state = "default" : window.state = "doubletapped"
                timer.start()
            }
        }
```

There are additional gestures to shake which are supported: whip, twistRight, hover, cover, turnover and pickup.

Files:

-   shakeit/shakeit.qml
-   shakeit/main.cpp
-   shakeit/shakeit.pro
-   shakeit/shakeit.qrc

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
