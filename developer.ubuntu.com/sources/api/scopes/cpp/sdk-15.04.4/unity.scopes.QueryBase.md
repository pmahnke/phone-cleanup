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

-   QueryBase

QueryBase
=========

Abstract server-side base interface for a query that is executed inside a scope. [More...](index.html#details)

`#include <unity/scopes/QueryBase.h>`

Inheritance diagram for unity::scopes::QueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/6cfc08b0-5716-42c1-aae3-cb495b01dc07-api/scopes/cpp/sdk-15.04.4/unity.scopes.QueryBase/classunity_1_1scopes_1_1_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual void 
<a href="index.html#a596b19dbfd6efe96b834be75a9b64c68" class="el">cancelled</a> ()=0
 
Called by the scopes runtime when the query originator cancels a query. More...
 
bool 
<a href="index.html#a095e61eabe2042eeea5c4df1a444d7d4" class="el">valid</a> () const
 
Check whether this query is still valid. More...
 
<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">unity::scopes::VariantMap</a> 
<a href="index.html#ab6a25ba587387a7f490b8b5a081e9ed6" class="el">settings</a> () const
 
Returns a dictionary with the scope's current settings. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract server-side base interface for a query that is executed inside a scope.

See also  
<a href="../unity.scopes.SearchQueryBase/index.html" class="el" title="Abstract base class to represent a particular query. ">SearchQueryBase</a>, <a href="../unity.scopes.PreviewQueryBase/index.html" class="el" title="Abstract base class to represent a particular preview. ">PreviewQueryBase</a>, <a href="../unity.scopes.ActivationQueryBase/index.html" class="el" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a>

Member Function Documentation
-----------------------------

<span id="a596b19dbfd6efe96b834be75a9b64c68" class="anchor"></span>
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
<td>virtual void unity::scopes::QueryBase::cancelled</td>
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

Called by the scopes runtime when the query originator cancels a query.

Your implementation of this method should ensure that the scope stops processing the current query as soon as possible. Any calls to a `push()` method once a query is cancelled are ignored, so continuing to push after cancellation only wastes CPU cycles. (`push()` returns `false` once a query is cancelled or exceeds its cardinality limit.)

Implemented in <a href="../unity.scopes.qt.QPreviewQueryBaseAPI/index.html#ac68c5e63e55f818a31a358c8f87ccdeb" class="el">unity::scopes::qt::QPreviewQueryBaseAPI</a>, <a href="../unity.scopes.qt.QSearchQueryBaseAPI/index.html#a81a9ed98e8b092e4cd48aed63bb49f1a" class="el">unity::scopes::qt::QSearchQueryBaseAPI</a>, and <a href="../unity.scopes.ActivationQueryBase/index.html#af9b8e83ac6716db51aba942aca9cc6be" class="el">unity::scopes::ActivationQueryBase</a>.

<span id="ab6a25ba587387a7f490b8b5a081e9ed6" class="anchor"></span>
|                                                                                                                                     |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> unity::scopes::QueryBase::settings | (   |     | )   | const |

Returns a dictionary with the scope's current settings.

Instead of storing the return value, it is preferable to call <a href="index.html#ab6a25ba587387a7f490b8b5a081e9ed6" class="el" title="Returns a dictionary with the scope&#39;s current settings. ">settings()</a> each time your implementation requires a settings value. This ensures that, if a user changes settings while the scope is running, the new settings take effect with the next query, preview, and so on.

Note  
The settings are available only after this <a href="index.html" class="el" title="Abstract server-side base interface for a query that is executed inside a scope. ">QueryBase</a> is instantiated; do not call this method from the constructor!

<!-- -->

Returns  
The scope's current settings.

<span id="a095e61eabe2042eeea5c4df1a444d7d4" class="anchor"></span>
|                                      |     |     |     |       |
|--------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::QueryBase::valid | (   |     | )   | const |

Check whether this query is still valid.

<a href="index.html#a095e61eabe2042eeea5c4df1a444d7d4" class="el" title="Check whether this query is still valid. ">valid()</a> returns false if this query is finished or was cancelled earlier. Note that it is possible that the runtime may call <a href="../unity.scopes.SearchQueryBase/index.html#afc4f15b2266838d7da75b05ea37d504b" class="el" title="Called by scopes runtime to start the query. ">SearchQueryBase::run()</a>, <a href="../unity.scopes.ActivationQueryBase/index.html#a61ed49d8bc56e677ff2eb1f30e6a6b6b" class="el" title="Return response to the activation request. ">ActivationQueryBase::activate()</a>, or <a href="../unity.scopes.PreviewQueryBase/index.html#a81b89daf29cd1ada55286f2a3a871347" class="el" title="Called by scopes runtime to start the preview. ">PreviewQueryBase::run()</a> *after* <a href="index.html#a596b19dbfd6efe96b834be75a9b64c68" class="el" title="Called by the scopes runtime when the query originator cancels a query. ">cancelled()</a> was called. Your implementation of these methods should check whether the query is still valid and, if not, do nothing.

This method is provided mainly for convenience: it can be used in your s `run()` or `activate()` implementation to avoid doing a lot of work setting up a query that was cancelled earlier. Note that, because cancellation can happen at any time during query execution, your implementation should always test the return value of `push()`. If `push()` returns `false`, the query was either cancelled or exceeded its cardinality limit. Either way, there is no point in continuing to push more results because, once `push()` returns `false`, the scopes runtime discards all subsequent results for the query.

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
