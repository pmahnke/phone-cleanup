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
-   [SDK 15.04.6](../index.html) ›
-   [QtSensors](../QtSensors/index.html) ›

<!-- -->

-   SensorGesture

SensorGesture
=============

<span class="subtitle"></span>
Provides notifications when sensor-based gestures are detected. More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | import QtSensors 5.0 |
| Since:            | QtSensors 5.0        |

<span id="properties"></span>
Properties
----------

-   ****[availableGestures](index.html#availableGestures-prop)**** : stringlist
-   ****[enabled](index.html#enabled-prop)**** : bool
-   ****[gestures](index.html#gestures-prop)**** : stringlist
-   ****[invalidGestures](index.html#invalidGestures-prop)**** : stringlist
-   ****[validGestures](index.html#validGestures-prop)**** : stringlist

<span id="signals"></span>
Signals
-------

-   ****[detected](index.html#detected-signal)****(string *gesture*)

<span id="details"></span>
Detailed Description
--------------------

This type provides notification when sensor gestures are triggered.

The following QML code creates a "shake" and "SecondCounter" [SensorGesture](index.html) QML type, and displays the detected gesture in a text type.

QtSensors.shake gesture is available with the Qt Sensors API, but the QtSensors.SecondCounter sensor gesture is provided as example code for the Qt Sensors - SensorGesture QML Type example

``` qml
Item {
   SensorGesture {
       id: sensorGesture
       enabled: false
       gestures : ["QtSensors.shake", "QtSensors.SecondCounter"]
       onDetected:{
           detectedText.text = gesture
       }
   }
   Text {
       id: detectedText
       x:5
       y:160
   }
}
```

Qt Sensor Gestures contains a list of currently supported sensor gestures and their descriptions.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableGestures-prop"></span><span class="name">availableGestures</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property can be used to determine all available gestures on the system.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property can be used to activate or deactivate the sensor gesture. Default value is false;

**See also** [SensorGesture::detected](index.html#detected-signal) and [detected](index.html#detected-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gestures-prop"></span><span class="name">gestures</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

Set this property to a list of the gestures that the application is interested in detecting. This property cannot be changed while the type is enabled.

The properties [validGestures](index.html#validGestures-prop) and [invalidGestures](index.html#invalidGestures-prop) will be set as appropriate immediately. To determine all available getures on the system please use the [availableGestures](index.html#availableGestures-prop) property.

**See also** QtSensorGestures Plugins.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="invalidGestures-prop"></span><span class="name">invalidGestures</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds the requested gestures that were not found on the system.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="validGestures-prop"></span><span class="name">validGestures</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds the requested gestures that were found on the system.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detected-signal"></span><span class="name">detected</span>(<span class="type">string</span> <em>gesture</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted whenever a gesture is detected. The gesture parameter contains the gesture that was detected.

The corresponding handler is `onDetected`.

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
