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

-   AccountServiceModel

AccountServiceModel
===================

<span class="subtitle"></span>
A model of the user's Online Accounts More...

|                   |                                  |
|-------------------|----------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts 0.1 |

<span id="properties"></span>
Properties
----------

-   ****[account](index.html#account-prop)**** : Account
-   ****[accountId](index.html#accountId-prop)**** : quint32
-   ****[applicationId](index.html#applicationId-prop)**** : string
-   ****[includeDisabled](index.html#includeDisabled-prop)**** : bool
-   ****[provider](index.html#provider-prop)**** : string
-   ****[service](index.html#service-prop)**** : string
-   ****[serviceType](index.html#serviceType-prop)**** : string

<span id="methods"></span>
Methods
-------

-   variant ****[get](index.html#get-method)****(int *row*, string *roleName*)

<span id="details"></span>
Detailed Description
--------------------

The [AccountServiceModel](index.html) is a model representing the user's Online Accounts services. Please note that an Online Account can offer several different services (chat, e-mail, micro-blogging, etc.); these are the items represented by this model, and not the user accounts as a whole. Since most applications are interested on a small subset of the user's accounts, [AccountServiceModel](index.html) offers some filtering functionalities: it is possible to restrict it to only one account provider, to a specific service type (for instance, an e-mail application will probably be interested in only those accounts which offer an e-mail service), or to a specific service (e.g., picasa; this is often equivalent to filtering by provider and by service-type, because it's rare for a provider to offer two different services of the same type). By default, only enabled accounts are returned. Use the [includeDisabled](index.html#includeDisabled-prop) property to list also disabled accounts; keep in mind, though, that an application should never use an account which has been disabled by the user.

The model defines the following roles:

-   `displayName` is the name of the account (usually the user's login)
-   `providerName` is the name of the account provider (e.g., "Google")
-   `serviceName` is the name of the service (e.g., "Picasa")
-   `enabled`
-   `accountServiceHandle` is a handle to the underlying Qt object which can be used to instantiate an [AccountService](../Ubuntu.OnlineAccounts.AccountService/index.html) from QML
-   `accountId` is the numeric ID of the account
-   `accountHandle` is a handle to the underlying Qt object which can be used to instantiate an [Account](../Ubuntu.OnlineAccounts.Account/index.html) from QML

Examples of use:

1. Model of all enabled microblogging accounts:

``` qml
Item {
    AccountServiceModel {
        id: accounts
        serviceType: "microblogging"
    }
    ListView {
        model: accounts
        delegate: Text { text: model.displayName + " by " + model.providerName }
    }
}
```

2. List all Facebook account services:

``` qml
Item {
    AccountServiceModel {
        id: accounts
        provider: "facebook"
        includeDisabled: true
    }
    ListView {
        model: accounts
        delegate: Text { text: model.serviceName + " on " + model.displayName }
    }
}
```

3. List all Flickr accounts enabled for uploading:

``` qml
Item {
    AccountServiceModel {
        id: accounts
        service: "flickr-sharing"
    }
    ListView {
        model: accounts
        delegate: Rectangle {
            id: rect
            Text { text: rect.model.displayName }
            AccountService {
                id: accountService
                objectHandle: rect.model.accountServiceHandle
                onAuthenticated: { console.log("Access token is " + reply.AccessToken) }
                onAuthenticationError: { console.log("Authentication failed, code " + error.code) }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: accountService.authenticate()
            }
        }
    }
}
```

4. List all the online accounts, without their services:

``` qml
Item {
    AccountServiceModel {
        id: accounts
        service: "global"
    }
    ListView {
        model: accounts
        delegate: Rectangle {
            id: rect
            Text { text: account.displayName }
            Account {
                id: account
                objectHandle: rect.model.accountHandle
            }
        }
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="account-prop"></span><span class="name">account</span> : <span class="type"><a href="../Ubuntu.OnlineAccounts.Account/index.html">Account</a></span></p></td>
</tr>
</tbody>
</table>

If set, the model will list only those accounts services available in the given account.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accountId-prop"></span><span class="name">accountId</span> : <span class="type">quint32</span></p></td>
</tr>
</tbody>
</table>

If set, the model will list only those accounts services available in the given account.

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

If set, the model will only show those account services which are relevant for the given *applicationId*. This means that an account service will only be shown if it can be used by the application, as described in the application's manifest file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="includeDisabled-prop"></span><span class="name">includeDisabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, even disabled account services will be listed. Note that an application should never use a disabled account.

By default, this property is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="provider-prop"></span><span class="name">provider</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

If set, the model will list only those accounts services provided by this provider.

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

If set, the model will list only those accounts services for this specific service.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="serviceType-prop"></span><span class="name">serviceType</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

If set, the model will list only those accounts services supporting this service type. Each provider-specific service is an instance of a generic service type (such as "e-mail", "IM", etc.) which identifies the main functionality provided by the service.

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
