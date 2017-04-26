---
Title: Ubuntu.Components.Page
---
        
Page
====

<span class="subtitle"></span>
A page is the basic Item that must be used inside the MainView, PageStack and Tabs. Anchors and height of a Page are automatically determined to align with the header of the MainView, but can be overridden. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import Ubuntu.Components 1.1` |

<span id="properties"></span>
Properties
----------

-   ****[actions](#actions-prop)**** : list&lt;Action&gt;
-   ****[flickable](#flickable-prop)**** : Flickable
-   ****[head](#head-prop)**** : PageHeadConfiguration
-   ****[title](#title-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

[MainView](../Ubuntu.Components.MainView.md) provides a header for Pages it includes. The text and actions of the header are determined by the [title](#title-prop) and [head](#head-prop) properties of the page:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
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

See [MainView](../Ubuntu.Components.MainView.md) for more examples on how to use the header. Advanced navigation structures can be created by adding Pages to a [PageStack](../Ubuntu.Components.PageStack.md) or [Tabs](../Ubuntu.Components.Tabs.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Local actions. These actions will be made available outside the application (for example, to HUD) when the Page is active. For actions that are always available when the application is running, use the actions property of [MainView](../Ubuntu.Components.MainView.md). For actions in the header, see [head](#head-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickable-prop"></span><span class="name">flickable</span> : <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span></p></td>
</tr>
</tbody>
</table>

Optional flickable that controls the header. This property is automatically set to the first child of the page that is Flickable and anchors to the top of the page or fills the page. For example:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
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
<td><p><span id="head-prop"></span><span class="qmlreadonly">read-only</span><span class="name">head</span> : <span class="type"><a href="Ubuntu.Components.PageHeadConfiguration.md">PageHeadConfiguration</a></span></p></td>
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
<td><p><span id="title-prop"></span><span class="name">title</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The title of the page. Will be shown in the header of the [MainView](../Ubuntu.Components.MainView.md). If the page is used inside a [Tab](../Ubuntu.Components.Tab.md), the default title is the [Tab](../Ubuntu.Components.Tab.md) title. For a Page not inside a [Tab](../Ubuntu.Components.Tab.md), the default title is an empty string.

