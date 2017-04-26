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
-   [Scopes](../../../index.html) ›
-   [C++](../../index.html) ›
-   [SDK 15.04](../index.html) ›
-   [Accounts](../Accounts/index.html) ›

<!-- -->

-   Watch

Watch
=====

Monitors an account key or group of keys. [More...](index.html#details)

`#include <Accounts/Account>`

Inherits QObject.

<span id="signals"></span> Signals
----------------------------------

<span id="a6c9329531974648e3ea3f05f3ea36129" class="anchor"></span> void 
**displayNameChanged** (const QString &displayName)
 
<span id="abc008e2f46ae60c14005e24f4cbf41e5" class="anchor"></span> void 
**enabledChanged** (const QString &serviceName, bool enabled)
 
<span id="ae89dad11eccb775ceb9925d0ff27dd7d" class="anchor"></span> void 
**error** (<a href="../Accounts.Error/index.html" class="el">Accounts::Error</a> error)
 
<span id="a4fa6a9f29874eb5ad79fbc70532f71a6" class="anchor"></span> void 
**synced** ()
 
<span id="adc2a0e638d7742d828062eeafd6769ab" class="anchor"></span> void 
**removed** ()
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

uint 
<a href="index.html#a483d9a1edcbc46d7070eb70ae23b5989" class="el">credentialsId</a> ()
 
void 
<a href="index.html#a54a9de969058292a257d9d692785ca63" class="el">setCredentialsId</a> (const uint id)
 
Sets the accounts credentials ID. More...
 
<span id="a9def71dea12661002bb3a63b3b91d08d" class="anchor"></span> QString 
**displayName** () const
 
<span id="ac036a365819266590db91caa64b4fff0" class="anchor"></span> void 
**setDisplayName** (const QString &displayName)
 
<span id="a65a95a0e50cf1761a9a21d21c0db412e" class="anchor"></span> QString 
**providerName** () const
 
<span id="ab2bf7a26f8729dfb6a8595b6294f5565" class="anchor"></span> <a href="../Accounts.Provider/index.html" class="el">Provider</a> 
**provider** () const
 
<span id="a8c7532fb7377ee33ab449d36200522b9" class="anchor"></span> void 
**selectService** (const <a href="../Accounts.Service/index.html" class="el">Service</a> &service=<a href="../Accounts.Service/index.html" class="el">Service</a>())
 
<span id="a4831783cce39d897dc35b57ce233d735" class="anchor"></span> <a href="../Accounts.Service/index.html" class="el">Service</a> 
**selectedService** () const
 
<span id="a9936a9bd6fca45f1d03a63b1b485ed88" class="anchor"></span> QStringList 
**allKeys** () const
 
<span id="aa889966b87d4315aea74c30088e9c8fa" class="anchor"></span> void 
**beginGroup** (const QString &prefix)
 
<span id="af5b653c82d3a3d7765da47fe5db0e128" class="anchor"></span> QStringList 
**childGroups** () const
 
<span id="a09f8085bca6d1c8b4837beabcea7b639" class="anchor"></span> QStringList 
**childKeys** () const
 
<span id="ac8bb3912a3ce86b15842e79d0b421204" class="anchor"></span> void 
**clear** ()
 
<span id="aab9f06bc42480ab555a9757e14303e5f" class="anchor"></span> bool 
**contains** (const QString &key) const
 
<span id="af964cd7bde81d0f118ea09e201e155dd" class="anchor"></span> void 
**endGroup** ()
 
<span id="a5adb315467de1866550658b4679bf9f9" class="anchor"></span> QString 
**group** () const
 
<span id="aa741717fa726eea03300fdde9934808a" class="anchor"></span> bool 
**isWritable** () const
 
<span id="a89c0a3a6c660a5f577e5241a63052f2c" class="anchor"></span> void 
**remove** (const QString &key)
 
<span id="a48d1031ae51455e458b881c49c65a92e" class="anchor"></span> void 
**setValue** (const QString &key, const QVariant &value)
 
<span id="a11e51b34244f3e9288dacb30b6230085" class="anchor"></span> QVariant 
**value** (const QString &key, const QVariant &defaultValue=QVariant(), SettingSource \*source=0) const
 
<span id="a6d1dedb9c7a20fc62310946d4e6881a6" class="anchor"></span> SettingSource 
**value** (const QString &key, QVariant &value) const
 
<span id="a9b737faa22b94f329d0c377b94f9ecf3" class="anchor"></span> QString 
**valueAsString** (const QString &key, QString default\_value=QString::null, SettingSource \*source=0) const
 
<span id="a950ddc85d587c0d9372c031ce431edfe" class="anchor"></span> int 
**valueAsInt** (const QString &key, int default\_value=0, SettingSource \*source=0) const
 
<span id="af26f7d7e660864d08b75dce98565684e" class="anchor"></span> quint64 
**valueAsUInt64** (const QString &key, quint64 default\_value=0, SettingSource \*source=0) const
 
<span id="a7d639022739d7f3ef53ca0b0195f30ce" class="anchor"></span> bool 
**valueAsBool** (const QString &key, bool default\_value=false, SettingSource \*source=0) const
 
<span id="a5e36b49426df748e27d189b2b11faf92" class="anchor"></span> <a href="index.html" class="el">Watch</a> \* 
**watchKey** (const QString &key=QString())
 
<span id="ad55f80ed3cd8b6c4f247763b747016af" class="anchor"></span> void 
**sync** ()
 
<span id="a4c182d464e5a7978fdf1817ce50d9531" class="anchor"></span> bool 
**syncAndBlock** ()
 
<span id="a1fcb45e5d2428352eb36b487d1d4eea3" class="anchor"></span> void 
**remove** ()
 
<span id="a4ebb90703ca3ec222b5822474e058547" class="anchor"></span> void 
**sign** (const QString &key, const char \*token)
 
<span id="a4f1aed052f72d4a55a35a2a1621fc391" class="anchor"></span> bool 
**verify** (const QString &key, const char \*\*token)
 
<span id="af491d2638521b57cfa5f01e47a539b33" class="anchor"></span> bool 
**verifyWithTokens** (const QString &key, QList&lt; const char \* &gt; tokens)
 
<span id="details"></span>
Detailed Description
--------------------

Monitors an account key or group of keys.

A watch is created via the Account::watch method and is a simple object which will emit the notify() signal when the value of the key (or group) that it is monitoring is changed.

Definition at line 70 of file account.h.

Member Function Documentation
-----------------------------

<span id="a483d9a1edcbc46d7070eb70ae23b5989" class="anchor"></span>
|                    |     |     |     |     |
|--------------------|-----|-----|-----|-----|
| uint credentialsId | (   |     | )   |     |

Q\_SIGNALS: void notify(const char \*key); };

