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
-   [SDK 15.04](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   Page

Page
====

<span class="subtitle"></span>
A page is the basic Item that must be used inside the MainView, PageStack and Tabs. Anchors and height of a Page are automatically determined to align with the header of the MainView, but can be overridden. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.2 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[actions](index.html#actions-prop)**** : list&lt;Action&gt;
-   ****[flickable](index.html#flickable-prop)**** : Flickable
-   ****[head](index.html#head-prop)**** : PageHeadConfiguration
-   ****[title](index.html#title-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

[MainView](../Ubuntu.Components.MainView/index.html) provides a header for Pages it includes. The text and actions of the header are determined by the [title](index.html#title-prop) and [head](index.html#head-prop) properties of the page:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Page {
        title: i18n.tr("Example page")
        Label {
            anchors.centerIn: parent
            text: i18n.tr("Hello world!")
        }
        head.actions: [
            Action {
                iconName: "search"
                text: i18n.tr("Search")
            },
            Action {
                iconName: "contacts"
                text: i18n.tr("Contacts")
            }
        ]
    }
}
```

See [MainView](../Ubuntu.Components.MainView/index.html) for more examples on how to use the header. Advanced navigation structures can be created by adding Pages to a [PageStack](../Ubuntu.Components.PageStack/index.html) or [Tabs](../Ubuntu.Components.Tabs/index.html).

The Page automatically anchors to the left and bottom of its parent. The width of the Page will be the full width of its parent [MainView](../Ubuntu.Components.MainView/index.html) or [PageStack](../Ubuntu.Components.PageStack/index.html) or [Tab](../Ubuntu.Components.Tab/index.html), and the height will adapt to leave space for the header when needed. It is possible to use a Page inside a Loader, but in that case do not set the anchors or size of the Loader so that the Page can control its width and height.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="../Ubuntu.Components.Action/index.html">Action</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Local actions. These actions will be made available outside the application (for example, to HUD) when the Page is active. For actions that are always available when the application is running, use the actions property of [MainView](../Ubuntu.Components.MainView/index.html). For actions in the header, see [head](index.html#head-prop).

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

Optional flickable that controls the header. This property is automatically set to the first child of the page that is Flickable and anchors to the top of the page or fills the page. For example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(30)
    height: units.gu(50)
    Page {
        id: page
        title: "example"
        //flickable: null // uncomment for a fixed header
        Flickable {
            id: content
            anchors.fill: parent
            contentHeight: units.gu(70)
            Label {
                text: "hello"
                anchors.centerIn: parent
            }
        }
    }
}
```

In this example, page.flickable will automatically be set to content because it is a Flickable and it fills its parent. Thus, scrolling down in the Flickable will automatically hide the header.

Set this property to null to avoid automatic flickable detection, which disables hiding of the header by scrolling in the Flickable. In cases where a flickable should control the header, but it is not automatically detected, the flickable property can be set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="head-prop"></span><span class="qmlreadonly">read-only</span><span class="name">head</span> : <span class="type"><a href="../Ubuntu.Components.PageHeadConfiguration/index.html">PageHeadConfiguration</a></span></p></td>
</tr>
</tbody>
</table>

Configuration of the header for this page.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="title-prop"></span><span class="name">title</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The title of the page. Will be shown in the header of the [MainView](../Ubuntu.Components.MainView/index.html). If the page is used inside a [Tab](../Ubuntu.Components.Tab/index.html), the default title is the [Tab](../Ubuntu.Components.Tab/index.html) title. For a Page not inside a [Tab](../Ubuntu.Components.Tab/index.html), the default title is an empty string.

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
