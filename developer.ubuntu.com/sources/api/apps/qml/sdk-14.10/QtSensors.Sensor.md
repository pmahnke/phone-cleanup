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
-   [SDK 14.10](../index.html) ›
-   [QtSensors](../QtSensors/index.html) ›

<!-- -->

-   Sensor

Sensor
======

<span class="subtitle"></span>
The Sensor element serves as a base type for sensors. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import QtSensors 5.0</code></td>
</tr>
<tr class="even">
<td>Since:</td>
<td>QtSensors 5.0</td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="../QtSensors.Accelerometer/index.html">Accelerometer</a>, <a href="../QtSensors.Altimeter/index.html">Altimeter</a>, <a href="../QtSensors.AmbientLightSensor/index.html">AmbientLightSensor</a>, <a href="../QtSensors.AmbientTemperatureSensor/index.html">AmbientTemperatureSensor</a>, <a href="../QtSensors.Compass/index.html">Compass</a>, <a href="../QtSensors.Gyroscope/index.html">Gyroscope</a>, <a href="../QtSensors.HolsterSensor/index.html">HolsterSensor</a>, <a href="../QtSensors.IRProximitySensor/index.html">IRProximitySensor</a>, <a href="../QtSensors.LightSensor/index.html">LightSensor</a>, <a href="../QtSensors.Magnetometer/index.html">Magnetometer</a>, <a href="../QtSensors.OrientationSensor/index.html">OrientationSensor</a>, <a href="../QtSensors.PressureSensor/index.html">PressureSensor</a>, <a href="../QtSensors.ProximitySensor/index.html">ProximitySensor</a>, <a href="../QtSensors.RotationSensor/index.html">RotationSensor</a>, <a href="../QtSensors.TapSensor/index.html">TapSensor</a>, and <a href="../QtSensors.TiltSensor/index.html">TiltSensor</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[active](index.html#active-prop)**** : bool
-   ****[alwaysOn](index.html#alwaysOn-prop)**** : bool
-   ****[availableDataRates](index.html#availableDataRates-prop)**** : list&lt;Range&gt;
-   ****[axesOrientationMode](index.html#axesOrientationMode-prop)**** : Sensor::AxesOrientationMode
-   ****[bufferSize](index.html#bufferSize-prop)**** : int
-   ****[busy](index.html#busy-prop)**** : bool
-   ****[connectedToBackend](index.html#connectedToBackend-prop)**** : bool
-   ****[currentOrientation](index.html#currentOrientation-prop)**** : int
-   ****[dataRate](index.html#dataRate-prop)**** : int
-   ****[description](index.html#description-prop)**** : string
-   ****[efficientBufferSize](index.html#efficientBufferSize-prop)**** : int
-   ****[error](index.html#error-prop)**** : int
-   ****[identifier](index.html#identifier-prop)**** : string
-   ****[maxBufferSize](index.html#maxBufferSize-prop)**** : int
-   ****[outputRange](index.html#outputRange-prop)**** : int
-   ****[outputRanges](index.html#outputRanges-prop)**** : list&lt;OutputRange&gt;
-   ****[reading](index.html#reading-prop)**** : SensorReading
-   ****[skipDuplicates](index.html#skipDuplicates-prop)**** : bool
-   ****[type](index.html#type-prop)**** : string
-   ****[userOrientation](index.html#userOrientation-prop)**** : int

<span id="methods"></span>
Methods
-------

-   bool ****[start](index.html#start-method)****()
-   bool ****[stop](index.html#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

The Sensor element serves as a base type for sensors.

This element wraps the QSensor class. Please see the documentation for QSensor for details.

This element cannot be directly created. Please use one of the sub-classes instead.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-prop"></span><span class="name">active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds a value to indicate if the sensor is active.

Please see QSensor::active for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alwaysOn-prop"></span><span class="name">alwaysOn</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds a value to indicate if the sensor should remain running when the screen is off.

Please see QSensor::alwaysOn for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableDataRates-prop"></span><span class="name">availableDataRates</span> : <span class="type">list</span>&lt;<span class="type">Range</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the data rates that the sensor supports.

Please see QSensor::availableDataRates for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="axesOrientationMode-prop"></span><span class="name">axesOrientationMode</span> : <span class="type">Sensor::AxesOrientationMode</span></p></td>
</tr>
</tbody>
</table>

This property holds the mode that affects how the screen orientation changes reading values.

Please see QSensor::axesOrientationMode for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bufferSize-prop"></span><span class="name">bufferSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the size of the buffer.

Please see QSensor::bufferSize for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="busy-prop"></span><span class="name">busy</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds a value to indicate if the sensor is busy.

Please see QSensor::busy for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="connectedToBackend-prop"></span><span class="name">connectedToBackend</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds a value indicating if the sensor has connected to a backend.

Please see QSensor::connectedToBackend for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentOrientation-prop"></span><span class="name">currentOrientation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the current orientation that is used for rotating the reading values.

Please see QSensor::currentOrientation for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dataRate-prop"></span><span class="name">dataRate</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the data rate that the sensor should be run at.

Please see QSensor::dataRate for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="description-prop"></span><span class="name">description</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds a descriptive string for the sensor.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="efficientBufferSize-prop"></span><span class="name">efficientBufferSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property holds the most efficient buffer size.

Please see QSensor::efficientBufferSize for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the last error code set on the sensor.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="identifier-prop"></span><span class="name">identifier</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the backend identifier for the sensor.

Please see QSensor::identifier for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maxBufferSize-prop"></span><span class="name">maxBufferSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum buffer size.

Please see QSensor::maxBufferSize for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="outputRange-prop"></span><span class="name">outputRange</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the output range in use by the sensor.

Please see QSensor::outputRange for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="outputRanges-prop"></span><span class="name">outputRanges</span> : <span class="type">list</span>&lt;<span class="type">OutputRange</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of output ranges the sensor supports.

Please see QSensor::outputRanges for information about this property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reading-prop"></span><span class="name">reading</span> : <span class="type"><a href="../QtSensors.SensorReading/index.html">SensorReading</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the reading class.

Please see QSensor::reading for information about this property.

**See also** QML Reading types.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="skipDuplicates-prop"></span><span class="name">skipDuplicates</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether duplicate reading values should be omitted.

Please see QSensor::skipDuplicates for information about this property.

This QML property was introduced in QtSensors 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="type-prop"></span><span class="name">type</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the type of the sensor.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="userOrientation-prop"></span><span class="name">userOrientation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the angle used for rotating the reading values in the UserOrientation mode.

Please see QSensor::userOrientation for information about this property.

This QML property was introduced in QtSensors 5.1.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="type">bool</span> <span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Start retrieving values from the sensor. Returns true if the sensor was started, false otherwise.

Please see QSensor::start() for information.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="type">bool</span> <span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stop retrieving values from the sensor.

Please see QSensor::stop() for information.

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
