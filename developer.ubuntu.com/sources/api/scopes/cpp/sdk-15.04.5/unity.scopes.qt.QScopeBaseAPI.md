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

-   QScopeBaseAPI

QScopeBaseAPI
=============

`#include <unity/scopes/qt/QScopeBaseAPI.h>`

Inheritance diagram for unity::scopes::qt::QScopeBaseAPI:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/8e4944bb-da5e-448f-a1e3-7ec0566fdd8f-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QScopeBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual void 
<a href="index.html#aefcd8d1262a89d1c9b6c63dbdc8bfcea" class="el">start</a> (std::string const &scope\_id) override
 
Called by the scopes run time after the create function completes. More...
 
virtual void 
<a href="index.html#a7cfc17b94cc01761ac53acc1613ab8ce" class="el">stop</a> () override
 
Called by the scopes run time when the scope should shut down. More...
 
virtual unity::scopes::PreviewQueryBase::UPtr 
<a href="index.html#a839ca01a0085c27edc5ee6fa060f7b75" class="el">preview</a> (const <a href="../unity.scopes.Result/index.html" class="el">unity::scopes::Result</a> &, const <a href="../unity.scopes.ActionMetadata/index.html" class="el">unity::scopes::ActionMetadata</a> &) override
 
virtual unity::scopes::SearchQueryBase::UPtr 
<a href="index.html#ac5023d43f3169eb51283ebd6488da631" class="el">search</a> (<a href="../unity.scopes.CannedQuery/index.html" class="el">unity::scopes::CannedQuery</a> const &q, <a href="../unity.scopes.SearchMetadata/index.html" class="el">unity::scopes::SearchMetadata</a> const &) override
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/136079b6-4330-4179-bc0a-008fee23572a-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QScopeBaseAPI/closed.png) Public Member Functions inherited from <a href="../unity.scopes.ScopeBase/index.html" class="el">unity::scopes::ScopeBase</a>
virtual void 
<a href="../unity.scopes.ScopeBase/index.html#a386e99b98318a70f25db84bbe11c0292" class="el">run</a> ()
 
Called by the scopes runtime after it has called start() to hand a thread of control to the scope. More...
 
virtual ActivationQueryBase::UPtr 
<a href="../unity.scopes.ScopeBase/index.html#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" class="el">activate</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &result, <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &metadata)
 
Called by the scopes runtime when a scope needs to respond to a result activation request. More...
 
virtual ActivationQueryBase::UPtr 
<a href="../unity.scopes.ScopeBase/index.html#a2f4d476fa790349c9a7de52be3232d11" class="el">perform_action</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &result, <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &metadata, std::string const &widget\_id, std::string const &action\_id)
 
Invoked when a scope is requested to handle a preview action. More...
 
virtual std::string 
<a href="../unity.scopes.ScopeBase/index.html#a32744a21076d9dacc98362412c6a63d5" class="el">scope_directory</a> () const final
 
Returns the directory that stores the scope's configuration files and shared library. More...
 
virtual std::string 
<a href="../unity.scopes.ScopeBase/index.html#a36cfdda42db58da399390e7c5df2385e" class="el">cache_directory</a> () const final
 
Returns a directory that is (exclusively) writable for the scope. More...
 
virtual std::string 
<a href="../unity.scopes.ScopeBase/index.html#a4f54564b752a3451e05bd11171abb27e" class="el">app_directory</a> () const final
 
Returns a directory that is shared with an app in the same click package. More...
 
virtual std::string 
<a href="../unity.scopes.ScopeBase/index.html#ade8de1dca94e10aa9788624710ab49eb" class="el">tmp_directory</a> () const final
 
Returns a tmp directory that is (exclusively) writable for the scope. More...
 
virtual <a href="../unity.scopes/index.html#a45babc254d3548863d79ee54f266e84d" class="el">unity::scopes::RegistryProxy</a> 
<a href="../unity.scopes.ScopeBase/index.html#af874b8b3c5c28dcaacc416076c9dfc35" class="el">registry</a> () const final
 
Returns the proxy to the registry. More...
 
virtual <a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> 
<a href="../unity.scopes.ScopeBase/index.html#acddeebb3357c6941b3b77617133cda23" class="el">settings</a> () const final
 
Returns a dictionary with the scope's current settings. More...
 
virtual <a href="../unity.scopes/index.html#a4daaa9ad07daf596af4dacd6e0b7be9a" class="el">ChildScopeList</a> 
<a href="../unity.scopes.ScopeBase/index.html#abc864e2fa714b9424a89293fea6972bc" class="el">find_child_scopes</a> () const
 
Returns a defaulted list of child scopes aggregated by this scope. More...
 
virtual <a href="../unity.scopes/index.html#a4daaa9ad07daf596af4dacd6e0b7be9a" class="el">ChildScopeList</a> 
<a href="../unity.scopes.ScopeBase/index.html#a4016075ab95bbf1b5dfa1444e9d750e0" class="el">child_scopes</a> () const final
 
Returns the current list of child scopes aggregated by this scope. More...
 
virtual ActivationQueryBase::UPtr 
<a href="../unity.scopes.ScopeBase/index.html#a7ac39ca44f4790dd36900657692d0565" class="el">activate_result_action</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &result, <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &metadata, std::string const &action\_id)
 
