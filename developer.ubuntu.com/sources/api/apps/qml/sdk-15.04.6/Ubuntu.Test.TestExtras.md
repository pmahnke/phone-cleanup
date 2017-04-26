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
-   [Ubuntu.Test](../Ubuntu.Test/index.html) ›

<!-- -->

-   TestExtras

TestExtras
==========

<span class="subtitle"></span>
Singleton type providing additional test functions. More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | import Ubuntu.Test . |

<span id="methods"></span>
Methods
-------

-   ****[cpuArchitecture](index.html#cpuArchitecture-method)****()
-   void ****[mouseDrag](index.html#mouseDrag-method)****(touchId, item, from, delta, button, stateKey, steps, delay)
-   ****[openGLflavor](index.html#openGLflavor-method)****()
-   ****[registerTouchDevice](index.html#registerTouchDevice-method)****()
-   ****[touchClick](index.html#touchClick-method)****(touchId, item, point)
-   ****[touchDevicePresent](index.html#touchDevicePresent-method)****()
-   ****[touchDoubleClick](index.html#touchDoubleClick-method)****(touchId, item, point)
-   ****[touchDrag](index.html#touchDrag-method)****(touchId, item, from, delta, steps)
-   ****[touchLongPress](index.html#touchLongPress-method)****(touchId, item, point)
-   ****[touchMove](index.html#touchMove-method)****(touchId, item, point)
-   ****[touchPress](index.html#touchPress-method)****(touchId, item, point)
-   ****[touchRelease](index.html#touchRelease-method)****(touchId, item, point)

<span id="details"></span>
Detailed Description
--------------------

The component provides additional test functions like touch handling, registering touch device on non-touch screen enabled environment.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cpuArchitecture-method"></span><span class="name">cpuArchitecture</span>()</p></td>
</tr>
</tbody>
</table>

Returns the build architecure, including but not limited to "arm", "arm64", "i386" and "x86\_64".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseDrag-method"></span><span class="type">void</span> <span class="name">mouseDrag</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type">from</span>, <span class="type">delta</span>, <span class="type">button</span>, <span class="type">stateKey</span>, <span class="type">steps</span> = 5, <span class="type">delay</span> = 20)</p></td>
</tr>
</tbody>
</table>

The function performs a drag with a mouse over an *item* from the starting point *from* with a *delta*. The gesture is realized with a mouse press, *step* moves and a release event, with a *delay* in between each mouse event.

By default the function uses 5 steps to produce the drag. This value can be any positive number, driving the gesture appliance to be faster (less than 5 moves) or slower (more than 5 moves). If a negative or 0 value is given, the function will use the default 5 steps to produce the gesture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="openGLflavor-method"></span><span class="name">openGLflavor</span>()</p></td>
</tr>
</tbody>
</table>

Returns "opengl" or "opengles2".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="registerTouchDevice-method"></span><span class="name">registerTouchDevice</span>()</p></td>
</tr>
</tbody>
</table>

Registers a touch device if there's none registered. Calling the function in touch enabled environment has no effect. The function must be called in initTestCase() in order to perform touch related tests.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchClick-method"></span><span class="name">touchClick</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function performs a pair of [touchPress](index.html#touchPress-method) and [touchRelease](index.html#touchRelease-method) calls on the same point resulting in a click like event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchDevicePresent-method"></span><span class="name">touchDevicePresent</span>()</p></td>
</tr>
</tbody>
</table>

Returns true if the system has a touch device registered.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchDoubleClick-method"></span><span class="name">touchDoubleClick</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function performs two consecutive [touchClick](index.html#touchClick-method) events with a slight delay in between each click event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchDrag-method"></span><span class="name">touchDrag</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type">from</span>, <span class="type">delta</span>, <span class="type">steps</span> = 5)</p></td>
</tr>
</tbody>
</table>

The function performs a drag gesture on a touch point identified by *touchId* over an *item* from the starting point *from* with a *delta*. The gesture is realized with a touch press, *step* moves and a release event.

By default the function uses 5 steps to produce the gesture. This value can be any positive number, driving the gesture appliance to be faster (less than 5 moves) or slower (more than 5 moves). If a negative or 0 value is given, the function will use the default 5 steps to produce the gesture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchLongPress-method"></span><span class="name">touchLongPress</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function produces a [touchPress](index.html#touchPress-method) event with a timeout equivalent to the mouse `pressAndHold` timeout, after which the function returns.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchMove-method"></span><span class="name">touchMove</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function moves the touch point identified by the *touchId* to the destination *point*. The point is in *item* coordinates. The touch point identified by the *touchId* must be pressed before calling this function in order to produce the desired functionality. The event can be captured in a `MultiPointTouchArea` through `updated()` signal.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchPress-method"></span><span class="name">touchPress</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function triggers a touch press event for a given *touchId* on a specific *item*. The *point* contains the (x,y) coordinates of the event in *item* coordinates.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchRelease-method"></span><span class="name">touchRelease</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function produces a touch release event on a given *touchId* performed on *item* at a *point*.

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
