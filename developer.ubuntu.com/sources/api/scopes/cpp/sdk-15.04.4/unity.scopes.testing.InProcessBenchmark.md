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
-   [unity.scopes.testing](../unity.scopes.testing/index.html) ›

<!-- -->

-   InProcessBenchmark

InProcessBenchmark
==================

The <a href="index.html" class="el" title="The InProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in the same process. ">InProcessBenchmark</a> class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in the same process. [More...](index.html#details)

`#include <unity/scopes/testing/InProcessBenchmark.h>`

Inheritance diagram for unity::scopes::testing::InProcessBenchmark:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/32fd2e51-4bd8-419c-a19c-14f618a039a6-api/scopes/cpp/sdk-15.04.4/unity.scopes.testing.InProcessBenchmark/classunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual <a href="../unity.scopes.testing.Benchmark.Result/index.html" class="el">Result</a> 
<a href="index.html#a72460e26d0aa98ae7091f634d0089aa9" class="el">for_query</a> (const std::shared\_ptr&lt; <a href="../unity.scopes.ScopeBase/index.html" class="el">unity::scopes::ScopeBase</a> &gt; &scope, <a href="../unity.scopes.testing.Benchmark.QueryConfiguration/index.html" class="el">QueryConfiguration</a> configuration) override
 
for\_query executes a benchmark to measure the scope's query performance. More...
 
virtual <a href="../unity.scopes.testing.Benchmark.Result/index.html" class="el">Result</a> 
<a href="index.html#a8823d30698cba5f6a03c4989e7356195" class="el">for_preview</a> (const std::shared\_ptr&lt; <a href="../unity.scopes.ScopeBase/index.html" class="el">unity::scopes::ScopeBase</a> &gt; &scope, <a href="../unity.scopes.testing.Benchmark.PreviewConfiguration/index.html" class="el">PreviewConfiguration</a> preview\_configuration) override
 
for\_preview executes a benchmark to measure the scope's preview performance. More...
 
virtual <a href="../unity.scopes.testing.Benchmark.Result/index.html" class="el">Result</a> 
<a href="index.html#adc815bde331263487183e38836811610" class="el">for_activation</a> (const std::shared\_ptr&lt; <a href="../unity.scopes.ScopeBase/index.html" class="el">unity::scopes::ScopeBase</a> &gt; &scope, <a href="../unity.scopes.testing.Benchmark.ActivationConfiguration/index.html" class="el">ActivationConfiguration</a> activation\_configuration) override
 
for\_preview executes a benchmark to measure the scope's activation performance. More...
 
virtual <a href="../unity.scopes.testing.Benchmark.Result/index.html" class="el">Result</a> 
<a href="index.html#a570e17bc7fbb0c7aafb3ed720a5fc35c" class="el">for_action</a> (const std::shared\_ptr&lt; <a href="../unity.scopes.ScopeBase/index.html" class="el">unity::scopes::ScopeBase</a> &gt; &scope, <a href="../unity.scopes.testing.Benchmark.ActionConfiguration/index.html" class="el">ActionConfiguration</a> activation\_configuration) override
 
for\_preview executes a benchmark to measure the scope's action activation performance. More...
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" class="el" title="The InProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in the same process. ">InProcessBenchmark</a> class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in the same process.

<a href="index.html" class="code">unity::scopes::testing::InProcessBenchmark</a> benchmark;

unity::scopes::Query query{scope\_id};

query.set\_query\_string(scope\_query\_string);

<a href="../unity.scopes.SearchMetadata/index.html" class="code">unity::scopes::SearchMetadata</a> meta\_data{default\_locale, default\_form\_factor};

<a href="../unity.scopes.testing.Benchmark.QueryConfiguration/index.html" class="code">unity::scopes::testing::Benchmark::QueryConfiguration</a> config;

config.<a href="../unity.scopes.testing.Benchmark.QueryConfiguration/index.html#a164536c278d29914d24fdbca3a3fa4a8" class="code">sampler</a> = \[query, meta\_data\]()

{

<span class="keywordflow">return</span> std::make\_pair(query, meta\_data);

};

<span class="keyword">auto</span> result = benchmark.<a href="index.html#a72460e26d0aa98ae7091f634d0089aa9" class="code">for_query</a>(scope, config);

Member Function Documentation
-----------------------------

<span id="a570e17bc7fbb0c7aafb3ed720a5fc35c" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.testing.Benchmark.Result/index.html" class="el">Result</a> unity::scopes::testing::InProcessBenchmark::for_action</td>
<td>(</td>
<td>const std::shared_ptr&lt; <a href="../unity.scopes.ScopeBase/index.html" class="el">unity::scopes::ScopeBase</a> &gt; &amp; </td>
<td><em>scope</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.testing.Benchmark.ActionConfiguration/index.html" class="el">ActionConfiguration</a> </td>
<td><em>configuration</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

for\_preview executes a benchmark to measure the scope's action activation performance.

Exceptions  
|                     |                              |
|---------------------|------------------------------|
| std::runtime\_error | in case of timeouts.         |
| std::logic\_error   | in case of misconfiguration. |

<!-- -->

Parameters  
|               |                                     |
|---------------|-------------------------------------|
| scope         | The scope instance to benchmark.    |
| configuration | Options controlling the experiment. |

<!-- -->

Returns  
An instance of <a href="../unity.scopes.testing.Result/index.html" class="el" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>.

Implements <a href="../unity.scopes.testing.Benchmark/index.html#ad31b1781960e3edd0018a9cf8df4a506" class="el">unity::scopes::testing::Benchmark</a>.

Reimplemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark/index.html#a47874911c026c201699d8fce0443e4bb" class="el">unity::scopes::testing::OutOfProcessBenchmark</a>.

<span id="adc815bde331263487183e38836811610" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.testing.Benchmark.Result/index.html" class="el">Result</a> unity::scopes::testing::InProcessBenchmark::for_activation</td>
<td>(</td>
<td>const std::shared_ptr&lt; <a href="../unity.scopes.ScopeBase/index.html" class="el">unity::scopes::ScopeBase</a> &gt; &amp; </td>
<td><em>scope</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.testing.Benchmark.ActivationConfiguration/index.html" class="el">ActivationConfiguration</a> </td>
<td><em>configuration</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

for\_preview executes a benchmark to measure the scope's activation performance.

Exceptions  
|                     |                              |
|---------------------|------------------------------|
| std::runtime\_error | in case of timeouts.         |
| std::logic\_error   | in case of misconfiguration. |

<!-- -->

Parameters  
|               |                                     |
|---------------|-------------------------------------|
| scope         | The scope instance to benchmark.    |
| configuration | Options controlling the experiment. |

<!-- -->

Returns  
An instance of <a href="../unity.scopes.testing.Result/index.html" class="el" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>.

Implements <a href="../unity.scopes.testing.Benchmark/index.html#a531fbb8fd2259337123495bf7de0bd4a" class="el">unity::scopes::testing::Benchmark</a>.

Reimplemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark/index.html#ad918f6c89543eabb3492eb834712e38f" class="el">unity::scopes::testing::OutOfProcessBenchmark</a>.

<span id="a8823d30698cba5f6a03c4989e7356195" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.testing.Benchmark.Result/index.html" class="el">Result</a> unity::scopes::testing::InProcessBenchmark::for_preview</td>
<td>(</td>
<td>const std::shared_ptr&lt; <a href="../unity.scopes.ScopeBase/index.html" class="el">unity::scopes::ScopeBase</a> &gt; &amp; </td>
<td><em>scope</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.testing.Benchmark.PreviewConfiguration/index.html" class="el">PreviewConfiguration</a> </td>
<td><em>configuration</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

for\_preview executes a benchmark to measure the scope's preview performance.

Exceptions  
|                     |                              |
|---------------------|------------------------------|
| std::runtime\_error | in case of timeouts.         |
| std::logic\_error   | in case of misconfiguration. |

<!-- -->

Parameters  
|               |                                     |
|---------------|-------------------------------------|
| scope         | The scope instance to benchmark.    |
| configuration | Options controlling the experiment. |

<!-- -->

Returns  
An instance of <a href="../unity.scopes.testing.Result/index.html" class="el" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>.

Implements <a href="../unity.scopes.testing.Benchmark/index.html#a37da073840cfbeb22ed20c2d4631b7ff" class="el">unity::scopes::testing::Benchmark</a>.

Reimplemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark/index.html#a397be9ae5eaca3d6ca96fa2957498c86" class="el">unity::scopes::testing::OutOfProcessBenchmark</a>.

<span id="a72460e26d0aa98ae7091f634d0089aa9" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.testing.Benchmark.Result/index.html" class="el">Result</a> unity::scopes::testing::InProcessBenchmark::for_query</td>
<td>(</td>
<td>const std::shared_ptr&lt; <a href="../unity.scopes.ScopeBase/index.html" class="el">unity::scopes::ScopeBase</a> &gt; &amp; </td>
<td><em>scope</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.testing.Benchmark.QueryConfiguration/index.html" class="el">QueryConfiguration</a> </td>
<td><em>configuration</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

for\_query executes a benchmark to measure the scope's query performance.

Exceptions  
|                     |                              |
|---------------------|------------------------------|
| std::runtime\_error | in case of timeouts.         |
| std::logic\_error   | in case of misconfiguration. |

<!-- -->

Parameters  
|               |                                     |
|---------------|-------------------------------------|
| scope         | The scope instance to benchmark.    |
| configuration | Options controlling the experiment. |

<!-- -->

Returns  
An instance of <a href="../unity.scopes.testing.Result/index.html" class="el" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>.

Implements <a href="../unity.scopes.testing.Benchmark/index.html#ad815c88ce0d76e4a6abc82438237e987" class="el">unity::scopes::testing::Benchmark</a>.

Reimplemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark/index.html#a530a08db775c38ea13478a3d8e1c5bbc" class="el">unity::scopes::testing::OutOfProcessBenchmark</a>.

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
