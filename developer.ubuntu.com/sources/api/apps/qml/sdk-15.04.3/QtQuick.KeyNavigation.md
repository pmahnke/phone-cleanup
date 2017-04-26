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
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   KeyNavigation

KeyNavigation
=============

<span class="subtitle"></span>
Supports key navigation by arrow keys More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[backtab](index.html#backtab-prop)**** : Item
-   ****[down](index.html#down-prop)**** : Item
-   ****[left](index.html#left-prop)**** : Item
-   ****[priority](index.html#priority-prop)**** : enumeration
-   ****[right](index.html#right-prop)**** : Item
-   ****[tab](index.html#tab-prop)**** : Item
-   ****[up](index.html#up-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

Key-based user interfaces commonly allow the use of arrow keys to navigate between focusable items. The [KeyNavigation](index.html) attached property enables this behavior by providing a convenient way to specify the item that should gain focus when an arrow or tab key is pressed.

The following example provides key navigation for a 2x2 grid of items:

``` qml
import QtQuick 2.0
Grid {
    width: 100; height: 100
    columns: 2
    Rectangle {
        id: topLeft
        width: 50; height: 50
        color: focus ? "red" : "lightgray"
        focus: true
        KeyNavigation.right: topRight
        KeyNavigation.down: bottomLeft
    }
    Rectangle {
        id: topRight
        width: 50; height: 50
        color: focus ? "red" : "lightgray"
        KeyNavigation.left: topLeft
        KeyNavigation.down: bottomRight
    }
    Rectangle {
        id: bottomLeft
        width: 50; height: 50
        color: focus ? "red" : "lightgray"
        KeyNavigation.right: bottomRight
        KeyNavigation.up: topLeft
    }
    Rectangle {
        id: bottomRight
        width: 50; height: 50
        color: focus ? "red" : "lightgray"
        KeyNavigation.left: bottomLeft
        KeyNavigation.up: topRight
    }
}
```

The top-left item initially receives focus by setting [focus](../QtQuick.Item/index.html#focus-prop) to `true`. When an arrow key is pressed, the focus will move to the appropriate item, as defined by the value that has been set for the [KeyNavigation](index.html) [left](index.html#left-prop), [right](index.html#right-prop), [up](index.html#up-prop) or [down](index.html#down-prop) properties.

Note that if a [KeyNavigation](index.html) attached property receives the key press and release events for a requested arrow or tab key, the event is accepted and does not propagate any further.

By default, [KeyNavigation](index.html) receives key events after the item to which it is attached. If the item accepts the key event, the [KeyNavigation](index.html) attached property will not receive an event for that key. Setting the [priority](index.html#priority-prop) property to `KeyNavigation.BeforeItem` allows the event to be used for key navigation before the item, rather than after.

If the item to which the focus is switching is not enabled or visible, an attempt will be made to skip this item and focus on the next. This is possible if there are a chain of items with the same [KeyNavigation](index.html) handler. If multiple items in a row are not enabled or visible, they will also be skipped.

[KeyNavigation](index.html) will implicitly set the other direction to return focus to this item. So if you set [left](index.html#left-prop) to another item, [right](index.html#right-prop) will be set on that item's [KeyNavigation](index.html) to set focus back to this item. However, if that item's [KeyNavigation](index.html) has had right explicitly set then no change will occur. This means that the example above could achieve the same behavior without specifying [KeyNavigation](index.html).right or [KeyNavigation](index.html).down for any of the items.

**See also** [Keys attached property](../QtQuick.Keys/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backtab-prop"></span><span class="name">backtab</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the Tab key or Shift+Tab key combination (Backtab) are pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="down-prop"></span><span class="name">down</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="left-prop"></span><span class="name">left</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="priority-prop"></span><span class="name">priority</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property determines whether the keys are processed before or after the attached item's own key handling.

-   [KeyNavigation](index.html).BeforeItem - process the key events before normal item key processing. If the event is used for key navigation, it will be accepted and will not be passed on to the item.
-   [KeyNavigation](index.html).AfterItem (default) - process the key events after normal item key handling. If the item accepts the key event it will not be handled by the [KeyNavigation](index.html) attached property handler.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="right-prop"></span><span class="name">right</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tab-prop"></span><span class="name">tab</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the Tab key or Shift+Tab key combination (Backtab) are pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="up-prop"></span><span class="name">up</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

These properties hold the item to assign focus to when the left, right, up or down cursor keys are pressed.

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
