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
-   [unity.scopes.qt](../unity.scopes.qt/index.html) ›

<!-- -->

-   QVariantBuilder

QVariantBuilder
===============

Helper class for creating and populating QVariant containers. [More...](index.html#details)

`#include <unity/scopes/qt/QVariantBuilder.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

void 
<a href="index.html#a379142f075b92183acf729798ebc5794" class="el">add_tuple</a> (std::initializer\_list&lt; QPair&lt; QString, QVariant &gt;&gt; const &tuple)
 
Adds a tuple of key-value pairs to an array. More...
 
void 
<a href="index.html#a0fd901e8b0b1c7f6e78a993fd445b55c" class="el">add_tuple</a> (QVector&lt; QPair&lt; QString, QVariant &gt;&gt; const &tuple)
 
Adds a tuple of key-value pairs to an array. More...
 
QVariant 
<a href="index.html#aaf11b857f040eb86cda244190166ee5b" class="el">end</a> ()
 
Retrieves a completed variant. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a474722a60f44d9f87a179886a6d5e1d1" class="anchor"></span>  
**QVariantBuilder** (<a href="index.html" class="el">QVariantBuilder</a> const &other)
 
<span id="ab62b7a962a21a0b8daf4f26dd3ed9eff" class="anchor"></span>  
**QVariantBuilder** (<a href="index.html" class="el">QVariantBuilder</a> &&other)
 
<span id="a518e03d274974a1a9c1ebfd16b442e52" class="anchor"></span> <a href="index.html" class="el">QVariantBuilder</a> & 
**operator=** (<a href="index.html" class="el">QVariantBuilder</a> const &other)
 
<span id="aa6b5bad450dd93f51625562f985df799" class="anchor"></span> <a href="index.html" class="el">QVariantBuilder</a> & 
**operator=** (<a href="index.html" class="el">QVariantBuilder</a> &&other)
 
<span id="details"></span>
Detailed Description
--------------------

Helper class for creating and populating QVariant containers.

The main purpose of this class is to ease creation of variant containers needed for <a href="../unity.scopes.qt.QPreviewWidget/index.html" class="el" title="Widget used in Preview. ">QPreviewWidget</a> instances or any other classes that require non-trivial variant definitions.

For example, the value of the "rating" key of the following JSON template

{

<span class="stringliteral">"type"</span>: <span class="stringliteral">"reviews"</span>,

...

<span class="stringliteral">"reviews"</span>: \[{<span class="stringliteral">"rating"</span>: null, <span class="stringliteral">"review"</span>: null, <span class="stringliteral">"author"</span>: null}\]

}

can be created with <a href="index.html" class="el" title="Helper class for creating and populating QVariant containers. ">QVariantBuilder</a> as follows:

VariantBuilder builder;

builder.add\_tuple({{<span class="stringliteral">"rating"</span>, QVariant()}, {<span class="stringliteral">"review"</span>, QVariant()}, {<span class="stringliteral">"author"</span>, QVariant()}});

Member Function Documentation
-----------------------------

<span id="a379142f075b92183acf729798ebc5794" class="anchor"></span>
|                                  |     |                                                                          |         |     |     |
|----------------------------------|-----|--------------------------------------------------------------------------|---------|-----|-----|
| void QVariantBuilder::add\_tuple | (   | std::initializer\_list&lt; QPair&lt; QString, QVariant &gt;&gt; const &  | *tuple* | )   |     |

Adds a tuple of key-value pairs to an array.

It can be used multiple times to create an array of tuples, for example:

\[{<span class="stringliteral">"a"</span>: 1, <span class="stringliteral">"b"</span>: 2}, {<span class="stringliteral">"c"</span>: 2, <span class="stringliteral">"d"</span> : 3}\]

can be created with:

QVariantBuilder builder;

builder.add\_tuple({{<span class="stringliteral">"a"</span>, QVariant(1)}, {<span class="stringliteral">"b"</span>, QVariant(2)}});

builder.add\_tuple({{<span class="stringliteral">"c"</span>, QVariant(2)}, {<span class="stringliteral">"d"</span>, QVariant(3)}});

<span id="a0fd901e8b0b1c7f6e78a993fd445b55c" class="anchor"></span>
|                                  |     |                                                           |         |     |     |
|----------------------------------|-----|-----------------------------------------------------------|---------|-----|-----|
| void QVariantBuilder::add\_tuple | (   | QVector&lt; QPair&lt; QString, QVariant &gt;&gt; const &  | *tuple* | )   |     |

Adds a tuple of key-value pairs to an array.

This is an overloaded version of add\_tuple that accepts `QVector` instead of `std::initializer_list`.

<span id="aaf11b857f040eb86cda244190166ee5b" class="anchor"></span>
|                               |     |     |     |     |
|-------------------------------|-----|-----|-----|-----|
| QVariant QVariantBuilder::end | (   |     | )   |     |

Retrieves a completed variant.

Returns the completed variant and resets this builder, so the builder can be re-used.

Returns  
The completed variant.

<!-- -->

Exceptions  
|                       |                                         |
|-----------------------|-----------------------------------------|
| unity::LogicException | if the builder does not hold a variant. |

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
