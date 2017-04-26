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
-   [SDK 15.04.3](../index.html) ›
-   [QtMultimedia](../QtMultimedia/index.html) ›

<!-- -->

-   QtMultimedia

QtMultimedia
============

<span class="subtitle"></span>
Provides a global object with useful functions from Qt Multimedia. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |
| Since:            | QtMultimedia 5.4        |

<span id="properties"></span>
Properties
----------

-   ****[availableCameras](index.html#availableCameras-prop)**** : list&lt;object&gt;
-   ****[defaultCamera](index.html#defaultCamera-prop)**** : object

<span id="details"></span>
Detailed Description
--------------------

The `QtMultimedia` object is a global object with utility functions and properties.

It is not instantiable; to use it, call the members of the global `QtMultimedia` object directly. For example:

``` qml
import QtQuick 2.0
import QtMultimedia 5.4
Camera {
    deviceId: QtMultimedia.defaultCamera.deviceId
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableCameras-prop"></span><span class="qmlreadonly">read-only</span><span class="name">availableCameras</span> : <span class="type">list</span>&lt;<span class="type">object</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property provides information about the cameras available on the system.

Each object in the list has the following properties:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code>deviceId</code></td>
<td>This read-only property holds the unique identifier of the camera.
<p>You can choose which device to use with a <a href="../QtMultimedia.qml-multimedia/index.html#camera">Camera</a> object by setting its <a href="../QtMultimedia.Camera/index.html#deviceId-prop">deviceId</a> property to this value.</p></td>
</tr>
<tr class="even">
<td><code>displayName</code></td>
<td>This read-only property holds the human-readable name of the camera. You can use this property to display the name of the camera in a user interface.</td>
</tr>
<tr class="odd">
<td><code>position</code></td>
<td>This read-only property holds the physical position of the camera on the hardware system. Please see <a href="../QtMultimedia.Camera/index.html#position-prop">Camera.position</a> for more information.</td>
</tr>
<tr class="even">
<td><code>orientation</code></td>
<td>This read-only property holds the physical orientation of the camera sensor. Please see <a href="../QtMultimedia.Camera/index.html#orientation-prop">Camera.orientation</a> for more information.</td>
</tr>
</tbody>
</table>

**Note:** This property is static; it is not updated when cameras are added or removed from the system, like USB cameras on a desktop platform.

The following example shows how to display a list of available cameras. The user can change the active camera by selecting one of the items in the list.

``` qml
import QtQuick 2.0
import QtMultimedia 5.4
Item {
    Camera {
        id: camera
    }
    VideoOutput {
        anchors.fill: parent
        source: camera
    }
    ListView {
        anchors.fill: parent
        model: QtMultimedia.availableCameras
        delegate: Text {
            text: modelData.displayName
            MouseArea {
                anchors.fill: parent
                onClicked: camera.deviceId = modelData.deviceId
            }
        }
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultCamera-prop"></span><span class="qmlreadonly">read-only</span><span class="name">defaultCamera</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

The `defaultCamera` object provides information about the default camera on the system.

Its properties are `deviceId`, `displayName`, `position` and `orientation`. See [availableCameras](index.html#availableCameras-prop) for a description of each of them.

If there is no default camera, `defaultCamera.deviceId` will contain an empty string.

**Note:** This property is static; it is not updated if the system's default camera changes after the application started.

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
