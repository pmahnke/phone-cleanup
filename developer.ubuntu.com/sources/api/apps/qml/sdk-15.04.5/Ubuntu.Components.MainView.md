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
-   [SDK 15.04.5](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   MainView

MainView
========

<span class="subtitle"></span>
MainView is the root Item that should be used for all applications. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[actionContext](index.html#actionContext-prop)**** : ActionContext
-   ****[anchorToKeyboard](index.html#anchorToKeyboard-prop)**** : bool
-   ****[applicationName](index.html#applicationName-prop)**** : string
-   ****[backgroundColor](index.html#backgroundColor-prop)**** : color

<span id="details"></span>
Detailed Description
--------------------

The simplest way to use a [MainView](index.html) is to include a single [Page](../Ubuntu.Components.Page/index.html) object inside the [MainView](index.html):

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Page {
        header: PageHeader {
            id: pageHeader
            title: "Simple page"
        }
        Button {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: pageHeader.bottom
                topMargin: units.gu(5)
            }
            width: units.gu(15)
            text: "Push me"
            onClicked: print("Click!")
        }
    }
}
```

It is not required to set the anchors of the [Page](../Ubuntu.Components.Page/index.html) as it will automatically fill its parent.

Do not include multiple Pages directly inside the [MainView](index.html), but use [AdaptivePageLayout](../Ubuntu.Components.AdaptivePageLayout/index.html) inside [MainView](index.html) to navigate between several Pages.

If the [Page](../Ubuntu.Components.Page/index.html) inside the [MainView](index.html) includes a Flickable, set the flickable property of the [PageHeader](../Ubuntu.Components.PageHeader/index.html) to automatically hide and show the header when the user scrolls up or down:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Page {
        header: PageHeader {
            title: "Page with Flickable"
            flickable: myFlickable
        }
        Flickable {
            id: myFlickable
            anchors.fill: parent
            contentHeight: column.height
            Column {
                id: column
                Repeater {
                    model: 100
                    Label {
                        text: "line "+index
                    }
                }
            }
        }
    }
}
```

The same header behavior is automatic when using a [ListView](../../sdk-14.10/QtQuick.ListView/index.html) instead of a Flickable in the above example.

The examples above show how to include a single [Page](../Ubuntu.Components.Page/index.html) inside a [MainView](index.html), but more advanced application structures are possible using [AdaptivePageLayout](../Ubuntu.Components.AdaptivePageLayout/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actionContext-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">actionContext</span> : <span class="type"><a href="../Ubuntu.Components.ActionContext/index.html">ActionContext</a></span></p></td>
</tr>
</tbody>
</table>

The action context of the [MainView](index.html).

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="anchorToKeyboard-prop"></span><span class="name">anchorToKeyboard</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property holds if the application should automatically resize the contents when the input method appears

The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="applicationName-prop"></span><span class="name">applicationName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property holds the application's name, which must be the same as the desktop file's name. The name also sets the name of the QCoreApplication and defaults for data and cache folders that work on the desktop and under confinement, as well as the default gettext domain. C++ code that writes files may use QStandardPaths::writableLocation with QStandardPaths::DataLocation or QStandardPaths::CacheLocation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backgroundColor-prop"></span><span class="name">backgroundColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Color of the background.

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(60)
    backgroundColor: UbuntuColors.blue
}
```

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
