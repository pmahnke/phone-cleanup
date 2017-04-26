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

-   QCategorisedResult

QCategorisedResult
==================

A result, including the category it belongs to. [More...](index.html#details)

`#include <unity/scopes/qt/QCategorisedResult.h>`

Inheritance diagram for unity::scopes::qt::QCategorisedResult:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/97532873-9804-4dad-9383-14bec9e42df8-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QCategorisedResult/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#aaa0d31b18c65dff255c13ff014d11b7d" class="el">QCategorisedResult</a> (QCategory::SCPtr <a href="index.html#a8516116413e83bdedb978c71f803f118" class="el">category</a>)
 
Creates a CategorisedResult with given category, with all base attributes initially empty. More...
 
void 
<a href="index.html#ab24057bbd0ee446a40cb0b9d38ef696d" class="el">set_category</a> (QCategory::SCPtr <a href="index.html#a8516116413e83bdedb978c71f803f118" class="el">category</a>)
 
Updates the category of this result. More...
 
QCategory::SCPtr 
<a href="index.html#a8516116413e83bdedb978c71f803f118" class="el">category</a> () const
 
Return category of this result. Get the category instance this result belongs to. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="ac8c504146075ca58456a764c44148030" class="anchor"></span>  
**QCategorisedResult** (<a href="index.html" class="el">QCategorisedResult</a> const &other)
 
<span id="a019bd977edc3d4637bc96c0a9c3f9a2e" class="anchor"></span> <a href="index.html" class="el">QCategorisedResult</a> & 
**operator=** (<a href="index.html" class="el">QCategorisedResult</a> const &other)
 
<span id="a79ea25955a6054a8516b08ada5a93160" class="anchor"></span>  
**QCategorisedResult** (<a href="index.html" class="el">QCategorisedResult</a> &&)
 
<span id="a27a508103a641b362cd7738cebcf230e" class="anchor"></span> <a href="index.html" class="el">QCategorisedResult</a> & 
**operator=** (<a href="index.html" class="el">QCategorisedResult</a> &&)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/d9c436fd-75ee-4f26-a53b-2e8f9042710f-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QCategorisedResult/closed.png) Public Member Functions inherited from <a href="../unity.scopes.qt.QResult/index.html" class="el">unity::scopes::qt::QResult</a>
virtual 
<a href="../unity.scopes.qt.QResult/index.html#ad1bc050f67237c601821cc5836c76b94" class="el">~QResult</a> ()
 
void 
<a href="../unity.scopes.qt.QResult/index.html#a56592ac2bbf7a752f9aa99ea26226cee" class="el">store</a> (<a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> const &other, bool intercept\_activation=false)
 
Stores a Result inside this Result instance. More...
 
bool 
<a href="../unity.scopes.qt.QResult/index.html#affcb80d29930b57d8dc6aa268820d451" class="el">has_stored_result</a> () const
 
Check if this Result instance has a stored result. More...
 
<a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> 
<a href="../unity.scopes.qt.QResult/index.html#a3827c6b06d202ca6079f08b666f2c0ea" class="el">retrieve</a> () const
 
Get a stored result. More...
 
<span id="a1aa2ae9082f1e6507d18dc650f4d6d9d" class="anchor"></span> void 
<a href="../unity.scopes.qt.QResult/index.html#a1aa2ae9082f1e6507d18dc650f4d6d9d" class="el">set_uri</a> (QString const &<a href="../unity.scopes.qt.QResult/index.html#a253c1f08aae4338a3f89e192538e99f8" class="el">uri</a>)
 
Set the "uri" attribute of this result.
 
void 
<a href="../unity.scopes.qt.QResult/index.html#a1f3defe1265de15c763a591b0da87cf0" class="el">set_title</a> (QString const &<a href="../unity.scopes.qt.QResult/index.html#aafcb8c20516636cadb4be0e285ab20f6" class="el">title</a>)
 
Set the "title" attribute of this result. More...
 
void 
<a href="../unity.scopes.qt.QResult/index.html#a1f4f912a02b84f077bc85879a72a90be" class="el">set_art</a> (QString const &image)
 
Set the "art" attribute of this result. More...
 
void 
<a href="../unity.scopes.qt.QResult/index.html#aa091842db377921d6b0dd388f823a245" class="el">set_dnd_uri</a> (QString const &<a href="../unity.scopes.qt.QResult/index.html#a3da993e25ee4a714fc5feedb29892d05" class="el">dnd_uri</a>)
 
Set the "dnd\_uri" attribute of this result. More...
 
void 
<a href="../unity.scopes.qt.QResult/index.html#a92fcf6ff2271c442c5190dab63ec4042" class="el">set_intercept_activation</a> ()
 
