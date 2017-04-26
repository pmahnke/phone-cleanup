<a href="https://developer.ubuntu.com/" class="logo-ubuntu"><img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/logos/logo-ubuntu-orange.svg" width="106" height="25" /> <span>developer</span></a>

-   [Jump to content](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html#main-content)
-   [Desktop](https://developer.ubuntu.com/en/desktop/)
-   [Phone](https://developer.ubuntu.com/en/phone/)
-   [Core](https://developer.ubuntu.com/core)
-   [Community](https://developer.ubuntu.com/en/community/)
-   [Publish](https://developer.ubuntu.com/en/publish/)
-   [My Apps](https://myapps.developer.ubuntu.com/)

Search

<img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/search-white.svg" alt="Search" height="28" />

-   [APIs](https://developer.ubuntu.com/api/index.html) ›
-   [Apps](https://developer.ubuntu.com/api/apps/index.html) ›
-   [QML](https://developer.ubuntu.com/api/apps/qml/index.html) ›
-   [SDK 15.04.4](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/index.html) ›
-   [QtFeedback](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback/index.html) ›

<!-- -->

-   hapticseffect

hapticseffect
=============

<span class="subtitle"></span>
The HapticsEffect element represents a custom haptic feedback effect. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import .</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.FeedbackEffect/index.html">FeedbackEffect</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[actuator](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html#actuator-prop)**** : Actuator
-   ****[attackIntensity](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html#attackIntensity-prop)**** : double
-   ****[attackTime](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html#attackTime-prop)**** : int
-   ****[availableActuators](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html#availableActuators-prop)**** : list&lt;Actuator&gt;
-   ****[fadeIntensity](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html#fadeIntensity-prop)**** : double
-   ****[fadeTime](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html#fadeTime-prop)**** : int
-   ****[intensity](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html#intensity-prop)**** : double
-   ****[period](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html#period-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

This class closely corresponds to the C++ QFeedbackHapticsEffect class.

``` qml
import QtFeedback 5.0
HapticsEffect {
    id: rumbleEffect
    attackIntensity: 0.0
    attackTime: 250
    intensity: 1.0
    duration: 100
    fadeTime: 250
    fadeIntensity: 0.0
}
MouseArea {
    onClicked: {
    rumbleEffect.start();  // plays a rumble effect
}
```

**See also** Actuator and QFeedbackHapticsEffect.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actuator-prop"></span><span class="name">actuator</span> : <span class="type"><a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.actuator/index.html">Actuator</a></span></p></td>
</tr>
</tbody>
</table>

The actuator that is used for playing this effect.

**See also** [Actuator](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.actuator/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="attackIntensity-prop"></span><span class="name">attackIntensity</span> : <span class="type">double</span></p></td>
</tr>
</tbody>
</table>

The intensity of the attack (fade-in) part of the haptics effect, from 0.0 to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="attackTime-prop"></span><span class="name">attackTime</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The duration of the attack (fade-in) part of the haptics effect.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableActuators-prop"></span><span class="name">availableActuators</span> : <span class="type">list</span>&lt;<span class="type"><a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.actuator/index.html">Actuator</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of available actuators. This property is read only.

**See also** [Actuator](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.actuator/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fadeIntensity-prop"></span><span class="name">fadeIntensity</span> : <span class="type">double</span></p></td>
</tr>
</tbody>
</table>

The intensity of the fade-out part of the haptics effect, from 0.0 to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fadeTime-prop"></span><span class="name">fadeTime</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The duration of the fade-out part of the haptics effect.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="intensity-prop"></span><span class="name">intensity</span> : <span class="type">double</span></p></td>
</tr>
</tbody>
</table>

The intensity of the main part of the haptics effect, from 0.0 to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="period-prop"></span><span class="name">period</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The period of the haptics effect. If the period is zero, the effect will not repeat. If it is non-zero, the effect will repeat every period milliseconds.

[Back to top](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html#)

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

    -   [English](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html "Change to language: English")
    -   [Simplified Chinese](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html "Change to language: Simplified Chinese")

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

<span class="accessibility-aid">[Go to the top of the page](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtFeedback.hapticseffect/index.html#)</span>
