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

-   Qt Sensors - Explorer QML Example

Qt Sensors - Explorer QML Example
=================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/4042b859-df17-45dc-b7b9-437f859f785e-api/apps/qml/sdk-15.04.4/qtsensors-sensor-explorer-example/images/qtsensors-examples-explorer.png)

This example is divided into two parts:

-   A [C++ plugin](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtSensors.sensor_explorer/#sensor-explorer-qml-import) that provides QML alternatives for `QSensorExplorer`, `QPropertyInfo` and `QSensorItem` C++ classes.
-   A [QML Application](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtSensors.sensor_explorer/#sensor-explorer-qml-application) that uses the QML types to read the sensor meta-data and present it.

This example is built as an executable with C++ code that runs the QML, but it can also be launched directly using the `qmlscene` tool. You should build the top-level *sensor\_explorer* project before trying to run this example or it will not be able to find its dependencies.

``` cpp
qmlscene -I . sensor_explorer.qml
```

Above, the -I . parameter adds the current directory as a module import path to locate the Explorer QML module.

<span id="sensor-explorer-qml-import"></span>
Sensor Explorer QML Import
--------------------------

The Sensor Explorer QML import defines the *Explorer* QML module, exporting `QSensorExplorer`, `QPropertyInfo` and `QSensorItem` C++ classes as QML types. The source code is available in the `sensor_explorer/import` subdirectory.

<span id="sensor-explorer-qml-application"></span>
Sensor Explorer QML Application
-------------------------------

To write a QML application that will use the QML types exposed by the Explorer module, following steps are needed:

Import the Explorer 1.0 declarative plugin:

``` qml
import Explorer 1.0
```

Create a SensorExplorer QML item:

``` qml
SensorExplorer {
    id: explorer
}
```

You can retrieve a list of all available sensors using `SensorExplorer.availableSensors`:

``` qml
model: explorer.availableSensors
```

The example uses the returned list as a model to populate a view of available sensors.

To retrieve the properties of a sensor, use `SensorItem.properties`:

``` qml
propertyList.model = explorer.selectedSensorItem.properties
```

The property list is used as a model for another view that displays the property names and values.

It is possible to edit the values of certain sensor properties. Selecting a writable property value will open an editor. `SensorExplorer` QML type allows you to pass a new value for a sensor property value as follows:

``` qml
explorer.selectedSensorItem.changePropertyValue(propertyList.selectedItem, loaderEditor.item.text);
```

Starting and stopping a sensor can be done by setting the `SensorItem.start` property:

``` qml
if (text === "Start") {
    explorer.selectedSensorItem.start = true;
    text = "Stop";
}
else {
    explorer.selectedSensorItem.start = false;
    text = "Start";
}
```

Files:

-   sensor\_explorer/Makefile.qml
-   sensor\_explorer/sensor\_explorer.qml
-   sensor\_explorer/import/explorer.cpp
-   sensor\_explorer/import/explorer.h
-   sensor\_explorer/import/propertyinfo.cpp
-   sensor\_explorer/import/propertyinfo.h
-   sensor\_explorer/import/sensoritem.cpp
-   sensor\_explorer/import/sensoritem.h
-   sensor\_explorer/main.cpp
-   sensor\_explorer/qml.pro
-   sensor\_explorer/qml.qrc
-   sensor\_explorer/sensor\_explorer.pro
-   sensor\_explorer/import/import.pro
-   sensor\_explorer/import/qmldir

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
