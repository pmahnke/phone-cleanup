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
-   [SDK 15.04.4](../index.html) ›

<!-- -->

-   CannedQuery

CannedQuery
===========

Parameters of a search query. [More...](index.html#details)

`#include <unity/scopes/CannedQuery.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

<span id="a590181347391bcd1115579187fb70995" class="anchor"></span>  
<a href="index.html#a590181347391bcd1115579187fb70995" class="el">CannedQuery</a> (std::string const &<a href="index.html#a406aa5a8fb73a602664e254d8efe25c9" class="el">scope_id</a>)
 
Creates a query for given scope with empty query string.
 
<span id="aeffdaa76040590f874c86d4bfd884afc" class="anchor"></span>  
<a href="index.html#aeffdaa76040590f874c86d4bfd884afc" class="el">CannedQuery</a> (std::string const &<a href="index.html#a406aa5a8fb73a602664e254d8efe25c9" class="el">scope_id</a>, std::string const &query\_str, std::string const &<a href="index.html#a61351960149bb4c0840f020c4e645f66" class="el">department_id</a>)
 
Creates a query for given scope with specific query string and in given department.
 
<span id="a41981f398edaa4d7dc7623b323c952c3" class="anchor"></span> void 
<a href="index.html#a41981f398edaa4d7dc7623b323c952c3" class="el">set_department_id</a> (std::string const &dep\_id)
 
Sets or updates the department.
 
<span id="acc65fc4671dae0bccaba0aa811d05bc2" class="anchor"></span> void 
<a href="index.html#acc65fc4671dae0bccaba0aa811d05bc2" class="el">set_query_string</a> (std::string const &query\_str)
 
Sets or updates the query string.
 
<span id="aca9bbdc1ff14b20f3e7b04f2584b6a41" class="anchor"></span> void 
<a href="index.html#aca9bbdc1ff14b20f3e7b04f2584b6a41" class="el">set_filter_state</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &<a href="index.html#a94eab58b1e02501f49fba55418b043bf" class="el">filter_state</a>)
 
Sets filter state.
 
std::string 
<a href="index.html#a406aa5a8fb73a602664e254d8efe25c9" class="el">scope_id</a> () const
 
Returns the scope identifier of this CannedQuery. More...
 
std::string 
<a href="index.html#a61351960149bb4c0840f020c4e645f66" class="el">department_id</a> () const
 
Returns the department id of this CannedQuery. More...
 
std::string 
<a href="index.html#a29d05795a3255655a5de3754e3dfa73f" class="el">query_string</a> () const
 
Returns the query string of this CannedQuery. More...
 
std::string 
<a href="index.html#a993c2d80b4d3c15b22f58fe6951e8c3d" class="el">to_uri</a> () const
 
Returns a string representation of this CannedQuery object as a URI using scope:// schema. More...
 
<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> 
<a href="index.html#a94eab58b1e02501f49fba55418b043bf" class="el">filter_state</a> () const
 
Get state of the filters for this CannedQuery. More...
 
void 
<a href="index.html#a6799b92d42f8f19116604b0cdd81135f" class="el">set_user_data</a> (<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &value)
 
Attach arbitrary data. More...
 
bool 
<a href="index.html#ac495aa13c8fa07b623baa7b7795fa214" class="el">has_user_data</a> () const
 
Checks if user data has been attached to this query. More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> 
<a href="index.html#aec4f31c9decc1ef1cb58e3ca924fa2f1" class="el">user_data</a> () const
 
Get user data attached to this query. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a5010b18abe5eb65e0733ae250a03b9b8" class="anchor"></span>  
**CannedQuery** (<a href="index.html" class="el">CannedQuery</a> const &other)
 
<span id="a45495af2b392e76307e706e77d3d3cfe" class="anchor"></span>  
**CannedQuery** (<a href="index.html" class="el">CannedQuery</a> &&)
 
<span id="ab8b5babe831ccc7e7787b3645a509eed" class="anchor"></span> <a href="index.html" class="el">CannedQuery</a> & 
**operator=** (<a href="index.html" class="el">CannedQuery</a> const &other)
 
<span id="ab19c9686b813f23abc6358933b76cd2b" class="anchor"></span> <a href="index.html" class="el">CannedQuery</a> & 
**operator=** (<a href="index.html" class="el">CannedQuery</a> &&)
 
<span id="pub-static-methods"></span> Static Public Member Functions
--------------------------------------------------------------------

static <a href="index.html" class="el">CannedQuery</a> 
<a href="index.html#a30fbeb531d683f6d6c032c703b15a634" class="el">from_uri</a> (std::string const &uri)
 
Recreates a CannedQuery object from a scope:// URI. More...
 
<span id="details"></span>
Detailed Description
--------------------

Parameters of a search query.

Holds all parameters of a search query: the target scope id, query string, department id, and state of the filters. <a href="index.html" class="el" title="Parameters of a search query. ">CannedQuery</a> can also carry arbitrary data (set by calling <a href="index.html#a6799b92d42f8f19116604b0cdd81135f" class="el" title="Attach arbitrary data. ">CannedQuery::set_user_data(Variant const&amp;)</a>) which can then be retrieved back with <a href="index.html#aec4f31c9decc1ef1cb58e3ca924fa2f1" class="el" title="Get user data attached to this query. ">CannedQuery::user_data()</a> when <a href="index.html" class="el" title="Parameters of a search query. ">CannedQuery</a> object is received in <a href="../unity.scopes.ScopeBase/index.html#a0e4969ff26dc1d396d74c56d896fd564" class="el" title="Called by the scopes runtime when a scope needs to instantiate a query. ">ScopeBase::search</a>. This arbitrary data can be used to store any state-related information that may be useful for the scope when new search request is performed.

Can be converted to/from scope:// uri schema string.

Member Function Documentation
-----------------------------

<span id="a61351960149bb4c0840f020c4e645f66" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::CannedQuery::department\_id | (   |     | )   | const |

Returns the department id of this <a href="index.html" class="el" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The department id.

<span id="a94eab58b1e02501f49fba55418b043bf" class="anchor"></span>
|                                                                                                                       |     |     |     |       |
|-----------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> unity::scopes::CannedQuery::filter\_state | (   |     | )   | const |

Get state of the filters for this <a href="index.html" class="el" title="Parameters of a search query. ">CannedQuery</a>.

Pass this state to methods of specific filter instances (such as <a href="../unity.scopes.OptionSelectorFilter/index.html#a3015abeb0439ccd29bd61afa9b7059df" class="el" title="Get the active options from a FilterState instance for this filter. ">unity::scopes::OptionSelectorFilter::active_options()</a>)to examine filter state.

Returns  
The state of the filters.

<span id="a30fbeb531d683f6d6c032c703b15a634" class="anchor"></span>
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
<td><a href="index.html" class="el">CannedQuery</a> unity::scopes::CannedQuery::from_uri</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>uri</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Recreates a <a href="index.html" class="el" title="Parameters of a search query. ">CannedQuery</a> object from a scope:// URI.

Returns  
a <a href="index.html" class="el" title="Parameters of a search query. ">CannedQuery</a> instance

<!-- -->

Exceptions  
|                          |                              |
|--------------------------|------------------------------|
| InvalidArgumentException | if the URI cannot be parsed. |

<span id="ac495aa13c8fa07b623baa7b7795fa214" class="anchor"></span>
|                                                  |     |     |     |       |
|--------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::CannedQuery::has\_user\_data | (   |     | )   | const |

Checks if user data has been attached to this query.

Returns  
true if data is available.

<span id="a29d05795a3255655a5de3754e3dfa73f" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::CannedQuery::query\_string | (   |     | )   | const |

Returns the query string of this <a href="index.html" class="el" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The query string.

<span id="a406aa5a8fb73a602664e254d8efe25c9" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::CannedQuery::scope\_id | (   |     | )   | const |

Returns the scope identifier of this <a href="index.html" class="el" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The scope identifier.

<span id="a6799b92d42f8f19116604b0cdd81135f" class="anchor"></span>
|                                                  |     |                                                                              |         |     |     |
|--------------------------------------------------|-----|------------------------------------------------------------------------------|---------|-----|-----|
| void unity::scopes::CannedQuery::set\_user\_data | (   | <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &  | *value* | )   |     |

Attach arbitrary data.

Parameters  
|       |                                     |
|-------|-------------------------------------|
| value | Data to attach to this canned query |

<span id="a993c2d80b4d3c15b22f58fe6951e8c3d" class="anchor"></span>
|                                                 |     |     |     |       |
|-------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::CannedQuery::to\_uri | (   |     | )   | const |

Returns a string representation of this <a href="index.html" class="el" title="Parameters of a search query. ">CannedQuery</a> object as a URI using scope:// schema.

Returns  
The URI for the query.

<span id="aec4f31c9decc1ef1cb58e3ca924fa2f1" class="anchor"></span>
|                                                                                                            |     |     |     |       |
|------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> unity::scopes::CannedQuery::user\_data | (   |     | )   | const |

Get user data attached to this query.

Returns  
Data variant

<!-- -->

Exceptions  
|                       |                                |
|-----------------------|--------------------------------|
| unity::LogicException | if user data is not available. |

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
