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
-   [SDK 15.04.6](../index.html) ›
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   State

State
=====

<span class="subtitle"></span>
Provides a general-purpose state for StateMachine. More...

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
<tr class="even">
<td>Inherited By:</td>
<td><p><a href="../QtQml.StateMachine/index.html">StateMachine</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[childMode](index.html#childMode-prop)**** : enumeration
-   ****[errorState](index.html#errorState-prop)**** : QAbstractState
-   ****[initialState](index.html#initialState-prop)**** : QAbstractState

<span id="signals"></span>
Signals
-------

-   ****[finished](index.html#finished-signal)****()

<span id="details"></span>
Detailed Description
--------------------

State objects can have child states as well as transitions to other states. State is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine/index.html).

<span id="states-with-child-states"></span>
States with Child States
------------------------

The [childMode](index.html#childMode-prop) property determines how child states are treated. For non-parallel state groups, the [initialState](index.html#initialState-prop) property must be used to set the initial state. The child states are mutually exclusive states, and the state machine needs to know which child state to enter when the parent state is the target of a transition.

The state emits the State::finished() signal when a final child state ([FinalState](../QtQml.FinalState/index.html)) is entered.

The [errorState](index.html#errorState-prop) sets the state's error state. The error state is the state that the state machine will transition to if an error is detected when attempting to enter the state (e.g. because no initial state has been set).

<span id="example-usage"></span>
Example Usage
-------------

``` qml
import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
Rectangle {
    DSM.StateMachine {
        id: stateMachine
        initialState: state
        running: true
        DSM.State {
            id: state
        }
    }
}
```

**See also** [StateMachine](../QtQml.StateMachine/index.html) and [FinalState](../QtQml.FinalState/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="childMode-prop"></span><span class="name">childMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The child mode of this state

The default value of this property is QState.ExclusiveStates.

This enum specifies how a state's child states are treated:

-   QState.ExclusiveStates The child states are mutually exclusive and an initial state must be set by setting [initialState](index.html#initialState-prop) property.
-   QState.ParallelStates The child states are parallel. When the parent state is entered, all its child states are entered in parallel.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorState-prop"></span><span class="name">errorState</span> : <span class="type"><a href="../QtQml.QAbstractState/index.html">QAbstractState</a></span></p></td>
</tr>
</tbody>
</table>

The error state of this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initialState-prop"></span><span class="name">initialState</span> : <span class="type"><a href="../QtQml.QAbstractState/index.html">QAbstractState</a></span></p></td>
</tr>
</tbody>
</table>

The initial state of this state (one of its child states).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="finished-signal"></span><span class="name">finished</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a final child state of this state is entered.

The corresponding handler is `onFinished`.

**See also** [QAbstractState::active](../QtQml.QAbstractState/index.html#active-prop), [QAbstractState::entered](../QtQml.QAbstractState/index.html#entered-signal), and [QAbstractState::exited](../QtQml.QAbstractState/index.html#exited-signal).

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
