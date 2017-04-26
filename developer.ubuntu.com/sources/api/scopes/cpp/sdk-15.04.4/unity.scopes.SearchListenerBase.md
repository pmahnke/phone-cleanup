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

-   SearchListenerBase

SearchListenerBase
==================

Abstract base interface for a client to receive the results of a query. [More...](index.html#details)

`#include <unity/scopes/SearchListenerBase.h>`

Inheritance diagram for unity::scopes::SearchListenerBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/c1730896-e0ed-46f9-b40d-b7821f9f6743-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchListenerBase/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual void 
<a href="index.html#a93ba33c6e1a0064ac9756134ccb11705" class="el">push</a> (Department::SCPtr const &parent)
 
Called at most once by the scopes runtime for a tree of departments returned by a query. More...
 
<span id="a3ebd3e8be67824c7a34068da6075bd99" class="anchor"></span> virtual void 
<a href="index.html#a3ebd3e8be67824c7a34068da6075bd99" class="el">push</a> (<a href="../unity.scopes.CategorisedResult/index.html" class="el">CategorisedResult</a> result)=0
 
Called once by the scopes runtime for each result that is returned by a query().
 
virtual void 
<a href="index.html#ab96864e4b3d6718e4b87b81aa14657e3" class="el">push</a> (experimental::Annotation annotation)
 
Called once by the scopes runtime for each annotation that is returned by a query(). More...
 
virtual void 
<a href="index.html#af246bd38c8ba9cec36dfae3d0607dbfc" class="el">push</a> (Category::SCPtr const &category)
 
Called once by the scopes runtime for each category that is returned by a query(). More...
 
virtual void 
<a href="index.html#ac7904ac1f83fe60cddc8f08c6e7d971b" class="el">push</a> (<a href="../unity.scopes/index.html#adab58c13cf604e0e64bd6b1a745364d3" class="el">Filters</a> const &filters, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state)
 
Called once by the scopes to send all the filters and their state. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/001e9cc3-9ab8-4e32-9b32-e35f0fcf9dd1-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchListenerBase/closed.png) Public Member Functions inherited from <a href="../unity.scopes.ListenerBase/index.html" class="el">unity::scopes::ListenerBase</a>
virtual void 
<a href="../unity.scopes.ListenerBase/index.html#afb44937749b61c9e3ebfa20ec6e4634b" class="el">finished</a> (<a href="../unity.scopes.CompletionDetails/index.html" class="el">CompletionDetails</a> const &details)=0
 
Called once by the scopes runtime after the final result for a request was sent. More...
 
virtual void 
<a href="../unity.scopes.ListenerBase/index.html#a3b38fa642754142f40968f3ff8d1bdc8" class="el">info</a> (<a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a> const &op\_info)
 
Called by the scopes runtime each time a scope reports additional information about the reply to a query. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base interface for a client to receive the results of a query.

An instance of this interface must be passed to <a href="../unity.scopes.Scope/index.html#a09976690ca801ecada50687df6046a29" class="el" title="Initiates a search query. ">Scope::search()</a>. Results for the query are delivered to the client by the scopes run time by invoking the appropriate push method.

If the implementation of a push method throws an exception, the scopes runtime calls <a href="../unity.scopes.ListenerBase/index.html#afb44937749b61c9e3ebfa20ec6e4634b" class="el" title="Called once by the scopes runtime after the final result for a request was sent. ">ListenerBase::finished()</a> with an 'Error' status.

See also  
<a href="../unity.scopes.ListenerBase/index.html" class="el" title="Abstract base class to be notified of request completion (such as a query or activation request)...">ListenerBase</a>

Member Function Documentation
-----------------------------

<span id="a93ba33c6e1a0064ac9756134ccb11705" class="anchor"></span>
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
<td>virtual void unity::scopes::SearchListenerBase::push</td>
<td>(</td>
<td>Department::SCPtr const &amp; </td>
<td><em>parent</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called at most once by the scopes runtime for a tree of departments returned by a query.

The default implementation does nothing.

<span id="ab96864e4b3d6718e4b87b81aa14657e3" class="anchor"></span>
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
<td>virtual void unity::scopes::SearchListenerBase::push</td>
<td>(</td>
<td>experimental::Annotation </td>
<td><em>annotation</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scopes runtime for each annotation that is returned by a query().

The default implementation does nothing.

<span id="af246bd38c8ba9cec36dfae3d0607dbfc" class="anchor"></span>
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
<td>virtual void unity::scopes::SearchListenerBase::push</td>
<td>(</td>
<td>Category::SCPtr const &amp; </td>
<td><em>category</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scopes runtime for each category that is returned by a query().

Receipt of categories may be interleaved with the receipt of results, that is, there is no guarantee that the complete set of categories will be provided before the first query result.

The default implementation does nothing.

<span id="ac7904ac1f83fe60cddc8f08c6e7d971b" class="anchor"></span>
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
<td>virtual void unity::scopes::SearchListenerBase::push</td>
<td>(</td>
<td><a href="../unity.scopes/index.html#adab58c13cf604e0e64bd6b1a745364d3" class="el">Filters</a> const &amp; </td>
<td><em>filters</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &amp; </td>
<td><em>filter_state</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scopes to send all the filters and their state.

The default implementation does nothing.

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
