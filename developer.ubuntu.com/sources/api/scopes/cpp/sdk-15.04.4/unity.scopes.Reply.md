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

-   Reply

Reply
=====

Allows query termination to be sent to the source of a query. [More...](index.html#details)

`#include <unity/scopes/Reply.h>`

Inheritance diagram for unity::scopes::Reply:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/6791ff0a-f885-455e-8b6b-3e8ddee4f845-api/scopes/cpp/sdk-15.04.4/unity.scopes.Reply/classunity_1_1scopes_1_1_reply__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual void 
<a href="index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el">finished</a> ()=0
 
Informs the source of a query that the query results are complete. More...
 
virtual void 
<a href="index.html#a526c9cbb11f896210835fb3420324ba8" class="el">error</a> (std::exception\_ptr ex)=0
 
Informs the source of a query that the query was terminated due to an error. More...
 
virtual void 
<a href="index.html#af35cbaba152e4919306f32b06bd81029" class="el">info</a> (<a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a> const &op\_info)=0
 
Informs the source of a query that additional information regarding the reply is available. More...
 
virtual 
<a href="index.html#a9f0cfeeee75a27e111ebd955523e1bb0" class="el">~Reply</a> ()
 
Destroys a Reply. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/d9309aca-5067-421e-ae8c-a30e87b0d6d1-api/scopes/cpp/sdk-15.04.4/unity.scopes.Reply/closed.png) Public Member Functions inherited from <a href="../unity.scopes.Object/index.html" class="el">unity::scopes::Object</a>
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

Allows query termination to be sent to the source of a query.

Constructor & Destructor Documentation
--------------------------------------

<span id="a9f0cfeeee75a27e111ebd955523e1bb0" class="anchor"></span>
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
<td>virtual unity::scopes::Reply::~Reply</td>
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

Destroys a <a href="index.html" class="el" title="Allows query termination to be sent to the source of a query. ">Reply</a>.

If a <a href="index.html" class="el" title="Allows query termination to be sent to the source of a query. ">Reply</a> goes out of scope without a prior call to <a href="index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el" title="Informs the source of a query that the query results are complete. ">finished()</a>, the destructor implicitly calls <a href="index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el" title="Informs the source of a query that the query results are complete. ">finished()</a>, provided QueryBase::run() has returned.

Member Function Documentation
-----------------------------

<span id="a526c9cbb11f896210835fb3420324ba8" class="anchor"></span>
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
<td>virtual void unity::scopes::Reply::error</td>
<td>(</td>
<td>std::exception_ptr </td>
<td><em>ex</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Informs the source of a query that the query was terminated due to an error.

Multiple calls to <a href="index.html#a526c9cbb11f896210835fb3420324ba8" class="el" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> and calls to <a href="index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el" title="Informs the source of a query that the query results are complete. ">finished()</a> after <a href="index.html#a526c9cbb11f896210835fb3420324ba8" class="el" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> was called are ignored.

Parameters  
|     |                                                                                                                                                                                                                   |
|-----|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ex  | An exception\_ptr indicating the cause of the error. If ex is a `std::exception`, the return value of `what()` is made available to the query source. Otherwise, the query source receives `"unknown exception"`. |

<span id="a9ca653d5d7f7c97a781bc362f2af7749" class="anchor"></span>
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
<td>virtual void unity::scopes::Reply::finished</td>
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

Informs the source of a query that the query results are complete.

Calling <a href="index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el" title="Informs the source of a query that the query results are complete. ">finished()</a> informs the source of a query that the final result for the query was sent, that is, that the query is complete. Multiple calls to <a href="index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el" title="Informs the source of a query that the query results are complete. ">finished()</a> and calls to <a href="index.html#a526c9cbb11f896210835fb3420324ba8" class="el" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> after <a href="index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el" title="Informs the source of a query that the query results are complete. ">finished()</a> was called are ignored. The destructor implicitly calls <a href="index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el" title="Informs the source of a query that the query results are complete. ">finished()</a> if a <a href="index.html" class="el" title="Allows query termination to be sent to the source of a query. ">Reply</a> goes out of scope without a prior call to <a href="index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el" title="Informs the source of a query that the query results are complete. ">finished()</a>. Similarly, QueryBase::run() implicitly calls <a href="index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el" title="Informs the source of a query that the query results are complete. ">finished()</a> when it returns, provided there are no more reply proxies in scope. In other words, calling <a href="index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el" title="Informs the source of a query that the query results are complete. ">finished()</a> is optional. The scopes runtime ensures that the call happens automatically, either when the last reply proxy goes out of scope, or when QueryBase::run() returns (whichever happens last).

<span id="af35cbaba152e4919306f32b06bd81029" class="anchor"></span>
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
<td>virtual void unity::scopes::Reply::info</td>
<td>(</td>
<td><a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a> const &amp; </td>
<td><em>op_info</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Informs the source of a query that additional information regarding the reply is available.

Calling <a href="index.html#af35cbaba152e4919306f32b06bd81029" class="el" title="Informs the source of a query that additional information regarding the reply is available. ">info()</a> does not terminate the query, it simply informs the source that something interesting occured during execution of the query (usually affecting the results returned in some way).

Multiple calls to <a href="index.html#af35cbaba152e4919306f32b06bd81029" class="el" title="Informs the source of a query that additional information regarding the reply is available. ">info()</a> for each condition are legal.

Parameters  
|          |                                                         |
|----------|---------------------------------------------------------|
| op\_info | Contains all details of the information being reported. |

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
