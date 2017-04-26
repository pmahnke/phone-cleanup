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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.1</a> ›
-   <a href="../QtSensors/index.html" class="sub-nav-item">QtSensors</a> ›

<!-- -->

-   Qt Sensors - Grue Sensor Example

Qt Sensors - Grue Sensor Example
================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/bed61495-945a-42a1-9ec7-73eb44c3da38-api/apps/qml/sdk-15.04.1/qtsensors-grue-example/images/qtsensors-examples-grue.png)

The Qt Sensors - Grue sensor example demonstrates all the steps from creating a new sensor to using it.

The sensor definition is placed in a library where client apps can access it. The actual implementation lives in a plugin.

-   [Grue Sensor Definition](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtSensors.grue/#grue-sensor-definition)
-   [Grue Sensor Implementation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtSensors.grue/#grue-sensor-implementation)

The sensor can now be used by a C++ application, even if the application does not have access to the definition.

-   [Grue Sensor Console Application](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtSensors.grue/#grue-sensor-console-application)

To make the sensor available to a QML application an import must be created.

-   [Grue Sensor QML Import](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtSensors.grue/#grue-sensor-qml-import)
-   [Grue Sensor QML Application](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtSensors.grue/#grue-sensor-qml-application)

<span id="grue-sensor-definition"></span>
Grue Sensor Definition
----------------------

The Grue sensor is defined in a library so that applications can use it. The source code is available in the `grue/lib` subdirectory.

First up is the sensor type. This is the interface for sensors that report on your likelihood of being eaten by a Grue. Such sensors are very important to adventurers, particularly if they are going into dark places as this is where Grues live.

The interface is a simple one. It provides only 1 piece of information, your chance of being eaten. For the details on how this is property should be interpreted please see the documentation in gruesensor.cpp.

This example was created using the make\_sensor.pl script which can be found in src/sensors. As such, it contains some generated code that defines the convenience classes GrueFilter and GrueSensor.

<span id="grue-sensor-implementation"></span>
Grue Sensor Implementation
--------------------------

The Grue sensor implementation lives in a plugin that is loaded by the Qt Sensors library. The source code is available in the `grue/plugin` subdirectory.

The Grue sensor needs a backend before it can be used. The backend provided is rather basic and it relies on some kind of light sensor to work but it gets the job done. If new hardware that can detect the actual presence of Grues becomes available a backend could be created that supports this hardware and applications using the Grue sensor would be able to use it without any changes.

There are a few mandatory parts to a backend. They are the start and stop methods and the setReading call. The start and stop methods are used to start and stop any underlying hardware. In the case of this backend they start and stop a light sensor. In the start method, the backend should be sure to call the sensorStopped() or sensorBusy() methods if it cannot start.

``` cpp
    lightSensor->setDataRate(sensor()->dataRate());
    lightSensor->start();
    // If the light sensor doesn't work we don't work either
    if (!lightSensor->isActive())
        sensorStopped();
    if (lightSensor->isBusy())
        sensorBusy();
```

The setReading method is needed so that the sensors library knows where the readings are coming from. This backend has a local copy of the reading so it passes a pointer to the function.

``` cpp
    // Register our reading instance
    setReading<GrueSensorReading>(&m_reading);
```

However it is also possible to pass null to the setReading method in which case the sensors library will create an instance and return a pointer.

``` cpp
// Create a reading instance for us to use
m_reading = setReading<GrueSensorReading>(0);
```

The Grue sensor backend also supplies some metadata.

The backend checks 2 things, how dark it is and how long you have been in the dark. It uses the readingChanged() signal to know when to check the light sensor's value. Once it is dark, it uses a timer to increase your chance of being eaten.

The Grue sensor backend is delivered as a plugin. The plugin has a factory object that registers the types available and does the actual instantiation of the backend.

<span id="grue-sensor-console-application"></span>
Grue Sensor Console Application
-------------------------------

The Grue sensor console application demonstrates use of the Grue sensor. The source code is available in the `grue/console_app` subdirectory.

This is a simple commandline application. It demonstrates how to use the generic access feature of Qt Sensors to avoid a link-time dependency on the Grue Sensor library.

<span id="grue-sensor-qml-import"></span>
Grue Sensor QML Import
----------------------

The Grue sensor QML import exports the GrueSensor class as a QML type. The source code is available in the `grue/import` subdirectory.

This creates the *Grue 1.0* import.

<span id="grue-sensor-qml-application"></span>
Grue Sensor QML Application
---------------------------

The Grue sensor QML application demonstrates the use of GrueSensor QML type.

The application consists of a single QML file and an image. It is built as an exucutable with C++ code that runs the QML, but it can also be launched directly using the `qmlscene` tool.

You should build the top-level 'grue' project before trying to run this example or it will not be able to find its dependencies.

``` cpp
qmlscene -I . grue.qml
```

Above, the `-I .` parameter adds the current directory as a module import path to locate the Grue QML module.

Files:

-   grue/Makefile.qml
-   grue/grue.qml
-   grue/lib/gruesensor.cpp
-   grue/lib/gruesensor.h
-   grue/lib/gruesensor\_p.h
-   grue/plugin/gruesensorimpl.cpp
-   grue/plugin/gruesensorimpl.h
-   grue/main.cpp
-   grue/grue.pro
-   grue/qml.pro
-   grue/qml.qrc
-   grue/console\_app/console\_app.pro
-   grue/import/import.pro
-   grue/import/qmldir
-   grue/lib/lib.pro
-   grue/plugin/plugin.pro

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
