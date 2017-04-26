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
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   PageStack

PageStack
=========

<span class="subtitle"></span>
A stack of Page items that is used for inter-Page navigation. Pages on the stack can be popped, and new Pages can be pushed. The page on top of the stack is the visible one. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[currentPage](index.html#currentPage-prop)**** : Item
-   ****[data](index.html#data-prop)**** : list&lt;Object&gt;
-   ****[depth](index.html#depth-prop)**** : int

<span id="methods"></span>
Methods
-------

-   ****[clear](index.html#clear-method)****()
-   ****[pop](index.html#pop-method)****()
-   ****[push](index.html#push-method)****(*page*, *properties*)

<span id="details"></span>
Detailed Description
--------------------

[PageStack](index.html) should be used inside a [MainView](../Ubuntu.Components.MainView/index.html) in order to automatically add a header and toolbar to control the stack. The [PageStack](index.html) will automatically set the header title to the title of the [Page](../Ubuntu.Components.Page/index.html) that is currently on top of the stack, and the tools of the toolbar to the tools of the [Page](../Ubuntu.Components.Page/index.html) on top of the stack. When more than one Pages are on the stack, the toolbar will automatically feature a back-button that pop the stack when triggered.

The anchors of the [PageStack](index.html) are set to fill its parent by default. To use left/right/top/bottom anchors, explicitly set anchors.fill of the [PageStack](index.html) to undefined:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    PageStack {
        id: mainStack
        anchors {
            fill: undefined // unset the default to make the other anchors work
            left: parent.left
            right: parent.right
            top: parent.top
            bottom: rect.top
        }
    }
    Rectangle {
        id: rect
        color: UbuntuColors.red
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        height: units.gu(10)
    }
    Component.onCompleted: mainStack.push(Qt.resolvedUrl("MyPage.qml"))
}
```

Pages that are defined inside the [PageStack](index.html) must initially set their visibility to false to avoid the pages occluding the [PageStack](index.html) before they are pushed. When pushing a [Page](../Ubuntu.Components.Page/index.html), its visibility is automatically updated.

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
MainView {
    width: units.gu(48)
    height: units.gu(60)
    PageStack {
        id: pageStack
        Component.onCompleted: push(page0)
        Page {
            id: page0
            title: i18n.tr("Root page")
            visible: false
            Column {
                anchors.fill: parent
                ListItem.Standard {
                    text: i18n.tr("Page one")
                    onClicked: pageStack.push(page1, {color: UbuntuColors.orange})
                    progression: true
                }
                ListItem.Standard {
                    text: i18n.tr("External page")
                    onClicked: pageStack.push(Qt.resolvedUrl("MyCustomPage.qml"))
                    progression: true
                }
            }
        }
        Page {
            title: "Rectangle"
            id: page1
            visible: false
            property alias color: rectangle.color
            Rectangle {
                id: rectangle
                anchors {
                    fill: parent
                    margins: units.gu(5)
                }
            }
        }
    }
}
```

As shown in the example above, the [push()](index.html#push-method) function can take an Item, Component or URL as input.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentPage-prop"></span><span class="name">currentPage</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The currently active page

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-prop"></span><span class="qmldefault">default</span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

Children of [PageStack](index.html) are placed in a separate item such that they are not active by default until they are pushed on the [PageStack](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="depth-prop"></span><span class="name">depth</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The current size of the stack

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

Deactivate the active page and clear the stack.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pop-method"></span><span class="name">pop</span>()</p></td>
</tr>
</tbody>
</table>

Pop the top item from the stack if the stack size is at least 1. Do not do anything if 0 or 1 items are on the stack.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="push-method"></span><span class="name">push</span>( <em>page</em>, <em>properties</em>)</p></td>
</tr>
</tbody>
</table>

Push a page to the stack, and apply the given (optional) properties to the page. The pushed page may be an Item, Component or URL. The function returns the Item that was pushed, or the Item that was created from the Component or URL. Depending on the animation of the header, the returned Page may or may not be active and on top of the [PageStack](index.html) yet.

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
