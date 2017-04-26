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
-   [SDK 15.04.1](../index.html) ›

<!-- -->

-   FilterState

FilterState
===========

Captures state of multiple filters. [More...](index.html#details)

`#include <unity/scopes/FilterState.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

<span id="a766de68bf8b5c99774dcd2f2e7e2ed39" class="anchor"></span>  
<a href="index.html#a766de68bf8b5c99774dcd2f2e7e2ed39" class="el">FilterState</a> ()
 
Constructs a an empty filter state instance.
 
bool 
<a href="index.html#a7c624fcc70cf767fdb6d6dc54e8a5015" class="el">has_filter</a> (std::string const &id) const
 
Check if state for the given filter has been stored. More...
 
void 
<a href="index.html#a15c5759e79b6c75fcdd2cf802b6ffac2" class="el">remove</a> (std::string const &id)
 
Removes the state for a specific filter. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a0680e593c3b4383c11c01e3950eab393" class="anchor"></span>  
**FilterState** (<a href="index.html" class="el">FilterState</a> const &other)
 
<span id="a4b11a81ee8f40cf5b86269b9eec0de44" class="anchor"></span>  
**FilterState** (<a href="index.html" class="el">FilterState</a> &&)
 
<span id="ae6a5679d3e2c8a202648bd66431071e1" class="anchor"></span> <a href="index.html" class="el">FilterState</a> & 
**operator=** (<a href="index.html" class="el">FilterState</a> const &other)
 
<span id="ae05c001c976bf55c0bada0de16760933" class="anchor"></span> <a href="index.html" class="el">FilterState</a> & 
**operator=** (<a href="index.html" class="el">FilterState</a> &&other)
 
<span id="details"></span>
Detailed Description
--------------------

Captures state of multiple filters.

State can be examined by passing an instance of <a href="index.html" class="el" title="Captures state of multiple filters. ">FilterState</a> to appropriate methods of filters (<a href="../unity.scopes.FilterBase/index.html" class="el" title="Base class for all implementations of filters. ">FilterBase</a> implementations).

Member Function Documentation
-----------------------------

<span id="a7c624fcc70cf767fdb6d6dc54e8a5015" class="anchor"></span>
|                                              |     |                      |      |     |       |
|----------------------------------------------|-----|----------------------|------|-----|-------|
| bool unity::scopes::FilterState::has\_filter | (   | std::string const &  | *id* | )   | const |

Check if state for the given filter has been stored.

Returns  
True if state for a filter with the given ID is present; false otherwise.

<span id="a15c5759e79b6c75fcdd2cf802b6ffac2" class="anchor"></span>
|                                         |     |                      |      |     |     |
|-----------------------------------------|-----|----------------------|------|-----|-----|
| void unity::scopes::FilterState::remove | (   | std::string const &  | *id* | )   |     |

Removes the state for a specific filter.

Parameters  
|     |                                       |
|-----|---------------------------------------|
| id  | The identity of the filter to remove. |

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
