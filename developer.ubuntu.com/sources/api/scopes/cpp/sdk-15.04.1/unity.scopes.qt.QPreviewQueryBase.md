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
-   [unity.scopes.qt](../unity.scopes.qt/index.html) ›

<!-- -->

-   QPreviewQueryBase

QPreviewQueryBase
=================

Abstract base class to represent a particular preview. [More...](index.html#details)

`#include <unity/scopes/qt/QPreviewQueryBase.h>`

Inheritance diagram for unity::scopes::qt::QPreviewQueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/7796f308-7af8-40e5-8301-31709b0745c2-api/scopes/cpp/sdk-15.04.1/unity.scopes.qt.QPreviewQueryBase/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual void 
<a href="index.html#ad78a0506cb7e2522fc351bfb70ba45dc" class="el">run</a> (unity::scopes::qt::QPreviewReplyProxy const &reply)=0
 
Called by scopes run time to start the query. More...
 
virtual void 
<a href="index.html#a9940e957abbea418e3e5975da60afda7" class="el">cancelled</a> ()=0
 
Called by the scopes run time when the query originator cancels a query. More...
 
<a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> 
<a href="index.html#ac2085be111dbd8e624af95d0205efc75" class="el">result</a> () const
 
Get result for this preview request. More...
 
<a href="../unity.scopes.qt.QActionMetadata/index.html" class="el">QActionMetadata</a> 
<a href="index.html#a6fe3ece7ffc9258e9c9fc17ac3bb8f5e" class="el">action_metadata</a> () const
 
Get metadata for this preview request. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class to represent a particular preview.

A scope must return an instance of this class from its implementation of <a href="../unity.scopes.ScopeBase/index.html#a154b9b4cfc0f40572cfec60dd819396f" class="el" title="Invoked when a scope is requested to create a preview for a particular result. ">ScopeBase::preview()</a>.

Note  
The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

<span id="a6fe3ece7ffc9258e9c9fc17ac3bb8f5e" class="anchor"></span>
|                                                                                                                                               |     |     |     |       |
|-----------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.qt.QActionMetadata/index.html" class="el">QActionMetadata</a> unity::scopes::qt::QPreviewQueryBase::action\_metadata | (   |     | )   | const |

Get metadata for this preview request.

Returns  
search metadata

<!-- -->

Exceptions  
|                       |                                                                      |
|-----------------------|----------------------------------------------------------------------|
| unity::LogicException | if preview metadata was not initialized (the default ctor was used). |

<span id="a9940e957abbea418e3e5975da60afda7" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QPreviewQueryBase::cancelled</td>
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

Called by the scopes run time when the query originator cancels a query.

Your implementation of this method should ensure that the scope stops processing the current query as soon as possible. Any calls to a `push()` method once a query is cancelled are ignored, so continuing to push after cancellation only wastes CPU cycles. (`push()` returns `false` once a query is cancelled or exceeds its cardinality limit.)

<span id="ac2085be111dbd8e624af95d0205efc75" class="anchor"></span>
|                                                                                                                     |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> unity::scopes::qt::QPreviewQueryBase::result | (   |     | )   | const |

Get result for this preview request.

Exceptions  
|                       |                                                            |
|-----------------------|------------------------------------------------------------|
| unity::LogicException | if result was not initialized (the default ctor was used). |

<!-- -->

Returns  
result

<span id="ad78a0506cb7e2522fc351bfb70ba45dc" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QPreviewQueryBase::run</td>
<td>(</td>
<td>unity::scopes::qt::QPreviewReplyProxy const &amp; </td>
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

Called by scopes run time to start the query.

Your implementation of <a href="index.html#ad78a0506cb7e2522fc351bfb70ba45dc" class="el" title="Called by scopes run time to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a href="index.html#ad78a0506cb7e2522fc351bfb70ba45dc" class="el" title="Called by scopes run time to start the query. ">run()</a>, in which case the query implicitly completes when <a href="index.html#ad78a0506cb7e2522fc351bfb70ba45dc" class="el" title="Called by scopes run time to start the query. ">run()</a> returns. Alternatively, <a href="index.html#ad78a0506cb7e2522fc351bfb70ba45dc" class="el" title="Called by scopes run time to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call `push()` from multiple threads without synchronization.

The query completes either when <a href="index.html#ad78a0506cb7e2522fc351bfb70ba45dc" class="el" title="Called by scopes run time to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).

Parameters  
|       |                                                   |
|-------|---------------------------------------------------|
| reply | The proxy on which to push results for the query. |

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
