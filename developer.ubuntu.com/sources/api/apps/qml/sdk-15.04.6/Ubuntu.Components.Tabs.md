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
-   [SDK 15.04.6](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   Tabs

Tabs
====

<span class="subtitle"></span>
The Tabs class provides an environment where multible Tab children can be added, and the user is presented with a tab bar with tab buttons to select different tab pages. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[count](../../sdk-15.04.4/Ubuntu.Components.Tabs/index.html#count-prop)**** : int
-   ****[currentPage](../../sdk-15.04.4/Ubuntu.Components.Tabs/index.html#currentPage-prop)**** : Item
-   ****[selectedTab](../../sdk-15.04.4/Ubuntu.Components.Tabs/index.html#selectedTab-prop)**** : Tab
-   ****[selectedTabIndex](../../sdk-15.04.4/Ubuntu.Components.Tabs/index.html#selectedTabIndex-prop)**** : int
-   ****[tabChildren](../../sdk-15.04.4/Ubuntu.Components.Tabs/index.html#tabChildren-prop)**** : list&lt;Item&gt;

<span id="details"></span>
Detailed Description
--------------------

Tabs must be placed inside a [MainView](../../sdk-15.04.4/Ubuntu.Components.MainView/index.html) so that it will automatically have a header that shows the tabs that can be selected, and the toolbar which contains the tools of the [Page](../../sdk-15.04.4/Ubuntu.Components.Page/index.html) in the currently selected [Tab](../../sdk-15.04.4/Ubuntu.Components.Tab/index.html).

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Tabs {
        id: tabs
        Tab {
            title: i18n.tr("Simple page")
            page: Page {
                Label {
                    id: label
                    anchors.centerIn: parent
                    text: "A centered label"
                }
                tools: ToolbarItems {
                    ToolbarButton {
                        text: "action"
                        onTriggered: print("action triggered")
                    }
                }
            }
        }
        Tab {
            id: externalTab
            title: i18n.tr("External")
            page: Loader {
                parent: externalTab
                anchors {
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                }
                source: (tabs.selectedTab === externalTab) ? Qt.resolvedUrl("MyCustomPage.qml") : ""
            }
        }
        Tab {
            title: i18n.tr("List view")
            page: Page {
                ListView {
                    clip: true
                    anchors.fill: parent
                    model: 20
                    delegate: ListItem.Standard {
                        iconName: "compose"
                        text: "Item "+modelData
                    }
                }
            }
        }
    }
}
```

As the example above shows, an external [Page](../../sdk-15.04.4/Ubuntu.Components.Page/index.html) inside a [Tab](../../sdk-15.04.4/Ubuntu.Components.Tab/index.html) can be loaded using a Loader. Note that setting the top anchor or the height of the Loader would override the [Page](../../sdk-15.04.4/Ubuntu.Components.Page/index.html) height. We avoid this because the [Page](../../sdk-15.04.4/Ubuntu.Components.Page/index.html) automatically adapts its height to accommodate for the header.

It is possible to use a Repeater to generate tabs, but when doing so, ensure that the Repeater is declared inside the Tabs at the end, because otherwise the shuffling of the order of children by the Repeater can cause incorrect ordering of the tabs.

The [Navigation Patterns](http://design.ubuntu.com/apps/global-patterns/navigation) specify that a tabs header should never be combined with the back button of a [PageStack](../../sdk-15.04.4/Ubuntu.Components.PageStack/index.html). The only way to combine Tabs and [PageStack](../../sdk-15.04.4/Ubuntu.Components.PageStack/index.html) that avoids this is by pushing the Tabs as the first page on the [PageStack](../../sdk-15.04.4/Ubuntu.Components.PageStack/index.html), and pushing other pages on top of that, as is shown in the following example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    id: mainView
    width: units.gu(38)
    height: units.gu(50)
    PageStack {
        id: pageStack
        Component.onCompleted: push(tabs)
        Tabs {
            id: tabs
            Tab {
                title: "Tab 1"
                page: Page {
                    Button {
                        anchors.centerIn: parent
                        onClicked: pageStack.push(page3)
                        text: "Press"
                    }
                }
            }
            Tab {
                title: "Tab 2"
                page: Page {
                    Label {
                        anchors.centerIn: parent
                        text: "Use header to navigate between tabs"
                    }
                }
            }
        }
        Page {
            id: page3
            visible: false
            title: "Page on stack"
            Label {
                anchors.centerIn: parent
                text: "Press back to return to the tabs"
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
<td><p><span id="count-prop"></span><span class="qmlreadonly">read-only</span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Contains the number of tabs in the Tabs component.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentPage-prop"></span><span class="qmlreadonly">read-only</span><span class="name">currentPage</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The page of the currently selected tab.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedTab-prop"></span><span class="qmlreadonly">read-only</span><span class="name">selectedTab</span> : <span class="type"><a href="../../sdk-15.04.4/Ubuntu.Components.Tab/index.html">Tab</a></span></p></td>
</tr>
</tbody>
</table>

The currently selected tab.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedTabIndex-prop"></span><span class="name">selectedTabIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The index of the currently selected tab. The first tab is 0, and -1 means that no tab is selected. The initial value is 0 if Tabs has contents, or -1 otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tabChildren-prop"></span><span class="qmldefault">default</span><span class="name">tabChildren</span> : <span class="type">list</span>&lt;<span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Children are placed in a separate item that has functionality to extract the Tab items.

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
