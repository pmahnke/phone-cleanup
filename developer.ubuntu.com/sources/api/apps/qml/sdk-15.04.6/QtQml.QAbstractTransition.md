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

-   QAbstractTransition

QAbstractTransition
===================

<span class="subtitle"></span>
The QAbstractTransition type is the base type of transitions between QAbstractState objects. More...

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
<td>Inherited By:</td>
<td><p><a href="../QtQml.QSignalTransition/index.html">QSignalTransition</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[sourceState](index.html#sourceState-prop)**** : bool
-   ****[targetState](index.html#targetState-prop)**** : QAbstractState
-   ****[targetStates](index.html#targetStates-prop)**** : list&lt;QAbstractState&gt;

<span id="signals"></span>
Signals
-------

-   ****[triggered](index.html#triggered-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The [QAbstractTransition](index.html) type is the abstract base type of transitions between states ([QAbstractState](../QtQml.QAbstractState/index.html) objects) of a [StateMachine](../QtQml.StateMachine/index.html). [QAbstractTransition](index.html) is part of [The Declarative State Machine Framework](../QtQml.qmlstatemachine/index.html).

The sourceState() property has the source of the transition. The [targetState](index.html#targetState-prop) and [targetStates](index.html#targetStates-prop) properties return the target(s) of the transition.

The triggered() signal is emitted when the transition has been triggered.

Do not use [QAbstractTransition](index.html) directly; use [SignalTransition](../QtQml.SignalTransition/index.html) or [TimeoutTransition](../QtQml.TimeoutTransition/index.html) instead.

**See also** [SignalTransition](../QtQml.SignalTransition/index.html) and [TimeoutTransition](../QtQml.TimeoutTransition/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceState-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">sourceState</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The source state (parent) of this transition.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targetState-prop"></span><span class="name">targetState</span> : <span class="type"><a href="../QtQml.QAbstractState/index.html">QAbstractState</a></span></p></td>
</tr>
</tbody>
</table>

The target state of this transition.

If a transition has no target state, the transition may still be triggered, but this will not cause the state machine's configuration to change (i.e. the current state will not be exited and re-entered).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targetStates-prop"></span><span class="name">targetStates</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtQml.QAbstractState/index.html">QAbstractState</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The target states of this transition.

If multiple states are specified, they all must be descendants of the same parallel group state.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggered-signal"></span><span class="name">triggered</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the transition has been triggered.

The corresponding handler is `onTriggered`.

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