class ACCOUNTS\_EXPORT Account: public QObject { Q\_OBJECT

public: Account(<a href="../Accounts.Manager/index.html" class="el" title="Manager of accounts, services and providers. ">Manager</a> \*manager, const QString &provider, QObject \*parent = 0); virtual ~Account();

static Account \*fromId(<a href="../Accounts.Manager/index.html" class="el" title="Manager of accounts, services and providers. ">Manager</a> \*manager, AccountId id, QObject \*parent = 0);

AccountId id() const;

<a href="../Accounts.Manager/index.html" class="el" title="Manager of accounts, services and providers. ">Manager</a> \*manager() const;

bool supportsService(const QString &serviceType) const;

ServiceList services(const QString &serviceType = QString()) const; ServiceList enabledServices() const;

bool enabled() const; bool isEnabled() const; void setEnabled(bool);

/\*! Gets the account's credentials ID in Signon database.

The credentials ID is first read from the currently selected service; if it is not found, then it is ready from the global account settings. In any case, the currently selected service is not altered.

<span id="a54a9de969058292a257d9d692785ca63" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>void setCredentialsId</td>
<td>(</td>
<td>const uint </td>
<td><em>id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Sets the accounts credentials ID.

The change will be written only when sync() is called.

This method operates on the currently selected service.

Definition at line 134 of file account.h.

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
