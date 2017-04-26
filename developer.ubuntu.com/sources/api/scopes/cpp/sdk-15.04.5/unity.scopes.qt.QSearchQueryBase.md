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
-   [SDK 15.04.5](../index.html) ›
-   [unity.scopes.qt](../unity.scopes.qt/index.html) ›

<!-- -->

-   QSearchQueryBase

QSearchQueryBase
================

Abstract base class to represent a particular query. [More...](index.html#details)

`#include <unity/scopes/qt/QSearchQueryBase.h>`

Inheritance diagram for unity::scopes::qt::QSearchQueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/7e61e600-c962-45fa-b6d0-7e29ec2a5647-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QSearchQueryBase/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

<a href="../unity.scopes.qt.QCannedQuery/index.html" class="el">QCannedQuery</a> 
<a href="index.html#a1ad69c195d42ecaea4a7851f1dfc6023" class="el">query</a> () const
 
Get a canned query for this search request. More...
 
<a href="../unity.scopes.SearchMetadata/index.html" class="el">unity::scopes::SearchMetadata</a> 
<a href="index.html#a222670a440c3712d1bf5cfe220d6f55a" class="el">search_metadata</a> () const
 
Get metadata for this search request. More...
 
<span id="member-group"></span> Subquery methods
------------------------------------------------

<span id="amgrp57d140a8b5aacb224d2be9c1320bc8e9" class="anchor"></span>The subsearch() methods are for use by aggregating scopes. When an aggregator passes a query to its child scopes, it should use subsearch() instead of the normal <a href="../unity.scopes.Scope/index.html#a09976690ca801ecada50687df6046a29" class="el" title="Initiates a search query. ">Scope::search()</a> that would be called by a client. subsearch() takes care of automatically forwarding query cancellation to child scopes. This means that there is no need for an aggregating scope to explicitly forward cancellation to child scopes when its <a href="../unity.scopes.QueryBase/index.html#a596b19dbfd6efe96b834be75a9b64c68" class="el" title="Called by the scopes runtime when the query originator cancels a query. ">QueryBase::cancelled()</a> method is called by the scopes run time.

<span id="ab4977a32f485b4c7ac561a99d4b2af28" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> const &scope, std::string const &query\_string, SearchListenerBase::SPtr const &reply)
 
<span id="a30757461a1f7de8808ebbabf4355b2d1" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> const &scope, std::string const &query\_string, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, SearchListenerBase::SPtr const &reply)
 
<span id="a8c30e6afd06543a53773f32d3a8fb007" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, SearchListenerBase::SPtr const &reply)
 
<span id="a25141482608f312ae9c17564538cd143" class="anchor"></span> <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, <a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> const &hints, SearchListenerBase::SPtr const &reply)
 
virtual void 
<a href="index.html#ae12e4040935c2240f2f02482acd49e89" class="el">run</a> (QSearchReplyProxy const &reply)=0
 
Called by scopes run time to start the query. More...
 
virtual void 
<a href="index.html#a811927afeb090c114fd8ad5b459ec4e7" class="el">cancelled</a> ()=0
 
Called by the scopes run time when the query originator cancels a query. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class to represent a particular query.

A scope must return an instance of this class from its implementation of <a href="../unity.scopes.ScopeBase/index.html#a0e4969ff26dc1d396d74c56d896fd564" class="el" title="Called by the scopes runtime when a scope needs to instantiate a query. ">ScopeBase::search()</a>.

Note  
The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

<span id="a811927afeb090c114fd8ad5b459ec4e7" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QSearchQueryBase::cancelled</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span><span class="mlabel">slot</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes run time when the query originator cancels a query.

Your implementation of this method should ensure that the scope stops processing the current query as soon as possible. Any calls to a `push()` method once a query is cancelled are ignored, so continuing to push after cancellation only wastes CPU cycles. (`push()` returns `false` once a query is cancelled or exceeds its cardinality limit.)

<span id="a1ad69c195d42ecaea4a7851f1dfc6023" class="anchor"></span>
|                                                                                                                             |     |     |     |       |
|-----------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.qt.QCannedQuery/index.html" class="el">QCannedQuery</a> unity::scopes::qt::QSearchQueryBase::query | (   |     | )   | const |

Get a canned query for this search request.

Returns  
The canned query.

<!-- -->

Exceptions  
|                       |                                                                    |
|-----------------------|--------------------------------------------------------------------|
| unity::LogicException | if the canned query was not initialized (was default-constructed). |

<span id="ae12e4040935c2240f2f02482acd49e89" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QSearchQueryBase::run</td>
<td>(</td>
<td>QSearchReplyProxy const &amp; </td>
<td><em>reply</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span><span class="mlabel">slot</span></span></td>
</tr>
</tbody>
</table>

Called by scopes run time to start the query.

Your implementation of <a href="index.html#ae12e4040935c2240f2f02482acd49e89" class="el" title="Called by scopes run time to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a href="index.html#ae12e4040935c2240f2f02482acd49e89" class="el" title="Called by scopes run time to start the query. ">run()</a>, in which case the query implicitly completes when <a href="index.html#ae12e4040935c2240f2f02482acd49e89" class="el" title="Called by scopes run time to start the query. ">run()</a> returns. Alternatively, <a href="index.html#ae12e4040935c2240f2f02482acd49e89" class="el" title="Called by scopes run time to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call `push()` from multiple threads without synchronization.

The query completes either when <a href="index.html#ae12e4040935c2240f2f02482acd49e89" class="el" title="Called by scopes run time to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).

Parameters  
|       |                                                   |
|-------|---------------------------------------------------|
| reply | The proxy on which to push results for the query. |

<span id="a222670a440c3712d1bf5cfe220d6f55a" class="anchor"></span>
|                                                                                                                                                        |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.SearchMetadata/index.html" class="el">unity::scopes::SearchMetadata</a> unity::scopes::qt::QSearchQueryBase::search\_metadata | (   |     | )   | const |

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
