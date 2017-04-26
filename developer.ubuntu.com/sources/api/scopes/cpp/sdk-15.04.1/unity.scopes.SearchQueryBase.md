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

<!-- -->

-   SearchQueryBase

SearchQueryBase
===============

Abstract base class to represent a particular query. [More...](index.html#details)

`#include <unity/scopes/SearchQueryBase.h>`

Inheritance diagram for unity::scopes::SearchQueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/0857763e-f9be-4dc2-92d6-97417373460a-api/scopes/cpp/sdk-15.04.1/unity.scopes.SearchQueryBase/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual void 
<a href="index.html#afc4f15b2266838d7da75b05ea37d504b" class="el">run</a> (<a href="../unity.scopes/index.html#a9cd604d9b842ac3b2b8636c2165dec1f" class="el">SearchReplyProxy</a> const &reply)=0
 
Called by scopes runtime to start the query. More...
 
<a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> 
<a href="index.html#a40d6b29a54d2fbd68870ffe38cab740f" class="el">query</a> () const
 
Get a canned query for this search request. More...
 
<a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> 
<a href="index.html#a5ede5797f5ea09eaf1cf6a14d03bfe1f" class="el">search_metadata</a> () const
 
Get metadata for this search request. More...
 
Subquery methods

The subsearch() methods are for use by aggregating scopes. When an aggregator passes a query to its child scopes, it should use subsearch() instead of the normal <a href="../unity.scopes.Scope/index.html#a09976690ca801ecada50687df6046a29" class="el" title="Initiates a search query. ">Scope::search()</a> that would be called by a client. subsearch() takes care of automatically forwarding query cancellation to child scopes. This means that there is no need for an aggregating scope to explicitly forward cancellation to child scopes when its <a href="../unity.scopes.QueryBase/index.html#a596b19dbfd6efe96b834be75a9b64c68" class="el" title="Called by the scopes runtime when the query originator cancels a query. ">QueryBase::cancelled()</a> method is called by the scopes runtime.

<span id="a6de6966cb4bf06fb55e94d6d7cfad3ce" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> const &scope, std::string const &query\_string, SearchListenerBase::SPtr const &reply)
 
<span id="a8402191af67bc3122bef9c97c74c5ca9" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.ChildScope/index.html" class="el">ChildScope</a> const &scope, std::string const &query\_string, SearchListenerBase::SPtr const &reply)
 
<span id="a618c74e409b087fe4d5312c0f7605efa" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> const &scope, std::string const &query\_string, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, SearchListenerBase::SPtr const &reply)
 
<span id="abe30d8b9683b2fa77bb538a01c9a5ce6" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, SearchListenerBase::SPtr const &reply)
 
<span id="ab48cedeedaf43c158f0b995386d9bf10" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.ChildScope/index.html" class="el">ChildScope</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, SearchListenerBase::SPtr const &reply)
 
<span id="a0c33fc1501779d8e5a93480f5229e40f" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, <a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> const &hints, SearchListenerBase::SPtr const &reply)
 
<span id="af13141a11f9a878bf44d05d66f8235bb" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.ChildScope/index.html" class="el">ChildScope</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, <a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> const &hints, SearchListenerBase::SPtr const &reply)
 
<span id="af88efbb2b614e70bc1c9e17f1e15517f" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.ChildScope/index.html" class="el">ChildScope</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &user\_data, <a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> const &hints, SearchListenerBase::SPtr const &reply)
 
<span id="a9821168cf48dd1548db3b258d6d8cba3" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &user\_data, <a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> const &hints, SearchListenerBase::SPtr const &reply)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/911dbcc3-3005-46d3-81bc-09b6384b2077-api/scopes/cpp/sdk-15.04.1/unity.scopes.SearchQueryBase/closed.png) Public Member Functions inherited from <a href="../unity.scopes.QueryBase/index.html" class="el">unity::scopes::QueryBase</a>
virtual void 
<a href="../unity.scopes.QueryBase/index.html#a596b19dbfd6efe96b834be75a9b64c68" class="el">cancelled</a> ()=0
 
Called by the scopes runtime when the query originator cancels a query. More...
 
bool 
<a href="../unity.scopes.QueryBase/index.html#a095e61eabe2042eeea5c4df1a444d7d4" class="el">valid</a> () const
 
Check whether this query is still valid. More...
 
<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">unity::scopes::VariantMap</a> 
<a href="../unity.scopes.QueryBase/index.html#ab6a25ba587387a7f490b8b5a081e9ed6" class="el">settings</a> () const
 
Returns a dictionary with the scope's current settings. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class to represent a particular query.

A scope must return an instance of this class from its implementation of <a href="../unity.scopes.ScopeBase/index.html#a0e4969ff26dc1d396d74c56d896fd564" class="el" title="Called by the scopes runtime when a scope needs to instantiate a query. ">ScopeBase::search()</a>.

Note  
The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

<span id="a40d6b29a54d2fbd68870ffe38cab740f" class="anchor"></span>
|                                                                                                                   |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> unity::scopes::SearchQueryBase::query | (   |     | )   | const |

Get a canned query for this search request.

Returns  
The canned query.

<!-- -->

Exceptions  
|                       |                                                                    |
|-----------------------|--------------------------------------------------------------------|
| unity::LogicException | if the canned query was not initialized (was default-constructed). |

<span id="afc4f15b2266838d7da75b05ea37d504b" class="anchor"></span>
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
<td>virtual void unity::scopes::SearchQueryBase::run</td>
<td>(</td>
<td><a href="../unity.scopes/index.html#a9cd604d9b842ac3b2b8636c2165dec1f" class="el">SearchReplyProxy</a> const &amp; </td>
<td><em>reply</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Called by scopes runtime to start the query.

Your implementation of <a href="index.html#afc4f15b2266838d7da75b05ea37d504b" class="el" title="Called by scopes runtime to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a href="index.html#afc4f15b2266838d7da75b05ea37d504b" class="el" title="Called by scopes runtime to start the query. ">run()</a>, in which case the query implicitly completes when <a href="index.html#afc4f15b2266838d7da75b05ea37d504b" class="el" title="Called by scopes runtime to start the query. ">run()</a> returns. Alternatively, <a href="index.html#afc4f15b2266838d7da75b05ea37d504b" class="el" title="Called by scopes runtime to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call `push()` from multiple threads without synchronization.

The query completes either when <a href="index.html#afc4f15b2266838d7da75b05ea37d504b" class="el" title="Called by scopes runtime to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).

Parameters  
|       |                                                   |
|-------|---------------------------------------------------|
| reply | The proxy on which to push results for the query. |

Implemented in <a href="../unity.scopes.qt.QSearchQueryBaseAPI/index.html#ade9ee7a415d8fcfc4f2391dae8bb37fb" class="el">unity::scopes::qt::QSearchQueryBaseAPI</a>.

<span id="a5ede5797f5ea09eaf1cf6a14d03bfe1f" class="anchor"></span>
|                                                                                                                                    |     |     |     |       |
|------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> unity::scopes::SearchQueryBase::search\_metadata | (   |     | )   | const |

Get metadata for this search request.

Returns  
The search metadata.

<!-- -->

Exceptions  
|                       |                                                                   |
|-----------------------|-------------------------------------------------------------------|
| unity::LogicException | if search metadata was not initialized (was default-constructed). |

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
