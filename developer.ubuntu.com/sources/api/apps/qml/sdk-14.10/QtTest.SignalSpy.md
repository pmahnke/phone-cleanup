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
-   [QtTest](../QtTest/index.html) ›

<!-- -->

-   SignalSpy

SignalSpy
=========

<span class="subtitle"></span>
Enables introspection of signal emission More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import QtTest 1.0</code></td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Qt 4.8</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[count](index.html#count-prop)**** : int
-   ****[signalArguments](index.html#signalArguments-prop)**** : list
-   ****[signalName](index.html#signalName-prop)**** : string
-   ****[target](index.html#target-prop)**** : var
-   ****[valid](index.html#valid-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   ****[clear](index.html#clear-method)****()
-   ****[wait](index.html#wait-method)****(*timeout*)

<span id="details"></span>
Detailed Description
--------------------

In the following example, a SignalSpy is installed to watch the "clicked" signal on a user-defined Button type. When the signal is emitted, the [count](index.html#count-prop) property on the spy will be increased.

``` cpp
Button {
    id: button
    SignalSpy {
        id: spy
        target: button
        signalName: "clicked"
    }
    TestCase {
        name: "ButtonClick"
        function test_click() {
            compare(spy.count, 0)
            button.clicked();
            compare(spy.count, 1)
        }
    }
}
```

The above style of test is suitable for signals that are emitted synchronously. For asynchronous signals, the [wait()](index.html#wait-method) method can be used to block the test until the signal occurs (or a timeout expires).

**See also** [TestCase](../QtTest.TestCase/index.html) and Qt Quick Test Reference Documentation.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="qmlreadonly">read-only</span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property defines the number of times that [signalName](index.html#signalName-prop) has been emitted from [target](index.html#target-prop) since the last call to [clear()](index.html#clear-method).

**See also** [target](index.html#target-prop), [signalName](index.html#signalName-prop), and [clear()](index.html#clear-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="signalArguments-prop"></span><span class="qmlreadonly">read-only</span><span class="name">signalArguments</span> : <span class="type">list</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of emitted signal arguments. Each emission of the signal will append one item to the list, containing the arguments of the signal. When connecting to a new [target](index.html#target-prop) or new [signalName](index.html#signalName-prop) or calling the [clear()](index.html#clear-method) method, the signalArguments will be reset to empty.

**See also** [signalName](index.html#signalName-prop) and [clear()](index.html#clear-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="signalName-prop"></span><span class="name">signalName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property defines the name of the signal on [target](index.html#target-prop) to listen for.

**See also** [target](index.html#target-prop) and [count](index.html#count-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type">var</span></p></td>
</tr>
</tbody>
</table>

This property defines the target object that will be used to listen for emissions of the [signalName](index.html#signalName-prop) signal.

**See also** [signalName](index.html#signalName-prop) and [count](index.html#count-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="valid-prop"></span><span class="qmlreadonly">read-only</span><span class="name">valid</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property defines the current signal connection status. It will be true when the [signalName](index.html#signalName-prop) of the [target](index.html#target-prop) is connected successfully, otherwise it will be false.

**See also** [count](index.html#count-prop), [target](index.html#target-prop), [signalName](index.html#signalName-prop), and [clear()](index.html#clear-method).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clear-method"></span><span class="name">clear</span>()</p></td>
</tr>
</tbody>
</table>

Clears [count](index.html#count-prop) to 0, resets [valid](index.html#valid-prop) to false and clears the [signalArguments](index.html#signalArguments-prop) to empty.

**See also** [count](index.html#count-prop) and [wait()](index.html#wait-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="wait-method"></span><span class="name">wait</span>( <em>timeout</em>)</p></td>
</tr>
</tbody>
</table>

Waits for the signal [signalName](index.html#signalName-prop) on [target](index.html#target-prop) to be emitted, for up to *timeout* milliseconds. The test case will fail if the signal is not emitted.

``` cpp
SignalSpy {
    id: spy
    target: button
    signalName: "clicked"
}
function test_async_click() {
    ...
    // do something that will cause clicked() to be emitted
    ...
    spy.wait()
    compare(spy.count, 1)
}
```

There are two possible scenarios: the signal has already been emitted when wait() is called, or the signal has not yet been emitted. The wait() function handles the first scenario by immediately returning if the signal has already occurred.

The [clear()](index.html#clear-method) method can be used to discard information about signals that have already occurred to synchronize wait() with future signal emissions.

**See also** [clear()](index.html#clear-method) and [TestCase::tryCompare()](../QtTest.TestCase/index.html#tryCompare-method).

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
