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

-   MainView

MainView
========

<span class="subtitle"></span>
MainView is the root Item that should be used for all applications. It automatically adds a header and toolbar for its contents and can rotate its content based on the device orientation. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.2 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[actionManager](index.html#actionManager-prop)**** : ActionManager
-   ****[actions](index.html#actions-prop)**** : list&lt;Action&gt;
-   ****[active](index.html#active-prop)**** : bool
-   ****[anchorToKeyboard](index.html#anchorToKeyboard-prop)**** : bool
-   ****[applicationName](index.html#applicationName-prop)**** : string
-   ****[automaticOrientation](index.html#automaticOrientation-prop)**** : bool
-   ****[backgroundColor](index.html#backgroundColor-prop)**** : color
-   ****[footerColor](index.html#footerColor-prop)**** : color
-   ****[headerColor](index.html#headerColor-prop)**** : color

<span id="details"></span>
Detailed Description
--------------------

The simplest way to use a [MainView](index.html) is to include a single [Page](../Ubuntu.Components.Page/index.html) object inside the [MainView](index.html):

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Page {
        title: "Simple page"
        Button {
            anchors.centerIn: parent
            text: "Push me"
            width: units.gu(15)
            onClicked: print("Click!")
        }
    }
}
```

It is not required to set the anchors of the [Page](../Ubuntu.Components.Page/index.html) as it will automatically fill its parent. The [MainView](index.html) has a header that automatically shows the title of the [Page](../Ubuntu.Components.Page/index.html).

Do not include multiple Pages directly inside the [MainView](index.html), but use [Tabs](../Ubuntu.Components.Tabs/index.html) or [PageStack](../Ubuntu.Components.PageStack/index.html) inside [MainView](index.html) to navigate between several Pages.

For the [MainView](index.html) to automatically rotate its content following the orientation of the device, set the [automaticOrientation](index.html#automaticOrientation-prop) property to true.

If the [Page](../Ubuntu.Components.Page/index.html) inside the [MainView](index.html) includes a Flickable with enough contents for scrolling, the header will automatically hide and show when the user scrolls up or down:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Page {
        title: "Page with Flickable"
        Flickable {
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

The examples above show how to include a single [Page](../Ubuntu.Components.Page/index.html) inside a [MainView](index.html), but more advanced application structures are possible using [PageStack](../Ubuntu.Components.PageStack/index.html) and [Tabs](../Ubuntu.Components.Tabs/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actionManager-prop"></span><span class="qmlreadonly">read-only</span><span class="name">actionManager</span> : <span class="type"><a href="../Ubuntu.Components.ActionManager/index.html">ActionManager</a></span></p></td>
</tr>
</tbody>
</table>

The [ActionManager](../Ubuntu.Components.ActionManager/index.html) that supervises the global and local ActionContexts. The [actions](index.html#actions-prop) property should be used preferably since it covers most use cases. The [ActionManager](../Ubuntu.Components.ActionManager/index.html) is accessible to have a more refined control over the actions, e.g. if one wants to add/remove actions dynamically, create specific action contexts, etc.

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

A global list of actions that will be available to the system (including HUD) as long as the application is running. For actions that are not always available to the system, but only when a certain [Page](../Ubuntu.Components.Page/index.html) is active, see the actions property of [Page](../Ubuntu.Components.Page/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-prop"></span><span class="name">active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

[MainView](index.html) is active by default.

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
<td><p><span id="automaticOrientation-prop"></span><span class="name">automaticOrientation</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether the application will be automatically rotating when the device is.

The default value is false.

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

The background is usually a single color. However if [headerColor](index.html#headerColor-prop) or [footerColor](index.html#footerColor-prop) are set then a gradient of colors will be drawn.

For example, in order for the [MainView](index.html) to draw a color gradient beneath the content:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(40)
    height: units.gu(60)
    headerColor: "#343C60"
    backgroundColor: "#6A69A2"
    footerColor: "#8896D5"
}
```

**See also** [footerColor](index.html#footerColor-prop) and [headerColor](index.html#headerColor-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="footerColor-prop"></span><span class="name">footerColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Color of the footer's background.

**See also** [backgroundColor](index.html#backgroundColor-prop) and [headerColor](index.html#headerColor-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="headerColor-prop"></span><span class="name">headerColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Color of the header's background.

**See also** [backgroundColor](index.html#backgroundColor-prop) and [footerColor](index.html#footerColor-prop).

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
