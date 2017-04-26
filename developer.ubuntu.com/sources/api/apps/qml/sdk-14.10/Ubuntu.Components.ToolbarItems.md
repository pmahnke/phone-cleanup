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
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   ToolbarItems

ToolbarItems
============

<span class="subtitle"></span>
Row of Items to be placed in a toolbar. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import Ubuntu.Components 1.1</code></td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[back](index.html#back-prop)**** : Item
-   ****[contents](index.html#contents-prop)**** : list&lt;Object&gt;
-   ****[locked](index.html#locked-prop)**** : bool
-   ****[opened](index.html#opened-prop)**** : bool
-   ****[pageStack](index.html#pageStack-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

Each [Page](../Ubuntu.Components.Page/index.html) has a tools property that can be set to change the tools of toolbar supplied by [MainView](../Ubuntu.Components.MainView/index.html) when the [Page](../Ubuntu.Components.Page/index.html) is active. Each ToolbarItems consists of a set of Items and several properties that specify the behavior of the toolbar when the [Page](../Ubuntu.Components.Page/index.html) is active.

When a [Page](../Ubuntu.Components.Page/index.html) is used inside a [MainView](../Ubuntu.Components.MainView/index.html), [Tabs](../Ubuntu.Components.Tabs/index.html) or [PageStack](../Ubuntu.Components.PageStack/index.html), the toolbar will automatically show the tools of the active [Page](../Ubuntu.Components.Page/index.html). When the active [Page](../Ubuntu.Components.Page/index.html) inside the [Tabs](../Ubuntu.Components.Tabs/index.html) or [PageStack](../Ubuntu.Components.PageStack/index.html) is updated by changing the selected [Tab](../Ubuntu.Components.Tab/index.html) or by pushing/popping a [Page](../Ubuntu.Components.Page/index.html) on the [PageStack](../Ubuntu.Components.PageStack/index.html), the toolbar will automatically hide, except if the new active [Page](../Ubuntu.Components.Page/index.html) has the [locked](index.html#locked-prop) property set.

[See also the Design Guidelines on Toolbars](http://design.ubuntu.com/apps/building-blocks/toolbar).

It is recommended to use [ToolbarButton](../Ubuntu.Components.ToolbarButton/index.html) inside the ToolbarItems to define the buttons that will be visible to the user:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
MainView {
    width: units.gu(50)
    height: units.gu(50)
    Page {
        title: "Tools example"
        Label {
            anchors.centerIn: parent
            text: "Custom back button\nToolbar locked"
        }
        tools: ToolbarItems {
            ToolbarButton {
                action: Action {
                    text: "button"
                    iconName: "compose"
                    onTriggered: print("success!")
                }
            }
            locked: true
            opened: true
        }
    }
}
```

However, it is possible to include non-[ToolbarButton](../Ubuntu.Components.ToolbarButton/index.html) Items inside ToolbarItems, and to mix ToolbarButtons and other Items (for example standard Buttons). ToolbarButtons automatically span the full height of the toolbar, and other Items you will probably want to center vertically:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
MainView {
    width: units.gu(50)
    height: units.gu(50)
    Page {
        title: "Tools example"
        Label {
            anchors.centerIn: parent
            text: "buttons!"
        }
        tools: ToolbarItems {
            ToolbarButton {
                action: Action {
                    text: "toolbar"
                    iconName: "compose"
                    onTriggered: print("success!")
                }
            }
            Button {
                anchors.verticalCenter: parent.verticalCenter
                text: "standard"
            }
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
<td><p><span id="back-prop"></span><span class="name">back</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The back button. If it is visible, it will be shown on the left-side of the toolbar. If there is a [PageStack](../Ubuntu.Components.PageStack/index.html) with depth greater than 1, the back button will be visible and triggering it will pop the page on top of the stack. If there is no [PageStack](../Ubuntu.Components.PageStack/index.html) with depth greater than 1, the back button is hidden by default

The following example shows how to have a classic cancel button that is always visible in the toolbar, instead of the default toolbar-styled back button:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
MainView {
    width: units.gu(50)
    height: units.gu(50)
    Page {
        title: "Custom back button"
        tools: ToolbarItems {
            back: Button {
                text: "cancel"
            }
        }
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contents-prop"></span><span class="qmldefault">default</span><span class="name">contents</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="https://developer.ubuntu.com/api/apps/qml/sdk-14.10/Ubuntu.Components.Object/">Object</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Default property, holds the content which will shown in the toolbar.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="locked-prop"></span><span class="name">locked</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

The toolbar cannot be opened/closed by bottom-edge swipes. If the [ToolbarItems](index.html) contains no visible Items, it is automatically locked (in closed state).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="opened-prop"></span><span class="name">opened</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

The toolbar is opened. When the toolbar is not locked, this value is automatically updated when the toolbar is opened/closed by user interaction or by other events (such as changing the active [Page](../Ubuntu.Components.Page/index.html)).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pageStack-prop"></span><span class="name">pageStack</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

[PageStack](../Ubuntu.Components.PageStack/index.html) for the back button. [Page](../Ubuntu.Components.Page/index.html) will automatically set the pageStack property of its tools.

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
