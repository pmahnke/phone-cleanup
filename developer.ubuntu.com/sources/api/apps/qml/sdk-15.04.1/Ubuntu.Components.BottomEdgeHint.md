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
-   [SDK 15.04.1](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   BottomEdgeHint

BottomEdgeHint
==============

<span class="subtitle"></span>
The BottomEdgeHint shows the availability of extra features available from the bottom edge of the application. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.ActionItem/index.html">ActionItem</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[deactivateTimeout](index.html#deactivateTimeout-prop)**** : int
-   ****[flickable](index.html#flickable-prop)**** : Flickable
-   ****[iconName](index.html#iconName-prop)**** : string
-   ****[iconSource](index.html#iconSource-prop)**** : url
-   ****[status](index.html#status-prop)**** : Status
-   ****[swipeArea](index.html#swipeArea-prop)**** : SwipeArea
-   ****[text](index.html#text-prop)**** : string

<span id="signals"></span>
Signals
-------

-   void ****[clicked](index.html#clicked-signal)****()

<span id="details"></span>
Detailed Description
--------------------

It displays a label and/or an icon at the bottom of the component it is attached to.

When used with a mouse it acts like a button. The typical action associated with clicking on it should be revealing the extra features provided by the bottom edge.

Example:

``` qml
BottomEdgeHint {
    id: bottomEdgeHint
    text: i18n.tr("Favorites")
    onClicked: revealBottomEdge()
}
```

The component is styled through **BottomEdgeHintStyle**.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="deactivateTimeout-prop"></span><span class="name">deactivateTimeout</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property specifies the timeout interval in milliseconds the [status](index.html#status-prop) is set to *Inactive* after a gesture based activation. Gesture based activation is only possible when mouse is not attached to the device. Defaults to 800 milliseconds.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickable-prop"></span><span class="name">flickable</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Flickable/index.html">Flickable</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the flickable, which when flicked hides the hint. *Hidden* state is reached when this property is set to a Flickable which is flicking or moving. It is recommended to set the property when the hint is placed above a flickable content. Defaults to null.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconName-prop"></span><span class="name">iconName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The icon associated with the [BottomEdgeHint](index.html) in the icon theme.

If both [iconSource](index.html#iconSource-prop) and iconName are defined, iconName will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconSource-prop"></span><span class="name">iconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The icon displayed by the [BottomEdgeHint](index.html).

This is the URL of any image file. If both iconSource and [iconName](index.html#iconName-prop) are defined, [iconName](index.html#iconName-prop) will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">Status</span></p></td>
</tr>
</tbody>
</table>

The property represents the status of the hint. The property is writable so it can be set to any of the following values programatically:

| Status   | Description                                                                                                                                                                                   |
|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Hidden   | The hint is not shown. Equivalent with setting *visible* to `false`, however visuals may do animations when altering this property. It can only be set if the current status is not *Locked*. |
| Inactive | The hint is shown and inactive. Styles can represent this state with different visuals. When inactive, [clicked](index.html#clicked-signal) signal cannot be emitted.                         |
| Active   | The hint is shown and active, meaning [clicked](index.html#clicked-signal) signal is emitted when clicked with mouse.                                                                         |
| Locked   | Similar to *Active* the hint is shown and active, but no automatic transition to any other state is allowed. This is relevant for style implementations.                                      |

**Note:** *Locked* status value is set automatically when the system detects a mouse attached. In this case any change into other state value than *Locked* is rejected. Defaults to

-   Inactive if no mouse is attached or
-   Locked if there is a mouse detected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="swipeArea-prop"></span><span class="qmlreadonly">read-only</span><span class="name">swipeArea</span> : <span class="type">SwipeArea</span></p></td>
</tr>
</tbody>
</table>

The property specifies the SwipeArea attached to the component driving its behavior.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The label displayed by the [BottomEdgeHint](index.html).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clicked-signal"></span><span class="type">void</span> <span class="name">clicked</span>()</p></td>
</tr>
</tbody>
</table>

This handler is called when there is a mouse click on the [BottomEdgeHint](index.html) and the [BottomEdgeHint](index.html) is not disabled.

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
