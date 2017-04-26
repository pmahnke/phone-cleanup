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
-   [Ubuntu.OnlineAccounts](../Ubuntu.OnlineAccounts/index.html) ›

<!-- -->

-   Credentials

Credentials
===========

<span class="subtitle"></span>
Holds the account's credentials More...

|                   |                                  |
|-------------------|----------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts 0.1 |

<span id="properties"></span>
Properties
----------

-   ****[acl](index.html#acl-prop)**** : list&lt;string&gt;
-   ****[caption](index.html#caption-prop)**** : string
-   ****[credentialsId](index.html#credentialsId-prop)**** : quint32
-   ****[methods](index.html#methods-prop)**** : jsobject
-   ****[secret](index.html#secret-prop)**** : string
-   ****[storeSecret](index.html#storeSecret-prop)**** : bool
-   ****[userName](index.html#userName-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[removed](index.html#removed-signal)****()
-   ****[synced](index.html#synced-signal)****()

<span id="methods"></span>
Methods
-------

-   void ****[remove](index.html#remove-method)****()
-   void ****[sync](index.html#sync-method)****()

<span id="details"></span>
Detailed Description
--------------------

The Credentials element contains the information about an account's credentials. Informations like user name and password are stored into the account's secret storage via this object. If the [credentialsId](index.html#credentialsId-prop) property is set to a valid credentials ID (which can be obtained via the [AccountService](../Ubuntu.OnlineAccounts.AccountService/index.html)'s [authData.credentialsId](../Ubuntu.OnlineAccounts.AccountService/index.html#authData-prop) property) the Credentials element will load the informations stored in the secrets database, with the notable exception of the [secret](index.html#secret-prop) field, which cannot be read back via this interface (but only via the [AccountService::authenticate](../Ubuntu.OnlineAccounts.AccountService/index.html#authenticate-method) method); if the [credentialsId](index.html#credentialsId-prop) field is not set, then this interface can be used to create a new record in the secrets storage, by calling the [sync()](index.html#sync-method) method once all the desired fields have been set.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="acl-prop"></span><span class="name">acl</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

The ACL (Access Control List) for the credentials. The string *"\*"* should be used when no access control needs to be performed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="caption-prop"></span><span class="name">caption</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

A description of the credentials. This could be set to the name of the account provider, for instance.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="credentialsId-prop"></span><span class="name">credentialsId</span> : <span class="type">quint32</span></p></td>
</tr>
</tbody>
</table>

Numeric identifier of the credentials record in the secret storage database. A value of *0* means that this object has not been stored into the database yet.

**See also** [sync](index.html#sync-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="methods-prop"></span><span class="name">methods</span> : <span class="type">jsobject</span></p></td>
</tr>
</tbody>
</table>

A dictionary describing the authentication methods and mechanisms which are allowed on the credentials. The keys of the dictionary should be the authentication methods, and the values should be lists of mechanisms.

``` qml
Credentials {
    methods: { "oauth2": [ "web_server", "user_agent"], "password": [ "password" ] }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="secret-prop"></span><span class="name">secret</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The secret information for this credentials; usually this is the user's password. Note that when retrieving a Credentials object from the secrets database, this field will not be retrieved. See the detailed description of the Credentials element for a full explanation of this.

**See also** [credentialsId](index.html#credentialsId-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="storeSecret-prop"></span><span class="name">storeSecret</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the secret should be stored in the secrets storage.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="userName-prop"></span><span class="name">userName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The user name.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removed-signal"></span><span class="name">removed</span>()</p></td>
</tr>
</tbody>
</table>

Emitted when the credentials have been deleted from the secrets storage.

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

Emitted when the changes have been stored into the permanent secrets storage.

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

Deletes the credentials from the secrets storage.

**See also** [removed](index.html#removed-signal).

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

Writes the changes to the secrets storage.

**See also** [synced](index.html#synced-signal).

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
