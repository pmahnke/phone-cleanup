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

<!-- -->

-   RangeInputFilter

RangeInputFilter
================

A range filter allows a start and end value to be entered by the user. [More...](index.html#details)

`#include <unity/scopes/RangeInputFilter.h>`

Inheritance diagram for unity::scopes::RangeInputFilter:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/84a80008-82e7-491c-8b9f-9684d1fcc80a-api/scopes/cpp/sdk-15.04.5/unity.scopes.RangeInputFilter/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

std::string 
<a href="index.html#a1a4cf761c6bfa2e07eb24b6f584ec05b" class="el">start_prefix_label</a> () const
 
Get the prefix label of start value. More...
 
std::string 
<a href="index.html#a9e2a6ec4e9c06234ee4759dce2644008" class="el">start_postfix_label</a> () const
 
Get the postfix label of start value. More...
 
std::string 
<a href="index.html#a8acb48c94b3e9b6ca228a0e7ebb26ae5" class="el">end_prefix_label</a> () const
 
Get the prefix label of end value. More...
 
std::string 
<a href="index.html#a81dde713bcfb2b2ca24683ba9e808e34" class="el">end_postfix_label</a> () const
 
Get the postfix label of end value. More...
 
std::string 
<a href="index.html#a41f517d0071ca0f953c478f8272bf41b" class="el">central_label</a> () const
 
Get the central label for this filter. More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> 
<a href="index.html#adf545096dacbea4303361527450321fa" class="el">default_start_value</a> () const
 
Get the default start value if set (int, double or null). More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> 
<a href="index.html#aaf471258f02a8af0f7bfdb186ed61b0e" class="el">default_end_value</a> () const
 
Get default end value if set (int, double or null). More...
 
bool 
<a href="index.html#a64f2c9ff7ed484f49d26f601f30e8616" class="el">has_start_value</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state) const
 
Check if filter state holds a start value for this filter instance. More...
 
bool 
<a href="index.html#ae459a665a5dae27445547b1c0be8c7c3" class="el">has_end_value</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state) const
 
Check if filter state holds an end value for this filter instance. More...
 
double 
<a href="index.html#afd86208a5f8fe8a81877bd0bf4588758" class="el">start_value</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state) const
 
Get the start value for this filter instance. More...
 
double 
<a href="index.html#af5bee0ddf65a375a4a5e19b4313de940" class="el">end_value</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state) const
 
Get end value for this filter instance. More...
 
void 
<a href="index.html#a5fa97b63d86a89e7144a89e0996d1304" class="el">update_state</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> &filter\_state, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &<a href="index.html#afd86208a5f8fe8a81877bd0bf4588758" class="el">start_value</a>, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &<a href="index.html#af5bee0ddf65a375a4a5e19b4313de940" class="el">end_value</a>) const
 
Store start and end value for this filter in the filter state. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/eb588139-d958-496e-a1fc-cd6c9a9bdbfc-api/scopes/cpp/sdk-15.04.5/unity.scopes.RangeInputFilter/closed.png) Public Member Functions inherited from <a href="../unity.scopes.FilterBase/index.html" class="el">unity::scopes::FilterBase</a>
void 
<a href="../unity.scopes.FilterBase/index.html#ab4ab1b600ce3967dc50255e736c6d02e" class="el">set_display_hints</a> (int hints)
 
Sets display hints for the Shell UI. More...
 
int 
<a href="../unity.scopes.FilterBase/index.html#a8f20819591155edaab29d535c5c4c261" class="el">display_hints</a> () const
 
Get display hints of this filter. More...
 
std::string 
<a href="../unity.scopes.FilterBase/index.html#a1f2d96647b23af77b1ff1cffc80f3868" class="el">id</a> () const
 
Get the identifier of this filter. More...
 
std::string 
<a href="../unity.scopes.FilterBase/index.html#aadc7344c951961331dcbe67149d56c78" class="el">filter_type</a> () const
 
Get the type name of this filter. More...
 
