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
-   [SDK 15.04](../index.html) ›

<!-- -->

-   CategorisedResult

CategorisedResult
=================

A result, including the category it belongs to. [More...](index.html#details)

`#include <unity/scopes/CategorisedResult.h>`

Inheritance diagram for unity::scopes::CategorisedResult:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/3ff4d8e3-9090-4a5c-bf67-a7353d87d66e-api/scopes/cpp/sdk-15.04/unity.scopes.CategorisedResult/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#a28968f35dc3dc3cc1d2d2407e180933c" class="el">CategorisedResult</a> (Category::SCPtr <a href="index.html#aa6d3def1bc1a254046d7c5a34ecefa85" class="el">category</a>)
 
Creates a CategorisedResult with given category, with all base attributes initially empty. More...
 
void 
<a href="index.html#a8978affd683add658580499c9e954dbe" class="el">set_category</a> (Category::SCPtr <a href="index.html#aa6d3def1bc1a254046d7c5a34ecefa85" class="el">category</a>)
 
Updates the category of this result. More...
 
Category::SCPtr 
<a href="index.html#aa6d3def1bc1a254046d7c5a34ecefa85" class="el">category</a> () const
 
Return category of this result. Get the category instance this result belongs to. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="ac1cdb47fe113748db7977c4cd30d5024" class="anchor"></span>  
**CategorisedResult** (<a href="index.html" class="el">CategorisedResult</a> const &other)
 
<span id="ac84418647404768955080879ef851735" class="anchor"></span> <a href="index.html" class="el">CategorisedResult</a> & 
**operator=** (<a href="index.html" class="el">CategorisedResult</a> const &other)
 
<span id="a5ebd111e53b92da5423211545e480d0b" class="anchor"></span>  
**CategorisedResult** (<a href="index.html" class="el">CategorisedResult</a> &&)
 
<span id="a04884020d59d81ade02afe7aa77865fd" class="anchor"></span> <a href="index.html" class="el">CategorisedResult</a> & 
**operator=** (<a href="index.html" class="el">CategorisedResult</a> &&)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/0a5cf5d1-520d-4ac6-af46-d8982f75b532-api/scopes/cpp/sdk-15.04/unity.scopes.CategorisedResult/closed.png) Public Member Functions inherited from <a href="../unity.scopes.Result/index.html" class="el">unity::scopes::Result</a>
virtual 
<a href="../unity.scopes.Result/index.html#af50d9e95694cc46f4c76369e97aec927" class="el">~Result</a> ()
 
void 
<a href="../unity.scopes.Result/index.html#a744776333a9748ba41dace7c6943ca4d" class="el">store</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &other, bool intercept\_activation=false)
 
Stores a Result inside this Result instance. More...
 
bool 
<a href="../unity.scopes.Result/index.html#a8213bb7b0aedae09af8d621e1a7e136b" class="el">has_stored_result</a> () const
 
Check if this Result instance has a stored result. More...
 
<a href="../unity.scopes.Result/index.html" class="el">Result</a> 
<a href="../unity.scopes.Result/index.html#a99b158932252c709cb2d4861db566a0a" class="el">retrieve</a> () const
 
Get a stored result. More...
 
<span id="ad69c1e88a1245c4c1f13fcba333c8d7e" class="anchor"></span> void 
<a href="../unity.scopes.Result/index.html#ad69c1e88a1245c4c1f13fcba333c8d7e" class="el">set_uri</a> (std::string const &<a href="../unity.scopes.Result/index.html#a5642d5984ba110c3b7d268cc2668f413" class="el">uri</a>)
 
Set the "uri" attribute of this result.
 
void 
<a href="../unity.scopes.Result/index.html#adf8cf3d863babb02107fb5ef35acc925" class="el">set_title</a> (std::string const &<a href="../unity.scopes.Result/index.html#a318887472ccc1034a64a3ec1d3b0d7d6" class="el">title</a>)
 
Set the "title" attribute of this result. More...
 
void 
<a href="../unity.scopes.Result/index.html#a3f2e512b10dbf2ed867d260ec33a89a1" class="el">set_art</a> (std::string const &image)
 
Set the "art" attribute of this result. More...
 
void 
<a href="../unity.scopes.Result/index.html#aaea2d65663a8553b90a87b5b92c47f8f" class="el">set_dnd_uri</a> (std::string const &<a href="../unity.scopes.Result/index.html#af98171266eeac7360f1c1ef7b0f58958" class="el">dnd_uri</a>)
 
Set the "dnd\_uri" attribute of this result. More...
 
