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
-   [SDK 15.04.4](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   Toolbar

Toolbar
=======

<span class="subtitle"></span>
Toolbar that can be used as an extension for the edit mode header. Example: More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.StyledItem/index.html">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[leadingActionBar](index.html#leadingActionBar-prop)**** : ActionBar
-   ****[trailingActionBar](index.html#trailingActionBar-prop)**** : ActionBar

<span id="details"></span>
Detailed Description
--------------------

``` qml
PageHeader {
    id: editHeader
    property Component delegate: Component {
        AbstractButton {
            id: button
            action: modelData
            width: label.width + units.gu(4)
            height: parent.height
            Rectangle {
                color: UbuntuColors.slate
                opacity: 0.1
                anchors.fill: parent
                visible: button.pressed
            }
            Label {
                anchors.centerIn: parent
                id: label
                text: action.text
                font.weight: text === "Confirm" ? Font.Normal : Font.Light
            }
        }
    }
    leadingActionBar {
        anchors.leftMargin: 0
        actions: Action {
            text: "Cancel"
            iconName: "close"
        }
        delegate: editHeader.delegate
    }
    trailingActionBar {
        anchors.rightMargin: 0
        actions: Action {
            text: "Confirm"
            iconName: "tick"
        }
        delegate: editHeader.delegate
    }
    extension: Toolbar {
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        trailingActionBar.actions: [
            Action { iconName: "bookmark-new" },
            Action { iconName: "add" },
            Action { iconName: "edit-select-all" },
            Action { iconName: "edit-copy" },
            Action { iconName: "select" }
        ]
        leadingActionBar.actions: Action {
            iconName: "delete"
            text: "delete"
            onTriggered: print("Delete action triggered")
        }
    }
}
```

See [PageHeader](../Ubuntu.Components.PageHeader/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="leadingActionBar-prop"></span><span class="qmlreadonly">read-only</span><span class="name">leadingActionBar</span> : <span class="type"><a href="../Ubuntu.Components.ActionBar/index.html">ActionBar</a></span></p></td>
</tr>
</tbody>
</table>

The leading [ActionBar](../Ubuntu.Components.ActionBar/index.html) that should hold at most one action. Recommneded for the delete action. Example:

``` qml
Toolbar {
    leadingActionBar.actions: [
        Action {
            iconName: "delete"
            text: "Delete"
            onTriggered: print("delete!")
        }
    ]
}
```

See [ActionBar](../Ubuntu.Components.ActionBar/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="trailingActionBar-prop"></span><span class="qmlreadonly">read-only</span><span class="name">trailingActionBar</span> : <span class="type"><a href="../Ubuntu.Components.ActionBar/index.html">ActionBar</a></span></p></td>
</tr>
</tbody>
</table>

The [ActionBar](../Ubuntu.Components.ActionBar/index.html) with trailing actions. Example:

``` qml
Toolbar {
      trailingActionBar.actions: [
          Action { iconName: "bookmark-new" },
          Action { iconName: "add" },
          Action { iconName: "edit-select-all" },
          Action { iconName: "edit-copy" }
      ]
}
```

The trailing [ActionBar](../Ubuntu.Components.ActionBar/index.html) may contain up to 8 actions. Scrolling and support for more than 8 actions will be added in the near future. See [ActionBar](../Ubuntu.Components.ActionBar/index.html).

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
