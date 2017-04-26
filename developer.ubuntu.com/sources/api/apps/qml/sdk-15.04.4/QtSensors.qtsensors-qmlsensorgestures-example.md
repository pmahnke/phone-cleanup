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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.4</a> ›
-   <a href="../QtSensors/index.html" class="sub-nav-item">QtSensors</a> ›

<!-- -->

-   Qt Sensors - SensorGesture QML Type example

Qt Sensors - SensorGesture QML Type example
===========================================

<span class="subtitle"></span>
<span id="details"></span> <span id="overview"></span>
Overview
--------

To write a QML application that will use the gesture plugin, following steps are needed:

Import the QtSensors 5.x module:

``` qml
import QtSensors 5.0
```

Add the [SensorGesture](../QtSensors.SensorGesture/index.html) QML type into your qml file.

``` qml
    SensorGesture {
        id: sensorGesture
        enabled: false
        onDetected: {
            if (gesture !== oldGesture)
                count = 0;
            valueText.text = gesture + " " + count;
            oldGesture = gesture;
            count++;
        }
        onEnabledChanged: {
            valueText.text = ""
        }
    }
```

Each [SensorGesture](../QtSensors.SensorGesture/index.html) QML type contains a property called gestures. This example uses an alias `gestureId` for this property.

``` qml
    property alias gestureId: sensorGesture.gestures
```

Then, the gesture or gestures to use can be specified using the alias:

``` qml
        onSelectedGestureChanged: {
            gesture.enabled = false;
            gesture.gestureId = gestureList.selectedGesture;
            ...
        }
```

A list of all available gestures is accessible through the `availableGestures` property:

``` qml
        ListView {
            id: gestureList
            model: gesture.availableGestures
            ...
        }
```

Files:

-   qmlsensorgestures/Button.qml
-   qmlsensorgestures/GestureList.qml
-   qmlsensorgestures/GestureView.qml
-   qmlsensorgestures/GesturesView.qml
-   qmlsensorgestures/Makefile.qml
-   qmlsensorgestures/qmlsensorgestures.qml
-   qmlsensorgestures/plugin/qcountergestureplugin.cpp
-   qmlsensorgestures/plugin/qcountergestureplugin.h
-   qmlsensorgestures/plugin/qcounterrecognizer.cpp
-   qmlsensorgestures/plugin/qcounterrecognizer.h
-   qmlsensorgestures/main.cpp
-   qmlsensorgestures/qml.pro
-   qmlsensorgestures/qml.qrc
-   qmlsensorgestures/qmlsensorgestures.pro
-   qmlsensorgestures/plugin/plugin.pro

**See also** Qt Sensors - ShakeIt QML Example and Qt Sensor Gestures.

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
