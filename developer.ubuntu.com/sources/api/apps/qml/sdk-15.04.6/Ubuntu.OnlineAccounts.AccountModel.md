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
-   [Ubuntu.OnlineAccounts](../Ubuntu.OnlineAccounts/index.html) ›

<!-- -->

-   AccountModel

AccountModel
============

<span class="subtitle"></span>
Model of available online accounts. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts . |

<span id="properties"></span>
Properties
----------

-   ****[accountList](index.html#accountList-prop)**** : list&lt;Account&gt;
-   ****[applicationId](index.html#applicationId-prop)**** : string
-   ****[ready](index.html#ready-prop)**** : bool
-   ****[serviceId](index.html#serviceId-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[accessReply](index.html#accessReply-signal)****(jsobject *reply*, jsobject *authenticationData*)

<span id="methods"></span>
Methods
-------

-   variant ****[get](index.html#get-method)****(int *row*, string *roleName*)
-   void ****[requestAccess](index.html#requestAccess-method)****(string *serviceId*, jsobject *parameters*)

<span id="details"></span>
Detailed Description
--------------------

The [AccountModel](index.html) lists all the accounts available to the application.

``` qml
import QtQuick 2.0
import Ubuntu.OnlineAccounts 2.0
ListView {
    model: AccountModel {
        applicationId: "myapp.developer_myapp"
    }
    delegate: Text {
        text: model.displayName
    }
}
```

The model defines the following roles:

-   `displayName` is the name of the account (usually the user's login)
-   `accountId` is a numeric ID for the account
-   `serviceId` is a service identifier (e.g., "myapp.developer\_myapp\_google")
-   `authenticationMethod` is the authentication method used on this account;
-   `settings` is a dictionary of the settings stored into the account
-   `account` is the [Account](../Ubuntu.OnlineAccounts.Account/index.html) object

**See also** [Account::authenticationMethod](../Ubuntu.OnlineAccounts.Account/index.html#authenticationMethod-prop) and [Account](../Ubuntu.OnlineAccounts.Account/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accountList-prop"></span><span class="name">accountList</span> : <span class="type">list</span>&lt;<span class="type"><a href="../Ubuntu.OnlineAccounts.Account/index.html">Account</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of accounts in the model. This list has exactly the same contents as the model data, and is provided as a property just as a convenience for those cases when a model is not required.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="applicationId-prop"></span><span class="name">applicationId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The short application identifier (that is, the `APP_ID` minus the version component) of the client. If not given, the identifier will be deduced from the APP\_ID environment variable.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ready-prop"></span><span class="name">ready</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the model is up to date: retrieving the account list is an asynchronous operation, and therefore short delays are expected between changing one model parameter and receiving the updated account list. Applications should not rely on the model contents while this property is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="serviceId-prop"></span><span class="name">serviceId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

If this property is set, only accounts providing the given service will be returned.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accessReply-signal"></span><span class="name">accessReply</span>(<span class="type">jsobject</span> <em>reply</em>, <span class="type">jsobject</span> <em>authenticationData</em>)</p></td>
</tr>
</tbody>
</table>

Emitted when the request initiated with [AccountModel::requestAccess()](index.html#requestAccess-method) completes. The *reply* object contains the access reply:

-   `account` if access to an account was granted, this property will hold an [Account](../Ubuntu.OnlineAccounts.Account/index.html) object
-   `errorCode` [error code](../Ubuntu.OnlineAccounts.Account/index.html#errorcode), if an error occurred
-   `errorText` is a textual description of the error, not meant for the end-user; it can be used for debugging purposes

The second parameter, the *authenticationData* object, will contain the authentication reply.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="get-method"></span><span class="type">variant</span> <span class="name">get</span>(<span class="type">int</span> <em>row</em>, <span class="type">string</span> <em>roleName</em>)</p></td>
</tr>
</tbody>
</table>

Returns the data at *row* for the role *roleName*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="requestAccess-method"></span><span class="type">void</span> <span class="name">requestAccess</span>(<span class="type">string</span> <em>serviceId</em>, <span class="type">jsobject</span> <em>parameters</em>)</p></td>
</tr>
</tbody>
</table>

Requests the user to grant this application access to an account providing the given service. The user will be asked whether this application should be given access to the desired account; if no such accounts are currently registered in the system, the user will be guided to create a new one.

It should be noted that account authorizations persist across application restart; therefore, this method should be called only when the application needs a new account to appear in the model.

Each call to this method will cause the [accessReply](index.html#accessReply-signal) signal to be emitted at some time later. Note that the operation will involve interactions with the end-user, so don't expect a reply to be emitted immediately.

The *parameters* parameter can be used to pass authentication data (similarly to how the [Account::authenticate()](../Ubuntu.OnlineAccounts.Account/index.html#authenticate-method) method works), if it's desired to perform the authentication at the same time.

**See also** [accessReply](index.html#accessReply-signal).

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
