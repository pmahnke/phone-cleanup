---
Title: Ubuntu.Components.Tabs
---
        
Tabs
====

<span class="subtitle"></span>
The Tabs class provides an environment where multible Tab children can be added, and the user is presented with a tab bar with tab buttons to select different tab pages. More...

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
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[count](#count-prop)**** : int
-   ****[currentPage](#currentPage-prop)**** : Item
-   ****[selectedTab](#selectedTab-prop)**** : Tab` (preliminary)`
-   ****[selectedTabIndex](#selectedTabIndex-prop)**** : int` (preliminary)`
-   ****[tabChildren](#tabChildren-prop)**** : list&lt;Item&gt;

<span id="details"></span>
Detailed Description
--------------------

Tabs must be placed inside a [MainView](../Ubuntu.Components.MainView.md) so that it will automatically have a header that shows the tabs that can be selected, and the toolbar which contains the tools of the [Page](../Ubuntu.Components.Page.md) in the currently selected [Tab](../Ubuntu.Components.Tab.md).

[See also the Design Guidelines on Tabs](http://design.ubuntu.com/apps/building-blocks/tabs).

Example:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 1.0 as ListItem
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

As the example above shows, an external [Page](../Ubuntu.Components.Page.md) inside a [Tab](../Ubuntu.Components.Tab.md) can be loaded using a Loader. Note that setting the top anchor or the height of the Loader would override the [Page](../Ubuntu.Components.Page.md) height. We avoid this because the [Page](../Ubuntu.Components.Page.md) automatically adapts its height to accommodate for the header.

It is possible to use a Repeater to generate tabs, but when doing so, ensure that the Repeater is declared inside the Tabs at the end, because otherwise the shuffling of the order of children by the Repeater can cause incorrect ordering of the tabs.

The [Navigation Patterns](http://design.ubuntu.com/apps/global-patterns/navigation) specify that a tabs header should never be combined with the back button of a [PageStack](../Ubuntu.Components.PageStack.md). The only way to combine Tabs and [PageStack](../Ubuntu.Components.PageStack.md) that avoids this is by pushing the Tabs as the first page on the [PageStack](../Ubuntu.Components.PageStack.md), and pushing other pages on top of that, as is shown in the following example:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
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
<td><p><span id="count-prop"></span><span class="qmlreadonly">read-only</span><span class="name">count</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td>
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
<td><p><span id="currentPage-prop"></span><span class="qmlreadonly">read-only</span><span class="name">currentPage</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
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
<td><p><span id="selectedTab-prop"></span><span class="qmlreadonly">read-only</span><span class="name">selectedTab</span> : <span class="type"><a href="Ubuntu.Components.Tab.md">Tab</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The currently selected tab.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedTabIndex-prop"></span><span class="name">selectedTabIndex</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The index of the currently selected tab. The first tab is 0, and -1 means that no tab is selected. The initial value is 0 if Tabs has contents, or -1 otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tabChildren-prop"></span><span class="qmldefault">default</span><span class="name">tabChildren</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="QtQuick.Item.md">Item</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Children are placed in a separate item that has functionality to extract the Tab items.

