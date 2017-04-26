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

-   PageHeadConfiguration

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
<td><p><a href="../QtQml.QtObject/index.html">QtObject</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[actions](index.html#actions-prop)**** : Action
-   ****[backAction](index.html#backAction-prop)**** : Action
-   ****[contents](index.html#contents-prop)**** : Item
-   ****[foregroundColor](index.html#foregroundColor-prop)**** : color
-   ****[preset](index.html#preset-prop)**** : string
-   ****[sections](index.html#sections-prop)**** : PageHeadSections

<span id="details"></span>
Detailed Description
--------------------

For examples how to use Page.head, see [Page](../Ubuntu.Components.Page/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type"><a href="../Ubuntu.Components.Action/index.html">Action</a></span></p></td>
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
<td><p><span id="backAction-prop"></span><span class="name">backAction</span> : <span class="type"><a href="../Ubuntu.Components.Action/index.html">Action</a></span></p></td>
</tr>
</tbody>
</table>

Overrides the default [PageStack](../Ubuntu.Components.PageStack/index.html) back button and the [Tabs](../Ubuntu.Components.Tabs/index.html) drawer button in the header.

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
<td><p><span id="contents-prop"></span><span class="name">contents</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

Set this property to show this Item in the header instead of the title. Use a [TextField](../Ubuntu.Components.TextField/index.html) here for implementing search in header.

The parent of this Item will be binded while the [Page](../Ubuntu.Components.Page/index.html) is active. The header contents will automatically be anchored to the left and vertically centered inside the header.

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

See [PageHeadState](../Ubuntu.Components.PageHeadState/index.html) for an example that shows how search mode can be implemented.

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
<td><p><span id="sections-prop"></span><span class="qmlreadonly">read-only</span><span class="name">sections</span> : <span class="type"><a href="../Ubuntu.Components.PageHeadSections/index.html">PageHeadSections</a></span></p></td>
</tr>
</tbody>
</table>

Defines the sections in the page header divider.

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
