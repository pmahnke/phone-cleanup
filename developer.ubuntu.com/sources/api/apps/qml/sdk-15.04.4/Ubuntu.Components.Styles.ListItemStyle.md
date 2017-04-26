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
-   [Ubuntu.Components.Styles](../Ubuntu.Components.Styles/index.html) ›

<!-- -->

-   ListItemStyle

ListItemStyle
=============

<span class="subtitle"></span>
Style API for ListItem component. More...

|                   |                                   |
|-------------------|-----------------------------------|
| Import Statement: | import Ubuntu.Components.Styles . |
| Since:            | Ubuntu.Components.Styles 1.2      |

<span id="properties"></span>
Properties
----------

-   ****[animatePanels](index.html#animatePanels-prop)**** : bool
-   ****[dragPanel](index.html#dragPanel-prop)**** : Item
-   ****[dropAnimation](index.html#dropAnimation-prop)**** : PropertyAnimation
-   ****[flickable](index.html#flickable-prop)**** : Flickable
-   ****[listItemIndex](index.html#listItemIndex-prop)**** : in
-   ****[snapAnimation](index.html#snapAnimation-prop)**** : Animation

<span id="methods"></span>
Methods
-------

-   ****[rebound](index.html#rebound-method)****()
-   ****[swipeEvent](index.html#swipeEvent-method)****(SwipeEvent *event*)

<span id="details"></span>
Detailed Description
--------------------

Style API for the [ListItem](../Ubuntu.Components.ListItem/index.html) component which provides actions, select and drag handler delegates, and snap animation via its properties. [ListItem](../Ubuntu.Components.ListItem/index.html) treats the style differently compared to the other components, as it loads the style only when needed and not upon component creation.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="animatePanels-prop"></span><span class="name">animatePanels</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property drives the different panel animations in the style. Panels should not be animated when created upon scrolling a view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragPanel-prop"></span><span class="name">dragPanel</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the item visualizing the drag handler. [ListItem](../Ubuntu.Components.ListItem/index.html)'s dragging mechanism uses this property to detect the area the dragging can be initiated from. If not set, the [ListItem](../Ubuntu.Components.ListItem/index.html) will assume the dragging can be initiated from the entire area of the [ListItem](../Ubuntu.Components.ListItem/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dropAnimation-prop"></span><span class="name">dropAnimation</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.PropertyAnimation/index.html">PropertyAnimation</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the animation executed on [ListItem](../Ubuntu.Components.ListItem/index.html) dropping.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickable-prop"></span><span class="qmlreadonly">read-only</span><span class="name">flickable</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Flickable/index.html">Flickable</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the Flickable (or [ListView](../../sdk-14.10/QtQuick.ListView/index.html)) holding the [ListItem](../Ubuntu.Components.ListItem/index.html) styled.

This QML property was introduced in Ubuntu.Components.Styles 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="listItemIndex-prop"></span><span class="qmlreadonly">read-only</span><span class="name">listItemIndex</span> : <span class="type">in</span></p></td>
</tr>
</tbody>
</table>

The property proxies the [ListItem](../Ubuntu.Components.ListItem/index.html)'s index context property to the style, which is either the index of the list item in a [ListView](../../sdk-14.10/QtQuick.ListView/index.html) or the child index. Use this property rather than the `index` context property as that may not be defined in situations where the [ListItem](../Ubuntu.Components.ListItem/index.html) is not a delegate of a [ListView](../../sdk-14.10/QtQuick.ListView/index.html) or Repeater.

This QML property was introduced in Ubuntu.Components.Styles 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="snapAnimation-prop"></span><span class="name">snapAnimation</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Animation/index.html">Animation</a></span></p></td>
</tr>
</tbody>
</table>

Holds the behavior used in animating when snapped in or out.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rebound-method"></span><span class="name">rebound</span>()</p></td>
</tr>
</tbody>
</table>

Function called by the [ListItem](../Ubuntu.Components.ListItem/index.html) when a rebounding action is requested from the style. This usually happens when the list item's content is swiped and there is a press event happening outside of the [ListItem](../Ubuntu.Components.ListItem/index.html)'s boundary or when the view embedding the [ListItem](../Ubuntu.Components.ListItem/index.html) starts scrolling.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="swipeEvent-method"></span><span class="name">swipeEvent</span>(<span class="type">SwipeEvent</span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

The function is called by the [ListItem](../Ubuntu.Components.ListItem/index.html) when a swipe action is performed, i.e. when the swipe is started, the position is updated or the swipe ends. The **event** object provides information about the swipe status, positions and the updated [ListItem.contentItem](../Ubuntu.Components.ListItem/index.html#contentItem-prop) position. The style implementation can override the contentItem position by setting the `event.content.x` or `event.content.y` properties to the desired value.

The `event` object properties are:

-   \* `status` - enumeration of `Started, Updated, Finished` values representing the swipe event status
-   \* `to` - (x, y) coordinates of the current mouse/touch point - read-only
-   \* `from` - (x, y) coordinates of the previous mouse/touch point - read-only
-   \* `content` - (x, y) updated coordinates of the [ListItem.contentItem](../Ubuntu.Components.ListItem/index.html#contentItem-prop), read-write

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
