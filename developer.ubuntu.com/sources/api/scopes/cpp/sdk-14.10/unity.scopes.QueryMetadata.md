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
-   [SDK 14.10](../index.html) ›

<!-- -->

-   QueryMetadata

QueryMetadata
=============

Base class for extra metadata passed to scopes as a part of a request. [More...](index.html#details)

`#include <unity/scopes/QueryMetadata.h>`

Inheritance diagram for unity::scopes::QueryMetadata:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/a6d7dbac-cbe8-4874-b4a6-fcb46f352eb8-api/scopes/cpp/sdk-14.10/unity.scopes.QueryMetadata/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-types"></span> Public Types
-----------------------------------------

enum  
<a href="index.html#a20eb916661728a7d9c00485e28f88701" class="el">ConnectivityStatus</a> { **Unknown**, **Connected**, **Disconnected** }
 
Indicates the internet connectivity status. [More...](index.html#a20eb916661728a7d9c00485e28f88701)
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

std::string 
<a href="index.html#a3ca25150669d96171aec6ab56ef6bb0e" class="el">locale</a> () const
 
Get the locale string. More...
 
std::string 
<a href="index.html#a494f592f3055fba4da6554a6d8fb7c42" class="el">form_factor</a> () const
 
Get the form factor string. More...
 
void 
<a href="index.html#a5b2395aff97cbe1009759de03f270bf3" class="el">set_internet_connectivity</a> (<a href="index.html#a20eb916661728a7d9c00485e28f88701" class="el">ConnectivityStatus</a> connectivity\_status)
 
Set internet connectivity status. More...
 
<a href="index.html#a20eb916661728a7d9c00485e28f88701" class="el">ConnectivityStatus</a> 
<a href="index.html#a3da06f370e53b5e381ec8cf33d8ee191" class="el">internet_connectivity</a> () const
 
Get internet connectivity status. More...
 
<span id="details"></span>
Detailed Description
--------------------

Base class for extra metadata passed to scopes as a part of a request.

Member Enumeration Documentation
--------------------------------

<span id="a20eb916661728a7d9c00485e28f88701" class="anchor"></span>
|                                                                                                                             |
|-----------------------------------------------------------------------------------------------------------------------------|
| enum <a href="index.html#a20eb916661728a7d9c00485e28f88701" class="el">unity::scopes::QueryMetadata::ConnectivityStatus</a> |

Indicates the internet connectivity status.

The `Unknown` enumerator indicates that <a href="index.html#a5b2395aff97cbe1009759de03f270bf3" class="el" title="Set internet connectivity status. ">set_internet_connectivity()</a> has not yet been called, hence the connectivity status is currently unknown.

The `Connected` enumerator simply indicates that we are currently connected to the internet. This does not necessarily mean that a particular host on the internet will be reachable.

The `Disconnected` enumerator indicates that we are currently not connected to the internet. In this state, a scope need not waste any time attempting remote calls, as they will almost certainly fail.

Member Function Documentation
-----------------------------

<span id="a494f592f3055fba4da6554a6d8fb7c42" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::QueryMetadata::form\_factor | (   |     | )   | const |

Get the form factor string.

Returns  
The form factor string

<span id="a3da06f370e53b5e381ec8cf33d8ee191" class="anchor"></span>
|                                                                                                                                                              |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="index.html#a20eb916661728a7d9c00485e28f88701" class="el">QueryMetadata::ConnectivityStatus</a> unity::scopes::QueryMetadata::internet\_connectivity | (   |     | )   | const |

Get internet connectivity status.

Returns  
Enum indicating the internet connectivity status.

<span id="a3ca25150669d96171aec6ab56ef6bb0e" class="anchor"></span>
|                                                  |     |     |     |       |
|--------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::QueryMetadata::locale | (   |     | )   | const |

Get the locale string.

Returns  
The locale string

<span id="a5b2395aff97cbe1009759de03f270bf3" class="anchor"></span>
|                                                                |     |                                                                                           |                        |     |     |
|----------------------------------------------------------------|-----|-------------------------------------------------------------------------------------------|------------------------|-----|-----|
| void unity::scopes::QueryMetadata::set\_internet\_connectivity | (   | <a href="index.html#a20eb916661728a7d9c00485e28f88701" class="el">ConnectivityStatus</a>  | *connectivity\_status* | )   |     |

Set internet connectivity status.

Parameters  
|                      |                                                   |
|----------------------|---------------------------------------------------|
| connectivity\_status | Enum indicating the internet connectivity status. |

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
