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
-   [unity.scopes.testing.Benchmark](../unity.scopes.testing.Benchmark/index.html) ›

<!-- -->

-   PreviewConfiguration

PreviewConfiguration
====================

The <a href="index.html" class="el" title="The PreviewConfiguration struct constains all options controlling the benchmark of scope preview oper...">PreviewConfiguration</a> struct constains all options controlling the benchmark of scope preview operations. [More...](index.html#details)

`#include <unity/scopes/testing/Benchmark.h>`

<span id="pub-types"></span> Public Types
-----------------------------------------

typedef std::function&lt; std::pair&lt; <a href="../unity.scopes.Result/index.html" class="el">unity::scopes::Result</a>, <a href="../unity.scopes.ActionMetadata/index.html" class="el">unity::scopes::ActionMetadata</a> &gt;) &gt; 
<a href="index.html#a7c4c1946344d6042b189eef172401ee9" class="el">Sampler</a>
 
<span id="pub-attribs"></span> Public Attributes
------------------------------------------------

<a href="index.html#a7c4c1946344d6042b189eef172401ee9" class="el">Sampler</a> 
<a href="index.html#a13297c92c2e62b7c418afaddc01dee91" class="el">sampler</a> {}
 
<a href="../unity.scopes.testing.Benchmark.TrialConfiguration/index.html" class="el">TrialConfiguration</a> 
<a href="index.html#ac447b62ad5c1b1c8e8241deec7bc4349" class="el">trial_configuration</a> {}
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" class="el" title="The PreviewConfiguration struct constains all options controlling the benchmark of scope preview oper...">PreviewConfiguration</a> struct constains all options controlling the benchmark of scope preview operations.

Member Typedef Documentation
----------------------------

<span id="a7c4c1946344d6042b189eef172401ee9" class="anchor"></span>
|                                                                                                                                                                                                                                                                                                                                                                              |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| typedef std::function&lt; std::pair&lt; <a href="../unity.scopes.Result/index.html" class="el">unity::scopes::Result</a>, <a href="../unity.scopes.ActionMetadata/index.html" class="el">unity::scopes::ActionMetadata</a> &gt;) &gt; <a href="index.html#a7c4c1946344d6042b189eef172401ee9" class="el">unity::scopes::testing::Benchmark::PreviewConfiguration::Sampler</a> |

Function signature for choosing a preview configuration.

Member Data Documentation
-------------------------

<span id="a13297c92c2e62b7c418afaddc01dee91" class="anchor"></span>
|                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="index.html#a7c4c1946344d6042b189eef172401ee9" class="el">Sampler</a> unity::scopes::testing::Benchmark::PreviewConfiguration::sampler {} |

The sampling function instance for choosing a preview configuration. Has to be set to an actual instance.

<span id="ac447b62ad5c1b1c8e8241deec7bc4349" class="anchor"></span>
|                                                                                                                                                                                              |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="../unity.scopes.testing.Benchmark.TrialConfiguration/index.html" class="el">TrialConfiguration</a> unity::scopes::testing::Benchmark::PreviewConfiguration::trial\_configuration {} |

fold in trial configuration options into the overall setup.

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
