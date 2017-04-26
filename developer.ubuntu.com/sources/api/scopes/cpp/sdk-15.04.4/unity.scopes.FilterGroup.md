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

-   FilterGroup

FilterGroup
===========

Groups several filters into an expandable widget in the UI. [More...](index.html#details)

`#include <unity/scopes/FilterGroup.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

std::string 
<a href="index.html#a0a42c7ad65a4115dfdfbdf2aa32a6ca4" class="el">id</a> () const
 
Get the id of the widget group. More...
 
std::string 
<a href="index.html#aef99f5048cc090da4b96f68c39020f44" class="el">label</a> () const
 
Get the label of the widget group. More...
 
<span id="pub-static-methods"></span> Static Public Member Functions
--------------------------------------------------------------------

static FilterGroup::SCPtr 
<a href="index.html#a8438bee537e5b4624875233f9e6ad4a9" class="el">create</a> (std::string const &<a href="index.html#a0a42c7ad65a4115dfdfbdf2aa32a6ca4" class="el">id</a>, std::string const &<a href="index.html#aef99f5048cc090da4b96f68c39020f44" class="el">label</a>)
 
Create a WidgetGroup. More...
 
<span id="details"></span>
Detailed Description
--------------------

Groups several filters into an expandable widget in the UI.

Member Function Documentation
-----------------------------

<span id="a8438bee537e5b4624875233f9e6ad4a9" class="anchor"></span>
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
<td>FilterGroup::SCPtr unity::scopes::FilterGroup::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>label</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Create a WidgetGroup.

Returns  
An instance of WidgetGroup.

<span id="a0a42c7ad65a4115dfdfbdf2aa32a6ca4" class="anchor"></span>
|                                            |     |     |     |       |
|--------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::FilterGroup::id | (   |     | )   | const |

Get the id of the widget group.

Returns  
The identifier.

<span id="aef99f5048cc090da4b96f68c39020f44" class="anchor"></span>
|                                               |     |     |     |       |
|-----------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::FilterGroup::label | (   |     | )   | const |

Get the label of the widget group.

Returns  
The label.

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
