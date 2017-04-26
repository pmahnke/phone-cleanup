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
-   [SDK 15.04](../index.html) ›
-   [Ubuntu.OnlineAccounts](../Ubuntu.OnlineAccounts/index.html) ›

<!-- -->

-   AccountService

AccountService
==============

<span class="subtitle"></span>
Represents an instance of a service in an Online Accounts More...

|                   |                                  |
|-------------------|----------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts 0.1 |

<span id="properties"></span>
Properties
----------

-   ****[accountId](index.html#accountId-prop)**** : string
-   ****[authData](index.html#authData-prop)**** : jsobject
-   ****[autoSync](index.html#autoSync-prop)**** : bool
-   ****[credentials](index.html#credentials-prop)**** : Credentials
-   ****[displayName](index.html#displayName-prop)**** : string
-   ****[enabled](index.html#enabled-prop)**** : bool
-   ****[objectHandle](index.html#objectHandle-prop)**** : object
-   ****[provider](index.html#provider-prop)**** : jsobject
-   ****[service](index.html#service-prop)**** : jsobject
-   ****[serviceEnabled](index.html#serviceEnabled-prop)**** : bool
-   ****[settings](index.html#settings-prop)**** : jsobject

<span id="signals"></span>
Signals
-------

-   ****[authenticated](index.html#authenticated-signal)****(jsobject *reply*)
-   ****[authenticationError](index.html#authenticationError-signal)****(jsobject *error*)

<span id="methods"></span>
Methods
-------

-   void ****[authenticate](index.html#authenticate-method)****(jsobject *sessionData*)
-   void ****[cancelAuthentication](index.html#cancelAuthentication-method)****()
-   void ****[updateServiceEnabled](index.html#updateServiceEnabled-method)****(bool *enabled*)
-   void ****[updateSettings](index.html#updateSettings-method)****(jsobject *settings*)

<span id="details"></span>
Detailed Description
--------------------

The [AccountService](index.html) element represents a service within an existing online account. It can be used to obtain an authentication token to use the service it refers to.

Currently, an [AccountService](index.html) is valid only if its *objectHandle* property is set to a value obtained from an [AccountServiceModel](../Ubuntu.OnlineAccounts.AccountServiceModel/index.html) or an Account.

See [AccountServiceModel](../Ubuntu.OnlineAccounts.AccountServiceModel/index.html)'s documentation for usage examples.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accountId-prop"></span><span class="name">accountId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The account's numeric ID; note that all [AccountService](index.html) objects which work on the same online account will have the same ID.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="authData-prop"></span><span class="name">authData</span> : <span class="type">jsobject</span></p></td>
</tr>
</tbody>
</table>

An object providing information about the authentication. The returned object will have at least these members:

-   `method` is the authentication method
-   `mechanism` is the authentication mechanism (a sub-specification of the method)
-   `parameters` is a dictionary of authentication parameters
-   `credentialsId` is the numeric identified of the credentials in the secrets storage. See the [Credentials](../Ubuntu.OnlineAccounts.Credentials/index.html) element for more info.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoSync-prop"></span><span class="name">autoSync</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property tells whether the [AccountService](index.html) should invoke the [Account::sync()](../Ubuntu.OnlineAccounts.Account/index.html#sync-method) method whenever [updateSettings()](index.html#updateSettings-method), updateDisplayName() or [updateServiceEnabled()](index.html#updateServiceEnabled-method) are called. By default, this property is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="credentials-prop"></span><span class="name">credentials</span> : <span class="type"><a href="../Ubuntu.OnlineAccounts.Credentials/index.html">Credentials</a></span></p></td>
</tr>
</tbody>
</table>

The credentials used by this account service. This property is meant to be used only when creating or editing the account, and serves to bind a credentials record to the account: when the value of the [Credentials::credentialsId](../Ubuntu.OnlineAccounts.Credentials/index.html#credentialsId-prop) changes, an update of [authData.credentialsId](index.html#authData-prop) will be queued (and immediately executed if [autoSync](index.html#autoSync-prop) is `true`). By default, reading this property returns a null object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayName-prop"></span><span class="name">displayName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The account's display name (usually the user's login or ID); note that all [AccountService](index.html) objects which work on the same online account will share the same display name.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property tells whether the [AccountService](index.html) is enabled. An application shouldn't use an [AccountService](index.html) which is disabled.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="objectHandle-prop"></span><span class="name">objectHandle</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

An opaque handle to the underlying C++ object. Until the property is set, the [AccountService](index.html) element is uninitialized. Similarly, if the C++ object is destroyed (for instance, because the [AccountServiceModel](../Ubuntu.OnlineAccounts.AccountServiceModel/index.html) which owns it is destroyed or if the account is deleted), expect the [AccountService](index.html) to become invalid.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="provider-prop"></span><span class="name">provider</span> : <span class="type">jsobject</span></p></td>
</tr>
</tbody>
</table>

An immutable object representing the provider which provides the account. The returned object will have at least these members:

-   `id` is the unique identifier for this provider
-   `displayName`
-   `iconName`
-   `isSingleAccount`, *true* if this provider supports creating one account at most
-   `translations`, the localization domain for translating the provider's display name

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="service-prop"></span><span class="name">service</span> : <span class="type">jsobject</span></p></td>
</tr>
</tbody>
</table>

An immutable object representing the service which this [AccountService](index.html) instantiates. The returned object will have at least these members:

-   `id` is the unique identified for this service
-   `displayName`
-   `iconName`
-   `serviceTypeId` identifies the provided service type
-   `translations`, the localization domain for translating the provider's display name

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="serviceEnabled-prop"></span><span class="name">serviceEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property tells whether the service is enabled within the account. This property differs from the [enabled](index.html#enabled-prop) property in that the [enabled](index.html#enabled-prop) property also considers whether the account is enabled, while this one only reflects the status of the service. Applications shouldn't rely on the value on this property to decide whether to use the account or not.

**See also** [enabled](index.html#enabled-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="settings-prop"></span><span class="name">settings</span> : <span class="type">jsobject</span></p></td>
</tr>
</tbody>
</table>

A dictionary of all the account service's settings. This does not include the authentication settings, which are available from the [AccountService::authData](index.html#authData-prop) property.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="authenticated-signal"></span><span class="name">authenticated</span>(<span class="type">jsobject</span> <em>reply</em>)</p></td>
</tr>
</tbody>
</table>

Emitted when the authentication has been successfully completed. The *reply* object will contain the authentication data, which depends on the authentication method used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="authenticationError-signal"></span><span class="name">authenticationError</span>(<span class="type">jsobject</span> <em>error</em>)</p></td>
</tr>
</tbody>
</table>

Emitted when the authentication fails. The *error* object will contain the following fields:

-   `code` is a numeric error code (see Signon::Error for the meaning)
-   `message` is a textual description of the error, not meant for the end-user

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="authenticate-method"></span><span class="type">void</span> <span class="name">authenticate</span>(<span class="type">jsobject</span> <em>sessionData</em>)</p></td>
</tr>
</tbody>
</table>

Perform the authentication on this account. The *sessionData* dictionary is optional and if not given the value of [authData::parameters](index.html#authData-prop) will be used.

Each call to this method will cause either of [authenticated](index.html#authenticated-signal) or [authenticationError](index.html#authenticationError-signal) signals to be emitted at some time later. Note that the authentication might involve interactions with the network or with the end-user, so don't expect these signals to be emitted immediately.

**See also** [authenticated](index.html#authenticated-signal) and [authenticationError](index.html#authenticationError-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelAuthentication-method"></span><span class="type">void</span> <span class="name">cancelAuthentication</span>()</p></td>
</tr>
</tbody>
</table>

Cancel an ongoing authentication on this account. This method does nothing if there isn't any authentication process going on.

**See also** [authenticate](index.html#authenticate-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateServiceEnabled-method"></span><span class="type">void</span> <span class="name">updateServiceEnabled</span>(<span class="type">bool</span> <em>enabled</em>)</p></td>
</tr>
</tbody>
</table>

Enables or disables the service within the account configuration. Since the [enabled](index.html#enabled-prop) property is the combination of the global account's enabledness status and the specific service's status, its value might not change after this method is called.

**See also** [enabled](index.html#enabled-prop), [serviceEnabled](index.html#serviceEnabled-prop), and [autoSync](index.html#autoSync-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateSettings-method"></span><span class="type">void</span> <span class="name">updateSettings</span>(<span class="type">jsobject</span> <em>settings</em>)</p></td>
</tr>
</tbody>
</table>

Change some settings. Only the settings which are present in the *settings* dictionary will be changed; all others settings will not be affected. To remove a settings, set its value to null.

**See also** [autoSync](index.html#autoSync-prop).

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
