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
-   [Ubuntu.OnlineAccounts](../Ubuntu.OnlineAccounts/index.html) ›

<!-- -->

-   Account

Account
=======

<span class="subtitle"></span>
Represents an instance of an online account. More...

|                   |                                  |
|-------------------|----------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts 0.1 |

<span id="properties"></span>
Properties
----------

-   ****[accountId](index.html#accountId-prop)**** : string
-   ****[accountServiceHandle](index.html#accountServiceHandle-prop)**** : object
-   ****[displayName](index.html#displayName-prop)**** : string
-   ****[enabled](index.html#enabled-prop)**** : bool
-   ****[objectHandle](index.html#objectHandle-prop)**** : object
-   ****[provider](index.html#provider-prop)**** : jsobject

<span id="signals"></span>
Signals
-------

-   ****[synced](index.html#synced-signal)****()

<span id="methods"></span>
Methods
-------

-   void ****[remove](index.html#remove-method)****()
-   void ****[sync](index.html#sync-method)****()
-   void ****[updateDisplayName](index.html#updateDisplayName-method)****(string *displayName*)
-   void ****[updateEnabled](index.html#updateEnabled-method)****(bool *enabled*)

<span id="details"></span>
Detailed Description
--------------------

The Account element represents an online account. It is functional only if its *objectHandle* property is set to a valid account, which can be obtained with Manager.loadAccount() or Manager.createAccount().

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

The account's numeric ID. This is 0 until the account has been stored into the DB.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accountServiceHandle-prop"></span><span class="name">accountServiceHandle</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

A C++ object which can be used to instantiate an [AccountService](../Ubuntu.OnlineAccounts.AccountService/index.html) by setting it as the value for the [AccountService::objectHandle](../Ubuntu.OnlineAccounts.AccountService/index.html#objectHandle-prop) property.

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

The account's display name (usually the user's login or ID).

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

This read-only property tells whether the Account is enabled. An application shouldn't use an Account which is disabled.

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

An opaque handle to the underlying C++ object. Until the property is set, the Account element is uninitialized. Similarly, if the C++ object is destroyed, expect the Account to become invalid.

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

-   `id` is the unique identified for this provider
-   `displayName`
-   `iconName`

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="synced-signal"></span><span class="name">synced</span>()</p></td>
</tr>
</tbody>
</table>

Emitted when the account changes have been stored into the permanent storage.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-method"></span><span class="type">void</span> <span class="name">remove</span>()</p></td>
</tr>
</tbody>
</table>

Deletes the account from the permanent storage. This method accepts an optional parameter, which tells whether the credentials associated with the account should also be removed:

-   `Account.RemoveAccountOnly`
-   `Account.RemoveCredentials` - the default

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sync-method"></span><span class="type">void</span> <span class="name">sync</span>()</p></td>
</tr>
</tbody>
</table>

Writes the changes to the permanent account storage.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateDisplayName-method"></span><span class="type">void</span> <span class="name">updateDisplayName</span>(<span class="type">string</span> <em>displayName</em>)</p></td>
</tr>
</tbody>
</table>

Changes the display name of the account.

**See also** [sync()](index.html#sync-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateEnabled-method"></span><span class="type">void</span> <span class="name">updateEnabled</span>(<span class="type">bool</span> <em>enabled</em>)</p></td>
</tr>
</tbody>
</table>

Enables or disables the account.

**See also** [sync()](index.html#sync-method).

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
