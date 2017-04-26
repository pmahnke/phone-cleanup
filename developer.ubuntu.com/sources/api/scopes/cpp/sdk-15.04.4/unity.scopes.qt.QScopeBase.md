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
-   [unity.scopes.qt](../unity.scopes.qt/index.html) ›

<!-- -->

-   QScopeBase

QScopeBase
==========

Base class for a scope implementation. [More...](index.html#details)

`#include <unity/scopes/qt/QScopeBase.h>`

Inheritance diagram for unity::scopes::qt::QScopeBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/dc3cbcff-3771-4a29-b777-25fa70adcf02-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QScopeBase/classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual void 
<a href="index.html#a948bd6ed6f465292db9ffb0eff11f1de" class="el">start</a> (QString const &)
 
virtual void 
<a href="index.html#a4cd139ca1b5cb8a1943b39d0729d8ca5" class="el">stop</a> ()
 
virtual QPreviewQueryBase::UPtr 
<a href="index.html#afdedf1ba41623c1ac060ecc4b014f67f" class="el">preview</a> (const <a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> &, const <a href="../unity.scopes.qt.QActionMetadata/index.html" class="el">QActionMetadata</a> &)=0
 
virtual QSearchQueryBase::UPtr 
<a href="index.html#a5132deae23a3916170dcfe6fa41810f4" class="el">search</a> (<a href="../unity.scopes.CannedQuery/index.html" class="el">unity::scopes::CannedQuery</a> const &q, <a href="../unity.scopes.SearchMetadata/index.html" class="el">unity::scopes::SearchMetadata</a> const &)=0
 
<span id="details"></span>
Detailed Description
--------------------

Base class for a scope implementation.

Scopes are accessed by the scopes run time as a shared library (one library per scope). Each scope must implement a class that derives from <a href="index.html" class="el" title="Base class for a scope implementation. ">QScopeBase</a>, for example:

<span class="preprocessor">\#include &lt;unity/scopes/qt/QScopeBase.h&gt;</span>

<span class="keyword">class </span>MyScope : <span class="keyword">public</span> <a href="index.html" class="code">unity::scopes::qt::QScopeBase</a>

{

<span class="keyword">public</span>:

MyScope();

<span class="keyword">virtual</span> ~MyScope();

<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a href="index.html#a948bd6ed6f465292db9ffb0eff11f1de" class="code">start</a>(QString <span class="keyword">const</span>& scope\_id); <span class="comment">// Optional</span>

<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a href="index.html#a4cd139ca1b5cb8a1943b39d0729d8ca5" class="code">stop</a>(); <span class="comment">// Optional</span>

<span class="comment">// ...</span>

};

In addition, the library must provide two functions with "C" linkage:

-   a create function that must return a pointer to the derived instance
-   a destroy function that is passed the pointer returned by the create function

If the create function throws an exception, the destroy function will not be called. If the create function returns NULL, the destroy function *will* be called with NULL as its argument.

Rather than hard-coding the names of the functions, use the UNITY\_SCOPE\_CREATE\_FUNCTION and UNITY\_SCOPE\_DESTROY\_FUNCTION macros, for example:

<span class="comment">// You must provide a function that creates your scope on the heap and</span>

<span class="comment">// pass this function to the QScopeBaseAPI constructor.</span>

<a href="index.html" class="code">unity::scopes::qt::QScopeBase</a> \*create\_my\_scope()

{

<span class="keywordflow">return</span> <span class="keyword">new</span> MyScope();

}

<a href="../unity.scopes.ScopeBase/index.html" class="code">unity::scopes::ScopeBase</a>\*

UNITY\_SCOPE\_CREATE\_FUNCTION()

{

<span class="comment">// You must return a dynamically allocated QScopeBaseAPI instance here.</span>

<span class="comment">// In turn, that instance calls your creation function to instantiate</span>

<span class="comment">// your scope in the correct Qt thread.</span>

<span class="keywordflow">return</span> <span class="keyword">new</span> QScopeBaseAPI(create\_my\_scope);

}

<span class="comment">// The runtime, once it has stopped your scope, calls the destroy function.</span>

<span class="keywordtype">void</span>

UNITY\_SCOPE\_DESTROY\_FUNCTION(unity::scopes::ScopeBase\* scope)

{

<span class="keyword">delete</span> scope;

}

After the scopes run time has obtained a pointer to the class instance from the create function, it calls <a href="index.html#a948bd6ed6f465292db9ffb0eff11f1de" class="el">start()</a>, which allows the scope to initialize itself.

Member Function Documentation
-----------------------------

<span id="afdedf1ba41623c1ac060ecc4b014f67f" class="anchor"></span>
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
<td>virtual QPreviewQueryBase::UPtr unity::scopes::qt::QScopeBase::preview</td>
<td>(</td>
<td>const <a href="../unity.scopes.qt.QResult/index.html" class="el">QResult</a> &amp; </td>
<td>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>const <a href="../unity.scopes.qt.QActionMetadata/index.html" class="el">QActionMetadata</a> &amp; </td>
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
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Called each time a new preview is requested

<span id="a5132deae23a3916170dcfe6fa41810f4" class="anchor"></span>
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
<td>virtual QSearchQueryBase::UPtr unity::scopes::qt::QScopeBase::search</td>
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
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Called each time a new query is requested

<span id="a948bd6ed6f465292db9ffb0eff11f1de" class="anchor"></span>
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
<td>void QScopeBase::start</td>
<td>(</td>
<td>QString const &amp; </td>
<td><em>start_string</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once at startup

<span id="a4cd139ca1b5cb8a1943b39d0729d8ca5" class="anchor"></span>
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
<td>void QScopeBase::stop</td>
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

Called at shutdown

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
