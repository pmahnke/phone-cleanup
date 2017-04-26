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
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   Timer

Timer
=====

<span class="subtitle"></span>
Triggers a handler at a specified interval More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="properties"></span>
Properties
----------

-   ****[interval](index.html#interval-prop)**** : int
-   ****[repeat](index.html#repeat-prop)**** : bool
-   ****[running](index.html#running-prop)**** : bool
-   ****[triggeredOnStart](index.html#triggeredOnStart-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[triggered](index.html#triggered-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[restart](index.html#restart-method)****()
-   ****[start](index.html#start-method)****()
-   ****[stop](index.html#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

A Timer can be used to trigger an action either once, or repeatedly at a given interval.

Here is a Timer that shows the current date and time, and updates the text every 500 milliseconds. It uses the JavaScript `Date` object to access the current time.

``` qml
import QtQuick 2.0
Item {
    Timer {
        interval: 500; running: true; repeat: true
        onTriggered: time.text = Date().toString()
    }
    Text { id: time }
}
```

The Timer type is synchronized with the animation timer. Since the animation timer is usually set to 60fps, the resolution of Timer will be at best 16ms.

If the Timer is running and one of its properties is changed, the elapsed time will be reset. For example, if a Timer with interval of 1000ms has its *repeat* property changed 500ms after starting, the elapsed time will be reset to 0, and the Timer will be triggered 1000ms later.

**See also** Qt Quick Demo - Clocks.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="interval-prop"></span><span class="name">interval</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Sets the *interval* between triggers, in milliseconds.

The default interval is 1000 milliseconds.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="repeat-prop"></span><span class="name">repeat</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If *repeat* is true the timer is triggered repeatedly at the specified interval; otherwise, the timer will trigger once at the specified interval and then stop (i.e. running will be set to false).

*repeat* defaults to false.

**See also** [running](index.html#running-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If set to true, starts the timer; otherwise stops the timer. For a non-repeating timer, *running* is set to false after the timer has been triggered.

*running* defaults to false.

**See also** [repeat](index.html#repeat-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggeredOnStart-prop"></span><span class="name">triggeredOnStart</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

When a timer is started, the first trigger is usually after the specified interval has elapsed. It is sometimes desirable to trigger immediately when the timer is started; for example, to establish an initial state.

If *triggeredOnStart* is true, the timer is triggered immediately when started, and subsequently at the specified interval. Note that if *repeat* is set to false, the timer is triggered twice; once on start, and again at the interval.

*triggeredOnStart* defaults to false.

**See also** [running](index.html#running-prop).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggered-signal"></span><span class="name">triggered</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Timer times out.

The corresponding handler is `onTriggered`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="restart-method"></span><span class="name">restart</span>()</p></td>
</tr>
</tbody>
</table>

Restarts the timer

If the Timer is not running it will be started, otherwise it will be stopped, reset to initial state and started. The `running` property will be true following a call to `restart()`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Starts the timer

If the timer is already running, calling this method has no effect. The `running` property will be true following a call to `start()`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stops the timer

If the timer is not running, calling this method has no effect. The `running` property will be false following a call to `stop()`.

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
