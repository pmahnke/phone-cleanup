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
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   HistoryState

HistoryState
============

<span class="subtitle"></span>
The HistoryState type provides a means of returning to a previously active substate. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQml.StateMachine 1.0</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Qt 5.4</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../QtQml.QAbstractState/index.html">QAbstractState</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[defaultState](index.html#defaultState-prop)**** : QAbstractState
-   ****[historyType](index.html#historyType-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

A history state is a pseudo-state that represents the child state that the parent state was in the last time the parent state was exited. A transition with a history state as its target is in fact a transition to one of the other child states of the parent state. [HistoryState](index.html) is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine/index.html).

Use the [defaultState](index.html#defaultState-prop) property to set the state that should be entered if the parent state has never been entered.

<span id="example-usage"></span>
Example Usage
-------------

``` qml
import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
Rectangle {
    Button {
        anchors.fill: parent
        id: button
        text: "Press me"
        DSM.StateMachine {
            id: stateMachine
            initialState: parentState
            running: true
            DSM.State {
                id: parentState
                initialState: child2
                onEntered: console.log("parentState entered")
                onExited: console.log("parentState exited")
                DSM.State {
                    id: child1
                    onEntered: console.log("child1 entered")
                    onExited: console.log("child1 exited")
                }
                DSM.State {
                    id: child2
                    onEntered: console.log("child2 entered")
                    onExited: console.log("child2 exited")
                }
                DSM.HistoryState {
                    id: historyState
                    defaultState: child1
                }
                DSM.SignalTransition {
                    targetState: historyState
                    // Clicking the button will cause the state machine to enter the child state
                    // that parentState was in the last time parentState was exited, or the history state's default
                    // state if parentState has never been entered.
                    signal: button.clicked
                }
            }
        }
    }
}
```

By default, a history state is shallow, meaning that it will not remember nested states. This can be configured through the [historyType](index.html#historyType-prop) property.

**See also** [StateMachine](../QtQml.StateMachine/index.html) and [State](../QtQml.State/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultState-prop"></span><span class="name">defaultState</span> : <span class="type"><a href="../QtQml.QAbstractState/index.html">QAbstractState</a></span></p></td>
</tr>
</tbody>
</table>

The default state of this history state.

The default state indicates the state to transition to if the parent state has never been entered before.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="historyType-prop"></span><span class="name">historyType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The type of history that this history state records.

The default value of this property is QHistoryState.ShallowHistory.

This enum specifies the type of history that a QHistoryState records.

-   QHistoryState.ShallowHistory Only the immediate child states of the parent state are recorded. In this case, a transition with the history state as its target will end up in the immediate child state that the parent was in the last time it was exited. This is the default.
-   QHistoryState.DeepHistory Nested states are recorded. In this case a transition with the history state as its target will end up in the most deeply nested descendant state the parent was in the last time it was exited.

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
