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

-   TimeoutException

TimeoutException
================

Exception to indicate that a twoway request timed out. [More...](index.html#details)

`#include <unity/scopes/ScopeExceptions.h>`

Inheritance diagram for unity::scopes::TimeoutException:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/535fd83f-ee19-4798-bfbd-ecfde8b4c074-api/scopes/cpp/sdk-15.04/unity.scopes.TimeoutException/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#a76573760d4c9c8b019675302000d4f1a" class="el">TimeoutException</a> (std::string const &reason)
 
Constructs the exception. More...
 
virtual std::exception\_ptr 
<a href="index.html#a5b6ef04ea037bacfe594028306482720" class="el">self</a> () const override
 
Returns a `std::exception_ptr` to `this`. More...
 
Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

<span id="a7a0851c85f7a733d439e535e8e1e12f4" class="anchor"></span>  
**TimeoutException** (<a href="index.html" class="el">TimeoutException</a> const &)
 
<span id="a2a7114cebfffd39c5c362f6e9043ac14" class="anchor"></span> <a href="index.html" class="el">TimeoutException</a> & 
**operator=** (<a href="index.html" class="el">TimeoutException</a> const &)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/f40e20bf-cbef-4550-a955-a8fe1433fab2-api/scopes/cpp/sdk-15.04/unity.scopes.TimeoutException/closed.png) Public Member Functions inherited from <a href="../unity.scopes.MiddlewareException/index.html" class="el">unity::scopes::MiddlewareException</a>
 
<a href="../unity.scopes.MiddlewareException/index.html#af6250d2e529d103d30d3ebf06689c146" class="el">MiddlewareException</a> (std::string const &reason)
 
Constructs the exception. More...
 
<span id="a9c78308b3ff5b4e814ce13be2a693644" class="anchor"></span>  
**MiddlewareException** (<a href="../unity.scopes.MiddlewareException/index.html" class="el">MiddlewareException</a> const &)
 
<span id="a9d8dd9a32e0c45d36ec2d9513475f425" class="anchor"></span> <a href="../unity.scopes.MiddlewareException/index.html" class="el">MiddlewareException</a> & 
**operator=** (<a href="../unity.scopes.MiddlewareException/index.html" class="el">MiddlewareException</a> const &)
 
<span id="details"></span>
Detailed Description
--------------------

Exception to indicate that a twoway request timed out.

Constructor & Destructor Documentation
--------------------------------------

<span id="a76573760d4c9c8b019675302000d4f1a" class="anchor"></span>
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
<td>unity::scopes::TimeoutException::TimeoutException</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>reason</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">explicit</span></span></td>
</tr>
</tbody>
</table>

Constructs the exception.

Parameters  
|        |                                                   |
|--------|---------------------------------------------------|
| reason | Further details about the cause of the exception. |

Member Function Documentation
-----------------------------

<span id="a5b6ef04ea037bacfe594028306482720" class="anchor"></span>
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
<td>exception_ptr unity::scopes::TimeoutException::self</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a `std::exception_ptr` to `this`.

Returns  
`std::exception_ptr` to `this`.

Reimplemented from <a href="../unity.scopes.MiddlewareException/index.html#a5317c0215a98eb896d1d706450d2919e" class="el">unity::scopes::MiddlewareException</a>.

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