void 
<a href="../unity.scopes.FilterBase/index.html#aec8ceae8141811833af087ba2ebe086c" class="el">set_title</a> (std::string const &<a href="../unity.scopes.FilterBase/index.html#a3f0c324b3aac39bb8967fc900f3a909e" class="el">title</a>)
 
Set an optional title of this filter. More...
 
std::string 
<a href="../unity.scopes.FilterBase/index.html#a3f0c324b3aac39bb8967fc900f3a909e" class="el">title</a> () const
 
Get the optional title of this filter. More...
 
FilterGroup::SCPtr 
<a href="../unity.scopes.FilterBase/index.html#afff4685371fe67e6f87f58e31f69a037" class="el">filter_group</a> () const
 
Get the filter group this filter belongs to. More...
 
<span id="pub-static-methods"></span> Static Public Member Functions
--------------------------------------------------------------------

static RangeInputFilter::SPtr 
<a href="index.html#a0717644ec86abcdc9dabf30302fead5d" class="el">create</a> (std::string const &<a href="../unity.scopes.FilterBase/index.html#a1f2d96647b23af77b1ff1cffc80f3868" class="el">id</a>, std::string const &<a href="index.html#a1a4cf761c6bfa2e07eb24b6f584ec05b" class="el">start_prefix_label</a>, std::string const &<a href="index.html#a9e2a6ec4e9c06234ee4759dce2644008" class="el">start_postfix_label</a>, std::string const &<a href="index.html#a41f517d0071ca0f953c478f8272bf41b" class="el">central_label</a>, std::string const &<a href="index.html#a8acb48c94b3e9b6ca228a0e7ebb26ae5" class="el">end_prefix_label</a>, std::string const &<a href="index.html#a81dde713bcfb2b2ca24683ba9e808e34" class="el">end_postfix_label</a>)
 
Creates a RangeInputFilter. More...
 
static RangeInputFilter::SPtr 
<a href="index.html#af011c6e541e7a3776cccacf88fdba2b5" class="el">create</a> (std::string const &<a href="../unity.scopes.FilterBase/index.html#a1f2d96647b23af77b1ff1cffc80f3868" class="el">id</a>, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &<a href="index.html#adf545096dacbea4303361527450321fa" class="el">default_start_value</a>, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &<a href="index.html#aaf471258f02a8af0f7bfdb186ed61b0e" class="el">default_end_value</a>, std::string const &<a href="index.html#a1a4cf761c6bfa2e07eb24b6f584ec05b" class="el">start_prefix_label</a>, std::string const &<a href="index.html#a9e2a6ec4e9c06234ee4759dce2644008" class="el">start_postfix_label</a>, std::string const &<a href="index.html#a41f517d0071ca0f953c478f8272bf41b" class="el">central_label</a>, std::string const &<a href="index.html#a8acb48c94b3e9b6ca228a0e7ebb26ae5" class="el">end_prefix_label</a>, std::string const &<a href="index.html#a81dde713bcfb2b2ca24683ba9e808e34" class="el">end_postfix_label</a>)
 
Creates a RangeInputFilter with specific default values for start and end. More...
 
static RangeInputFilter::SPtr 
<a href="index.html#aba826b77159d4d51ec804c2132ff0f62" class="el">create</a> (std::string const &<a href="../unity.scopes.FilterBase/index.html#a1f2d96647b23af77b1ff1cffc80f3868" class="el">id</a>, std::string const &<a href="index.html#a1a4cf761c6bfa2e07eb24b6f584ec05b" class="el">start_prefix_label</a>, std::string const &<a href="index.html#a9e2a6ec4e9c06234ee4759dce2644008" class="el">start_postfix_label</a>, std::string const &<a href="index.html#a41f517d0071ca0f953c478f8272bf41b" class="el">central_label</a>, std::string const &<a href="index.html#a8acb48c94b3e9b6ca228a0e7ebb26ae5" class="el">end_prefix_label</a>, std::string const &<a href="index.html#a81dde713bcfb2b2ca24683ba9e808e34" class="el">end_postfix_label</a>, FilterGroup::SCPtr const &group)
 
