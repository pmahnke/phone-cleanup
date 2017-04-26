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
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   SwipeArea

SwipeArea
=========

<span class="subtitle"></span>
An area which detects axis-aligned single-finger drag gestures. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.2</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[direction](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html#direction-prop)**** : enum
-   ****[distance](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html#distance-prop)**** : real
-   ****[dragging](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html#dragging-prop)**** : bool
-   ****[immediateRecognition](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html#immediateRecognition-prop)**** : bool
-   ****[pressed](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html#pressed-prop)**** : bool
-   ****[touchPosition](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html#touchPosition-prop)**** : point

<span id="details"></span>
Detailed Description
--------------------

The component can be used to detect gestures of a certain direction, and can grab gestures started on a component placed behind of the [SwipeArea](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html). The gesture is detected on the [SwipeArea](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html), therefore the size must be chosen carefully so it can properly detect the gesture.

The gesture direction is specified by the [direction](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html#direction-prop) property. The recognized and captured gesture is reported through the [dragging](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html#dragging-prop) property, which becomes `true` when the gesture is detected. If there was a component under the [SwipeArea](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html), the gesture will be cancelled on that component.

The drag recognition is performed within the component area in the specified direction. If the drag deviates too much from this, recognition will fail, as well as if the drag or the flick is too short. Once the drag is intercepted, the gesture will be followed even after it leaves the detection area.

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(70)
    Page {
        title: "SwipeArea sample"
        SwipeArea {
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            height: units.gu(5)
            direction: SwipeArea.Upwards
            Label {
                text: "Drag upwards"
                anchors {
                    centerIn: parent
                    verticalOffset: parent.dragging ? parent.distance : 0
                }
            }
        }
    }
}
```

**Note:** When used with a Flickable (or [ListView](../../sdk-14.10/QtQuick.ListView/index.html), [GridView](../../sdk-14.10/QtQuick.qtquick-draganddrop-example/index.html#gridview)) always put the [SwipeArea](../../sdk-15.04.1/Ubuntu.Components.SwipeArea/index.html) next to the Flickable as sibling.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

The direction in which the gesture should move in order to be recognized.

| Direction  | Description                                |
|------------|--------------------------------------------|
| Rightwards | Along the positive direction of the X axis |
| Leftwards  | Along the negative direction of the X axis |
| Downwards  | Along the positive direction of the Y axis |
| Upwards    | Along the negative direction of the Y axis |
| Horizontal | Along the X axis, in any direction         |
| Vertical   | Along the Y axis, in any direction         |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="distance-prop"></span><span class="qmlreadonly">read-only</span><span class="name">distance</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the distance of the swipe from the beginning of the gesture recognition to the current touch position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragging-prop"></span><span class="qmlreadonly">read-only</span><span class="name">dragging</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Reports whether a drag gesture is taking place.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="immediateRecognition-prop"></span><span class="name">immediateRecognition</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Drives whether the gesture should be recognized as soon as the touch lands on the area. With this property set it will work the same way as a [MultiPointTouchArea](../../sdk-14.10/QtQuick.MultiPointTouchArea/index.html),

Defaults to false. In most cases this should not be set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="qmlreadonly">read-only</span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Reports whether the drag area is pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchPosition-prop"></span><span class="qmlreadonly">read-only</span><span class="name">touchPosition</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span></p></td>
</tr>
</tbody>
</table>

Position of the touch point performing the drag relative to this item.

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
