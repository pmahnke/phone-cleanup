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

<!-- -->

-   Registry

Registry
========

White pages service for available scopes. [More...](index.html#details)

`#include <unity/scopes/Registry.h>`

Inheritance diagram for unity::scopes::Registry:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/5e984690-ea76-4310-963f-5b19bbaac4c0-api/scopes/cpp/sdk-15.04/unity.scopes.Registry/classunity_1_1scopes_1_1_registry__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual <a href="../unity.scopes.ScopeMetadata/index.html" class="el">ScopeMetadata</a> 
<a href="index.html#a63778ac090804a1fb85dc48fccbc2822" class="el">get_metadata</a> (std::string const &scope\_id)=0
 
Returns the metadata for the scope with the given ID. More...
 
virtual <a href="../unity.scopes/index.html#a9f6e8e62689e49cdabadacf39b697816" class="el">MetadataMap</a> 
<a href="index.html#a23e078986524fe11bd363c29401fbb31" class="el">list</a> ()=0
 
Returns a map containing the metadata for all scopes. More...
 
virtual <a href="../unity.scopes/index.html#a9f6e8e62689e49cdabadacf39b697816" class="el">MetadataMap</a> 
<a href="index.html#aa15baf0154c4b58decf27f2e5815d680" class="el">list_if</a> (std::function&lt; bool(<a href="../unity.scopes.ScopeMetadata/index.html" class="el">ScopeMetadata</a> const &item)&gt; predicate)=0
 
Returns a map containing only those scopes for which `predicate` returns true. More...
 
virtual bool 
<a href="index.html#a06ef35ed8677a0b20774528343bff9f1" class="el">is_scope_running</a> (std::string const &scope\_id)=0
 
Returns whether a scope is currently running or not. More...
 
virtual core::ScopedConnection 
<a href="index.html#a86ac67a881dec9eddabd069153fc62b1" class="el">set_scope_state_callback</a> (std::string const &scope\_id, std::function&lt; void(bool is\_running)&gt; callback)=0
 
Assigns a callback method to be executed when a scope's running state (started / stopped) changes. More...
 
virtual core::ScopedConnection 
<a href="index.html#a1f540dc612ce4a5e50a21ec66fec75fd" class="el">set_list_update_callback</a> (std::function&lt; void()&gt; callback)=0
 
Assigns a callback method to be executed when the registry's scope list changes. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/d805cdde-b539-481a-8933-25110d58cc0f-api/scopes/cpp/sdk-15.04/unity.scopes.Registry/closed.png) Public Member Functions inherited from <a href="../unity.scopes.Object/index.html" class="el">unity::scopes::Object</a>
virtual std::string 
<a href="../unity.scopes.Object/index.html#ad7618cc9d878c40b389361d4acd473ae" class="el">endpoint</a> ()=0
 
Returns the endpoint this proxy connects to. More...
 
virtual std::string 
<a href="../unity.scopes.Object/index.html#a1b55aea886f0a68cb8a578f7ee0b1cfd" class="el">identity</a> ()=0
 
Returns the identity of the target object of this proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object/index.html#a40a997516629df3dacca9742dbddd6cb" class="el">target_category</a> ()=0
 
Returns the category of the target object of this proxy. More...
 
virtual int64\_t 
<a href="../unity.scopes.Object/index.html#a41d9839f1e3cbcd6d8baee0736feccab" class="el">timeout</a> ()=0
 
Returns the timeout in milliseconds if this proxy is a twoway proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object/index.html#a9ae27e1f30dc755abcd796a1e8a25150" class="el">to_string</a> ()=0
 
Converts a proxy into its string representation. More...
 
<span id="details"></span>
Detailed Description
--------------------

White pages service for available scopes.

You can obtain a proxy to the registry by calling <a href="../unity.scopes.Runtime/index.html#afc312448a4537b110bf1701bfb964501" class="el" title="Returns a proxy to the Registry object. ">Runtime::registry()</a>.

Member Function Documentation
-----------------------------

<span id="a63778ac090804a1fb85dc48fccbc2822" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.ScopeMetadata/index.html" class="el">ScopeMetadata</a> unity::scopes::Registry::get_metadata</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>scope_id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Returns the metadata for the scope with the given ID.

Parameters  
|           |                                                              |
|-----------|--------------------------------------------------------------|
| scope\_id | The ID of the scope from which we wish to retrieve metadata. |

<!-- -->

Returns  
The metadata for the scope.

<!-- -->

Exceptions  
|                                                                                                                                                                              |                                       |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">NotFoundException</a> | if no scope with the given ID exists. |

<span id="a06ef35ed8677a0b20774528343bff9f1" class="anchor"></span>
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
<td>virtual bool unity::scopes::Registry::is_scope_running</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>scope_id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Returns whether a scope is currently running or not.

Parameters  
|           |                                                           |
|-----------|-----------------------------------------------------------|
| scope\_id | The ID of the scope from which we wish to retrieve state. |

<!-- -->

Returns  
True if the scope is running, and False if it is not running.

<!-- -->

Exceptions  
|                                                                                                                                                                              |                                       |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">NotFoundException</a> | if no scope with the given ID exists. |

<span id="a23e078986524fe11bd363c29401fbb31" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes/index.html#a9f6e8e62689e49cdabadacf39b697816" class="el">MetadataMap</a> unity::scopes::Registry::list</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a map containing the metadata for all scopes.

Returns  
The metadata for all scopes.

<span id="aa15baf0154c4b58decf27f2e5815d680" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes/index.html#a9f6e8e62689e49cdabadacf39b697816" class="el">MetadataMap</a> unity::scopes::Registry::list_if</td>
<td>(</td>
<td>std::function&lt; bool(<a href="../unity.scopes.ScopeMetadata/index.html" class="el">ScopeMetadata</a> const &amp;item)&gt; </td>
<td><em>predicate</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a map containing only those scopes for which `predicate` returns true.

Parameters  
|           |                                                                                           |
|-----------|-------------------------------------------------------------------------------------------|
| predicate | a function object that must return true for each metadata item to be included in the map. |

<!-- -->

Returns  
The metadata items for which the predicate returned true.

<span id="a1f540dc612ce4a5e50a21ec66fec75fd" class="anchor"></span>
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
<td>virtual core::ScopedConnection unity::scopes::Registry::set_list_update_callback</td>
<td>(</td>
<td>std::function&lt; void()&gt; </td>
<td><em>callback</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Assigns a callback method to be executed when the registry's scope list changes.

Note: Upon receiving this callback, you should retrieve the updated scopes list via the <a href="index.html#a23e078986524fe11bd363c29401fbb31" class="el" title="Returns a map containing the metadata for all scopes. ">list()</a> method if you wish to retain synchronisation between client and server.

Parameters  
|          |                                                            |
|----------|------------------------------------------------------------|
| callback | The function object that is invoked when an update occurs. |

<!-- -->

Exceptions  
|                                                                                                                                                                                 |                                                  |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------|
| <a href="../unity.scopes.MiddlewareException/index.html" class="el" title="Exception to indicate that something went wrong with the middleware layer. ">MiddlewareException</a> | if the registry subscriber failed to initialize. |

<span id="a86ac67a881dec9eddabd069153fc62b1" class="anchor"></span>
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
<td>virtual core::ScopedConnection unity::scopes::Registry::set_scope_state_callback</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>scope_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::function&lt; void(bool is_running)&gt; </td>
<td><em>callback</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Assigns a callback method to be executed when a scope's running state (started / stopped) changes.

Parameters  
|           |                                                                         |
|-----------|-------------------------------------------------------------------------|
| scope\_id | The ID of the scope from which we wish to retrieve state changes.       |
| callback  | The function object that is invoked when a scope changes running state. |

<!-- -->

Exceptions  
|                                                                                                                                                                                 |                                                  |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------|
| <a href="../unity.scopes.MiddlewareException/index.html" class="el" title="Exception to indicate that something went wrong with the middleware layer. ">MiddlewareException</a> | if the registry subscriber failed to initialize. |

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
