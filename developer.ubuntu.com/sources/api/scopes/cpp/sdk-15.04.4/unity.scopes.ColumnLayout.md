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

<!-- -->

-   ColumnLayout

ColumnLayout
============

Defines a layout for preview widgets with given column setup. [More...](index.html#details)

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#ac93fd7c6681f2013b4dcf2ed16f95401" class="el">ColumnLayout</a> (int num\_of\_columns)
 
Creates a layout definition that expects num\_of\_columns columns to be added with ColumnLayout::add\_column. More...
 
void 
<a href="index.html#a0a8db9f2725f9c56f8639c55412d931d" class="el">add_column</a> (std::vector&lt; std::string &gt; widget\_ids)
 
Adds a new column and assigns widgets to it. More...
 
int 
<a href="index.html#abd5129b6d56ad2aaaeb4f454f13176dd" class="el">size</a> () const noexcept
 
Get the current number of columns in this layout. More...
 
int 
<a href="index.html#a3213620bbddcab29eb32a2eeff2bb8dd" class="el">number_of_columns</a> () const noexcept
 
Get the number of columns expected by this layout as specified in the constructor. More...
 
std::vector&lt; std::string &gt; 
<a href="index.html#a7457b565bd76d573f40241450a1f839f" class="el">column</a> (int index) const
 
Retrieve the list of widgets for given column. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="af25196f2f8669562ea6e152f795a622e" class="anchor"></span>  
**ColumnLayout** (<a href="index.html" class="el">ColumnLayout</a> const &other)
 
<span id="a90afaddfd9755111f8597ea1eb52a848" class="anchor"></span>  
**ColumnLayout** (<a href="index.html" class="el">ColumnLayout</a> &&)
 
<span id="a79e1e48d41d2cd488c54fa530dbea61c" class="anchor"></span> <a href="index.html" class="el">ColumnLayout</a> & 
**operator=** (<a href="index.html" class="el">ColumnLayout</a> const &other)
 
<span id="ae061d682fbaa89b0ed4f75ebf6d0972d" class="anchor"></span> <a href="index.html" class="el">ColumnLayout</a> & 
**operator=** (<a href="index.html" class="el">ColumnLayout</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Defines a layout for preview widgets with given column setup.

<a href="index.html" class="el" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> defines how widgets should be laid out on a display with a given number of columns. In typical use cases, a scope creates <a href="index.html" class="el" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> instances for all supported displays (number of columns), and defines for every instance what widgets belong to which columns. The shell uses the layout that is most appropriate for the device in use. Column layout definitions are optional. However, we recommend that scopes define layouts for the best visual appearance.

An example of creating two layouts, one for a screen with one column and and one for a screen with two columns.

<span class="keywordtype">void</span> MyPreview::run(<a href="../unity.scopes/index.html#a7b46ef0e880da4c75314fe60bdd55754" class="code">PreviewReplyProxy</a> <span class="keyword">const</span>& reply)

<span class="comment">// layout definition for a screen with just 1 column</span>

<a href="index.html#ac93fd7c6681f2013b4dcf2ed16f95401" class="code">ColumnLayout</a> layout1col(1);

layout1col.add\_column({<span class="stringliteral">"art"</span>, <span class="stringliteral">"header"</span>, <span class="stringliteral">"actions"</span>}); <span class="comment">// all widgets in a single column</span>

<span class="comment">// layout definition for a screen with 2 columns</span>

<a href="index.html#ac93fd7c6681f2013b4dcf2ed16f95401" class="code">ColumnLayout</a> layout2col(2);

layout2col.add\_column({<span class="stringliteral">"art"</span>}); <span class="comment">// widget in 1st column</span>

layout2col.add\_column({<span class="stringliteral">"header"</span>, <span class="stringliteral">"actions"</span>}); <span class="comment">// widgets in 2nd column</span>

reply-&gt;register\_layout({layout1col, layout2col});

<span class="comment">// create widgets</span>

PreviewWidget w1(<span class="stringliteral">"art"</span>, <span class="stringliteral">"image"</span>);

...

Constructor & Destructor Documentation
--------------------------------------

<span id="ac93fd7c6681f2013b4dcf2ed16f95401" class="anchor"></span>
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
<td>unity::scopes::ColumnLayout::ColumnLayout</td>
<td>(</td>
<td>int </td>
<td><em>num_of_columns</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">explicit</span></span></td>
</tr>
</tbody>
</table>

Creates a layout definition that expects num\_of\_columns columns to be added with <a href="index.html#a0a8db9f2725f9c56f8639c55412d931d" class="el" title="Adds a new column and assigns widgets to it. ">ColumnLayout::add_column</a>.

Parameters  
|                  |                                       |
|------------------|---------------------------------------|
| num\_of\_columns | The number of columns for the layout. |

<!-- -->

Exceptions  
|                                 |                                   |
|---------------------------------|-----------------------------------|
| unity::InvalidArgumentException | for an invalid number of columns. |

Member Function Documentation
-----------------------------

<span id="a0a8db9f2725f9c56f8639c55412d931d" class="anchor"></span>
|                                               |     |                                   |               |     |     |
|-----------------------------------------------|-----|-----------------------------------|---------------|-----|-----|
| void unity::scopes::ColumnLayout::add\_column | (   | std::vector&lt; std::string &gt;  | *widget\_ids* | )   |     |

Adds a new column and assigns widgets to it.

<a href="index.html" class="el" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> expects exactly the number of columns passed to the constructor to be created with the add\_column method.

Exceptions  
|                       |                                                                                                                                                                                                                       |
|-----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if an attempt is made to add more columns than specified in the constructor.                                                                                                                                          |
| unity::LogicException | from <a href="../unity.scopes.PreviewReply/index.html#a16a757d821bd3792d1a69112b1f13964" class="el">unity::scopes::PreviewReply::register_layout</a> if a layout has fewer columns than specified in the constructor. |

<span id="a7457b565bd76d573f40241450a1f839f" class="anchor"></span>
|                                                                      |     |      |         |     |       |
|----------------------------------------------------------------------|-----|------|---------|-----|-------|
| std::vector&lt; std::string &gt; unity::scopes::ColumnLayout::column | (   | int  | *index* | )   | const |

Retrieve the list of widgets for given column.

Parameters  
|       |                        |
|-------|------------------------|
| index | The index of a column. |

<!-- -->

Returns  
The widget identifiers for the given column index.

<!-- -->

Exceptions  
|                                 |                          |
|---------------------------------|--------------------------|
| unity::InvalidArgumentException | if the index is invalid. |

<span id="a3213620bbddcab29eb32a2eeff2bb8dd" class="anchor"></span>
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
<td>int unity::scopes::ColumnLayout::number_of_columns</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the number of columns expected by this layout as specified in the constructor.

Returns  
The number of columns expected by this layout.

<span id="abd5129b6d56ad2aaaeb4f454f13176dd" class="anchor"></span>
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
<td>int unity::scopes::ColumnLayout::size</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the current number of columns in this layout.

Returns  
The number of columns added with <a href="index.html#a0a8db9f2725f9c56f8639c55412d931d" class="el" title="Adds a new column and assigns widgets to it. ">add_column()</a>.

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
