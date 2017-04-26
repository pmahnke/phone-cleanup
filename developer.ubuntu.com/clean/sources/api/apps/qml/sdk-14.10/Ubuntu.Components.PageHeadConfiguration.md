---
Title: Ubuntu.Components.PageHeadConfiguration
---
        
PageHeadConfiguration
=====================

<span class="subtitle"></span>
Page.head is used to configure the header for a Page. More...

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
<td>Since:</td>
<td>Ubuntu.Components 1.1</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="QtQml.QtObject.md">QtObject</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[actions](#actions-prop)**** : Action
-   ****[backAction](#backAction-prop)**** : Action
-   ****[contents](#contents-prop)**** : Item
-   ****[foregroundColor](#foregroundColor-prop)**** : color
-   ****[preset](#preset-prop)**** : string
-   ****[sections](#sections-prop)**** : PageHeadSections

<span id="details"></span>
Detailed Description
--------------------

For examples how to use Page.head, see [Page](../Ubuntu.Components.Page.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

List of actions to show in the header.

Example:

``` qml
Page {
    title: "Custom header actions"
    head.actions: [
        Action {
            iconName: "save"
            text: i18n.tr("Save")
        },
        Action {
            iconName: "add"
            text: i18n.tr("Add")
        }
    ]
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backAction-prop"></span><span class="name">backAction</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

Overrides the default [PageStack](../Ubuntu.Components.PageStack.md) back button and the [Tabs](../Ubuntu.Components.Tabs.md) drawer button in the header.

Example:

``` qml
Page {
    title: "Back Action Page"
    head.backAction: Action {
        iconName: "close"
        onTriggered: {
            console.log("Run custom back action")
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
<td><p><span id="contents-prop"></span><span class="name">contents</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

Set this property to show this Item in the header instead of the title. Use a [TextField](../Ubuntu.Components.TextField.md) here for implementing search in header.

The parent of this Item will be binded while the [Page](../Ubuntu.Components.Page.md) is active. The header contents will automatically be anchored to the left and vertically centered inside the header.

Example:

``` qml
Page {
    title: "Invisible title"
    head.contents: Rectangle {
        color: UbuntuColors.orange
        height: units.gu(5)
        width: parent ? parent.width - units.gu(2) : undefined
    }
}
```

See [PageHeadState](../Ubuntu.Components.PageHeadState.md) for an example that shows how search mode can be implemented.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="foregroundColor-prop"></span><span class="name">foregroundColor</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-color.html">color</a></span></p></td>
</tr>
</tbody>
</table>

The color of the text and icons.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preset-prop"></span><span class="name">preset</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

Choose a preset for the header visuals and behavior. The default is an empty string "". By setting this to "selection", title will be hidden and actions will be represented by icons with a label.

Example:

``` qml
import QtQuick 2.2
import Ubuntu.Components 1.1
MainView {
    id: mainView
    width: units.gu(40)
    height: units.gu(50)
    useDeprecatedToolbar: false
    Page {
        id: page
        title: "Demo"
        state: "default"
        states: [
            PageHeadState {
                name: "default"
                head: page.head
                actions: [
                    Action {
                        iconName: "contact"
                        text: "Contact"
                    }
                ]
            },
            State {
                id: selectState
                name: "select"
                property Action leaveSelect: Action {
                    iconName: "back"
                    text: "Back"
                    onTriggered: page.state = "default"
                }
                property list<Action> actions: [
                    Action {
                        iconName: "select"
                        text: "Select All"
                    },
                    Action {
                        iconName: "delete"
                        text: "Delete"
                    }
                ]
                PropertyChanges {
                    target: page.head
                    backAction: selectState.leaveSelect
                    actions: selectState.actions
                    preset: "select"
                }
            }
        ]
        Label {
            anchors.centerIn: parent
            text: "Use back button to leave selection mode."
            visible: page.state == "select"
        }
        Button {
            anchors.centerIn: parent
            onClicked: page.state = "select"
            visible: page.state != "select"
            text: "selection mode"
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
<td><p><span id="sections-prop"></span><span class="qmlreadonly">read-only</span><span class="name">sections</span> : <span class="type"><a href="Ubuntu.Components.PageHeadSections.md">PageHeadSections</a></span></p></td>
</tr>
</tbody>
</table>

Defines the sections in the page header divider.

