---
Title: Ubuntu.Components.Tab
---
        
Tab
===

<span class="subtitle"></span>
Component to represent a single tab in a Tabs environment. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.2</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[index](#index-prop)**** : int
-   ****[page](#page-prop)**** : Item
-   ****[title](#title-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Examples: See [Tabs](../Ubuntu.Components.Tabs.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="index-prop"></span><span class="qmlreadonly">read-only</span><span class="name">index</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property holds the index of the tab within the Tabs.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="page-prop"></span><span class="name">page</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The contents of the Tab. Use a [Page](../Ubuntu.Components.Page.md) or a Loader that instantiates a Component or loads an external [Page](../Ubuntu.Components.Page.md). When using a Loader, do not set the anchors or dimensions of the Loader so that the [Page](../Ubuntu.Components.Page.md) can control the height and prevent overlapping the header. Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(40)
    height: units.gu(50)
    Component {
        id: pageComponent
        Page {
            Label {
                anchors.centerIn: parent
                text: "Loaded when tab is selected."
            }
        }
    }
    Tabs {
        id: tabs
        Tab {
            title: i18n.tr("Simple page")
            page: Page {
                Label {
                    anchors.centerIn: parent
                    text: i18n.tr("Always loaded")
                }
            }
        }
        Tab {
            id: loaderTab
            title: i18n.tr("Page loader")
            page: Loader {
                // no anchors
                id: loader
                sourceComponent: tabs.selectedTab == loaderTab ? pageComponent : null
                onStatusChanged: if (loader.status == Loader.Ready) console.log('Loaded')
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
<td><p><span id="title-prop"></span><span class="name">title</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The title that is shown on the tab button used to select this tab.

