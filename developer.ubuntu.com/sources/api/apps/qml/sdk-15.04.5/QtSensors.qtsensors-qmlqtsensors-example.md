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
-   <a href="../QtSensors/index.html" class="sub-nav-item">QtSensors</a> ›

<!-- -->

-   Qt Sensors - QML example

Qt Sensors - QML example
========================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/2e64085d-f4f4-46f4-94f1-3a549b649c41-api/apps/qml/sdk-15.04.5/qtsensors-qmlqtsensors-example/images/qmlqtsensors.png)

<span id="qt-sensors-in-qml"></span>
### Qt Sensors in QML

To write a QML application that will use the QML sensors types in the QtSensors 5 import you need to to the following steps:

Import the QtSensors 5.x declarative plugin:

``` qml
import QtSensors 5.0
```

Add the Sensor QML types into your qml file.

In this example we use the [TiltSensor](../QtSensors.TiltSensor/index.html):

``` qml
TiltSensor {
    id: tilt
    active: false
}
```

The Tilt-, AmbientLight- and the Proximity QML sensor types have the 'enabled' property in common. To start or stop the sensor set this property to true or false.

``` qml
tilt.active = (tiltStart.text === "Start");
```

Reading the data can be done for each sensor type like following:

[TiltSensor](../QtSensors.TiltSensor/index.html)

``` qml
text: "X Rotation: " + tilt.xRotation + "��"
text: "Y Rotation: " + tilt.yRotation +  "��"
```

[AmbientLightSensor](../QtSensors.AmbientLightSensor/index.html)

``` qml
onReadingChanged: {
    if (reading.lightLevel == AmbientLightSensor.Unknown)
        ambientlighttext.text = "Ambient light: Unknown";
    else if (reading.lightLevel == AmbientLightSensor.Dark)
        ambientlighttext.text = "Ambient light: Dark";
    else if (reading.lightLevel == AmbientLightSensor.Twilight)
        ambientlighttext.text = "Ambient light: Twilight";
    else if (reading.lightLevel == AmbientLightSensor.Light)
        ambientlighttext.text = "Ambient light: Light";
    else if (reading.lightLevel == AmbientLightSensor.Bright)
        ambientlighttext.text = "Ambient light: Bright";
    else if (reading.lightLevel == AmbientLightSensor.Sunny)
        ambientlighttext.text = "Ambient light: Sunny";
}
```

[ProximitySensor](../QtSensors.ProximitySensor/index.html)

``` qml
text: "Proximity: " +
      (proxi.active ? (proxi.reading.near ? "Near" : "Far") : "Unknown")
```

Files:

-   qmlqtsensors/qmlqtsensors.qml
-   qmlqtsensors/components/ApplicationWindow.qml
-   qmlqtsensors/components/Button.qml
-   qmlqtsensors/components/Divider.qml
-   qmlqtsensors/main.cpp
-   qmlqtsensors/qmlqtsensors.pro
-   qmlqtsensors/qmlqtsensors.qrc

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
