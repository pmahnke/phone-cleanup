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
-   [SDK 15.04.5](../index.html) ›
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   SignalTransition

SignalTransition
================

<span class="subtitle"></span>
The SignalTransition type provides a transition based on a Qt signal. More...

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
<td><p><a href="../QtQml.QSignalTransition/index.html">QSignalTransition</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[guard](index.html#guard-prop)**** : bool
-   ****[signal](index.html#signal-prop)**** : signal

<span id="details"></span>
Detailed Description
--------------------

[SignalTransition](index.html) is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine/index.html).

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
            DSM.SignalTransition {
                targetState: finalState
                signal: button.clicked
                guard: guardButton.checked
            }
        }
        DSM.FinalState {
            id: finalState
        }
        onFinished: Qt.quit()
    }
    Row {
        spacing: 2
        Button {
            id: button
            text: "Finish state"
        }
        Button {
            id: guardButton
            checkable: true
            text: checked ? "Press to block the SignalTransition" : "Press to unblock the SignalTransition"
        }
    }
}
```

**See also** [StateMachine](../QtQml.StateMachine/index.html), [FinalState](../QtQml.FinalState/index.html), and [TimeoutTransition](../QtQml.TimeoutTransition/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="guard-prop"></span><span class="name">guard</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Guard conditions affect the behavior of a state machine by enabling transitions only when they evaluate to true and disabling them when they evaluate to false.

When the signal associated with this signal transition is emitted the guard condition is evaluated. In the guard condition the arguments of the signal can be used as demonstrated in the example below.

``` qml
import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
Rectangle {
    Button {
        anchors.fill: parent
        id: button
        DSM.StateMachine {
            DSM.State {
                DSM.SignalTransition {
                    targetState: finalState
                    signal: button.mysignal
                    // the guard condition uses the mystr string argument from mysignal
                    guard: mystr == "test"
                }
            }
            DSM.FinalState {
                id: finalState
            }
        }
        // define the signal the SignalTransition is connected with
        signal mysignal(string mystr)
        // on clicking the button emit the signal with a single string argument
        onClicked: button.mysignal("test")
    }
}
```

**See also** [signal](index.html#signal-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="signal-prop"></span><span class="name">signal</span> : <span class="type"><a href="index.html#signal-prop">signal</a></span></p></td>
</tr>
</tbody>
</table>

The signal which is associated with this signal transition.

``` qml
import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
Rectangle {
    Button {
        anchors.fill: parent
        id: button
        DSM.StateMachine {
            DSM.State {
                DSM.SignalTransition {
                    targetState: finalState
                    signal: button.clicked
                }
            }
            DSM.FinalState {
                id: finalState
            }
        }
    }
}
```

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