Indicates to the receiver that this scope should intercept activation requests for this result. More...
 
bool 
<a href="../unity.scopes.qt.QResult/index.html#aa905c2b7854efd8d8031cb80044ccb9f" class="el">direct_activation</a> () const
 
Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result. More...
 
<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> 
<a href="../unity.scopes.qt.QResult/index.html#a273100ac7b782044294250f939e3dba0" class="el">target_scope_proxy</a> () const
 
Get the proxy of a scope that handles activation and preview of this result. More...
 
QVariant & 
<a href="../unity.scopes.qt.QResult/index.html#a3b939c0d073ad78286e3cb8b8525ba2a" class="el">operator[]</a> (QString const &key)
 
Returns reference of a Result attribute. More...
 
QVariant const & 
<a href="../unity.scopes.qt.QResult/index.html#a205f7595cf44c96b610cc7813b126db2" class="el">operator[]</a> (QString const &key) const
 
Returns a const reference to a Result attribute. More...
 
QString 
<a href="../unity.scopes.qt.QResult/index.html#a253c1f08aae4338a3f89e192538e99f8" class="el">uri</a> () const noexcept
 
Get the "uri" property of this Result. More...
 
QString 
<a href="../unity.scopes.qt.QResult/index.html#aafcb8c20516636cadb4be0e285ab20f6" class="el">title</a> () const noexcept
 
Get the "title" property of this Result. More...
 
QString 
<a href="../unity.scopes.qt.QResult/index.html#ada4ef189c8a95ceb96bcf777dc312b24" class="el">art</a> () const noexcept
 
Get the "art" property of this Result. More...
 
QString 
<a href="../unity.scopes.qt.QResult/index.html#a3da993e25ee4a714fc5feedb29892d05" class="el">dnd_uri</a> () const noexcept
 
Get the "dnd\_uri" property of this Result. More...
 
bool 
<a href="../unity.scopes.qt.QResult/index.html#adde088969220153fde8dca7a4c4d117a" class="el">contains</a> (QString const &key) const
 
Check if this Result has an attribute. More...
 
QVariant const & 
<a href="../unity.scopes.qt.QResult/index.html#a7ed3240ad58f23d88e9de63e15062598" class="el">value</a> (QString const &key) const
 
Get the value of an attribute. More...
 
QVariantMap 
<a href="../unity.scopes.qt.QResult/index.html#a9188d2a2e431c71d85b142539f654e44" class="el">serialize</a> () const
 
Returns a dictionary of all attributes of this Result instance. More...
 
<span id="a3842831df719702fef51c9d82c010f5d" class="anchor"></span>  
**QResult** (<a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> const &other)
 
<span id="ad7bc9ad81a8c518970e7b5a6534b408a" class="anchor"></span>  
**QResult** (<a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> &&)
 
<span id="a9a2a982ce76d99dbc2b45ec82f6c399c" class="anchor"></span> <a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> & 
**operator=** (<a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> const &other)
 
<span id="a3dc063c82c63669214a207ac3411fc07" class="anchor"></span> <a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> & 
**operator=** (<a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

A result, including the category it belongs to.

Constructor & Destructor Documentation
--------------------------------------

<span id="aaa0d31b18c65dff255c13ff014d11b7d" class="anchor"></span>
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
<td>unity::scopes::qt::QCategorisedResult::QCategorisedResult</td>
<td>(</td>
<td>QCategory::SCPtr </td>
<td><em>category</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">explicit</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="../unity.scopes.CategorisedResult/index.html" class="el" title="A result, including the category it belongs to. ">CategorisedResult</a> with given category, with all base attributes initially empty.

Parameters  
|          |                              |
|----------|------------------------------|
| category | The category for the result. |

Member Function Documentation
-----------------------------

<span id="a8516116413e83bdedb978c71f803f118" class="anchor"></span>
|                                                                  |     |     |     |       |
|------------------------------------------------------------------|-----|-----|-----|-------|
| QCategory::SCPtr unity::scopes::qt::QCategorisedResult::category | (   |     | )   | const |

Return category of this result. Get the category instance this result belongs to.

Returns  
The category instance.

<span id="ab24057bbd0ee446a40cb0b9d38ef696d" class="anchor"></span>
|                                                           |     |                   |            |     |     |
|-----------------------------------------------------------|-----|-------------------|------------|-----|-----|
| void unity::scopes::qt::QCategorisedResult::set\_category | (   | QCategory::SCPtr  | *category* | )   |     |

Updates the category of this result.

Parameters  
|          |                              |
|----------|------------------------------|
| category | The category for the result. |

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
