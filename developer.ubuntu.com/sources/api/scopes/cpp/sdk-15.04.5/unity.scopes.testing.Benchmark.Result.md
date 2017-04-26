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
-   [SDK 15.04.5](../index.html) ›
-   [unity.scopes.testing.Benchmark](../unity.scopes.testing.Benchmark/index.html) ›

<!-- -->

-   Result

Result
======

The <a href="index.html" class="el" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a> struct encapsulates all of the result gathered from one individual benchmark run consisting of multiple independent trials. [More...](index.html#details)

`#include <unity/scopes/testing/Benchmark.h>`

<span id="nested-classes"></span> Classes
-----------------------------------------

struct  
Timing
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

void 
<a href="index.html#a6a5b4c13c5577319208b16f2fc6f376b" class="el">load_from</a> (std::istream &in)
 
load\_from restores a result from the given input stream. More...
 
void 
<a href="index.html#affa8a2fa514327d6c776bb2524564683" class="el">save_to</a> (std::ostream &out)
 
save\_to stores a result to the given output stream. More...
 
void 
<a href="index.html#a7e39e38d5459491afcad135dfc085f20" class="el">load_from_xml</a> (std::istream &in)
 
load\_from\_xml restores a result stored as xml from the given input stream. More...
 
void 
<a href="index.html#a287d480be8dd59a705ad6d6608cb3abd" class="el">save_to_xml</a> (std::ostream &out)
 
save\_to\_xml stores a result as xml to the given output stream. More...
 
<span id="pub-attribs"></span> Public Attributes
------------------------------------------------

std::size\_t 
<a href="index.html#af4afaf13e8274b469e238169e03f6709" class="el">sample_size</a>
 
<span id="a888340f628b36ebfe7b4df0f2dd93593" class="anchor"></span> unity::scopes::testing::Benchmark::Result::Timing 
timing
 
Runtime-specific sample data.
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" class="el" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a> struct encapsulates all of the result gathered from one individual benchmark run consisting of multiple independent trials.

Member Function Documentation
-----------------------------

<span id="a6a5b4c13c5577319208b16f2fc6f376b" class="anchor"></span>
|                                                            |     |                 |      |     |     |
|------------------------------------------------------------|-----|-----------------|------|-----|-----|
| void unity::scopes::testing::Benchmark::Result::load\_from | (   | std::istream &  | *in* | )   |     |

load\_from restores a result from the given input stream.

Exceptions  
|                     |                    |
|---------------------|--------------------|
| std::runtime\_error | in case of issues. |

<!-- -->

Parameters  
|     |                          |
|-----|--------------------------|
| in  | The stream to read from. |

<span id="a7e39e38d5459491afcad135dfc085f20" class="anchor"></span>
|                                                                 |     |                 |      |     |     |
|-----------------------------------------------------------------|-----|-----------------|------|-----|-----|
| void unity::scopes::testing::Benchmark::Result::load\_from\_xml | (   | std::istream &  | *in* | )   |     |

load\_from\_xml restores a result stored as xml from the given input stream.

Exceptions  
|                     |                    |
|---------------------|--------------------|
| std::runtime\_error | in case of issues. |

<!-- -->

Parameters  
|     |                          |
|-----|--------------------------|
| in  | The stream to read from. |

<span id="affa8a2fa514327d6c776bb2524564683" class="anchor"></span>
|                                                          |     |                 |       |     |     |
|----------------------------------------------------------|-----|-----------------|-------|-----|-----|
| void unity::scopes::testing::Benchmark::Result::save\_to | (   | std::ostream &  | *out* | )   |     |

save\_to stores a result to the given output stream.

Exceptions  
|                     |                    |
|---------------------|--------------------|
| std::runtime\_error | in case of issues. |

<!-- -->

Parameters  
|     |                         |
|-----|-------------------------|
| out | The stream to write to. |

<span id="a287d480be8dd59a705ad6d6608cb3abd" class="anchor"></span>
|                                                               |     |                 |       |     |     |
|---------------------------------------------------------------|-----|-----------------|-------|-----|-----|
| void unity::scopes::testing::Benchmark::Result::save\_to\_xml | (   | std::ostream &  | *out* | )   |     |

save\_to\_xml stores a result as xml to the given output stream.

Exceptions  
|                     |                    |
|---------------------|--------------------|
| std::runtime\_error | in case of issues. |

<!-- -->

Parameters  
|     |                         |
|-----|-------------------------|
| out | The stream to write to. |

Member Data Documentation
-------------------------

<span id="af4afaf13e8274b469e238169e03f6709" class="anchor"></span>
|                                                                      |
|----------------------------------------------------------------------|
| std::size\_t unity::scopes::testing::Benchmark::Result::sample\_size |

Size of the sample, corresponds to number of trials.

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
