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

-   PreviewQueryBase

PreviewQueryBase
================

Abstract base class to represent a particular preview. [More...](index.html#details)

`#include <unity/scopes/PreviewQueryBase.h>`

Inheritance diagram for unity::scopes::PreviewQueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/ba0b313f-26f8-4d0f-84f3-1cd066f1f511-api/scopes/cpp/sdk-15.04.1/unity.scopes.PreviewQueryBase/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual void 
<a href="index.html#a81b89daf29cd1ada55286f2a3a871347" class="el">run</a> (<a href="../unity.scopes/index.html#a7b46ef0e880da4c75314fe60bdd55754" class="el">PreviewReplyProxy</a> const &reply)=0
 
Called by scopes runtime to start the preview. More...
 
<a href="../unity.scopes.Result/index.html" class="el">Result</a> 
<a href="index.html#af6887f9d12ffb69c94b2ddab8c1f99ba" class="el">result</a> () const
 
Get result for this preview request. More...
 
<a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> 
<a href="index.html#a40f82d521b7c31a3b29f4c1143242d62" class="el">action_metadata</a> () const
 
Get metadata for this preview request. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/ab8c9ab1-f5a5-4c99-9bdb-dd1c648574cc-api/scopes/cpp/sdk-15.04.1/unity.scopes.PreviewQueryBase/closed.png) Public Member Functions inherited from <a href="../unity.scopes.QueryBase/index.html" class="el">unity::scopes::QueryBase</a>
virtual void 
<a href="../unity.scopes.QueryBase/index.html#a596b19dbfd6efe96b834be75a9b64c68" class="el">cancelled</a> ()=0
 
Called by the scopes runtime when the query originator cancels a query. More...
 
bool 
<a href="../unity.scopes.QueryBase/index.html#a095e61eabe2042eeea5c4df1a444d7d4" class="el">valid</a> () const
 
Check whether this query is still valid. More...
 
<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">unity::scopes::VariantMap</a> 
<a href="../unity.scopes.QueryBase/index.html#ab6a25ba587387a7f490b8b5a081e9ed6" class="el">settings</a> () const
 
Returns a dictionary with the scope's current settings. More...
 
<span id="pro-methods"></span> Protected Member Functions
---------------------------------------------------------

 
<a href="index.html#acb87c2d6c81760696d75e9f0a378d6e7" class="el">PreviewQueryBase</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &<a href="index.html#af6887f9d12ffb69c94b2ddab8c1f99ba" class="el">result</a>, <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &metadata)
 
Instantiates a PreviewQueryBase. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class to represent a particular preview.

A scope must return an instance of this class from its implementation of <a href="../unity.scopes.ScopeBase/index.html#a154b9b4cfc0f40572cfec60dd819396f" class="el" title="Invoked when a scope is requested to create a preview for a particular result. ">ScopeBase::preview()</a>.

Note  
The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block.

Constructor & Destructor Documentation
--------------------------------------

<span id="acb87c2d6c81760696d75e9f0a378d6e7" class="anchor"></span>
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
<td>unity::scopes::PreviewQueryBase::PreviewQueryBase</td>
<td>(</td>
<td><a href="../unity.scopes.Result/index.html" class="el">Result</a> const &amp; </td>
<td><em>result</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &amp; </td>
<td><em>metadata</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">protected</span></span></td>
</tr>
</tbody>
</table>

Instantiates a <a href="index.html" class="el" title="Abstract base class to represent a particular preview. ">PreviewQueryBase</a>.

Parameters  
|          |                                  |
|----------|----------------------------------|
| result   | The result to be previewed.      |
| metadata | Additional data for the preview. |

Member Function Documentation
-----------------------------

<span id="a40f82d521b7c31a3b29f4c1143242d62" class="anchor"></span>
|                                                                                                                                     |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> unity::scopes::PreviewQueryBase::action\_metadata | (   |     | )   | const |

Get metadata for this preview request.

Returns  
search metadata

<!-- -->

Exceptions  
|                       |                                                                      |
|-----------------------|----------------------------------------------------------------------|
| unity::LogicException | if preview metadata was not initialized (the default ctor was used). |

<span id="af6887f9d12ffb69c94b2ddab8c1f99ba" class="anchor"></span>
|                                                                                                           |     |     |     |       |
|-----------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.Result/index.html" class="el">Result</a> unity::scopes::PreviewQueryBase::result | (   |     | )   | const |

Get result for this preview request.

Exceptions  
|                       |                                                            |
|-----------------------|------------------------------------------------------------|
| unity::LogicException | if result was not initialized (the default ctor was used). |

<!-- -->

Returns  
result

<span id="a81b89daf29cd1ada55286f2a3a871347" class="anchor"></span>
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
<td>virtual void unity::scopes::PreviewQueryBase::run</td>
<td>(</td>
<td><a href="../unity.scopes/index.html#a7b46ef0e880da4c75314fe60bdd55754" class="el">PreviewReplyProxy</a> const &amp; </td>
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

Called by scopes runtime to start the preview.

Your implementation of <a href="index.html#a81b89daf29cd1ada55286f2a3a871347" class="el" title="Called by scopes runtime to start the preview. ">run()</a> can use the reply proxy to push results for the preview. You can push results from within <a href="index.html#a81b89daf29cd1ada55286f2a3a871347" class="el" title="Called by scopes runtime to start the preview. ">run()</a>, in which case the preview implicitly completes when <a href="index.html#a81b89daf29cd1ada55286f2a3a871347" class="el" title="Called by scopes runtime to start the preview. ">run()</a> returns. Alternatively, <a href="index.html#a81b89daf29cd1ada55286f2a3a871347" class="el" title="Called by scopes runtime to start the preview. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call `push()` from multiple threads without synchronization.

The preview completes either when <a href="index.html#a81b89daf29cd1ada55286f2a3a871347" class="el" title="Called by scopes runtime to start the preview. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).

Parameters  
|       |                                                     |
|-------|-----------------------------------------------------|
| reply | The proxy on which to push results for the preview. |

Implemented in <a href="../unity.scopes.qt.QPreviewQueryBaseAPI/index.html#ab9aea9df41977a7d999967e525b3b3cf" class="el">unity::scopes::qt::QPreviewQueryBaseAPI</a>.

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
