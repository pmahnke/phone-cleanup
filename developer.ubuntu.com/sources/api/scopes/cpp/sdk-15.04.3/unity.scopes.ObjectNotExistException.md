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
-   [SDK 15.04.3](../index.html) ›

<!-- -->

-   ObjectNotExistException

ObjectNotExistException
=======================

Exception to indicate that a (twoway) request was sent to an object with an unknown identity. [More...](index.html#details)

`#include <unity/scopes/ScopeExceptions.h>`

Inheritance diagram for unity::scopes::ObjectNotExistException:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/0f8a8b5b-4c52-45e9-87cf-ccdd05e55e2e-api/scopes/cpp/sdk-15.04.3/unity.scopes.ObjectNotExistException/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#a31beda1f8f1a97154618e97f4ab8e34f" class="el">ObjectNotExistException</a> (std::string const &reason, std::string const &<a href="index.html#a63a7640944e3799f065379800715580e" class="el">id</a>)
 
Constructs the exception. More...
 
virtual std::exception\_ptr 
<a href="index.html#af87f8d39791b7efb52cbba9dd0e4da25" class="el">self</a> () const override
 
Returns a `std::exception_ptr` to `this`. More...
 
virtual std::string 
<a href="index.html#a63a7640944e3799f065379800715580e" class="el">id</a> () const
 
Returns the identity of the non-existent object. More...
 
Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

<span id="af0ca8654d511d068a4953b1fbcd620c5" class="anchor"></span>  
**ObjectNotExistException** (<a href="index.html" class="el">ObjectNotExistException</a> const &)
 
<span id="a6c15b6adc374c4c4e48116920dd3d571" class="anchor"></span> <a href="index.html" class="el">ObjectNotExistException</a> & 
**operator=** (<a href="index.html" class="el">ObjectNotExistException</a> const &)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/7414596e-3630-4067-ac16-39378982fbd3-api/scopes/cpp/sdk-15.04.3/unity.scopes.ObjectNotExistException/closed.png) Public Member Functions inherited from <a href="../unity.scopes.MiddlewareException/index.html" class="el">unity::scopes::MiddlewareException</a>
 
<a href="../unity.scopes.MiddlewareException/index.html#af6250d2e529d103d30d3ebf06689c146" class="el">MiddlewareException</a> (std::string const &reason)
 
Constructs the exception. More...
 
<span id="a9c78308b3ff5b4e814ce13be2a693644" class="anchor"></span>  
**MiddlewareException** (<a href="../unity.scopes.MiddlewareException/index.html" class="el">MiddlewareException</a> const &)
 
<span id="a9d8dd9a32e0c45d36ec2d9513475f425" class="anchor"></span> <a href="../unity.scopes.MiddlewareException/index.html" class="el">MiddlewareException</a> & 
**operator=** (<a href="../unity.scopes.MiddlewareException/index.html" class="el">MiddlewareException</a> const &)
 
<span id="details"></span>
Detailed Description
--------------------

Exception to indicate that a (twoway) request was sent to an object with an unknown identity.

Constructor & Destructor Documentation
--------------------------------------

<span id="a31beda1f8f1a97154618e97f4ab8e34f" class="anchor"></span>
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
<td>unity::scopes::ObjectNotExistException::ObjectNotExistException</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>reason</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>id</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
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
| id     | The identity of the unknown object.               |

Member Function Documentation
-----------------------------

<span id="a63a7640944e3799f065379800715580e" class="anchor"></span>
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
<td>string unity::scopes::ObjectNotExistException::id</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns the identity of the non-existent object.

Returns  
The identity of the non-existent object.

<span id="af87f8d39791b7efb52cbba9dd0e4da25" class="anchor"></span>
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
<td>exception_ptr unity::scopes::ObjectNotExistException::self</td>
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