Creates a RangeInputFilter inside a FilterGroup. More...
 
static RangeInputFilter::SPtr 
<a href="index.html#ac782e01462c0f1868fca744119da91c6" class="el">create</a> (std::string const &<a href="../unity.scopes.FilterBase/index.html#a1f2d96647b23af77b1ff1cffc80f3868" class="el">id</a>, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &<a href="index.html#adf545096dacbea4303361527450321fa" class="el">default_start_value</a>, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &<a href="index.html#aaf471258f02a8af0f7bfdb186ed61b0e" class="el">default_end_value</a>, std::string const &<a href="index.html#a1a4cf761c6bfa2e07eb24b6f584ec05b" class="el">start_prefix_label</a>, std::string const &<a href="index.html#a9e2a6ec4e9c06234ee4759dce2644008" class="el">start_postfix_label</a>, std::string const &<a href="index.html#a41f517d0071ca0f953c478f8272bf41b" class="el">central_label</a>, std::string const &<a href="index.html#a8acb48c94b3e9b6ca228a0e7ebb26ae5" class="el">end_prefix_label</a>, std::string const &<a href="index.html#a81dde713bcfb2b2ca24683ba9e808e34" class="el">end_postfix_label</a>, FilterGroup::SCPtr const &group)
 
Creates a RangeInputFilter with specific default values for start and end, inside a FilterGroup. More...
 
static void 
<a href="index.html#a7cb0b4523641ea4dec9b3c619f5b9c21" class="el">update_state</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> &filter\_state, std::string const &filter\_id, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &<a href="index.html#afd86208a5f8fe8a81877bd0bf4588758" class="el">start_value</a>, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &<a href="index.html#af5bee0ddf65a375a4a5e19b4313de940" class="el">end_value</a>)
 
Store start and end value in the filter state, without having an instance of RangeInputFilter. More...
 
<span id="inherited"></span> Additional Inherited Members
---------------------------------------------------------

