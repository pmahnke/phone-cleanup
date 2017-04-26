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
-   [SDK 15.04.1](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   ListItemActions

ListItemActions
===============

<span class="subtitle"></span>
Provides configuration for actions to be added to a ListItem. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.2        |

<span id="properties"></span>
Properties
----------

-   ****[actions](index.html#actions-prop)**** : list&lt;Action&gt;
-   ****[delegate](index.html#delegate-prop)**** : Component

<span id="details"></span>
Detailed Description
--------------------

[ListItem](../Ubuntu.Components.ListItem/index.html) accepts actions that can be configured to appear when swiped to left or right. The API does not limit the number of actions to be assigned for leading or trailing actions, however the design constraints are allowing a maximum of 1 action on leading- and a maximum of 3 actions on trailing side of the [ListItem](../Ubuntu.Components.ListItem/index.html).

The [actions](index.html#actions-prop) are Action instances or elements derived from Action. The default visualization of the actions can be overridden using the [delegate](index.html#delegate-prop) property, and the default implementation uses the `name` property of the Action.

<span id="using-with-listviews"></span>
#### Using with ListViews

[ListItemActions](index.html) instances can be shared between [ListItem](../Ubuntu.Components.ListItem/index.html) instances within the same view. When shared, the memory footprint of the view will be lot smaller, as there will be no individual action container created for each list's actions. Having individual [ListItemActions](index.html) instances increases the memory footprint, and also has performance impact on kinetic scrolling.

The examples below illustrate the worst and best practice when used in a [ListView](../../sdk-14.10/QtQuick.ListView/index.html). The worst case:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(40)
    height: units.gu(71)
    UbuntuListView {
        anchors.fill: parent
        model: 10000
        delegate: ListItem {
            leadingActions: ListItemActions {
                actions: [
                    Action {
                        iconName: "delete"
                    }
                ]
            }
            trailingActions: ListItemActions {
                actions: [
                    Action {
                        iconName: "search"
                    },
                    Action {
                        iconName: "edit"
                    },
                    Action {
                        iconName: "copy"
                    }
                ]
            }
        }
    }
}
```

This example can be optimized by sharing the action arrays between the items:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(40)
    height: units.gu(71)
    ListItemActions {
        id: leading
        actions: Action {
            iconName: "delete"
        }
    }
    ListItemActions {
        id: trailing
        actions: [
            Action {
                iconName: "search"
            },
            Action {
                iconName: "edit"
            },
            Action {
                iconName: "copy"
            }
        ]
    }
    UbuntuListView {
        anchors.fill: parent
        model: 10000
        delegate: ListItem {
            leadingActions: leading
            trailingActions: trailing
        }
    }
}
```

<span id="action-parameter-types"></span>
#### Action parameter types

Actions handled by the [ListItem](../Ubuntu.Components.ListItem/index.html) are all triggered with the [ListItem](../Ubuntu.Components.ListItem/index.html)'s index as parameter. This index can either be the model index when used with [ListView](../../sdk-14.10/QtQuick.ListView/index.html), or the child index from the parentItem's childItems list. Actions can use this parameter to identify the instance of the [ListItem](../Ubuntu.Components.ListItem/index.html) on which it was executed, in which case [ListItem](../Ubuntu.Components.ListItem/index.html) will change the type from `Actions.None` to `Actions.Integer` when it is triggered.

Property Documentation
----------------------

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

The property holds the actions to be displayed. It can hold instances cached or declared in place. An example of cached actions:

``` qml
ListItemActions {
    id: cachedActions
    actions: [
        copyAction, searchAction, cutAction
    ]
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="name">delegate</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the custom delegate to visualize the actions listed in the [ListItemActions](index.html). When set to null, the default delegate specified by the [ListItemStyle](../Ubuntu.Components.Styles.ListItemStyle/index.html) will be used.

[ListItemActions](index.html) provides the `action` context property which contains the Action instance currently visualized. Using this property delegates can access the information to be visualized. The action is triggered by the panel item holding the visualized action, therefore only visualization is needed by the custom delegate. The other context property exposed to delegates is the `index`, which specifies the index of the action visualized.

Specifying a custom delegate will not override the triggering logic of the action, that will be still handled by the panel itself. However custom delegates may still need to distinguish the pressed/released state visually. This can be achieved using the `pressed` context property, which informs the delegate about the pressed state of the action.

The delegate height is set automatically by the panel item, only the width must be specified which will be clamped between height and the maximum width of the list item divided by the number of actions in the list.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(40)
    height: units.gu(71)
    UbuntuListView {
        anchors.fill: parent
        model: 50
        delegate: ListItem {
            trailingActions: actionsList
        }
        ListItemActions {
            id: actionsList
            delegate: Column {
                width: height + units.gu(2)
                Icon {
                    name: action.iconName
                    width: units.gu(3)
                    height: width
                    color: pressed ? "blue" : "lightblue"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Label {
                    text: action.text + "#" + index
                    width: parent.width
                    horizontalAlignment: Text.AlignHCenter
                }
            }
            actions: Action {
                iconName: "starred"
                text: "Star"
            }
        }
    }
}
```

**Note:** Putting a Rectangle in the delegate can be used to override the color of the panel. Also all [ListItem](../Ubuntu.Components.ListItem/index.html) attached properties can be used in the delegates.

Defaults to null.

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