void 
<a href="../unity.scopes.Result/index.html#a5a132eb82702829e2fd026e088e4aa08" class="el">set_intercept_activation</a> ()
 
Indicates to the receiver that this scope should intercept activation requests for this result. More...
 
bool 
<a href="../unity.scopes.Result/index.html#ac3e57ec9bf9a3bc5a517f91ff9605f6b" class="el">direct_activation</a> () const
 
Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result. More...
 
<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> 
<a href="../unity.scopes.Result/index.html#a1a91e1cbb08e91366e92b7bcd76861d2" class="el">target_scope_proxy</a> () const
 
Get the proxy of a scope that handles activation and preview of this result. More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> & 
<a href="../unity.scopes.Result/index.html#a157ebfcc5c28649af2761ef58f68de76" class="el">operator[]</a> (std::string const &key)
 
Returns reference of a Result attribute. More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const & 
<a href="../unity.scopes.Result/index.html#a4e0664aba7b2613883a24f98450b71c0" class="el">operator[]</a> (std::string const &key) const
 
Returns a const reference to a Result attribute. More...
 
std::string 
<a href="../unity.scopes.Result/index.html#a5642d5984ba110c3b7d268cc2668f413" class="el">uri</a> () const noexcept
 
Get the "uri" property of this Result. More...
 
std::string 
<a href="../unity.scopes.Result/index.html#a318887472ccc1034a64a3ec1d3b0d7d6" class="el">title</a> () const noexcept
 
Get the "title" property of this Result. More...
 
std::string 
<a href="../unity.scopes.Result/index.html#aeaeafd3fd83172104e501474191a6e4d" class="el">art</a> () const noexcept
 
Get the "art" property of this Result. More...
 
std::string 
<a href="../unity.scopes.Result/index.html#af98171266eeac7360f1c1ef7b0f58958" class="el">dnd_uri</a> () const noexcept
 
Get the "dnd\_uri" property of this Result. More...
 
bool 
<a href="../unity.scopes.Result/index.html#a442b87e28f762addb0d81ccd03a11532" class="el">contains</a> (std::string const &key) const
 
Check if this Result has an attribute. More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const & 
<a href="../unity.scopes.Result/index.html#a490b5b5da2c3d7b122cfadae25cde3af" class="el">value</a> (std::string const &key) const
 
Get the value of an attribute. More...
 
<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> 
<a href="../unity.scopes.Result/index.html#acd3c05fe73b442facc1cb8d0fc0ffce2" class="el">serialize</a> () const
 
Returns a dictionary of all attributes of this Result instance. More...
 
<span id="a0e48c4b3cf193f94bd513b79d74a7f6c" class="anchor"></span>  
**Result** (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &other)
 
<span id="a987b0f1e2013c15c8aa77385e6a7aca3" class="anchor"></span>  
**Result** (<a href="../unity.scopes.Result/index.html" class="el">Result</a> &&)
 
<span id="a7d1c263180e854dcef81082158ddd72e" class="anchor"></span> <a href="../unity.scopes.Result/index.html" class="el">Result</a> & 
**operator=** (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &other)
 
<span id="a1333a50e7c1800fc15f15729a88eac09" class="anchor"></span> <a href="../unity.scopes.Result/index.html" class="el">Result</a> & 
**operator=** (<a href="../unity.scopes.Result/index.html" class="el">Result</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

A result, including the category it belongs to.

Constructor & Destructor Documentation
--------------------------------------

<span id="a28968f35dc3dc3cc1d2d2407e180933c" class="anchor"></span>
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
<td>unity::scopes::CategorisedResult::CategorisedResult</td>
<td>(</td>
<td>Category::SCPtr </td>
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

Creates a <a href="index.html" class="el" title="A result, including the category it belongs to. ">CategorisedResult</a> with given category, with all base attributes initially empty.

Parameters  
|          |                              |
|----------|------------------------------|
| category | The category for the result. |

Member Function Documentation
-----------------------------

<span id="aa6d3def1bc1a254046d7c5a34ecefa85" class="anchor"></span>
|                                                            |     |     |     |       |
|------------------------------------------------------------|-----|-----|-----|-------|
| Category::SCPtr unity::scopes::CategorisedResult::category | (   |     | )   | const |

Return category of this result. Get the category instance this result belongs to.

Returns  
The category instance.

<span id="a8978affd683add658580499c9e954dbe" class="anchor"></span>
|                                                      |     |                  |            |     |     |
|------------------------------------------------------|-----|------------------|------------|-----|-----|
| void unity::scopes::CategorisedResult::set\_category | (   | Category::SCPtr  | *category* | )   |     |

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
