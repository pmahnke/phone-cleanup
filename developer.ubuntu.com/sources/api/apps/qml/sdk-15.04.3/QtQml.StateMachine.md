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
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   StateMachine

StateMachine
============

<span class="subtitle"></span>
Provides a hierarchical finite state machine. More...

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
<td><p><a href="../QtQml.State/index.html">State</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[errorString](index.html#errorString-prop)**** : string
-   ****[globalRestorePolicy](index.html#globalRestorePolicy-prop)**** : enumeration
-   ****[running](index.html#running-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[started](index.html#started-signal)****()
-   ****[stopped](index.html#stopped-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[start](index.html#start-method)****()
-   ****[stop](index.html#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

[StateMachine](index.html) is based on the concepts and notation of [Statecharts](http://www.wisdom.weizmann.ac.il/~dharel/SCANNED.PAPERS/Statecharts.pdf). [StateMachine](index.html) is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine/index.html).

A state machine manages a set of states and transitions between those states; these states and transitions define a state graph. Once a state graph has been built, the state machine can execute it. [StateMachine](index.html)'s execution algorithm is based on the [State Chart XML (SCXML)](http://www.w3.org/TR/scxml/) algorithm. The framework's [overview](../QtQml.qmlstatemachine/index.html) gives several state graphs and the code to build them.

Before the machine can be started, the [initialState](../QtQml.State/index.html#initialState-prop) must be set. The initial state is the state that the machine enters when started. You can then set running property to true or [start()](index.html#start-method) the state machine. The started signal is emitted when the initial state is entered.

The state machine processes events and takes transitions until a top-level final state is entered; the state machine then emits the finished() signal. You can also [stop()](index.html#stop-method) the state machine explicitly (you can also set running property to false). The stopped signal is emitted in this case.

<span id="example-usage"></span>
Example Usage
-------------

The following snippet shows a state machine that will finish when a button is clicked:

``` qml
import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
Rectangle {
    Button {
        anchors.fill: parent
        id: button
        text: "Finish state"
        DSM.StateMachine {
            id: stateMachine
            initialState: state
            running: true
            DSM.State {
                id: state
                DSM.SignalTransition {
                    targetState: finalState
                    signal: button.clicked
                }
            }
            DSM.FinalState {
                id: finalState
            }
            onFinished: Qt.quit()
        }
    }
}
```

If an error is encountered, the machine will look for an [errorState](../QtQml.State/index.html#errorState-prop), and if one is available, it will enter this state. After the error state is entered, the type of the error can be retrieved with error(). The execution of the state graph will not stop when the error state is entered. If no error state applies to the erroneous state, the machine will stop executing and an error message will be printed to the console.

**See also** [QAbstractState](../QtQml.QAbstractState/index.html), [State](../QtQml.State/index.html), [SignalTransition](../QtQml.SignalTransition/index.html), [TimeoutTransition](../QtQml.TimeoutTransition/index.html), [HistoryState](../QtQml.HistoryState/index.html), and [The Declarative State Machine Framework](../QtQml.qmlstatemachine/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-prop"></span><span class="qmlreadonly">read-only</span><span class="name">errorString</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The error string of this state machine.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="globalRestorePolicy-prop"></span><span class="name">globalRestorePolicy</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The restore policy for states of this state machine.

The default value of this property is QState.DontRestoreProperties.

This enum specifies the restore policy type. The restore policy takes effect when the machine enters a state which sets one or more properties. If the restore policy is set to QState.RestoreProperties, the state machine will save the original value of the property before the new value is set.

Later, when the machine either enters a state which does not set a value for the given property, the property will automatically be restored to its initial value.

Only one initial value will be saved for any given property. If a value for a property has already been saved by the state machine, it will not be overwritten until the property has been successfully restored.

-   QState.DontRestoreProperties The state machine should not save the initial values of properties and restore them later.
-   QState.RestoreProperties The state machine should save the initial values of properties and restore them later.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The running state of this state machine.

**See also** [start()](index.html#start-method) and [stop()](index.html#stop-method).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="started-signal"></span><span class="name">started</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the state machine has entered its initial state ([State::initialState](../QtQml.State/index.html#initialState-prop)).

The corresponding handler is `onStarted`.

**See also** [running](index.html#running-prop), [start()](index.html#start-method), and [State::finished](../QtQml.State/index.html#finished-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stopped-signal"></span><span class="name">stopped</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the state machine has stopped.

The corresponding handler is `onStopped`.

**See also** [running](index.html#running-prop), [stop()](index.html#stop-method), and [State::finished](../QtQml.State/index.html#finished-signal).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Starts this state machine. The machine will reset its configuration and transition to the initial state. When a final top-level state ([FinalState](../QtQml.FinalState/index.html)) is entered, the machine will emit the finished() signal.

**Note:** A state machine will not run without a running event loop, such as the main application event loop started with QCoreApplication::exec() or QApplication::exec().

**See also** [started](index.html#started-signal), [State::finished](../QtQml.State/index.html#finished-signal), [stop()](index.html#stop-method), [State::initialState](../QtQml.State/index.html#initialState-prop), and [running](index.html#running-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stops this state machine. The state machine will stop processing events and then emit the stopped signal.

**See also** [stopped](index.html#stopped-signal), [start()](index.html#start-method), and [running](index.html#running-prop).

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
