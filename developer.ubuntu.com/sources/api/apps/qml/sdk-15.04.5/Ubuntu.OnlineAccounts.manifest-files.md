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
-   <a href="../Ubuntu.OnlineAccounts/index.html" class="sub-nav-item">Ubuntu.OnlineAccounts</a> ›

<!-- -->

-   Manifest files

Manifest files
==============

<span class="subtitle"></span>
<span id="details"></span>
In order to integrate with the Online Accounts framework, one needs to ship a couple of manifest files which describe the online services being used or provided.

Account plugins must ship a [provider file](index.html#the-provider-files) which can contain account settings readable by applications. Applications must ship an [application file](index.html#the-application-files) which tells which online services the application is able to use, and [service files](index.html#the-service-files) which describes the online services and their settings.

<span id="the-provider-files"></span>
The provider files
------------------

A `.provider` file describes an online accounts provider. It's a XML file, typically installed in `/usr/share/accounts/providers/` or `~/.local/share/accounts/providers/` which looks like this:

``` cpp
<?xml version="1.0" encoding="UTF-8"?>
<provider id="facebook">
  <name>Facebook</name>
  <icon>facebook</icon>
  <translations>account-plugins</translations>
  <domains>.*facebook\.com</domains>
  <plugin>generic-oauth</plugin>
  <single-account>true</single-account>
  <template>
    <group name="auth">
      <setting name="method">oauth2</setting>
      <setting name="mechanism">user_agent</setting>
      <group name="oauth2">
        <group name="user_agent">
          <setting name="Host">www.facebook.com</setting>
          <setting name="AuthPath">/dialog/oauth</setting>
          <setting name="RedirectUri">https://www.facebook.com/connect/login_success.html</setting>
          <setting name="Display">popup</setting>
          <setting type="as" name="Scope">['publish_stream','status_update','user_photos']</setting>
          <setting name="ClientId">412471239412</setting>
          <setting type="as" name="AllowedSchemes">['https','http']</setting>
        </group>
      </group>
    </group>
  </template>
</provider>
```

This file name must match the value of the `id` tag in the root `<provider>` element, plus the `".provider"` suffix.

The only mandatory element is `<name>`, and that's the display name of the provider. Other optional elements are:

-   `<icon>`: an icon for the account provider.
-   `<translations>`: a translation domain for the `<name>` element.
-   `<domains>`: a regular expression matching the domain(s) where this account is used.
-   `<plugin>`: the ID of the account plugin which must be used to create or edit the accounts for this provider.
-   `<single-account>`: whether the account editing UI should prevent the user to create multiple accounts for this provider.
-   `<template>`: default settings or authentication parameters for the account. This element is described in [The template element](index.html#the-template-element) section.

<span id="the-service-files"></span>
The service files
-----------------

A `.service` file describes an online service. It's a XML file, typically installed in `/usr/share/accounts/services/` or `~/.local/share/accounts/services/` which looks like this:

``` cpp
<?xml version="1.0" encoding="UTF-8"?>
<service id="picasa">
  <type>photo-sharing</type>
  <name>Picasa</name>
  <icon>icon_picasa</icon>
  <provider>google</provider>
  <translations>account-plugins</translations>
  <template>
    <group name="auth/oauth2/user_agent">
      <setting type="as" name="Scope">["https://picasaweb.google.com/data/"]</setting>
    </group>
    <setting type="i" name="max-resolution">2048</setting>
  </template>
</service>
```

The name of the file must match the contents of the `id` tag in the root `<service>` element, plus the `".service"` suffix. Despite the complexity of the example above, only two pieces of information are mandatory:

-   `<provider>`: the ID of the account provider. See the [section about provider files](index.html#the-provider-files) for more.
-   `<type>`: the type of service; some applications don't have a fixed set of supported services, but rather can use any service implementing a certain protocol (for example, IMAP for e-mail clients): in such cases, the different services would use a common type here, and applications would refer to them via this type. Otherwise, the type should be set to a unique string which has low chances of conflicting with other types: for instance, a good practice would be to set it to "*&lt;provider-id&gt;-&lt;service-id&gt;"*.

Other information which can be embedded in `.service` files:

-   `<name>`: a display name for the service.
-   `<icon>`: an icon name for the service.
-   `<translations>`: a translation domain for the `<name>` element.
-   `<template>`: default settings or authentication parameters for the service. This element is described in [The template element](index.html#the-template-element) section.

<span id="the-application-files"></span>
The application files
---------------------

An `.application` file describes how an application uses online accounts. It's a XML file, typically installed in `/usr/share/accounts/applications/` or `~/.local/share/accounts/applications/` which looks like this:

``` cpp
<?xml version="1.0" encoding="UTF-8" ?>
<application id="my-photo-manager">
  <description>My Photo Manager</description>
  <desktop-entry>photo-manager.desktop</desktop-entry>
  <translations>photo-manager</translations>
  <services>
    <service id="photo-instagram">
      <description>Publish your pictures to Instagram</description>
    </service>
    <service id="photo-facebook">
      <description>Publish your pictures to Facebook</description>
    </service>
  </services>
  <service-types>
    <service-type id="photo-sharing">
      <description>Publish your pictures to your favorite site</description>
    </service-type>
  </service-types>
</application>
```

The name of the file must match the contents of the `id` tag in the root `<application>` element, plus the `".application"` suffix. None of the elements is mandatory, but in order to be linked to some online accounts there should be at least one valid `<service>` or `<service-type>` element.

The XML elements that an `.application` file can contain are:

-   `<description>`: a description of the application; if missing, this will be read from the `.desktop` file associated with the application.
-   `<desktop-entry>`: the ID of the `.desktop` file associated with the application (with or without the `".desktop"` suffix); if missing, it's assumed to be the same application ID specified in the `id` tag of the root `<application>` element.
-   `<translations>`: a translation domain for all the `<description>` elements.
-   `<services>`: a container for `<service>` elements, which refer to the IDs of the [services](index.html#the-service-files) which the application can use.
-   `<service-types>`: a container for `<service-type>` elements, which refer to the IDs of the service types which the application can use. See the documentation for the `<type>` element in [service files](index.html#the-service-files).

<span id="the-template-element"></span>
### The template element

Accounts can contain settings which can be useful for applications, for example authentication parameters or server settings (such as the address and port of an IMAP server). These settings are stored in the accounts database, and an application can read them by accessing the [AccountService::settings](../Ubuntu.OnlineAccounts.AccountService/index.html#settings-prop) property. The `<template>` element in the `.service` or `.provider` files can be used to specify a fallback value for those settings which have not been set in the accounts database.

A `.service` file `<template>` element is used when the `id` of the [AccountService::service](../Ubuntu.OnlineAccounts.AccountService/index.html#service-prop) object matches its ID. The `.provider` file `<template>` element is instead used when the `id` of the [AccountService::service](../Ubuntu.OnlineAccounts.AccountService/index.html#service-prop) object is empty, meaning that the `AccountService` is describing the global account, and not a specific service.

<span id="format-of-the-default-settings"></span>
#### Format of the default settings

The `<template>` element describes a dictionary of keys and values, where the key is always a string, and values can be any data type. Keys can contain the "/" character, which can be used to define key groups; for instance:

``` cpp
    <setting name="net/server/address">example.com</setting>
    <setting name="net/server/port" type="u">2500</setting>
    <setting name="net/use-ssl" type="b">false</setting>
```

is equivalent to

``` cpp
    <group name="net">
      <group name="server">
        <setting name="address">example.com</setting>
        <setting name="port" type="u">2500</setting>
      </group>
      <setting name="use-ssl" type="b">false</setting>
    </group>
```

and also to

``` cpp
    <group name="net/server">
        <setting name="address">example.com</setting>
        <setting name="port" type="u">2500</setting>
    </group>
    <setting name="net/use-ssl" type="b">false</setting>
```

Values are always assumed to be strings, unless a `type` attribute is set in the `<setting>` element; the most commonly used types are:

| Type             | Code | Example                                           |
|------------------|------|---------------------------------------------------|
| string           | `s`  | `<setting...` `type="s">Hello` `world!</setting>` |
| boolean          | `b`  | `<setting...` `type="b">true</setting>`           |
| integer          | `i`  | `<setting...` `type="i">-12</setting>`            |
| unsigned         | `u`  | `<setting...` `type="u">256</setting>`            |
| array of strings | `as` | `<setting...` `type="as">["one","two"]</setting>` |

<span id="authentication-data"></span>
#### Authentication data

The object returned by the [AccountService::authData](../Ubuntu.OnlineAccounts.AccountService/index.html#authData-prop) property is also built with a similar fallback mechanism as the rest of account settings, but it's a bit more refined to especially address the needs of application developers to override the authentication parameters. A typical example is OAuth 2.0, where the application might need to specify a different *ClientId* and *ClientSecret* than those used by the rest of the system. Another example is that of an account provider offering a REST API with an OAuth 2.0 authentication for publishing pictures, but a basic username/password authentication to access an IMAP mail sever.

The authentication data consists of:

-   the `CredentialsId` key: this is the numeric ID of the account credentials in the local machine. This key is usually never stored in the `<template>` element, as its value becomes known only when the account is created.
-   the `auth/method` key: a string defining which authentication plugin needs to be used. Please refer to the [libsignon-qt documentation](../../../../scopes/cpp/sdk-14.10/U1db.Index/index.html).
-   the `auth/mechanism` key: a string defining which authentication mechanism needs to be used. Each authentication plugin defines its own mechanisms, so please refer to the plugin's documentation.
-   all the settings defined under the `"auth/` *&lt;method&gt;* `/` *&lt;mechanism&gt;* `"` group. Each authentication plugin defines its own parameters, so please refer to the plugin's documentation.

When the [AccountService](../Ubuntu.OnlineAccounts.AccountService/index.html) represents the global account, then the authentication data obtained by reading the [AccountService::authData](../Ubuntu.OnlineAccounts.AccountService/index.html#authData-prop) property follows the usual fallback scheme: the parameters stored in the accounts database have precence over the template parameters defined in the `.provider` file.

However, if the [AccountService](../Ubuntu.OnlineAccounts.AccountService/index.html) represent a service within an account, the authentication parameters are read in the following order (higher priority is listed first):

-   parameters stored in the accounts database, for the specific service;
-   parameters stored in the `<template>` element of the `.service` file;
-   parameters stored in the accounts database, for the global account;
-   parameters stored in the `<template>` element of the `.provider` file.

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
