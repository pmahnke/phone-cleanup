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

-   QCannedQuery

QCannedQuery
============

Parameters of a search query. [More...](index.html#details)

`#include <unity/scopes/qt/QCannedQuery.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

<span id="adb7856712be37746fdc0038b4602b111" class="anchor"></span>  
<a href="index.html#adb7856712be37746fdc0038b4602b111" class="el">QCannedQuery</a> (QString const &<a href="index.html#adf35e301629964cea60a0933e6d52110" class="el">scope_id</a>)
 
Creates a query for given scope with empty query string.
 
<span id="a80403c0f728ed7af60a04c0debb06d6d" class="anchor"></span>  
<a href="index.html#a80403c0f728ed7af60a04c0debb06d6d" class="el">QCannedQuery</a> (QString const &<a href="index.html#adf35e301629964cea60a0933e6d52110" class="el">scope_id</a>, QString const &query\_str, QString const &<a href="index.html#aa8de764af79922d974e1bef6186be9ed" class="el">department_id</a>)
 
Creates a query for given scope with specific query string and in given department.
 
<span id="a848d48689bffc6f96cb70848201b8696" class="anchor"></span> void 
<a href="index.html#a848d48689bffc6f96cb70848201b8696" class="el">set_department_id</a> (QString const &dep\_id)
 
Sets or updates the department.
 
<span id="aecb3afcf45e6a7e1a17d81786b665bda" class="anchor"></span> void 
<a href="index.html#aecb3afcf45e6a7e1a17d81786b665bda" class="el">set_query_string</a> (QString const &query\_str)
 
Sets or updates the query string.
 
<span id="adab1469e1be84e02b0d2d2170b095673" class="anchor"></span> void 
<a href="index.html#adab1469e1be84e02b0d2d2170b095673" class="el">set_filter_state</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &<a href="index.html#a4d9c022cf212f83907fc9cac6c314586" class="el">filter_state</a>)
 
Sets filter state.
 
QString 
<a href="index.html#adf35e301629964cea60a0933e6d52110" class="el">scope_id</a> () const
 
Returns the scope identifier of this CannedQuery. More...
 
QString 
<a href="index.html#aa8de764af79922d974e1bef6186be9ed" class="el">department_id</a> () const
 
Returns the department id of this CannedQuery. More...
 
QString 
<a href="index.html#ad819a186fa6ad212959cd5c93b6fbf7e" class="el">query_string</a> () const
 
Returns the query string of this CannedQuery. More...
 
QString 
<a href="index.html#a1ff2ee31add772d96a954a61b0d1d6f6" class="el">to_uri</a> () const
 
Returns a string representation of this CannedQuery object as a URI using scope:// schema. More...
 
<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> 
<a href="index.html#a4d9c022cf212f83907fc9cac6c314586" class="el">filter_state</a> () const
 
Get state of the filters for this CannedQuery. More...
 
bool 
<a href="index.html#acc27503e32e26b584c831435c485763c" class="el">has_user_data</a> () const
 
Checks if user data has been attached to this query. More...
 
QVariant 
<a href="index.html#acac6151094bc731f152490b468a03471" class="el">user_data</a> () const
 
Get user data attached to this query. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a166d18bef19da46a50cb1796cd787d50" class="anchor"></span>  
**QCannedQuery** (<a href="index.html" class="el">QCannedQuery</a> const &other)
 
<span id="afef82845564309687d99fac091229886" class="anchor"></span>  
**QCannedQuery** (<a href="index.html" class="el">QCannedQuery</a> &&)
 
<span id="a2f50aed90ce4c6e23fba3b7750ed09da" class="anchor"></span> <a href="index.html" class="el">QCannedQuery</a> & 
**operator=** (<a href="index.html" class="el">QCannedQuery</a> const &other)
 
<span id="a6c0cc8ee9b23bfd631d2dc1d73534651" class="anchor"></span> <a href="index.html" class="el">QCannedQuery</a> & 
**operator=** (<a href="index.html" class="el">QCannedQuery</a> &&)
 
<span id="pub-static-methods"></span> Static Public Member Functions
--------------------------------------------------------------------

static <a href="index.html" class="el">QCannedQuery</a> 
<a href="index.html#a7b049394639516f3895da0bc17b19bfc" class="el">from_uri</a> (QString const &uri)
 
Recreates a CannedQuery object from a scope:// URI. More...
 
<span id="details"></span>
Detailed Description
--------------------

Parameters of a search query.

Holds all parameters of a search query: the target scope id, query string, department id, and state of the filters. Can be converted to/from scope:// uri schema string.

Member Function Documentation
-----------------------------

<span id="aa8de764af79922d974e1bef6186be9ed" class="anchor"></span>
|                                      |     |     |     |       |
|--------------------------------------|-----|-----|-----|-------|
| QString QCannedQuery::department\_id | (   |     | )   | const |

Returns the department id of this <a href="../unity.scopes.CannedQuery/index.html" class="el" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The department id.

<span id="a4d9c022cf212f83907fc9cac6c314586" class="anchor"></span>
|                                                                                                         |     |     |     |       |
|---------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> QCannedQuery::filter\_state | (   |     | )   | const |

Get state of the filters for this <a href="../unity.scopes.CannedQuery/index.html" class="el" title="Parameters of a search query. ">CannedQuery</a>.

Pass this state to methods of specific filter instances (such as <a href="../unity.scopes.OptionSelectorFilter/index.html#a3015abeb0439ccd29bd61afa9b7059df" class="el" title="Get the active options from a FilterState instance for this filter. ">unity::scopes::OptionSelectorFilter::active_options()</a>)to examine filter state.

Returns  
The state of the filters.

<span id="a7b049394639516f3895da0bc17b19bfc" class="anchor"></span>
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
<td><a href="index.html" class="el">QCannedQuery</a> QCannedQuery::from_uri</td>
<td>(</td>
<td>QString const &amp; </td>
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

Recreates a <a href="../unity.scopes.CannedQuery/index.html" class="el" title="Parameters of a search query. ">CannedQuery</a> object from a scope:// URI.

Returns  
a <a href="../unity.scopes.CannedQuery/index.html" class="el" title="Parameters of a search query. ">CannedQuery</a> instance

<!-- -->

Exceptions  
|                          |                              |
|--------------------------|------------------------------|
| InvalidArgumentException | if the URI cannot be parsed. |

<span id="acc27503e32e26b584c831435c485763c" class="anchor"></span>
|                                    |     |     |     |       |
|------------------------------------|-----|-----|-----|-------|
| bool QCannedQuery::has\_user\_data | (   |     | )   | const |

Checks if user data has been attached to this query.

Returns  
true if data is available.

<span id="ad819a186fa6ad212959cd5c93b6fbf7e" class="anchor"></span>
|                                     |     |     |     |       |
|-------------------------------------|-----|-----|-----|-------|
| QString QCannedQuery::query\_string | (   |     | )   | const |

Returns the query string of this <a href="../unity.scopes.CannedQuery/index.html" class="el" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The query string.

<span id="adf35e301629964cea60a0933e6d52110" class="anchor"></span>
|                                 |     |     |     |       |
|---------------------------------|-----|-----|-----|-------|
| QString QCannedQuery::scope\_id | (   |     | )   | const |

Returns the scope identifier of this <a href="../unity.scopes.CannedQuery/index.html" class="el" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The scope identifier.

<span id="a1ff2ee31add772d96a954a61b0d1d6f6" class="anchor"></span>
|                               |     |     |     |       |
|-------------------------------|-----|-----|-----|-------|
| QString QCannedQuery::to\_uri | (   |     | )   | const |

Returns a string representation of this <a href="../unity.scopes.CannedQuery/index.html" class="el" title="Parameters of a search query. ">CannedQuery</a> object as a URI using scope:// schema.

Returns  
The URI for the query.

<span id="acac6151094bc731f152490b468a03471" class="anchor"></span>
|                                   |     |     |     |       |
|-----------------------------------|-----|-----|-----|-------|
| QVariant QCannedQuery::user\_data | (   |     | )   | const |

Get user data attached to this query.

Returns  
Data variant

<!-- -->

Exceptions  
|                       |                           |
|-----------------------|---------------------------|
| unity::LogicException | if data is not available. |

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
