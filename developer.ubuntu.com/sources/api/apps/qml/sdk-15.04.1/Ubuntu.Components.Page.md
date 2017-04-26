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

-   Page

Page
====

<span class="subtitle"></span>
A page is the basic Item that represents a single view in an Ubuntu application. It is recommended to use the Page inside the MainView or AdaptivePageLayout. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[actionContext](index.html#actionContext-prop)**** : ActrionContext
-   ****[header](index.html#header-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

[MainView](../Ubuntu.Components.MainView/index.html) provides a header for Pages it includes if no [header](index.html#header-prop) property was set. However, the application header is deprecated and it is recommended to set the [header](index.html#header-prop) property instead.

Anchors and height of a Page are automatically determined to align with the header of the [MainView](../Ubuntu.Components.MainView/index.html), but can be overridden. Page contents does not automatically leave space for the Page [header](index.html#header-prop), so this must be taken into account when anchoring the contents of the Page.

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Page {
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("Example page")
            trailingActionBar.actions: [
                Action {
                    iconName: "search"
                    text: i18n.tr("Search")
                }
            ]
        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: pageHeader.bottom
                topMargin: units.gu(5)
            }
            text: i18n.tr("Hello world!")
        }
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actionContext-prop"></span><span class="qmlreadonly">read-only</span><span class="name">actionContext</span> : <span class="type">ActrionContext</span></p></td>
</tr>
</tbody>
</table>

The action context of the page.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="header-prop"></span><span class="name">header</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The header property for this page. Setting this property will reparent the header to the page and disable the [MainView](../Ubuntu.Components.MainView/index.html)'s application header.

``` qml
Page {
    id: page
    header: PageHeader {
        title: "Page with header"
        trailingActionBar.actions: [
            Action { iconName: "settings" },
            Action { iconName: "info" }
        ]
        flickable: myFlickable
    }
}
```

To avoid Page content being occluded by the header, the contents of the Page should anchor to the bottom of the header. When the Page contents is flickable, the contents does not need to be anchored to the header, but it is recommended to use a [PageHeader](../Ubuntu.Components.PageHeader/index.html) or [Header](../Ubuntu.Components.Header/index.html) component as the Page header, and set its [Header::flickable](../Ubuntu.Components.Header/index.html#flickable-prop) property so that the Flickable gets a top-margin that leaves enough space for the header.

This QML property was introduced in Ubuntu.Components 1.3.

**See also** [PageHeader](../Ubuntu.Components.PageHeader/index.html) and [Header](../Ubuntu.Components.Header/index.html).

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
