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
-   [SDK 15.04.3](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   ActionContext

ActionContext
=============

<span class="subtitle"></span>
ActionContext groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The ActionManager then exposes the actions from these different contexts. More...

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
<td>Inherited By:</td>
<td><p><a href="../Ubuntu.Components.PopupContext/index.html">PopupContext</a>.</p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[actions](index.html#actions-prop)**** : list&lt;Action&gt;
-   ****[active](index.html#active-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

[ActionContext](index.html) drives the state of its [actions](index.html#actions-prop). Shortcuts and mnemonics are only registered if the context is active or if the action is assigned to an [ActionItem](../Ubuntu.Components.ActionItem/index.html) all of whose parent contexts are active. In the following example the [ActionContext](index.html) drives the underlaying `action1` and `action2` shortcuts, and `orphanAction` will never trigger as it is neither enclosed in an active context nor assigned to an [ActionItem](../Ubuntu.Components.ActionItem/index.html).

``` qml
import QtQuick 2.4
import ubuntu.Componenst 1.3
Rectangle {
    id: root
    width: units.gu(40)
    height: units.gu(71)
    ActionContext {
        id: rootContext
        active: true
        actions: Action {
            shortcut: 'Ctrl+A'
            text: rootContext.active ? "Deactivate" : "Activate"
            onTriggered: rootContext.active = !rootContext.active
        }
    }
    Action {
        id: orphanAction
        text: "Orphan"
        shortcut: 'Ctrl+O'
        onTriggered: console.log("This will not be called")
    }
    Column {
        Button {
            text: rootContext.active ? "Deactivate" : "Activate"
            onClicked: rootContext.active = !rootContext.active
        }
        Button {
            action: Action {
                id: action1
                text: "F&irst Button"
                onTriggered: console.log("First Button triggered")
            }
        }
        Button {
            action: Action {
                id: action2
                text: "S&econd Button"
                shortcut: 'Ctrl+Alt+2'
                onTriggered: console.log("Second Button triggered")
            }
        }
    }
}
```

The toolkit assigns an [ActionContext](index.html) to each Page component, which is activated/deactivated together with the Page itself, driving the shortcut activations on the components and actions declared in the Page.

**See also** [PopupContext](../Ubuntu.Components.PopupContext/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="qmldefault">default</span><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="../Ubuntu.Components.Action/index.html">Action</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of Actions in this [ActionContext](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-prop"></span><span class="name">active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true the context is active. If false the context is inactive. Defaults to false.

When context has been added to the [ActionManager](../Ubuntu.Components.ActionManager/index.html) setting this value controls whether or not the actions in a context are available to external components.

The [ActionManager](../Ubuntu.Components.ActionManager/index.html) monitors the active property of each of the local contexts that has been added to it. There can be more than one local context active at a. time. When a local context is set active the manager will notice this and will export the actions from the context.

**Note:** An Action declared to a component falling under an item that is a child of an inactive ActiveContext can be triggered manually using the mouse or connections.

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
