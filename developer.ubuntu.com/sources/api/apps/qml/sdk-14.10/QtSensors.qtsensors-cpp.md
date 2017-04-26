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

-   Qt Sensors C++ Overview

Qt Sensors C++ Overview
=======================

<span class="subtitle"></span>
<span id="details"></span> <span id="sensor-types"></span>
Sensor Types
------------

On a device there can be many types of sensors. Not all of the types that the Qt Sensors API supports may be available. There may also be types available that are not defined in the Qt Sensors API. The types of sensors available on a device is found using the QSensor::sensorTypes() function.

For a list of built-in sensor types, see the Sensor Classes section below.

<span id="common-conventions"></span>
Common Conventions
------------------

Unless specified otherwise, Qt Sensors uses the [Right Hand Cartesian coordinate system](http://en.wikipedia.org/wiki/Cartesian_coordinate_system).

![](https://developer.ubuntu.com/static/devportal_uploaded/c1383120-449a-4544-ab2f-c9fc30a4fdd6-api/apps/qml/sdk-14.10/qtsensors-cpp/images/sensors-coordinates.jpg)

To allow for measurements in all 6 directions, negative values are used.

![](https://developer.ubuntu.com/static/devportal_uploaded/26d5ebf8-056f-43b7-9ed7-90d68cbccd3f-api/apps/qml/sdk-14.10/qtsensors-cpp/images/sensors-coordinates2.jpg)

Where rotation around an axis is used, the rotation shall be expressed as a Right Hand rotation.

![](https://developer.ubuntu.com/static/devportal_uploaded/3cfd91ef-26e3-4939-b0a5-49df077b1a73-api/apps/qml/sdk-14.10/qtsensors-cpp/images/sensors-coordinates3.jpg)

In general, sensor data is oriented relative to QPlatformScreen::nativeOrientation, that is to the top of the device when the device is held in its natural orientation (normally when the device logo appears the right side up). If values are to be displayed on the screen, the values may need to be transformed so that they match the user interface orientation. A sensor may define its data as being oriented to the UI. This will be noted in the documentation for the sensor.

![](https://developer.ubuntu.com/static/devportal_uploaded/dd0fa1fb-922c-4f2d-920a-a4a22c50c7f8-api/apps/qml/sdk-14.10/qtsensors-cpp/images/sensors-sides2.jpg)

<span id="using-a-sensor"></span>
Using a Sensor
--------------

The life cycle of a QSensor is typically:

-   Create an instance of QSensor or one of its sub-classes on the stack or heap.
-   Setup as required by the application.
-   Start receiving values.
-   Sensor data is used by the application.
-   Stop receiving values.

Here is an example of creating a sensor on the heap and on the stack.

``` cpp
// On the heap (deleted when this object is deleted)
QAccelerometer *sensor = new QAccelerometer(this);
// On the stack (deleted when the current scope ends)
QOrientationSensor orient_sensor;
```

<span id="accessing-sensor-data-in-a-generic-fashion"></span>
Accessing sensor data in a generic fashion
------------------------------------------

The preferred way to deal with sensor data is via the Reading Classes. However, sometimes this may not be possible. For example, you may be deploying an application to a device that has a new sensor type but no C++ header describing the reading class is available.

Thanks to Qt's property system you can still access the sensor data. You need to know 3 pieces of information in order to do this:

-   The sensor type.
-   The property name or index.
-   The property type or a comparable type.

For example, here is an example of how you can access a property of the accelerometer. This code does not require any compile-time links to QAccelerometer or QAccelerometerReading.

``` cpp
// start the sensor
QSensor sensor("QAccelerometer");
sensor.start();
// later
QSensorReading *reading = sensor.reading();
qreal x = reading->property("x").value<qreal>();
qreal y = reading->value(1).value<qreal>();
```

You can discover all of this information at runtime too. The [sensor\_explorer](https://developer.ubuntu.com/api/apps/qml/sdk-14.10/QtSensors.sensor_explorer/) example shows you information about available sensors.

<span id="front-end-back-end"></span>
Front end, back end
-------------------

The Qt Sensors API has a front end, for application developers to use and a back end, where device implementors write code to access their hardware. As an application developer you do not need to access the back end though it may be useful to understand how it works.

Commands from the application are delivered through QSensor and then down to the device plugin. Data comes back through the QSensorReading class.

![](https://developer.ubuntu.com/static/devportal_uploaded/446cd4bd-1972-44f3-bf8d-71b50d453701-api/apps/qml/sdk-14.10/qtsensors-cpp/images/sensors-overview.png)

More information about the back end can be found in Qt Sensors Backend.

<span id="main-classes"></span>
Main Classes
------------

The primary classes that make up the Qt Sensors API.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QSensor</p></td>
<td><p>Represents a single hardware sensor</p></td>
</tr>
<tr class="even">
<td><p>QSensorFilter</p></td>
<td><p>Efficient callback facility for asynchronous notifications of sensor changes</p></td>
</tr>
<tr class="odd">
<td><p>QSensorReading</p></td>
<td><p>Holds the readings from the sensor</p></td>
</tr>
</tbody>
</table>

<span id="reading-classes"></span>
Reading Classes
---------------

The best way to access sensor data is via one of these classes.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QAccelerometerReading</p></td>
<td><p>Reports on linear acceleration along the X, Y and Z axes</p></td>
</tr>
<tr class="even">
<td><p>QAltimeterReading</p></td>
<td><p>Holds readings from the altimeter sensor</p></td>
</tr>
<tr class="odd">
<td><p>QAmbientLightReading</p></td>
<td><p>Represents one reading from the ambient light sensor</p></td>
</tr>
<tr class="even">
<td><p>QAmbientTemperatureReading</p></td>
<td><p>Holds readings of the ambient temperature</p></td>
</tr>
<tr class="odd">
<td><p>QCompassReading</p></td>
<td><p>Represents one reading from a compass</p></td>
</tr>
<tr class="even">
<td><p>QGyroscopeReading</p></td>
<td><p>Represents one reading from the gyroscope sensor</p></td>
</tr>
<tr class="odd">
<td><p>QHolsterReading</p></td>
<td><p>Holds readings from the holster sensor</p></td>
</tr>
<tr class="even">
<td><p>QIRProximityReading</p></td>
<td><p>Holds readings from the IR proximity sensor</p></td>
</tr>
<tr class="odd">
<td><p>QLightReading</p></td>
<td><p>Represents one reading from the light sensor</p></td>
</tr>
<tr class="even">
<td><p>QMagnetometerReading</p></td>
<td><p>Represents one reading from the magnetometer</p></td>
</tr>
<tr class="odd">
<td><p>QOrientationReading</p></td>
<td><p>Represents one reading from the orientation sensor</p></td>
</tr>
<tr class="even">
<td><p>QPressureReading</p></td>
<td><p>Holds readings from the pressure sensor</p></td>
</tr>
<tr class="odd">
<td><p>QProximityReading</p></td>
<td><p>Represents one reading from the proximity sensor</p></td>
</tr>
<tr class="even">
<td><p>QRotationReading</p></td>
<td><p>Represents one reading from the rotation sensor</p></td>
</tr>
<tr class="odd">
<td><p>QTapReading</p></td>
<td><p>Represents one reading from the tap sensor</p></td>
</tr>
<tr class="even">
<td><p>QTiltReading</p></td>
<td><p>Holds readings from the tilt sensor</p></td>
</tr>
</tbody>
</table>

<span id="sensor-classes"></span>
Sensor Classes
--------------

These classes provide convenience wrappers that reduce the need for casting. Each of these classes represents a sensor type that the Qt Sensors API knows about. Note that additional types may be made available at run-time. See Sensor Types for more information.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QAccelerometer</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="even">
<td><p>QAltimeter</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="odd">
<td><p>QAmbientLightSensor</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="even">
<td><p>QAmbientTemperatureSensor</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="odd">
<td><p>QCompass</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="even">
<td><p>QGyroscope</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="odd">
<td><p>QHolsterSensor</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="even">
<td><p>QIRProximitySensor</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="odd">
<td><p>QLightSensor</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="even">
<td><p>QMagnetometer</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="odd">
<td><p>QOrientationSensor</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="even">
<td><p>QPressureSensor</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="odd">
<td><p>QProximitySensor</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="even">
<td><p>QRotationSensor</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="odd">
<td><p>QTapSensor</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
<tr class="even">
<td><p>QTiltSensor</p></td>
<td><p>Convenience wrapper around QSensor</p></td>
</tr>
</tbody>
</table>

<span id="filter-classes"></span>
Filter Classes
--------------

As with the sensor classes, these provide convenience wrappers that reduce the need for casting.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QAccelerometerFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="even">
<td><p>QAltimeterFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="odd">
<td><p>QAmbientLightFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="even">
<td><p>QAmbientTemperatureFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="odd">
<td><p>QCompassFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="even">
<td><p>QGyroscopeFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="odd">
<td><p>QHolsterFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="even">
<td><p>QIRProximityFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="odd">
<td><p>QLightFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="even">
<td><p>QMagnetometerFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="odd">
<td><p>QOrientationFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="even">
<td><p>QPressureFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="odd">
<td><p>QProximityFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="even">
<td><p>QRotationFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="odd">
<td><p>QTapFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
<tr class="even">
<td><p>QTiltFilter</p></td>
<td><p>Convenience wrapper around QSensorFilter</p></td>
</tr>
</tbody>
</table>

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
