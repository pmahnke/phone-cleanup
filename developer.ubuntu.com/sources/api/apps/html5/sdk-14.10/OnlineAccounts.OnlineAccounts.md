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
-   [HTML5](../../index.html) ›
-   [SDK 14.10](../index.html) ›
-   [OnlineAccounts](../OnlineAccounts/index.html) ›

<!-- -->

-   OnlineAccounts

OnlineAccounts
==============

The OnlineAccounts object is the entry point to online accounts service access.

-   Methods

<span id="api.getAccounts"></span>
**`api.getAccounts`**( `filters, callback ` )
Gets the configured accounts satisfying the given filters.

**Parameters:**
-   `filters` **&lt;Object&gt;**

    A dictionary of parameters to filter the result. The filtering keys are:

    -   applicationId: the ID of a application (see /usr/share/accounts/applications/ or ~/.local/share/accounts/applications/ for a list of the available applications)
    -   provider: the ID of a provider (see /usr/share/accounts/providers/ or ~/.local/share/accounts/providers/ for a list of the available providers)
    -   service: the ID of a service (see /usr/share/accounts/services/ or ~/.local/share/accounts/services/ for a list of the available services)

-   `callback` **&lt;Function(List of AccountService objects)&gt;**

    Callback that receives the result or null

##### Example

``` code
          var api = external.getUnityObject(1.0);
                          var oa = api.OnlineAccounts;
                        
                          oa.api.getAccounts({'provider': 'facebook'}, function(result) {
                            for (var i = 0; i < result.length; ++i) {
                              console.log("name: " + result[i].displayName()
                                          + ', id: ' + result[i].accountId()
                                          + ', providerName: ' + result[i].provider().displayName
                                          + ', enabled: ' + (result[i].enabled() ? "true" : "false")
                                          );
                            }               
                          });
                
```

<span id="api.getProviders"></span>
**`api.getProviders`**( `filters, callback ` )
Gets list of available providers.

**Parameters:**
-   `filters` **&lt;Object&gt;**

    A dictionary of parameters to filter the result. The filtering keys are:

    -   applicationId: the ID of a application (see /usr/share/accounts/applications/ or ~/.local/share/accounts/applications/ for a list of the available applications)

-   `callback` **&lt;Function(List of AccountService objects)&gt;**

    Callback that receives the result or null. The result is a dictionary with the following keys: - displayName: the display name for the corresponding provider - providerId: the provider id

##### Example

``` code
          var api = external.getUnityObject(1.0);
                          var oa = api.OnlineAccounts;
                
                          oa.api.getProviders({}, function(result) {
                            for (var i = 0; i < result.length; ++i) {
                              console.log("displayName: " + result[i].displayName
                                          + ', providerId: ' + result[i].providerId);
                            }
                          });
                
```

<span id="api.requestAccount"></span>
**`api.requestAccount`**( `applicationId, providerId, callback ` )
Requests access to an account.

Applications must invoke this method in order to obtain access to an account. The user will be prompted to grant access to either an existing account, to create a new one or to decline the request.

**Parameters:**
-   `applicationId` **&lt;String&gt;**

    The ID of the application requesting the account (see /usr/share/accounts/applications/ or ~/.local/share/accounts/applications/ for a list of the available applications)

-   `providerId` **&lt;String&gt;**

    The ID of the provider of the desired account (see /usr/share/accounts/providers/ or ~/.local/share/accounts/providers/ for a list of the available providers)

-   `callback` **&lt;Function()&gt;**

    Callback which will be invoked after the access request has been decided (either with the access to an account being granted, or with a refusal).

##### Example

``` code
          var api = external.getUnityObject(1.0);
                          var oa = api.OnlineAccounts;
                
                          var appId = 'com.ubuntu.developer.me.MyPackage_MyApp';
                          oa.api.requestAccount(appId,
                                                'facebook',
                                                function() {
                            oa.api.getAccounts({ 'application': appId }, function(result) {
                              for (var i = 0; i < result.length; ++i) {
                                console.log("name: " + result[i].displayName()
                                            + ', id: ' + result[i].accountId()
                                            + ', providerName: ' + result[i].provider().displayName
                                            + ', enabled: ' + (result[i].enabled() ? "true" : "false")
                                            );
                              }
                            });
                          });
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
