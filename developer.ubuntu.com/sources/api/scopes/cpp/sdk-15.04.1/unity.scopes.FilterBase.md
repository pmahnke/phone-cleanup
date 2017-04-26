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

-   FilterBase

FilterBase
==========

Base class for all implementations of filters. [More...](index.html#details)

`#include <unity/scopes/FilterBase.h>`

Inheritance diagram for unity::scopes::FilterBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/79d83ef0-08c3-4012-b25f-af2279444a40-api/scopes/cpp/sdk-15.04.1/unity.scopes.FilterBase/classunity_1_1scopes_1_1_filter_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-types"></span> Public Types
-----------------------------------------

enum  
<a href="index.html#ab9e833d5e4029fed745d15ba63715159" class="el">DisplayHints</a> { <a href="index.html#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f" class="el">Default</a> = 0, <a href="index.html#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56" class="el">Primary</a> = 1 }
 
Display hints for the Shell UI. [More...](index.html#ab9e833d5e4029fed745d15ba63715159)
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

void 
<a href="index.html#ab4ab1b600ce3967dc50255e736c6d02e" class="el">set_display_hints</a> (int hints)
 
Sets display hints for the Shell UI. More...
 
int 
<a href="index.html#a8f20819591155edaab29d535c5c4c261" class="el">display_hints</a> () const
 
Get display hints of this filter. More...
 
std::string 
<a href="index.html#a1f2d96647b23af77b1ff1cffc80f3868" class="el">id</a> () const
 
Get the identifier of this filter. More...
 
std::string 
<a href="index.html#aadc7344c951961331dcbe67149d56c78" class="el">filter_type</a> () const
 
Get the type name of this filter. More...
 
<span id="details"></span>
Detailed Description
--------------------

Base class for all implementations of filters.

All implementations of <a href="index.html" class="el" title="Base class for all implementations of filters. ">FilterBase</a> define the "look" of a filter in the UI and do not hold any state information. The actual state of a filters is kept by a <a href="../unity.scopes.FilterState/index.html" class="el" title="Captures state of multiple filters. ">FilterState</a> object.

Member Enumeration Documentation
--------------------------------

<span id="ab9e833d5e4029fed745d15ba63715159" class="anchor"></span>
|                                                                                                                    |
|--------------------------------------------------------------------------------------------------------------------|
| enum <a href="index.html#ab9e833d5e4029fed745d15ba63715159" class="el">unity::scopes::FilterBase::DisplayHints</a> |

Display hints for the Shell UI.

Enumerator
<span id="ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f" class="anchor"></span>Default 
Default value (no hint)

<span id="ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56" class="anchor"></span>Primary 
Display this filter as a primary navigation, if possible. Currently only the <a href="../unity.scopes.OptionSelectorFilter/index.html" class="el" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a> can act as primary navigation.

Member Function Documentation
-----------------------------

<span id="a8f20819591155edaab29d535c5c4c261" class="anchor"></span>
|                                               |     |     |     |       |
|-----------------------------------------------|-----|-----|-----|-------|
| int unity::scopes::FilterBase::display\_hints | (   |     | )   | const |

Get display hints of this filter.

Returns  
Display hints flags.

<span id="aadc7344c951961331dcbe67149d56c78" class="anchor"></span>
|                                                     |     |     |     |       |
|-----------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::FilterBase::filter\_type | (   |     | )   | const |

Get the type name of this filter.

Returns  
The filter type string.

<span id="a1f2d96647b23af77b1ff1cffc80f3868" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::FilterBase::id | (   |     | )   | const |

Get the identifier of this filter.

Returns  
The filter id.

<span id="ab4ab1b600ce3967dc50255e736c6d02e" class="anchor"></span>
|                                                     |     |      |         |     |     |
|-----------------------------------------------------|-----|------|---------|-----|-----|
| void unity::scopes::FilterBase::set\_display\_hints | (   | int  | *hints* | )   |     |

Sets display hints for the Shell UI.

Parameters  
|       |                                                |
|-------|------------------------------------------------|
| hints | A combination of DisplayHints for this filter. |

<!-- -->

Exceptions  
|                                 |                                                             |
|---------------------------------|-------------------------------------------------------------|
| unity::InvalidArgumentException | if given hints value is unsupported by current filter type. |

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
