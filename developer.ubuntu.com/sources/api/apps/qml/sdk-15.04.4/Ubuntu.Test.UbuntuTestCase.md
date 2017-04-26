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
-   [SDK 15.04.4](../index.html) ›
-   [Ubuntu.Test](../Ubuntu.Test/index.html) ›

<!-- -->

-   UbuntuTestCase

UbuntuTestCase
==============

<span class="subtitle"></span>
The UbuntuTestCase class expands the default TestCase class. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Test .</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtTest.TestCase/index.html">TestCase</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[testUtil](index.html#testUtil-prop)**** : alias

<span id="methods"></span>
Methods
-------

-   ****[centerOf](index.html#centerOf-method)****(*item*)
-   ****[findChild](index.html#findChild-method)****(*obj*, *objectName*)
-   ****[findChildWithProperty](index.html#findChildWithProperty-method)****(*item*, *property*, *value*)
-   ****[findInvisibleChild](index.html#findInvisibleChild-method)****(*obj*, *objectName*)
-   ****[flick](index.html#flick-method)****(*item*, *x*, *y*, *dx*, *dy*, *pressTimeout*, *steps*, *button*, *modifiers*, *delay*)
-   ****[mouseLongPress](index.html#mouseLongPress-method)****(*item*, *x*, *y*, *button*, *modifiers*, *delay*)
-   ****[mouseMoveSlowly](index.html#mouseMoveSlowly-method)****(*item*, *x*, *y*, *dx*, *dy*, *steps*, *stepdelay*, *buttons*)
-   ****[tryCompareFunction](index.html#tryCompareFunction-method)****(*func*, *expectedResult*, *timeout*)
-   ****[typeString](index.html#typeString-method)****(*string*)
-   ****[waitForHeaderAnimation](index.html#waitForHeaderAnimation-method)****(*mainView*)
-   ****[warningFormat](index.html#warningFormat-method)****(*line*, *column*, *message*)

<span id="details"></span>
Detailed Description
--------------------

**This component is under heavy development.**

This class extends the default QML [TestCase](../../sdk-14.10/QtTest.TestCase/index.html) class which is available in [QtTest](http://doc.qt.io/qt-5/qttest-qmlmodule.html) 1.0.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="testUtil-prop"></span><span class="name">testUtil</span> : <span class="type">alias</span></p></td>
</tr>
</tbody>
</table>

This property holds the inner TestUtil instance.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="centerOf-method"></span><span class="name">centerOf</span>( <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Returns the center point of the *item*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="findChild-method"></span><span class="name">findChild</span>( <em>obj</em>, <em>objectName</em>)</p></td>
</tr>
</tbody>
</table>

Find a child from the item based on the objectName.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="findChildWithProperty-method"></span><span class="name">findChildWithProperty</span>( <em>item</em>, <em>property</em>, <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Finds a visible child of an *item* having a given *property* with a given *value*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="findInvisibleChild-method"></span><span class="name">findInvisibleChild</span>( <em>obj</em>, <em>objectName</em>)</p></td>
</tr>
</tbody>
</table>

Find a non-visual child such as [QtObject](../../sdk-14.10/QtQml.QtObject/index.html) based on objectName.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flick-method"></span><span class="name">flick</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>dx</em>, <em>dy</em>, <em>pressTimeout</em>, <em>steps</em>, <em>button</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

The function produces a flick event when executed on Flickables. When used on other components it provides the same functionality as `mouseDrag()` function. The optional *pressTimeout* parameter can be used to introduce a small delay between the mouse press and the first mouse move. Setting a negative or zero value will disable the timeout.

The default flick velocity is built up using 5 move points. This can be altered by setting a positive value to *steps* parameter. The bigger the number the longer the flick will be. When a negative or zero value is given, the default of 5 move points will be used.

**Note:** The function can be used to select a text in a [TextField](../Ubuntu.Components.TextField/index.html) or [TextArea](../Ubuntu.Components.TextArea/index.html) by specifying at least 400 millisecods to *pressTimeout*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseLongPress-method"></span><span class="name">mouseLongPress</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>button</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

Simulates a long press on a mouse *button* with an optional *modifier* on an *item*. The position is defined by *x* and *y*. If *delay* is specified, the test will wait the specified amount of milliseconds before the press.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseMoveSlowly-method"></span><span class="name">mouseMoveSlowly</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>dx</em>, <em>dy</em>, <em>steps</em>, <em>stepdelay</em>, <em>buttons</em>)</p></td>
</tr>
</tbody>
</table>

Move Mouse from x,y to distance of dx, dy divided to steps with a stepdelay (ms) and buttons.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tryCompareFunction-method"></span><span class="name">tryCompareFunction</span>( <em>func</em>, <em>expectedResult</em>, <em>timeout</em>)</p></td>
</tr>
</tbody>
</table>

Keeps executing a given parameter-less function until it returns the given expected result or the timemout is reached (in which case a test failure is generated)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="typeString-method"></span><span class="name">typeString</span>( <em>string</em>)</p></td>
</tr>
</tbody>
</table>

Convenience function to allow typing a full string instead of single characters

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="waitForHeaderAnimation-method"></span><span class="name">waitForHeaderAnimation</span>( <em>mainView</em>)</p></td>
</tr>
</tbody>
</table>

Wait for animations of the header and the style inside the header to finish. The [MainView](../Ubuntu.Components.MainView/index.html) that has the header that may animate must be passed as an argument.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="warningFormat-method"></span><span class="name">warningFormat</span>( <em>line</em>, <em>column</em>, <em>message</em>)</p></td>
</tr>
</tbody>
</table>

Warning message formatter, uses file name, line and column numbers to build up the message.

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
