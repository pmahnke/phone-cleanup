---
Title: Ubuntu.Components.ToolbarItems
---
        
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
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[back](#back-prop)**** : Item
-   ****[contents](#contents-prop)**** : list&lt;Object&gt;
-   ****[locked](#locked-prop)**** : bool
-   ****[opened](#opened-prop)**** : bool
-   ****[pageStack](#pageStack-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

Each [Page](../Ubuntu.Components.Page.md) has a tools property that can be set to change the tools of toolbar supplied by [MainView](../Ubuntu.Components.MainView.md) when the [Page](../Ubuntu.Components.Page.md) is active. Each ToolbarItems consists of a set of Items and several properties that specify the behavior of the toolbar when the [Page](../Ubuntu.Components.Page.md) is active.

When a [Page](../Ubuntu.Components.Page.md) is used inside a [MainView](../Ubuntu.Components.MainView.md), [Tabs](../Ubuntu.Components.Tabs.md) or [PageStack](../Ubuntu.Components.PageStack.md), the toolbar will automatically show the tools of the active [Page](../Ubuntu.Components.Page.md). When the active [Page](../Ubuntu.Components.Page.md) inside the [Tabs](../Ubuntu.Components.Tabs.md) or [PageStack](../Ubuntu.Components.PageStack.md) is updated by changing the selected [Tab](../Ubuntu.Components.Tab.md) or by pushing/popping a [Page](../Ubuntu.Components.Page.md) on the [PageStack](../Ubuntu.Components.PageStack.md), the toolbar will automatically hide, except if the new active [Page](../Ubuntu.Components.Page.md) has the [locked](#locked-prop) property set.

[See also the Design Guidelines on Toolbars](http://design.ubuntu.com/apps/building-blocks/toolbar).

It is recommended to use [ToolbarButton](../Ubuntu.Components.ToolbarButton.md) inside the ToolbarItems to define the buttons that will be visible to the user:

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

However, it is possible to include non-[ToolbarButton](../Ubuntu.Components.ToolbarButton.md) Items inside ToolbarItems, and to mix ToolbarButtons and other Items (for example standard Buttons). ToolbarButtons automatically span the full height of the toolbar, and other Items you will probably want to center vertically:

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
<td><p><span id="back-prop"></span><span class="name">back</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The back button. If it is visible, it will be shown on the left-side of the toolbar. If there is a [PageStack](../Ubuntu.Components.PageStack.md) with depth greater than 1, the back button will be visible and triggering it will pop the page on top of the stack. If there is no [PageStack](../Ubuntu.Components.PageStack.md) with depth greater than 1, the back button is hidden by default

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
<td><p><span id="contents-prop"></span><span class="qmldefault">default</span><span class="name">contents</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="https://developer.ubuntu.comapps/qml/sdk-14.10/Ubuntu.Components.Object/">Object</a></span>&gt;</p></td>
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

The toolbar is opened. When the toolbar is not locked, this value is automatically updated when the toolbar is opened/closed by user interaction or by other events (such as changing the active [Page](../Ubuntu.Components.Page.md)).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pageStack-prop"></span><span class="name">pageStack</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

[PageStack](../Ubuntu.Components.PageStack.md) for the back button. [Page](../Ubuntu.Components.Page.md) will automatically set the pageStack property of its tools.

