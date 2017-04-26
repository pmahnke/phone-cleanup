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

-   QResult

QResult
=======

The attributes of a result returned by a <a href="../unity.scopes.Scope/index.html" class="el" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>. [More...](index.html#details)

`#include <unity/scopes/qt/QResult.h>`

Inheritance diagram for unity::scopes::qt::QResult:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/ebcbff77-7f91-45d4-85dd-ffb3a4193f3c-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QResult/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual 
<a href="index.html#ad1bc050f67237c601821cc5836c76b94" class="el">~QResult</a> ()
 
void 
<a href="index.html#a56592ac2bbf7a752f9aa99ea26226cee" class="el">store</a> (<a href="index.html" class="el">QResult</a> const &other, bool intercept\_activation=false)
 
Stores a Result inside this Result instance. More...
 
bool 
<a href="index.html#affcb80d29930b57d8dc6aa268820d451" class="el">has_stored_result</a> () const
 
Check if this Result instance has a stored result. More...
 
<a href="index.html" class="el">QResult</a> 
<a href="index.html#a3827c6b06d202ca6079f08b666f2c0ea" class="el">retrieve</a> () const
 
Get a stored result. More...
 
<span id="a1aa2ae9082f1e6507d18dc650f4d6d9d" class="anchor"></span> void 
<a href="index.html#a1aa2ae9082f1e6507d18dc650f4d6d9d" class="el">set_uri</a> (QString const &<a href="index.html#a253c1f08aae4338a3f89e192538e99f8" class="el">uri</a>)
 
Set the "uri" attribute of this result.
 
void 
<a href="index.html#a1f3defe1265de15c763a591b0da87cf0" class="el">set_title</a> (QString const &<a href="index.html#aafcb8c20516636cadb4be0e285ab20f6" class="el">title</a>)
 
Set the "title" attribute of this result. More...
 
void 
<a href="index.html#a1f4f912a02b84f077bc85879a72a90be" class="el">set_art</a> (QString const &image)
 
Set the "art" attribute of this result. More...
 
void 
<a href="index.html#aa091842db377921d6b0dd388f823a245" class="el">set_dnd_uri</a> (QString const &<a href="index.html#a3da993e25ee4a714fc5feedb29892d05" class="el">dnd_uri</a>)
 
Set the "dnd\_uri" attribute of this result. More...
 
void 
<a href="index.html#a92fcf6ff2271c442c5190dab63ec4042" class="el">set_intercept_activation</a> ()
 
Indicates to the receiver that this scope should intercept activation requests for this result. More...
 
bool 
<a href="index.html#aa905c2b7854efd8d8031cb80044ccb9f" class="el">direct_activation</a> () const
 
Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result. More...
 
<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> 
<a href="index.html#a273100ac7b782044294250f939e3dba0" class="el">target_scope_proxy</a> () const
 
Get the proxy of a scope that handles activation and preview of this result. More...
 
QVariant & 
<a href="index.html#a3b939c0d073ad78286e3cb8b8525ba2a" class="el">operator[]</a> (QString const &key)
 
Returns reference of a Result attribute. More...
 
QVariant const & 
<a href="index.html#a205f7595cf44c96b610cc7813b126db2" class="el">operator[]</a> (QString const &key) const
 
Returns a const reference to a Result attribute. More...
 
QString 
<a href="index.html#a253c1f08aae4338a3f89e192538e99f8" class="el">uri</a> () const noexcept
 
Get the "uri" property of this Result. More...
 
QString 
<a href="index.html#aafcb8c20516636cadb4be0e285ab20f6" class="el">title</a> () const noexcept
 
Get the "title" property of this Result. More...
 
QString 
<a href="index.html#ada4ef189c8a95ceb96bcf777dc312b24" class="el">art</a> () const noexcept
 
Get the "art" property of this Result. More...
 
QString 
<a href="index.html#a3da993e25ee4a714fc5feedb29892d05" class="el">dnd_uri</a> () const noexcept
 
Get the "dnd\_uri" property of this Result. More...
 
bool 
<a href="index.html#adde088969220153fde8dca7a4c4d117a" class="el">contains</a> (QString const &key) const
 
Check if this Result has an attribute. More...
 
QVariant const & 
<a href="index.html#a7ed3240ad58f23d88e9de63e15062598" class="el">value</a> (QString const &key) const
 
Get the value of an attribute. More...
 
QVariantMap 
<a href="index.html#a9188d2a2e431c71d85b142539f654e44" class="el">serialize</a> () const
 
Returns a dictionary of all attributes of this Result instance. More...
 
Copy and assignment

Copy and assignment (move and non-move versions) have the usual value semantics.

<span id="a3842831df719702fef51c9d82c010f5d" class="anchor"></span>  
**QResult** (<a href="index.html" class="el">QResult</a> const &other)
 
<span id="ad7bc9ad81a8c518970e7b5a6534b408a" class="anchor"></span>  
**QResult** (<a href="index.html" class="el">QResult</a> &&)
 
<span id="a9a2a982ce76d99dbc2b45ec82f6c399c" class="anchor"></span> <a href="index.html" class="el">QResult</a> & 
**operator=** (<a href="index.html" class="el">QResult</a> const &other)
 
<span id="a3dc063c82c63669214a207ac3411fc07" class="anchor"></span> <a href="index.html" class="el">QResult</a> & 
**operator=** (<a href="index.html" class="el">QResult</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

The attributes of a result returned by a <a href="../unity.scopes.Scope/index.html" class="el" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>.

The <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> API provides convenience methods for some typical attributes (title, art), but scopes are free to add and use any custom attributes with `operator[]`. The only required attribute is 'uri' and it must not be empty before calling Reply::push().

Constructor & Destructor Documentation
--------------------------------------

<span id="ad1bc050f67237c601821cc5836c76b94" class="anchor"></span>
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
<td>virtual unity::scopes::qt::QResult::~QResult</td>
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

Destructor.

Member Function Documentation
-----------------------------

<span id="ada4ef189c8a95ceb96bcf777dc312b24" class="anchor"></span>
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
<td>QString unity::scopes::qt::QResult::art</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the "art" property of this <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator\[\]).

Returns  
The value of "art" or the empty string.

<span id="adde088969220153fde8dca7a4c4d117a" class="anchor"></span>
|                                           |     |                  |       |     |       |
|-------------------------------------------|-----|------------------|-------|-----|-------|
| bool unity::scopes::qt::QResult::contains | (   | QString const &  | *key* | )   | const |

Check if this <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> has an attribute.

Parameters  
|     |                     |
|-----|---------------------|
| key | The attribute name. |

<!-- -->

Returns  
True if the attribute is set.

<span id="aa905c2b7854efd8d8031cb80044ccb9f" class="anchor"></span>
|                                                     |     |     |     |       |
|-----------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::qt::QResult::direct\_activation | (   |     | )   | const |

Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result.

Returns  
True if this result needs to be activated directly.

<span id="a3da993e25ee4a714fc5feedb29892d05" class="anchor"></span>
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
<td>QString unity::scopes::qt::QResult::dnd_uri</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the "dnd\_uri" property of this <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String type (e.g. it was set with operator\[\]).

Returns  
The value of "dnd\_uri" or the empty string.

<span id="affcb80d29930b57d8dc6aa268820d451" class="anchor"></span>
|                                                      |     |     |     |       |
|------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::qt::QResult::has\_stored\_result | (   |     | )   | const |

Check if this <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> instance has a stored result.

Returns  
True if there is a stored result

<span id="a3b939c0d073ad78286e3cb8b8525ba2a" class="anchor"></span>
|                                                    |     |                  |       |     |     |
|----------------------------------------------------|-----|------------------|-------|-----|-----|
| QVariant& unity::scopes::qt::QResult::operator\[\] | (   | QString const &  | *key* | )   |     |

Returns reference of a <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> attribute.

This method can be used to read or initialize both standard ("uri", "title", "art", "dnd\_uri") and custom metadata attributes. Referencing a non-existing attribute automatically creates it with a default value of Variant::Type::Null.

Parameters  
|     |                            |
|-----|----------------------------|
| key | The name of the attribute. |

<!-- -->

Returns  
A reference to the attribute.

<!-- -->

Exceptions  
|                        |                                             |
|------------------------|---------------------------------------------|
| unity::Invalidargument | if no attribute with the given name exists. |

<span id="a205f7595cf44c96b610cc7813b126db2" class="anchor"></span>
|                                                          |     |                  |       |     |       |
|----------------------------------------------------------|-----|------------------|-------|-----|-------|
| QVariant const& unity::scopes::qt::QResult::operator\[\] | (   | QString const &  | *key* | )   | const |

Returns a const reference to a <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> attribute.

This method can be used for read-only access to both standard ("uri", "title", "art", "dnd\_uri") and custom metadata attributes. Referencing a non-existing attribute throws unity::InvalidArgumentException.

Parameters  
|     |                            |
|-----|----------------------------|
| key | The name of the attribute. |

<!-- -->

Returns  
A const reference to the attribute.

<!-- -->

Exceptions  
|                        |                                             |
|------------------------|---------------------------------------------|
| unity::Invalidargument | if no attribute with the given name exists. |

<span id="a3827c6b06d202ca6079f08b666f2c0ea" class="anchor"></span>
|                                                                                  |     |     |     |       |
|----------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="index.html" class="el">QResult</a> unity::scopes::qt::QResult::retrieve | (   |     | )   | const |

Get a stored result.

Returns  
stored result

<!-- -->

Exceptions  
|                                 |                                                                                                                                                                      |
|---------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::InvalidArgumentException | if no result was stored in this <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> instance. |

<span id="a9188d2a2e431c71d85b142539f654e44" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| QVariantMap unity::scopes::qt::QResult::serialize | (   |     | )   | const |

Returns a dictionary of all attributes of this <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> instance.

Returns  
All base attributes and custom attributes set with add\_metadata().

<span id="a1f4f912a02b84f077bc85879a72a90be" class="anchor"></span>
|                                           |     |                  |         |     |     |
|-------------------------------------------|-----|------------------|---------|-----|-----|
| void unity::scopes::qt::QResult::set\_art | (   | QString const &  | *image* | )   |     |

Set the "art" attribute of this result.

Equivalent to calling `result["art"] = image;`

<span id="aa091842db377921d6b0dd388f823a245" class="anchor"></span>
|                                                |     |                  |            |     |     |
|------------------------------------------------|-----|------------------|------------|-----|-----|
| void unity::scopes::qt::QResult::set\_dnd\_uri | (   | QString const &  | *dnd\_uri* | )   |     |

Set the "dnd\_uri" attribute of this result.

Equivalent to calling `result["dnd_uri"] = dnd_uri;`

<span id="a92fcf6ff2271c442c5190dab63ec4042" class="anchor"></span>
|                                                             |     |     |     |     |
|-------------------------------------------------------------|-----|-----|-----|-----|
| void unity::scopes::qt::QResult::set\_intercept\_activation | (   |     | )   |     |

Indicates to the receiver that this scope should intercept activation requests for this result.

By default, a scope receives preview requests for the results it creates, but does not receive activation requests (they are handled directly by the shell). Intercepting activation implies intercepting preview requests as well; this is important for scopes that forward results from other scopes and call <a href="index.html#a92fcf6ff2271c442c5190dab63ec4042" class="el" title="Indicates to the receiver that this scope should intercept activation requests for this result...">set_intercept_activation()</a> on these scopes. A scope that sets intercept activation flag for a result should re-implement <a href="../unity.scopes.ScopeBase/index.html#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" class="el" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate()</a> and provide an implementation of <a href="../unity.scopes.ActivationQueryBase/index.html" class="el" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> that handles the actual activation. If not called, the result will be activated directly by the Unity shell whithout involving the scope, assuming an appropriate URI schema handler is present on the system.

<span id="a1f3defe1265de15c763a591b0da87cf0" class="anchor"></span>
|                                             |     |                  |         |     |     |
|---------------------------------------------|-----|------------------|---------|-----|-----|
| void unity::scopes::qt::QResult::set\_title | (   | QString const &  | *title* | )   |     |

Set the "title" attribute of this result.

Equivalent to calling `result["title"] = title;`

<span id="a56592ac2bbf7a752f9aa99ea26226cee" class="anchor"></span>
|                                        |     |                                                      |                                    |
|----------------------------------------|-----|------------------------------------------------------|------------------------------------|
| void unity::scopes::qt::QResult::store | (   | <a href="index.html" class="el">QResult</a> const &  | *other*,                           |
|                                        |     | bool                                                 | *intercept\_activation* = `false`  |
|                                        | )   |                                                      |                                    |

Stores a <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> inside this <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> instance.

This method is meant to be used by aggregator scopes which want to modify results they receive, but want to keep a copy of the original result so that they can be correctly handled by the original scopes who created them when it comes to activation or previews. Scopes middleware will automatically pass the correct inner stored result to the activation or preview request handler of a scope which created it.

Parameters  
|                       |                                                                    |
|-----------------------|--------------------------------------------------------------------|
| other                 | The original result to store within this result.                   |
| intercept\_activation | True if this scope should receive activation and preview requests. |

<span id="a273100ac7b782044294250f939e3dba0" class="anchor"></span>
|                                                                                                                                                   |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> unity::scopes::qt::QResult::target\_scope\_proxy | (   |     | )   | const |

Get the proxy of a scope that handles activation and preview of this result.

The proxy is available only when receiving this result from a scope, otherwise this method throws LogicException. Activation requests should be sent to a scope returned by this method only if <a href="index.html#aa905c2b7854efd8d8031cb80044ccb9f" class="el" title="Check if this result should be activated directly by the shell because the scope doesn&#39;t handle activ...">direct_activation()</a> is false.

Returns  
The scope proxy.

<span id="aafcb8c20516636cadb4be0e285ab20f6" class="anchor"></span>
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
<td>QString unity::scopes::qt::QResult::title</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the "title" property of this <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator\[\]).

Returns  
The value of "title" or the empty string.

<span id="a253c1f08aae4338a3f89e192538e99f8" class="anchor"></span>
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
<td>QString unity::scopes::qt::QResult::uri</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the "uri" property of this <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator\[\]).

Returns  
The value of "uri" or the empty string.

<span id="a7ed3240ad58f23d88e9de63e15062598" class="anchor"></span>
|                                                   |     |                  |       |     |       |
|---------------------------------------------------|-----|------------------|-------|-----|-------|
| QVariant const& unity::scopes::qt::QResult::value | (   | QString const &  | *key* | )   | const |

Get the value of an attribute.

Parameters  
|     |                     |
|-----|---------------------|
| key | The attribute name. |

<!-- -->

Returns  
The attribute value.

<!-- -->

Exceptions  
|                                 |                                     |
|---------------------------------|-------------------------------------|
| unity::InvalidArgumentException | if given attribute hasn't been set. |

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