Invoked when a scope is requested to handle a result in-card action. More...
 
<span id="inherited"></span> Additional Inherited Members
---------------------------------------------------------

![-](https://developer.ubuntu.com/static/devportal_uploaded/871ab10d-fbd2-4768-a5c4-fb3740e01725-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QScopeBaseAPI/closed.png) Static Public Member Functions inherited from <a href="../unity.scopes.ScopeBase/index.html" class="el">unity::scopes::ScopeBase</a>
<span id="a4cbdf8cb790e6f44e388e70ab456e686" class="anchor"></span> static void 
<a href="../unity.scopes.ScopeBase/index.html#a4cbdf8cb790e6f44e388e70ab456e686" class="el">runtime_version</a> (int &v\_major, int &v\_minor, int &v\_micro) noexcept
 
Returns the version information for the scopes API that the scope was linked with.
 
<span id="details"></span>
Detailed Description
--------------------

Defines the lifecycle of scope plugin, and acts as a factory for Query and Preview objects.

Member Function Documentation
-----------------------------

<span id="a839ca01a0085c27edc5ee6fa060f7b75" class="anchor"></span>
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
<td>virtual unity::scopes::PreviewQueryBase::UPtr unity::scopes::qt::QScopeBaseAPI::preview</td>
<td>(</td>
<td>const <a href="../unity.scopes.Result/index.html" class="el">unity::scopes::Result</a> &amp; </td>
<td>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>const <a href="../unity.scopes.ActionMetadata/index.html" class="el">unity::scopes::ActionMetadata</a> &amp; </td>
<td> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called each time a new preview is requested

Implements <a href="../unity.scopes.ScopeBase/index.html#a154b9b4cfc0f40572cfec60dd819396f" class="el">unity::scopes::ScopeBase</a>.

<span id="ac5023d43f3169eb51283ebd6488da631" class="anchor"></span>
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
<td>virtual unity::scopes::SearchQueryBase::UPtr unity::scopes::qt::QScopeBaseAPI::search</td>
<td>(</td>
<td><a href="../unity.scopes.CannedQuery/index.html" class="el">unity::scopes::CannedQuery</a> const &amp; </td>
<td><em>q</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.SearchMetadata/index.html" class="el">unity::scopes::SearchMetadata</a> const &amp; </td>
<td> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called each time a new query is requested

Implements <a href="../unity.scopes.ScopeBase/index.html#a0e4969ff26dc1d396d74c56d896fd564" class="el">unity::scopes::ScopeBase</a>.

<span id="aefcd8d1262a89d1c9b6c63dbdc8bfcea" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QScopeBaseAPI::start</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>scope_id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes run time after the create function completes.

If <a href="index.html#aefcd8d1262a89d1c9b6c63dbdc8bfcea" class="el" title="Called by the scopes run time after the create function completes. ">start()</a> throws an exception, <a href="index.html#a7cfc17b94cc01761ac53acc1613ab8ce" class="el" title="Called by the scopes run time when the scope should shut down. ">stop()</a> will *not* be called.

The call to <a href="index.html#aefcd8d1262a89d1c9b6c63dbdc8bfcea" class="el" title="Called by the scopes run time after the create function completes. ">start()</a> is made by the same thread that calls the create function.

Parameters  
|           |                                                                     |
|-----------|---------------------------------------------------------------------|
| scope\_id | The name of the scope as defined by the scope's configuration file. |

Reimplemented from <a href="../unity.scopes.ScopeBase/index.html#ac25f3f326e2cf25de2f2eca18de5926c" class="el">unity::scopes::ScopeBase</a>.

<span id="a7cfc17b94cc01761ac53acc1613ab8ce" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QScopeBaseAPI::stop</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes run time when the scope should shut down.

A scope should deallocate as many resources as possible when <a href="index.html#a7cfc17b94cc01761ac53acc1613ab8ce" class="el" title="Called by the scopes run time when the scope should shut down. ">stop()</a> is called, for example, deallocate any caches and close network connections. In addition, if the scope implements <a href="../unity.scopes.ScopeBase/index.html#a386e99b98318a70f25db84bbe11c0292" class="el" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> and did not return from <a href="../unity.scopes.ScopeBase/index.html#a386e99b98318a70f25db84bbe11c0292" class="el" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>, it must return from <a href="../unity.scopes.ScopeBase/index.html#a386e99b98318a70f25db84bbe11c0292" class="el" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> in response to the call to <a href="index.html#a7cfc17b94cc01761ac53acc1613ab8ce" class="el" title="Called by the scopes run time when the scope should shut down. ">stop()</a>.

Exceptions from <a href="index.html#a7cfc17b94cc01761ac53acc1613ab8ce" class="el" title="Called by the scopes run time when the scope should shut down. ">stop()</a> are ignored.

The call to <a href="index.html#a7cfc17b94cc01761ac53acc1613ab8ce" class="el" title="Called by the scopes run time when the scope should shut down. ">stop()</a> is made by the same thread that calls the create function and <a href="index.html#aefcd8d1262a89d1c9b6c63dbdc8bfcea" class="el" title="Called by the scopes run time after the create function completes. ">start()</a>.

Reimplemented from <a href="../unity.scopes.ScopeBase/index.html#a80c5fec9e985dbb315d780ef2a56bfbf" class="el">unity::scopes::ScopeBase</a>.

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
