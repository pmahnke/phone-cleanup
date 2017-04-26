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
-   [SDK 14.10](../index.html) ›

<!-- -->

-   Scope

Scope
=====

Allows queries, preview requests, and activation requests to be sent to a scope. [More...](index.html#details)

`#include <unity/scopes/Scope.h>`

Inheritance diagram for unity::scopes::Scope:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/22608e12-73f2-4059-b12b-2008c26cd7bc-api/scopes/cpp/sdk-14.10/unity.scopes.Scope/classunity_1_1scopes_1_1_scope__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
<a href="index.html#a09976690ca801ecada50687df6046a29" class="el">search</a> (std::string const &query\_string, <a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> const &metadata, SearchListenerBase::SPtr const &reply)=0
 
Initiates a search query. More...
 
virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
<a href="index.html#ab1a19b76666ac9d900122261ea209c62" class="el">search</a> (std::string const &query\_string, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, <a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> const &metadata, SearchListenerBase::SPtr const &reply)=0
 
Initiates a search query (overloaded method). More...
 
virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
<a href="index.html#a4aa5feb40055fd7edaa45e7d059438c7" class="el">search</a> (std::string const &query\_string, std::string const &department\_id, <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state, <a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> const &metadata, SearchListenerBase::SPtr const &reply)=0
 
Initiates a search query (overloaded method). More...
 
virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
<a href="index.html#a0af40d8e0032ea8b0344e380360dae18" class="el">activate</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &result, <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &metadata, ActivationListenerBase::SPtr const &reply)=0
 
Initiates activation of a search result. More...
 
virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
<a href="index.html#a61f749e46b8fbf1a687d1c055d349f4f" class="el">perform_action</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &result, <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &metadata, std::string const &widget\_id, std::string const &action\_id, ActivationListenerBase::SPtr const &reply)=0
 
Initiates activation of a preview action. More...
 
virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> 
<a href="index.html#a82b24083994e676524b10c407f281aa4" class="el">preview</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &result, <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &metadata, PreviewListenerBase::SPtr const &reply)=0
 
Initiates preview request. More...
 
virtual 
<a href="index.html#a8d717a89a470cfa65080f132ea2ff4ab" class="el">~Scope</a> ()
 
Destroys a Scope. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/40d38322-d840-41ab-ae05-622a8e06bd59-api/scopes/cpp/sdk-14.10/unity.scopes.Scope/closed.png) Public Member Functions inherited from <a href="../unity.scopes.Object/index.html" class="el">unity::scopes::Object</a>
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

Allows queries, preview requests, and activation requests to be sent to a scope.

Constructor & Destructor Documentation
--------------------------------------

<span id="a8d717a89a470cfa65080f132ea2ff4ab" class="anchor"></span>
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
<td>virtual unity::scopes::Scope::~Scope</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Destroys a <a href="index.html" class="el" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>.

Destroying a <a href="index.html" class="el" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a> has no effect on any query that might still be in progress.

Member Function Documentation
-----------------------------

<span id="a0af40d8e0032ea8b0344e380360dae18" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> unity::scopes::Scope::activate</td>
<td>(</td>
<td><a href="../unity.scopes.Result/index.html" class="el">Result</a> const &amp; </td>
<td><em>result</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>ActivationListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
</tr>
<tr class="even">
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

Initiates activation of a search result.

Parameters  
|          |                                        |
|----------|----------------------------------------|
| result   | activated result                       |
| metadata | additional data to pass to scope       |
| reply    | The callback object to receive replies |

<!-- -->

Returns  
A proxy that permits cancellation of this request

<span id="a61f749e46b8fbf1a687d1c055d349f4f" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> unity::scopes::Scope::perform_action</td>
<td>(</td>
<td><a href="../unity.scopes.Result/index.html" class="el">Result</a> const &amp; </td>
<td><em>result</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>widget_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>action_id</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>ActivationListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
</tr>
<tr class="even">
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

Initiates activation of a preview action.

Parameters  
|            |                                                                                                                                                |
|------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| result     | <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> that was previewed. |
| metadata   | additional data to pass to scope                                                                                                               |
| widget\_id | identifier of 'actions' widget of activated action                                                                                             |
| action\_id | identifier of an action to activate                                                                                                            |
| reply      | The callback object to receive replies                                                                                                         |

<!-- -->

Returns  
A proxy that permits cancellation of this request

<span id="a82b24083994e676524b10c407f281aa4" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> unity::scopes::Scope::preview</td>
<td>(</td>
<td><a href="../unity.scopes.Result/index.html" class="el">Result</a> const &amp; </td>
<td><em>result</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>PreviewListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
</tr>
<tr class="even">
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

Initiates preview request.

Parameters  
|          |                                                                                                                                            |
|----------|--------------------------------------------------------------------------------------------------------------------------------------------|
| result   | <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> to be previewed |
| metadata | additional data to pass to scope                                                                                                           |
| reply    | The callback object to receive replies                                                                                                     |

<!-- -->

Returns  
A proxy that permits cancellation of this request

<span id="a09976690ca801ecada50687df6046a29" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> unity::scopes::Scope::search</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>query_string</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>SearchListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
</tr>
<tr class="even">
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

Initiates a search query.

The <a href="index.html#a09976690ca801ecada50687df6046a29" class="el" title="Initiates a search query. ">search()</a> method expects a <a href="../unity.scopes.SearchListenerBase/index.html" class="el" title="Abstract base interface for a client to receive the results of a query. ">SearchListenerBase</a>, which it uses to return the results for the query. <a href="index.html#a09976690ca801ecada50687df6046a29" class="el" title="Initiates a search query. ">search()</a> may block for some time, for example, if the target scope is not running and needs to be started first. Results for the query may begin to arrive only after <a href="index.html#a09976690ca801ecada50687df6046a29" class="el" title="Initiates a search query. ">search()</a> completes (but may also arrive while <a href="index.html#a09976690ca801ecada50687df6046a29" class="el" title="Initiates a search query. ">search()</a> is still running).

Parameters  
|               |                                        |
|---------------|----------------------------------------|
| query\_string | search string                          |
| metadata      | additional data to pass to scope       |
| reply         | The callback object to receive replies |

<!-- -->

Returns  
A proxy that permits cancellation of this request

<span id="ab1a19b76666ac9d900122261ea209c62" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> unity::scopes::Scope::search</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>query_string</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &amp; </td>
<td><em>filter_state</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>SearchListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
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

Initiates a search query (overloaded method).

This method has same synopsis as previous method, but it takes additional <a href="../unity.scopes.FilterState/index.html" class="el" title="Captures state of multiple filters. ">unity::scopes::FilterState</a> argument.

Parameters  
|               |                                        |
|---------------|----------------------------------------|
| query\_string | search string                          |
| filter\_state | state of filters                       |
| metadata      | additional data to pass to scope       |
| reply         | The callback object to receive replies |

<!-- -->

Returns  
A proxy that permits cancellation of this request

<span id="a4aa5feb40055fd7edaa45e7d059438c7" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes/index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a> unity::scopes::Scope::search</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>query_string</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>department_id</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &amp; </td>
<td><em>filter_state</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>SearchListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
</tr>
<tr class="even">
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

Initiates a search query (overloaded method).

This method has same synopsis as previous method, but it takes additional department identifier argument.

Parameters  
|                |                                        |
|----------------|----------------------------------------|
| query\_string  | search string                          |
| department\_id | identifier of a department to search   |
| filter\_state  | state of filters                       |
| metadata       | additional data to pass to scope       |
| reply          | The callback object to receive replies |

<!-- -->

Returns  
query handler

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
