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

-   ServiceProperties

ServiceProperties
=================

<span class="subtitle"></span>
The component enables accessing service properties from QML. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.1        |

<span id="properties"></span>
Properties
----------

-   ****[adaptorInterface](index.html#adaptorInterface-prop)**** : string
-   ****[error](index.html#error-prop)**** : string
-   ****[path](index.html#path-prop)**** : string
-   ****[service](index.html#service-prop)**** : string
-   ****[serviceInterface](index.html#serviceInterface-prop)**** : string
-   ****[status](index.html#status-prop)**** : enum
-   ****[type](index.html#type-prop)**** : enum

<span id="details"></span>
Detailed Description
--------------------

The services accessed by the component are ones providing their interfaces through DBus. The component is specialized to read properties exposed by these services, andf to keep these property values up to date. It is not meant to access signals or slots exposed, nor to change the values of the properties watched.

Properties watched should be declared within the body of the component like any other QML property, preferably defining a default value for them. The component will enumerate these properties and will ask the service to provide values for those. When enumerating properties, each property will be checked twice, with the case specified as well as with the first letter capitalized.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
ServiceProperties {
    service: "org.freenode.AccountsService"
    path: "/org/freenode/AccountsService"
    serviceInterface: "org.freenode.AccountsService"
    adaptorInterface: "com.ubuntu.touch.Accounts.Sound"
    // listing properties to watch
    // each property name existence will be checked against the current case
    // as well as with first character capitalized
    property bool incomingCallVibrate: true
}
```

Note that there are few properties which must be set in order the component to work. These are [service](index.html#service-prop), [path](index.html#path-prop) and [adaptorInterface](index.html#adaptorInterface-prop). Also, once specified, [service](index.html#service-prop), [serviceInterface](index.html#serviceInterface-prop) and [adaptorInterface](index.html#adaptorInterface-prop) values should not be changed as it cannot be guaranteed that properties watched will be available on those service. Therefore any change on these properties after the component completion will be ignored. Property bindings on properties watched will be ignored as well, as service will report changes in these property values.

The service is connected once the component gets completed (Component.onCompleted). The [error](index.html#error-prop) property specifies any error occured during connection, and the [status](index.html#status-prop) property notifies whether the connection to the service is active or not.

**Note:** Pay attention when chosing the service watched, and set your application's AppArmor rights to ensure a successful service connection.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="adaptorInterface-prop"></span><span class="name">adaptorInterface</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The proeprty specifies the dbus adaptor interface which provides the properties watched. This can be a different interface that the one specified in [serviceInterface](index.html#serviceInterface-prop), and in the same way, it can be empty, in which case all the properties from all interfaces of the service will be watched.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property is set with a human readablestring each time an error occurrs during the service connection. Empty string means no error.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="path-prop"></span><span class="name">path</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property specifies the DBus service connection path. It is mandatory to be specified.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="service-prop"></span><span class="name">service</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The proeprty specifies the DBus service URI. It is mandatory to be specified.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="serviceInterface-prop"></span><span class="name">serviceInterface</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property specifies the service intertface. If it is an empty string, the component will refer to the merging of all interfaces found in the service.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

The property presents the status of the component.

-   - *ServiceProperties.Inactive* - the component is inactive, initial state
-   - *ServiceProperties.ConnectionError* - there was a connection error, the [error](index.html#error-prop) contains the error string.
-   - *ServiceProperties.Synchronizing* - the connection to the service succeeded, and the properties are being synchronized;
-   - *ServiceProperties.Active* - the service watcher is active and initial property synchronization completed.

**Note:** While the status is set to *Synchronizing*, the properties are checked against their existence in the service. Each proeprty will be checked as declared as well with capital first letter. If neither of these exists in the service, it will be reported in the [error](index.html#error-prop) property separately.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="type-prop"></span><span class="name">type</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

Specifies the DBus connection session type. It can get the following values:

-   - *ServiceProperties.System* when system bus is used (default)
-   - *ServiceProperties.Session* when session bus is used

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
