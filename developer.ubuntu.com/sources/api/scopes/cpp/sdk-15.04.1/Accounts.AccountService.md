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
-   [SDK 15.04.1](../index.html) ›
-   [Accounts](../Accounts/index.html) ›

<!-- -->

-   AccountService

AccountService
==============

Account settings for a specific service. [More...](index.html#details)

`#include <Accounts/AccountService>`

Inherits QObject.

<span id="signals"></span> Signals
----------------------------------

<span id="ab2f0d21a6f535870b37dcb44b2f77205" class="anchor"></span> void 
<a href="index.html#ab2f0d21a6f535870b37dcb44b2f77205" class="el">enabled</a> (bool <a href="index.html#ae2931e09e0fd8eac15c83f0254b4e4ac" class="el">isEnabled</a>)
 
Emitted when the enabledness state of the account service has changed.
 
void 
<a href="index.html#a4db9a5f1a7e34ec6902ff9630d98b777" class="el">changed</a> ()
 
Emitted when some setting has changed on the account service. More...
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#aef5d4691113e384992926928928ae334" class="el">AccountService</a> (Account \*<a href="index.html#a490333c2ed4d6f107c5493a9465d993b" class="el">account</a>, const <a href="../Accounts.Service/index.html" class="el">Service</a> &<a href="index.html#a256dc9d961214d5f60642a290a288998" class="el">service</a>)
 
Constructor. More...
 
 
<a href="index.html#a5183e298082ee83004c503197ff14e20" class="el">AccountService</a> (Account \*<a href="index.html#a490333c2ed4d6f107c5493a9465d993b" class="el">account</a>, const <a href="../Accounts.Service/index.html" class="el">Service</a> &<a href="index.html#a256dc9d961214d5f60642a290a288998" class="el">service</a>, QObject \*parent)
 
Constructor. More...
 
<span id="a0622bfbd6cf486c0b73712ff02c0294e" class="anchor"></span> virtual 
<a href="index.html#a0622bfbd6cf486c0b73712ff02c0294e" class="el">~AccountService</a> ()
 
Destructor.
 
<span id="a490333c2ed4d6f107c5493a9465d993b" class="anchor"></span> Account \* 
<a href="index.html#a490333c2ed4d6f107c5493a9465d993b" class="el">account</a> () const
 
Return the Account.
 
<a href="../Accounts.Service/index.html" class="el">Service</a> 
<a href="index.html#a256dc9d961214d5f60642a290a288998" class="el">service</a> () const
 
Return the Service. More...
 
bool 
<a href="index.html#a1d79980f25d38aba3d6777d0afe544f3" class="el">enabled</a> () const
 
Check whether the account service is enabled. More...
 
<span id="ae2931e09e0fd8eac15c83f0254b4e4ac" class="anchor"></span> bool 
<a href="index.html#ae2931e09e0fd8eac15c83f0254b4e4ac" class="el">isEnabled</a> () const
 
Check whether the account service is enabled.
 
<span id="a9936a9bd6fca45f1d03a63b1b485ed88" class="anchor"></span> QStringList 
<a href="index.html#a9936a9bd6fca45f1d03a63b1b485ed88" class="el">allKeys</a> () const
 
Return all the keys in the current group.
 
void 
<a href="index.html#aa889966b87d4315aea74c30088e9c8fa" class="el">beginGroup</a> (const QString &prefix)
 
Enter a group. More...
 
<span id="af5b653c82d3a3d7765da47fe5db0e128" class="anchor"></span> QStringList 
<a href="index.html#af5b653c82d3a3d7765da47fe5db0e128" class="el">childGroups</a> () const
 
Return all the groups which are direct children of the current group.
 
<span id="a09f8085bca6d1c8b4837beabcea7b639" class="anchor"></span> QStringList 
<a href="index.html#a09f8085bca6d1c8b4837beabcea7b639" class="el">childKeys</a> () const
 
Return all the keys which are direct children of the current group.
 
void 
<a href="index.html#ac8bb3912a3ce86b15842e79d0b421204" class="el">clear</a> ()
 
Remove all the keys. More...
 
bool 
<a href="index.html#aab9f06bc42480ab555a9757e14303e5f" class="el">contains</a> (const QString &key) const
 
Check whether the given key is in the current group. More...
 
<span id="af964cd7bde81d0f118ea09e201e155dd" class="anchor"></span> void 
<a href="index.html#af964cd7bde81d0f118ea09e201e155dd" class="el">endGroup</a> ()
 
Exit a group.
 
<span id="a5adb315467de1866550658b4679bf9f9" class="anchor"></span> QString 
<a href="index.html#a5adb315467de1866550658b4679bf9f9" class="el">group</a> () const
 
Return the name of the current group.
 
void 
<a href="index.html#a89c0a3a6c660a5f577e5241a63052f2c" class="el">remove</a> (const QString &key)
 
Remove the given key. More...
 
<span id="a86c9e7ef7d0ab5919f6de30d16899659" class="anchor"></span> void 
**setValue** (const char \*key, const QVariant &<a href="index.html#a299df626e5ca7968fd8b70f9c87acfbb" class="el">value</a>)
 
void 
<a href="index.html#a48d1031ae51455e458b881c49c65a92e" class="el">setValue</a> (const QString &key, const QVariant &<a href="index.html#a299df626e5ca7968fd8b70f9c87acfbb" class="el">value</a>)
 
Change the value of an account setting. More...
 
QVariant 
<a href="index.html#a299df626e5ca7968fd8b70f9c87acfbb" class="el">value</a> (const QString &key, const QVariant &defaultValue, SettingSource \*source=0) const
 
Retrieves the value of an account setting, as a QVariant. More...
 
QVariant 
<a href="index.html#a53cc185b2ceff59c833ebe939a6e18cb" class="el">value</a> (const QString &key, SettingSource \*source=0) const
 
Retrieves the value of an account setting. More...
 
<span id="a12c497bbb56e4f866c8e226ba774141c" class="anchor"></span> QVariant 
**value** (const char \*key, SettingSource \*source=0) const
 
QStringList 
<a href="index.html#a678e391f34362471f042719d3b388d81" class="el">changedFields</a> () const
 
This method should be called only in the context of a handler of the AccountService::changed() signal, and can be used to retrieve the set of changes. More...
 
<a href="../Accounts.AuthData/index.html" class="el">AuthData</a> 
<a href="index.html#a49a9f7deccedeebacadc37ae01ac83ab" class="el">authData</a> () const
 
Read the authentication data stored in the account (merging the service-specific settings with the global account settings). More...
 
<span id="details"></span>
Detailed Description
--------------------

Account settings for a specific service.

The <a href="index.html" class="el" title="Account settings for a specific service. ">AccountService</a> class provides access to the account settings for a specific service type. It is meant to be easier to use than the Account class because it hides the complexity of the account structure and gives access to only the limited subset of account settings which are relevant to a service.

To get an <a href="index.html" class="el" title="Account settings for a specific service. ">AccountService</a> one can use the <a href="../Accounts.Manager/index.html" class="el" title="Manager of accounts, services and providers. ">Manager</a> methods accountServices() or enabledAccountServices(), which both return a QList of account services. Note that if the <a href="../Accounts.Manager/index.html" class="el" title="Manager of accounts, services and providers. ">Manager</a> was instantiated for a specific service type, these lists will contain only those account services matching that service type. The <a href="index.html" class="el" title="Account settings for a specific service. ">AccountService</a> can also be instantiated with its <a href="index.html" class="el" title="Account settings for a specific service. ">AccountService</a>(Account \*account, <a href="../Accounts.Service/index.html" class="el" title="Representation of an account service. ">Service</a> \*service) constructor: this is useful if one already has an Account instance.

This is intended to be a convenient wrapper over the accounts settings specific for a service; as such, it doesn't offer all the editing possibilities offered by the Account class, such as enabling the service itself: these operations should ideally not be performed by consumer applications, but by the account editing UI only.

Example code:

<span class="comment">// Instantiate an account manager interested in e-mail services only.</span>

<a href="../Accounts.Manager/index.html" class="code">Accounts::Manager</a> \*manager = <span class="keyword">new</span> <a href="../Accounts.Manager/index.html" class="code">Accounts::Manager</a>(<span class="stringliteral">"e-mail"</span>);

<span class="comment">// Get the list of enabled AccountService objects of type e-mail.</span>

Accounts::AccountServiceList services = manager-&gt;enabledAccountServices();

<span class="comment">// Loop through the account services and do something useful with them.</span>

<span class="keywordflow">foreach</span> (<a href="index.html" class="code">Accounts::AccountService</a> <a href="index.html#a256dc9d961214d5f60642a290a288998" class="code">service</a>, services) {

QString server = service.<a href="index.html#a299df626e5ca7968fd8b70f9c87acfbb" class="code">value</a>(<span class="stringliteral">"pop3/hostname"</span>).toString();

<span class="keywordtype">int</span> port = service.<a href="index.html#a299df626e5ca7968fd8b70f9c87acfbb" class="code">value</a>(<span class="stringliteral">"pop3/port"</span>).toInt();

<span class="comment">// Suppose that the e-mail address is stored in the global account</span>

<span class="comment">// settings; let's get it from there:</span>

QString fromAddress = service.<a href="index.html#a490333c2ed4d6f107c5493a9465d993b" class="code">account</a>()-&gt;valueAsString(<span class="stringliteral">"username"</span>);

...

}

Note  
User applications (with the notable exception of the accounts editing application) should never use account services which are not enabled, and should stop using an account when the account service becomes disabled. The latter can be done by connecting to the <a href="index.html#a4db9a5f1a7e34ec6902ff9630d98b777" class="el" title="Emitted when some setting has changed on the account service. ">changed()</a> signal and checking if <a href="index.html#ae2931e09e0fd8eac15c83f0254b4e4ac" class="el" title="Check whether the account service is enabled. ">isEnabled()</a> still returns true.

Note that if the account gets deleted, it will always get disabled first; so, there is no need to connect to the Account::removed() signal; one can just monitor the <a href="index.html#a4db9a5f1a7e34ec6902ff9630d98b777" class="el" title="Emitted when some setting has changed on the account service. ">changed()</a> signal from the <a href="index.html" class="el" title="Account settings for a specific service. ">AccountService</a> objects.

Definition at line 39 of file account-service.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="aef5d4691113e384992926928928ae334" class="anchor"></span>
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
<td><a href="index.html" class="el">AccountService</a></td>
<td>(</td>
<td>Account * </td>
<td><em>account</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>const <a href="../Accounts.Service/index.html" class="el">Service</a> &amp; </td>
<td><em>service</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">explicit</span></span></td>
</tr>
</tbody>
</table>

Constructor.

Parameters  
|         |                                                                                                                                            |
|---------|--------------------------------------------------------------------------------------------------------------------------------------------|
| account | An Account.                                                                                                                                |
| service | A <a href="../Accounts.Service/index.html" class="el" title="Representation of an account service. ">Service</a> supported by the account. |

Definition at line 179 of file account-service.cpp.

<span id="a5183e298082ee83004c503197ff14e20" class="anchor"></span>
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
<td><a href="index.html" class="el">AccountService</a></td>
<td>(</td>
<td>Account * </td>
<td><em>account</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>const <a href="../Accounts.Service/index.html" class="el">Service</a> &amp; </td>
<td><em>service</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>QObject * </td>
<td><em>parent</em> </td>
</tr>
<tr class="even">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">explicit</span></span></td>
</tr>
</tbody>
</table>

Constructor.

Parameters  
|         |                                                                                                                                            |
|---------|--------------------------------------------------------------------------------------------------------------------------------------------|
| account | An Account.                                                                                                                                |
| service | A <a href="../Accounts.Service/index.html" class="el" title="Representation of an account service. ">Service</a> supported by the account. |
| parent  | The parent object.                                                                                                                         |

Definition at line 191 of file account-service.cpp.

Member Function Documentation
-----------------------------

<span id="a49a9f7deccedeebacadc37ae01ac83ab" class="anchor"></span>
|                                                                            |     |     |     |       |
|----------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../Accounts.AuthData/index.html" class="el">AuthData</a> authData | (   |     | )   | const |

Read the authentication data stored in the account (merging the service-specific settings with the global account settings).

The method and mechanism are read from the "auth/method" and "auth/mechanism" keys, respectively. The authentication parameters are found under the "auth/&lt;method&gt;/&lt;mechanism&gt;/" group.

Returns  
an <a href="../Accounts.AuthData/index.html" class="el" title="Information for account authentication. ">AuthData</a> object, describing the authentication settings.

Definition at line 501 of file account-service.cpp.

<span id="aa889966b87d4315aea74c30088e9c8fa" class="anchor"></span>
|                 |     |                  |          |     |     |
|-----------------|-----|------------------|----------|-----|-----|
| void beginGroup | (   | const QString &  | *prefix* | )   |     |

Enter a group.

This method never fails.

Parameters  
|        |     |
|--------|-----|
| prefix |     |

Definition at line 271 of file account-service.cpp.

<span id="a4db9a5f1a7e34ec6902ff9630d98b777" class="anchor"></span>
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
<td>changed</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">signal</span></span></td>
</tr>
</tbody>
</table>

Emitted when some setting has changed on the account service.

You can use the <a href="index.html#a678e391f34362471f042719d3b388d81" class="el" title="This method should be called only in the context of a handler of the AccountService::changed() signal...">changedFields()</a> method to retrieve the list of the settings which have changed.

<span id="a678e391f34362471f042719d3b388d81" class="anchor"></span>
|                           |     |     |     |       |
|---------------------------|-----|-----|-----|-------|
| QStringList changedFields | (   |     | )   | const |

This method should be called only in the context of a handler of the <a href="index.html#a4db9a5f1a7e34ec6902ff9630d98b777" class="el" title="Emitted when some setting has changed on the account service. ">AccountService::changed()</a> signal, and can be used to retrieve the set of changes.

Returns  
a QStringList of the keys which have changed.

Definition at line 471 of file account-service.cpp.

<span id="ac8bb3912a3ce86b15842e79d0b421204" class="anchor"></span>
|            |     |     |     |     |
|------------|-----|-----|-----|-----|
| void clear | (   |     | )   |     |

Remove all the keys.

See also  
<a href="index.html#a89c0a3a6c660a5f577e5241a63052f2c" class="el" title="Remove the given key. ">remove(const QString &amp;key)</a>

Definition at line 316 of file account-service.cpp.

<span id="aab9f06bc42480ab555a9757e14303e5f" class="anchor"></span>
|               |     |                  |       |     |       |
|---------------|-----|------------------|-------|-----|-------|
| bool contains | (   | const QString &  | *key* | )   | const |

Check whether the given key is in the current group.

Parameters  
|     |                              |
|-----|------------------------------|
| key | The key name of the setting. |

Definition at line 331 of file account-service.cpp.

References AccountService::childKeys().

<span id="a1d79980f25d38aba3d6777d0afe544f3" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| bool enabled | (   |     | )   | const |

Check whether the account service is enabled.

Note  
this is just a wrapper of isEnabled

<!-- -->

See also  
<a href="index.html#ae2931e09e0fd8eac15c83f0254b4e4ac" class="el" title="Check whether the account service is enabled. ">isEnabled()</a>

<!-- -->

**<a href="../Accounts.deprecated/index.html#_deprecated000001" class="el">Deprecated:</a>**  
use isEnabled instead

Definition at line 231 of file account-service.cpp.

References AccountService::isEnabled().

<span id="a89c0a3a6c660a5f577e5241a63052f2c" class="anchor"></span>
|             |     |                  |       |     |     |
|-------------|-----|------------------|-------|-----|-----|
| void remove | (   | const QString &  | *key* | )   |     |

Remove the given key.

If the key is the empty string, all keys in the current group are removed.

Parameters  
|     |                              |
|-----|------------------------------|
| key | The key name of the setting. |

Definition at line 363 of file account-service.cpp.

References AccountService::allKeys().

<span id="a256dc9d961214d5f60642a290a288998" class="anchor"></span>
|                                                                         |     |     |     |       |
|-------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../Accounts.Service/index.html" class="el">Service</a> service | (   |     | )   | const |

Return the <a href="../Accounts.Service/index.html" class="el" title="Representation of an account service. ">Service</a>.

Do not delete this object explicitly.

Definition at line 218 of file account-service.cpp.

<span id="a48d1031ae51455e458b881c49c65a92e" class="anchor"></span>
|               |     |                   |          |
|---------------|-----|-------------------|----------|
| void setValue | (   | const QString &   | *key*,   |
|               |     | const QVariant &  | *value*  |
|               | )   |                   |          |

Change the value of an account setting.

Parameters  
|       |                               |
|-------|-------------------------------|
| key   | The name of the setting.      |
| value | The new value of the setting. |

Definition at line 391 of file account-service.cpp.

<span id="a299df626e5ca7968fd8b70f9c87acfbb" class="anchor"></span>
|                |     |                   |                 |
|----------------|-----|-------------------|-----------------|
| QVariant value | (   | const QString &   | *key*,          |
|                |     | const QVariant &  | *defaultValue*, |
|                |     | SettingSource \*  | *source* = `0`  |
|                | )   |                   | const           |

Retrieves the value of an account setting, as a QVariant.

Parameters  
|              |                                                                                        |
|--------------|----------------------------------------------------------------------------------------|
| key          | The key whose value must be retrieved.                                                 |
| defaultValue | Value returned if the key is unset.                                                    |
| source       | Indicates whether the value comes from the account, the service template or was unset. |

<!-- -->

Returns  
The value associated to *key*.

This method operates on the currently selected service.

Definition at line 423 of file account-service.cpp.

Referenced by AccountService::value().

<span id="a53cc185b2ceff59c833ebe939a6e18cb" class="anchor"></span>
|                |     |                   |                 |
|----------------|-----|-------------------|-----------------|
| QVariant value | (   | const QString &   | *key*,          |
|                |     | SettingSource \*  | *source* = `0`  |
|                | )   |                   | const           |

Retrieves the value of an account setting.

Parameters  
|        |                                                                                        |
|--------|----------------------------------------------------------------------------------------|
| key    | The key whose value must be retrieved                                                  |
| source | Indicates whether the value comes from the account, the service template or was unset. |

Returns the value of the setting, or an invalid QVariant if unset.

Definition at line 454 of file account-service.cpp.

References AccountService::value().

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