![-](https://developer.ubuntu.com/static/devportal_uploaded/3ee4eb9b-b186-4bc5-a351-1e902c970a6c-api/scopes/cpp/sdk-15.04.5/unity.scopes.RangeInputFilter/closed.png) Public Types inherited from <a href="../unity.scopes.FilterBase/index.html" class="el">unity::scopes::FilterBase</a>
enum  
<a href="../unity.scopes.FilterBase/index.html#ab9e833d5e4029fed745d15ba63715159" class="el">DisplayHints</a> { <a href="../unity.scopes.FilterBase/index.html#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f" class="el">Default</a> = 0, <a href="../unity.scopes.FilterBase/index.html#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56" class="el">Primary</a> = 1 }
 
Display hints for the Shell UI. [More...](../unity.scopes.FilterBase/index.html#ab9e833d5e4029fed745d15ba63715159)
 
<span id="details"></span>
Detailed Description
--------------------

A range filter allows a start and end value to be entered by the user.

A <a href="index.html" class="el" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> is composed of two input boxes that accept numeric values (both of them optional). The filter can have prefix and/or postfix labels for the start and end value, respectively, plus a single label that is displayed between the two input boxes. The filter can provide defaults for that start and end value, which are used by the UI if the user does not enter explicit values.

Member Function Documentation
-----------------------------

<span id="a41f517d0071ca0f953c478f8272bf41b" class="anchor"></span>
|                                                             |     |     |     |       |
|-------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::RangeInputFilter::central\_label | (   |     | )   | const |

Get the central label for this filter.

Returns  
The central label.

<span id="a0717644ec86abcdc9dabf30302fead5d" class="anchor"></span>
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
<td>RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_prefix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_postfix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>central_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_prefix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_postfix_label</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="index.html" class="el" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

Parameters  
|                       |                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------|
| id                    | A unique identifier for the filter that can be used to later identify it among several filters. |
| start\_prefix\_label  | A display label for the input box for the start value, displayed to the left (can be empty).    |
| start\_postfix\_label | A display label for the input box for the start value, displayed to the right (can be empty).   |
| central\_label        | A display label that is displayed between the two input boxes (can be empty).                   |
| end\_prefix\_label    | A display label for the input box for the end value, displayed to the left (can be empty).      |
| end\_postfix\_label   | A display label for the input box for the end value, displayed to the right (can be empty).     |

<!-- -->

Returns  
Instance of <a href="index.html" class="el" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

<span id="af011c6e541e7a3776cccacf88fdba2b5" class="anchor"></span>
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
<td>RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &amp; </td>
<td><em>default_start_value</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &amp; </td>
<td><em>default_end_value</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_prefix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_postfix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>central_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_prefix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_postfix_label</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="index.html" class="el" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> with specific default values for start and end.

Parameters  
|                       |                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------|
| id                    | A unique identifier for the filter that can be used to later identify it among several filters. |
| default\_start\_value | A default start value (double, int, or null).                                                   |
| default\_end\_value   | A default end value (double, int, or null).                                                     |
| start\_prefix\_label  | A display label for the input box for the start value, displayed to the left (can be empty).    |
| start\_postfix\_label | A display label for the input box for the start value, displayed to the right (can be empty).   |
| central\_label        | A display label displayed between the two input boxes (can be empty).                           |
| end\_prefix\_label    | A display label for the input box for the end value, displayed to the left (can be empty).      |
| end\_postfix\_label   | A display label for the input box for the end value, displayed to the right (can be empty).     |

<!-- -->

Returns  
Instance of <a href="index.html" class="el" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

<span id="aba826b77159d4d51ec804c2132ff0f62" class="anchor"></span>
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
<td>RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_prefix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_postfix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>central_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_prefix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_postfix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>FilterGroup::SCPtr const &amp; </td>
<td><em>group</em> </td>
</tr>
<tr class="even">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="index.html" class="el" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> inside a <a href="../unity.scopes.FilterGroup/index.html" class="el" title="Groups several filters into an expandable widget in the UI. ">FilterGroup</a>.

Parameters  
|                       |                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------|
| id                    | A unique identifier for the filter that can be used to later identify it among several filters. |
| start\_prefix\_label  | A display label for the input box for the start value, displayed to the left (can be empty).    |
| start\_postfix\_label | A display label for the input box for the start value, displayed to the right (can be empty).   |
| central\_label        | A display label displayed between the two input boxes (can be empty).                           |
| end\_prefix\_label    | A display label for the input box for the end value, displayed to the left (can be empty).      |
| end\_postfix\_label   | A display label for the input box for the end value, displayed to the right (can be empty).     |
| group                 | A filter group this filter should be added to.                                                  |

<!-- -->

Returns  
Instance of <a href="index.html" class="el" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

<span id="ac782e01462c0f1868fca744119da91c6" class="anchor"></span>
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
<td>RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &amp; </td>
<td><em>default_start_value</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &amp; </td>
<td><em>default_end_value</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_prefix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_postfix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>central_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_prefix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_postfix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>FilterGroup::SCPtr const &amp; </td>
<td><em>group</em> </td>
</tr>
<tr class="even">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="index.html" class="el" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> with specific default values for start and end, inside a <a href="../unity.scopes.FilterGroup/index.html" class="el" title="Groups several filters into an expandable widget in the UI. ">FilterGroup</a>.

Parameters  
|                       |                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------|
| id                    | A unique identifier for the filter that can be used to later identify it among several filters. |
| default\_start\_value | The default start value (double, int, or null).                                                 |
| default\_end\_value   | The default end value (double, int, or null).                                                   |
| start\_prefix\_label  | A display label for the input box for the start value, displayed to the left (can be empty).    |
| start\_postfix\_label | A display label for the input box for the start value, displayed to the right (can be empty).   |
| central\_label        | A display label displayed between the two input boxes (can be empty).                           |
| end\_prefix\_label    | A display label for the input box for the end value, displayed to the left (can be empty).      |
| end\_postfix\_label   | A display label for the input box for the end value, displayed to the right (can be empty).     |
| group                 | A filter group this filter should be added to.                                                  |

<!-- -->

Returns  
Instance of <a href="index.html" class="el" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

<span id="aaf471258f02a8af0f7bfdb186ed61b0e" class="anchor"></span>
|                                                                                                                          |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> unity::scopes::RangeInputFilter::default\_end\_value | (   |     | )   | const |

Get default end value if set (int, double or null).

The default value should be used unless a value is present in the <a href="../unity.scopes.FilterState/index.html" class="el" title="Stores the state of multiple filters. ">FilterState</a> - use <a href="index.html#ae459a665a5dae27445547b1c0be8c7c3" class="el" title="Check if filter state holds an end value for this filter instance. ">unity::scopes::RangeInputFilter::has_end_value()</a> and <a href="index.html#af5bee0ddf65a375a4a5e19b4313de940" class="el" title="Get end value for this filter instance. ">unity::scopes::RangeInputFilter::end_value()</a> before resorting to the default value.

<span id="adf545096dacbea4303361527450321fa" class="anchor"></span>
|                                                                                                                            |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> unity::scopes::RangeInputFilter::default\_start\_value | (   |     | )   | const |

Get the default start value if set (int, double or null).

The default value should be used unless a value is present in the <a href="../unity.scopes.FilterState/index.html" class="el" title="Stores the state of multiple filters. ">FilterState</a> - use <a href="index.html#a64f2c9ff7ed484f49d26f601f30e8616" class="el" title="Check if filter state holds a start value for this filter instance. ">unity::scopes::RangeInputFilter::has_start_value()</a> and <a href="index.html#afd86208a5f8fe8a81877bd0bf4588758" class="el" title="Get the start value for this filter instance. ">unity::scopes::RangeInputFilter::start_value()</a> before resorting to the default value.

<span id="a81dde713bcfb2b2ca24683ba9e808e34" class="anchor"></span>
|                                                                  |     |     |     |       |
|------------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::RangeInputFilter::end\_postfix\_label | (   |     | )   | const |

Get the postfix label of end value.

Returns  
The postfix label of end value.

<span id="a8acb48c94b3e9b6ca228a0e7ebb26ae5" class="anchor"></span>
|                                                                 |     |     |     |       |
|-----------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::RangeInputFilter::end\_prefix\_label | (   |     | )   | const |

Get the prefix label of end value.

Returns  
The prefix label of end value.

<span id="af5bee0ddf65a375a4a5e19b4313de940" class="anchor"></span>
|                                                    |     |                                                                                      |                 |     |       |
|----------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| double unity::scopes::RangeInputFilter::end\_value | (   | <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &  | *filter\_state* | )   | const |

Get end value for this filter instance.

Returns  
The end value or the default end value if not null.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                                                                |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if the end value is not set and the default end value is null. |

<span id="ae459a665a5dae27445547b1c0be8c7c3" class="anchor"></span>
|                                                       |     |                                                                                      |                 |     |       |
|-------------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| bool unity::scopes::RangeInputFilter::has\_end\_value | (   | <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &  | *filter\_state* | )   | const |

Check if filter state holds an end value for this filter instance.

Parameters  
|               |                       |
|---------------|-----------------------|
| filter\_state | The state of filters. |

<!-- -->

Returns  
`true` if filter\_state has an end value for this filter.

<span id="a64f2c9ff7ed484f49d26f601f30e8616" class="anchor"></span>
|                                                         |     |                                                                                      |                 |     |       |
|---------------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| bool unity::scopes::RangeInputFilter::has\_start\_value | (   | <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &  | *filter\_state* | )   | const |

Check if filter state holds a start value for this filter instance.

Parameters  
|               |                       |
|---------------|-----------------------|
| filter\_state | The state of filters. |

<!-- -->

Returns  
`true` if filter\_state has a start value for this filter.

<span id="a9e2a6ec4e9c06234ee4759dce2644008" class="anchor"></span>
|                                                                    |     |     |     |       |
|--------------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::RangeInputFilter::start\_postfix\_label | (   |     | )   | const |

Get the postfix label of start value.

Returns  
The postfix label of start value.

<span id="a1a4cf761c6bfa2e07eb24b6f584ec05b" class="anchor"></span>
|                                                                   |     |     |     |       |
|-------------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::RangeInputFilter::start\_prefix\_label | (   |     | )   | const |

Get the prefix label of start value.

Returns  
The prefix label of start value.

<span id="afd86208a5f8fe8a81877bd0bf4588758" class="anchor"></span>
|                                                      |     |                                                                                      |                 |     |       |
|------------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| double unity::scopes::RangeInputFilter::start\_value | (   | <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &  | *filter\_state* | )   | const |

Get the start value for this filter instance.

Returns  
The start value or the default start value if not null.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                                                                    |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if the start value is not set and the default start value is null. |

<span id="a5fa97b63d86a89e7144a89e0996d1304" class="anchor"></span>
|                                                     |     |                                                                                |                  |
|-----------------------------------------------------|-----|--------------------------------------------------------------------------------|------------------|
| void unity::scopes::RangeInputFilter::update\_state | (   | <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> &  | *filter\_state*, |
|                                                     |     | <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &    | *start\_value*,  |
|                                                     |     | <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &    | *end\_value*     |
|                                                     | )   |                                                                                | const            |

Store start and end value for this filter in the filter state.

Updates filter\_state with start and end values for this filter instance. Allowed data types for start\_value and end\_value are Variant::Type::Null, Variant::Type::Double and Variant::Type::Int. Integer values are converted to double when returned via <a href="index.html#afd86208a5f8fe8a81877bd0bf4588758" class="el" title="Get the start value for this filter instance. ">unity::scopes::RangeInputFilter::start_value()</a> and <a href="index.html#af5bee0ddf65a375a4a5e19b4313de940" class="el" title="Get end value for this filter instance. ">unity::scopes::RangeInputFilter::end_value()</a> methods. Pass <a href="../unity.scopes.Variant/index.html#a2bd2d5425fdec9af9340c22e3b47ac1c" class="el" title="Construct a null variant. ">Variant::null()</a> as start\_value or end\_value if that value is unspecified (hasn't been entered or was erased by the user from the input box).

Parameters  
|               |                                                                                                                                               |
|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| filter\_state | <a href="../unity.scopes.FilterState/index.html" class="el" title="Stores the state of multiple filters. ">FilterState</a> instance to update |
| start\_value  | Start value                                                                                                                                   |
| end\_value    | End value                                                                                                                                     |

<span id="a7cb0b4523641ea4dec9b3c619f5b9c21" class="anchor"></span>
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
<td>void unity::scopes::RangeInputFilter::update_state</td>
<td>(</td>
<td><a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> &amp; </td>
<td><em>filter_state</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>filter_id</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &amp; </td>
<td><em>start_value</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &amp; </td>
<td><em>end_value</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Store start and end value in the filter state, without having an instance of <a href="index.html" class="el" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

Updates filter\_state with start and end values without an instance of <a href="index.html" class="el" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>. This is meant to be used when creating a <a href="../unity.scopes.CannedQuery/index.html" class="el" title="Parameters of a search query. ">CannedQuery</a> that references another scope.

Parameters  
|               |                                                                                                                                               |
|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| filter\_state | <a href="../unity.scopes.FilterState/index.html" class="el" title="Stores the state of multiple filters. ">FilterState</a> instance to update |
| filter\_id    | Unique identifier of filter                                                                                                                   |
| start\_value  | Start value                                                                                                                                   |
| end\_value    | End value                                                                                                                                     |

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
