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
-   [unity.scopes.testing](../unity.scopes.testing/index.html) ›

<!-- -->

-   StudentsTTest

StudentsTTest
=============

Implements different variants of the Student's T-test (see <http://en.wikipedia.org/wiki/Student's_t-test>) [More...](index.html#details)

`#include <unity/scopes/testing/Statistics.h>`

<span id="nested-classes"></span> Classes
-----------------------------------------

struct  
Result
 
Executing the test returns a set of hypothesis that have to be evaluated at the desired confidence level. More...
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

Result 
one\_sample (const Sample &sample, Sample::ValueType mean, Sample::ValueType std\_dev)
 
one\_sample calculates the Student's T test for one sample and a known mean and std. dev.. More...
 
Result 
two\_independent\_samples (const Sample &sample1, const Sample &sample2)
 
two\_independent\_samples calculates the Student's T test for two samples More...
 
<span id="details"></span>
Detailed Description
--------------------

Implements different variants of the Student's T-test (see <http://en.wikipedia.org/wiki/Student's_t-test>)

<a href="../unity.scopes.testing.OutOfProcessBenchmark/index.html" class="code">unity::scopes::testing::OutOfProcessBenchmark</a> benchmark;

<a href="../unity.scopes.testing.Result/index.html" class="code">unity::scopes::testing::Result</a> search\_result;

<a href="../unity.scopes.ActionMetadata/index.html" class="code">unity::scopes::ActionMetadata</a> meta\_data{default\_locale, default\_form\_factor};

<span class="keyword">static</span> <span class="keyword">const</span> std::size\_t sample\_size{10};

<span class="keyword">static</span> <span class="keyword">const</span> std::chrono::seconds per\_trial\_timeout{1};

<a href="../unity.scopes.testing.Benchmark.PreviewConfiguration/index.html" class="code">unity::scopes::testing::Benchmark::PreviewConfiguration</a> config

{

\[search\_result, meta\_data\]() { <span class="keywordflow">return</span> std::make\_pair(search\_result, meta\_data); },

{

sample\_size,

per\_trial\_timeout

}

};

<span class="keyword">auto</span> result = benchmark.<a href="../unity.scopes.testing.OutOfProcessBenchmark/index.html#a397be9ae5eaca3d6ca96fa2957498c86" class="code">for_preview</a>(scope, config);

<span class="keyword">auto</span> test\_result = <a href="index.html" class="code">unity::scopes::testing::StudentsTTest</a>().<a href="index.html#aaf584b159766a0a0e605e8365f87107f" class="code">one_sample</a>(

reference\_preview\_performance,

result);

EXPECT\_EQ(unity::scopes::testing::HypothesisStatus::not\_rejected,

test\_result.sample\_mean\_is\_eq\_to\_reference(0.05));

EXPECT\_EQ(unity::scopes::testing::HypothesisStatus::not\_rejected,

test\_result.sample\_mean\_is\_ge\_than\_reference(0.05));

EXPECT\_EQ(unity::scopes::testing::HypothesisStatus::rejected,

test\_result.sample\_mean\_is\_le\_than\_reference(0.05));

Member Function Documentation
-----------------------------

<span id="aaf584b159766a0a0e605e8365f87107f" class="anchor"></span>
|                                                                                                  |     |                                                                                                                         |             |
|--------------------------------------------------------------------------------------------------|-----|-------------------------------------------------------------------------------------------------------------------------|-------------|
| unity::scopes::testing::StudentsTTest::Result unity::scopes::testing::StudentsTTest::one\_sample | (   | const <a href="../unity.scopes.testing.Sample/index.html" class="el">Sample</a> &                                       | *sample*,   |
|                                                                                                  |     | <a href="../unity.scopes.testing.Sample/index.html#a9e02cfa261b23b40c9da59cda6ab0dc8" class="el">Sample::ValueType</a>  | *mean*,     |
|                                                                                                  |     | <a href="../unity.scopes.testing.Sample/index.html#a9e02cfa261b23b40c9da59cda6ab0dc8" class="el">Sample::ValueType</a>  | *std\_dev*  |
|                                                                                                  | )   |                                                                                                                         |             |

one\_sample calculates the Student's T test for one sample and a known mean and std. dev..

Parameters  
|          |                                                                                                                                                                                                       |
|----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| sample   | <a href="../unity.scopes.testing.Sample/index.html" class="el" title="The Sample class models the interface to a sample of raw observations and their statistical propertie...">Sample</a> of values. |
| mean     | The known mean of the underlying distribution                                                                                                                                                         |
| std\_dev | The known std. dev. of the underlying distribution                                                                                                                                                    |

<!-- -->

Returns  

<span id="a09c7d3760d9aef4fb50131265170cbac" class="anchor"></span>
|                                                                                                                |     |                                                                                    |            |
|----------------------------------------------------------------------------------------------------------------|-----|------------------------------------------------------------------------------------|------------|
| unity::scopes::testing::StudentsTTest::Result unity::scopes::testing::StudentsTTest::two\_independent\_samples | (   | const <a href="../unity.scopes.testing.Sample/index.html" class="el">Sample</a> &  | *sample1*, |
|                                                                                                                |     | const <a href="../unity.scopes.testing.Sample/index.html" class="el">Sample</a> &  | *sample2*  |
|                                                                                                                | )   |                                                                                    |            |

two\_independent\_samples calculates the Student's T test for two samples

Parameters  
|         |                   |
|---------|-------------------|
| sample1 | The first sample  |
| sample2 | The second sample |

<!-- -->

Returns  
An instance of Result.

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
