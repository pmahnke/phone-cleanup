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

-   ChildScope

ChildScope
==========

A container for details about an aggregator's child scope. [More...](index.html#details)

`#include <unity/scopes/ChildScope.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#a53d12d33536c16052f7a086e7d71e0de" class="el">ChildScope</a> (std::string const &<a href="index.html#a38d1886c0459736186d6b9be548c75f5" class="el">id</a>, <a href="../unity.scopes.ScopeMetadata/index.html" class="el">ScopeMetadata</a> const &<a href="index.html#aade25bfd5f842dacbfc068d2ede3818e" class="el">metadata</a>, bool <a href="index.html#aec9331d1f603d0a8eb77fafa59e1e829" class="el">enabled</a>=true, std::set&lt; std::string &gt; const &<a href="index.html#a728e308053d201dfb321f2ba49e4cdc8" class="el">keywords</a>={})
 
Construct a new ChildScope with the specified id, metadata, enabled state and keywords list. More...
 
<span id="pub-attribs"></span> Public Attributes
------------------------------------------------

<span id="a38d1886c0459736186d6b9be548c75f5" class="anchor"></span> std::string 
<a href="index.html#a38d1886c0459736186d6b9be548c75f5" class="el">id</a>
 
The scope id of this child scope.
 
<span id="aade25bfd5f842dacbfc068d2ede3818e" class="anchor"></span> <a href="../unity.scopes.ScopeMetadata/index.html" class="el">ScopeMetadata</a> 
<a href="index.html#aade25bfd5f842dacbfc068d2ede3818e" class="el">metadata</a>
 
The scope metadata of this child scope.
 
<span id="aec9331d1f603d0a8eb77fafa59e1e829" class="anchor"></span> bool 
<a href="index.html#aec9331d1f603d0a8eb77fafa59e1e829" class="el">enabled</a>
 
Whether this child scope should be aggregated.
 
<span id="a728e308053d201dfb321f2ba49e4cdc8" class="anchor"></span> std::set&lt; std::string &gt; 
<a href="index.html#a728e308053d201dfb321f2ba49e4cdc8" class="el">keywords</a>
 
The list of keywords used to aggregate this scope (if any).
 
<span id="details"></span>
Detailed Description
--------------------

A container for details about an aggregator's child scope.

Constructor & Destructor Documentation
--------------------------------------

<span id="a53d12d33536c16052f7a086e7d71e0de" class="anchor"></span>
|                                       |     |                                                                                          |                     |
|---------------------------------------|-----|------------------------------------------------------------------------------------------|---------------------|
| unity::scopes::ChildScope::ChildScope | (   | std::string const &                                                                      | *id*,               |
|                                       |     | <a href="../unity.scopes.ScopeMetadata/index.html" class="el">ScopeMetadata</a> const &  | *metadata*,         |
|                                       |     | bool                                                                                     | *enabled* = `true`, |
|                                       |     | std::set&lt; std::string &gt; const &                                                    | *keywords* = `{}`   |
|                                       | )   |                                                                                          |                     |

Construct a new <a href="index.html" class="el" title="A container for details about an aggregator&#39;s child scope. ">ChildScope</a> with the specified id, metadata, enabled state and keywords list.

Parameters  
|          |                                                             |
|----------|-------------------------------------------------------------|
| id       | The scope id of this child scope.                           |
| metadata | The scope metadata of this child scope.                     |
| enabled  | Whether this child scope should be aggregated.              |
| keywords | The list of keywords used to aggregate this scope (if any). |

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
