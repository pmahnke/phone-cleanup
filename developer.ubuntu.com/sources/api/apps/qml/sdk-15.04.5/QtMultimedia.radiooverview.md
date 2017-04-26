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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.5</a> ›
-   <a href="../QtMultimedia/index.html" class="sub-nav-item">QtMultimedia</a> ›

<!-- -->

-   Radio Overview

Radio Overview
==============

<span class="subtitle"></span>
<span id="details"></span>
The Qt Multimedia API provides a number of radio related classes for control over the radio tuner of the system, and gives access to Radio Data System (RDS) information for radio stations that broadcasts it.

<span id="radio-features"></span>
Radio Features
--------------

The Radio API consists of two separate components. The radio tuner, QRadioTuner or the Radio QML type, which handles control of the radio hardware as well as tuning. The other is the radio data component, either QRadioData or the RadioData QML type, which gives access to RDS information.

<span id="radio-implementation-details"></span>
Radio Implementation Details
----------------------------

The actual level of support depends on the underlying system support. It should be noted that only analog radio is supported, and the properties of the radio data component will only be populated if the system radio tuner supports RDS.

<span id="examples"></span>
Examples
--------

There are two examples showing the usage of the Radio API. One shows how to use the QRadioTuner class from C++. The other shows how to implement a similar application using QML and Radio.

<span id="radio-example"></span>
### Radio Example

This image shows the example using the QRadioTuner API.

![](https://developer.ubuntu.com/static/devportal_uploaded/fed08b9a-dc66-4e8b-ad23-24275c7d67d7-api/apps/qml/sdk-15.04.5/radiooverview/images/radio-example.png)

The example reads the frequency from the radio tuner, and sets the "Got Signal" text based on the signal strength. The buttons allow the user to tune and scan up and down the frequency band, while the slider to the side allows volume adjustments.

Only the FM frequency band is used in this example.

<span id="declarative-radio-example"></span>
### Declarative Radio Example

![](https://developer.ubuntu.com/static/devportal_uploaded/d8207913-3dbc-43f6-b9f9-0b67e3488b48-api/apps/qml/sdk-15.04.5/radiooverview/images/declarative-radio-example.png)

This example has the same functionality of the regular radio example mentioned above, but it includes a nice horizontal dial showing the position of the current frequency inside the band.

<span id="reference-documentation"></span>
Reference documentation
-----------------------

<span id="c-classes"></span>
### C++ Classes

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QRadioData</p></td>
<td><p>Interfaces to the RDS functionality of the system radio</p></td>
</tr>
<tr class="even">
<td><p>QRadioTuner</p></td>
<td><p>Interface to the systems analog radio device</p></td>
</tr>
</tbody>
</table>

<span id="qml-types"></span>
### QML Types

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../QtMultimedia.Radio/index.html">Radio</a></p></td>
<td><p>Access radio functionality from a QML application</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtMultimedia.RadioData/index.html">RadioData</a></p></td>
<td><p>Access RDS data from a QML application</p></td>
</tr>
</tbody>
</table>

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
