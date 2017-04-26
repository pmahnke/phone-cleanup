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
-   [unity.scopes.testing](../unity.scopes.testing/index.html) ›

<!-- -->

-   Sample

Sample
======

The <a href="index.html" class="el" title="The Sample class models the interface to a sample of raw observations and their statistical propertie...">Sample</a> class models the interface to a sample of raw observations and their statistical properties. [More...](index.html#details)

`#include <unity/scopes/testing/Statistics.h>`

Inheritance diagram for unity::scopes::testing::Sample:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/feac90fb-6b37-45a0-b04c-355b1cb082f8-api/scopes/cpp/sdk-15.04.4/unity.scopes.testing.Sample/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-types"></span> Public Types
-----------------------------------------

typedef std::size\_t 
<a href="index.html#a45542150c14b4486c58cb14cca3072e9" class="el">SizeType</a>
 
typedef double 
<a href="index.html#a9e02cfa261b23b40c9da59cda6ab0dc8" class="el">ValueType</a>
 
typedef std::function&lt; void(<a href="index.html#a9e02cfa261b23b40c9da59cda6ab0dc8" class="el">ValueType</a>)&gt; 
<a href="index.html#a4d588f4837a81c163ebd653d88648144" class="el">Enumerator</a>
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual <a href="index.html#a45542150c14b4486c58cb14cca3072e9" class="el">SizeType</a> 
<a href="index.html#ab37cab3e43f1a8cbc9955ab6ec5e7e40" class="el">get_size</a> () const =0
 
virtual <a href="index.html#a9e02cfa261b23b40c9da59cda6ab0dc8" class="el">ValueType</a> 
<a href="index.html#aa4e03bd0ca10b2172954b50a3c544667" class="el">get_mean</a> () const =0
 
virtual <a href="index.html#a9e02cfa261b23b40c9da59cda6ab0dc8" class="el">ValueType</a> 
<a href="index.html#a646d6b0dca1081f812958c86ce7e8d01" class="el">get_variance</a> () const =0
 
virtual void 
<a href="index.html#a051bdf96e55f8da92bb3829bbf650cf4" class="el">enumerate</a> (const <a href="index.html#a4d588f4837a81c163ebd653d88648144" class="el">Enumerator</a> &enumerator) const =0
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" class="el" title="The Sample class models the interface to a sample of raw observations and their statistical propertie...">Sample</a> class models the interface to a sample of raw observations and their statistical properties.

Member Typedef Documentation
----------------------------

<span id="a4d588f4837a81c163ebd653d88648144" class="anchor"></span>
|                                                                                                                                                                                                                                     |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| typedef std::function&lt;void(<a href="index.html#a9e02cfa261b23b40c9da59cda6ab0dc8" class="el">ValueType</a>)&gt; <a href="index.html#a4d588f4837a81c163ebd653d88648144" class="el">unity::scopes::testing::Sample::Enumerator</a> |

Function signature for enumerating all raw observations.

<span id="a45542150c14b4486c58cb14cca3072e9" class="anchor"></span>
|                                                                                                                                     |
|-------------------------------------------------------------------------------------------------------------------------------------|
| typedef std::size\_t <a href="index.html#a45542150c14b4486c58cb14cca3072e9" class="el">unity::scopes::testing::Sample::SizeType</a> |

Unsigned type describing the size of the sample.

<span id="a9e02cfa261b23b40c9da59cda6ab0dc8" class="anchor"></span>
|                                                                                                                                |
|--------------------------------------------------------------------------------------------------------------------------------|
| typedef double <a href="index.html#a9e02cfa261b23b40c9da59cda6ab0dc8" class="el">unity::scopes::testing::Sample::ValueType</a> |

Floating point type describing an individual observation.

Member Function Documentation
-----------------------------

<span id="a051bdf96e55f8da92bb3829bbf650cf4" class="anchor"></span>
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
<td>virtual void unity::scopes::testing::Sample::enumerate</td>
<td>(</td>
<td>const <a href="index.html#a4d588f4837a81c163ebd653d88648144" class="el">Enumerator</a> &amp; </td>
<td><em>enumerator</em></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Enumerate all raw observations from the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

<span id="aa4e03bd0ca10b2172954b50a3c544667" class="anchor"></span>
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
<td>virtual <a href="index.html#a9e02cfa261b23b40c9da59cda6ab0dc8" class="el">ValueType</a> unity::scopes::testing::Sample::get_mean</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Query the empirical mean of the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

<span id="ab37cab3e43f1a8cbc9955ab6ec5e7e40" class="anchor"></span>
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
<td>virtual <a href="index.html#a45542150c14b4486c58cb14cca3072e9" class="el">SizeType</a> unity::scopes::testing::Sample::get_size</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Query the size of the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

<span id="a646d6b0dca1081f812958c86ce7e8d01" class="anchor"></span>
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
<td>virtual <a href="index.html#a9e02cfa261b23b40c9da59cda6ab0dc8" class="el">ValueType</a> unity::scopes::testing::Sample::get_variance</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Query the empirical variance of the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

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
