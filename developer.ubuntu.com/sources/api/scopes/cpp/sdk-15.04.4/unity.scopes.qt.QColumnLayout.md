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
-   [unity.scopes.qt](../unity.scopes.qt/index.html) ›

<!-- -->

-   QColumnLayout

QColumnLayout
=============

Represents a column layout. [More...](index.html#details)

`#include <unity/scopes/qt/QColumnLayout.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#a89f72698ef94dd4db26d286df0e5eb05" class="el">QColumnLayout</a> (int num\_of\_columns)
 
Creates a layout definition that expects num\_of\_columns columns to be added with ColumnLayout::add\_column. More...
 
void 
<a href="index.html#ad7e3e39240dc8dc5a24cbe19235a0752" class="el">add_column</a> (QVector&lt; QString &gt; widget\_ids)
 
Adds a new column and assigns widgets to it. More...
 
int 
<a href="index.html#af062c78bd61aad7d0bfa03b8b06f7f20" class="el">size</a> () const noexcept
 
Get the current number of columns in this layout. More...
 
int 
<a href="index.html#a5a989ce965336941a2e24fcd763f0596" class="el">number_of_columns</a> () const noexcept
 
Get the number of columns expected by this layout as specified in the constructor. More...
 
QVector&lt; QString &gt; 
<a href="index.html#afa169274d04b70956761ca55451e5921" class="el">column</a> (int index) const
 
Retrieve the list of widgets for given column. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="ac436f83c74eb89b4ce5355341a00a521" class="anchor"></span>  
**QColumnLayout** (<a href="index.html" class="el">QColumnLayout</a> const &other)
 
<span id="a2866fc30fd60a730c5e8c2c7d52752df" class="anchor"></span>  
**QColumnLayout** (<a href="index.html" class="el">QColumnLayout</a> &&)
 
<span id="acc3c299185b0b82183bed9cf9ef82bf9" class="anchor"></span> <a href="index.html" class="el">QColumnLayout</a> & 
**operator=** (<a href="index.html" class="el">QColumnLayout</a> const &other)
 
<span id="a5f740fda22bf735573b9eb11c800c1ab" class="anchor"></span> <a href="index.html" class="el">QColumnLayout</a> & 
**operator=** (<a href="index.html" class="el">QColumnLayout</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Represents a column layout.

Column layouts are used to represent the view in different ways depending on the device we are running our application.

If, for example, you run the application in a tablet that has more screen the application could use more columns than running in a phone.

Constructor & Destructor Documentation
--------------------------------------

<span id="a89f72698ef94dd4db26d286df0e5eb05" class="anchor"></span>
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
<td>unity::scopes::qt::QColumnLayout::QColumnLayout</td>
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

Creates a layout definition that expects num\_of\_columns columns to be added with <a href="../unity.scopes.ColumnLayout/index.html#a0a8db9f2725f9c56f8639c55412d931d" class="el" title="Adds a new column and assigns widgets to it. ">ColumnLayout::add_column</a>.

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

<span id="ad7e3e39240dc8dc5a24cbe19235a0752" class="anchor"></span>
|                                                    |     |                           |               |     |     |
|----------------------------------------------------|-----|---------------------------|---------------|-----|-----|
| void unity::scopes::qt::QColumnLayout::add\_column | (   | QVector&lt; QString &gt;  | *widget\_ids* | )   |     |

Adds a new column and assigns widgets to it.

<a href="../unity.scopes.ColumnLayout/index.html" class="el" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> expects exactly the number of columns passed to the constructor to be created with the add\_column method.

Exceptions  
|                       |                                                                                                                                                                                                                                |
|-----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if an attempt is made to add more columns than specified in the constructor.                                                                                                                                                   |
| unity::LogicException | from <a href="../unity.scopes.qt.QPreviewReply/index.html#abe5967042a22327f6ec9d5a1f595968c" class="el">unity::scopes::qt::QPreviewReply::register_layout</a> if a layout has fewer columns than specified in the constructor. |

<span id="afa169274d04b70956761ca55451e5921" class="anchor"></span>
|                                                                 |     |      |         |     |       |
|-----------------------------------------------------------------|-----|------|---------|-----|-------|
| QVector&lt;QString&gt; unity::scopes::qt::QColumnLayout::column | (   | int  | *index* | )   | const |

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

<span id="a5a989ce965336941a2e24fcd763f0596" class="anchor"></span>
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
<td>int unity::scopes::qt::QColumnLayout::number_of_columns</td>
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

<span id="af062c78bd61aad7d0bfa03b8b06f7f20" class="anchor"></span>
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
<td>int unity::scopes::qt::QColumnLayout::size</td>
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
The number of columns added with <a href="index.html#ad7e3e39240dc8dc5a24cbe19235a0752" class="el" title="Adds a new column and assigns widgets to it. ">add_column()</a>.

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
