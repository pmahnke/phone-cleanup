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

-   Category

Category
========

A set of related results returned by a scope and displayed within a single pane in the Unity dash. [More...](index.html#details)

`#include <unity/scopes/Category.h>`

Inheritance diagram for unity::scopes::Category:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/f70154ec-ce01-4c53-b4f2-6e1712da81b1-api/scopes/cpp/sdk-15.04.1/unity.scopes.Category/classunity_1_1scopes_1_1_category__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

std::string 
<a href="index.html#aa14a4f95af60187f890ef475d0d8cabe" class="el">id</a> () const
 
Get identifier of this Category. More...
 
std::string 
<a href="index.html#a6f11a12253de78d61761b49b45951221" class="el">title</a> () const
 
Get title of this Category. More...
 
std::string 
<a href="index.html#acb98bc96e054fcdf787684cc7d0422ca" class="el">icon</a> () const
 
Get icon of this Category. More...
 
CannedQuery::SCPtr 
<a href="index.html#a88034923f3493c2cfb5500e7aeae35cc" class="el">query</a> () const
 
Query to perform when this category is expanded. More...
 
<a href="../unity.scopes.CategoryRenderer/index.html" class="el">CategoryRenderer</a> const & 
<a href="index.html#a2668bac76f600a009934faa8b7eeea6d" class="el">renderer_template</a> () const
 
Get renderer template of this Category. More...
 
<span id="details"></span>
Detailed Description
--------------------

A set of related results returned by a scope and displayed within a single pane in the Unity dash.

To create a <a href="index.html" class="el" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>, use SearchReplyProxy::register\_category.

See also  
ResultItem

Member Function Documentation
-----------------------------

<span id="acb98bc96e054fcdf787684cc7d0422ca" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Category::icon | (   |     | )   | const |

Get icon of this <a href="index.html" class="el" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category icon.

<span id="aa14a4f95af60187f890ef475d0d8cabe" class="anchor"></span>
|                                         |     |     |     |       |
|-----------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Category::id | (   |     | )   | const |

Get identifier of this <a href="index.html" class="el" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category identifier.

<span id="a88034923f3493c2cfb5500e7aeae35cc" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| CannedQuery::SCPtr unity::scopes::Category::query | (   |     | )   | const |

Query to perform when this category is expanded.

Returns  
The expansion query or nullptr.

<span id="a2668bac76f600a009934faa8b7eeea6d" class="anchor"></span>
|                                                                                                                                          |     |     |     |       |
|------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.CategoryRenderer/index.html" class="el">CategoryRenderer</a> const& unity::scopes::Category::renderer\_template | (   |     | )   | const |

Get renderer template of this <a href="index.html" class="el" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category renderer template.

<span id="a6f11a12253de78d61761b49b45951221" class="anchor"></span>
|                                            |     |     |     |       |
|--------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Category::title | (   |     | )   | const |

Get title of this <a href="index.html" class="el" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category title.

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
