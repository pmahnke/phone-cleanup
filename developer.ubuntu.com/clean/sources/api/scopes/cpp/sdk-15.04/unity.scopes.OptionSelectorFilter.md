---
Title: unity.scopes.OptionSelectorFilter
---
        
OptionSelectorFilter
====================

A selection filter that displays a list of choices and allows one or more of them to be selected. [More...](#details)

`#include <unity/scopes/OptionSelectorFilter.h>`

Inheritance diagram for unity::scopes::OptionSelectorFilter:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/91428478-2064-427e-bb75-d78058bbf1b9-api/scopes/cpp/sdk-15.04/unity.scopes.OptionSelectorFilter/classunity_1_1scopes_1_1_option_selector_filter__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

std::string 
<a href="#a125c5b43a776bb80f02293ae6d1801d3">label</a> () const
 
Get the label of this filter. More...
 
bool 
<a href="#aa1799eafbae1d5228d4520a2dc74f146">multi_select</a> () const
 
Check if this filter supports multiple options to be selected. More...
 
FilterOption::SCPtr 
<a href="#adeebc09dbf919d0ba9015eae669a0d33">add_option</a> (std::string const &<a href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, std::string const &<a href="#a125c5b43a776bb80f02293ae6d1801d3">label</a>)
 
Add a new option to this filter. More...
 
std::list&lt; FilterOption::SCPtr &gt; 
<a href="#a773c6364c3cee05042e975e927faf808">options</a> () const
 
Get all options of this filter, in the order they were added. More...
 
bool 
<a href="#a6b80b908411779b8bb402c9cbfa2f576">has_active_option</a> (<a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state) const
 
Check if an option is active for this filter. More...
 
std::set&lt; FilterOption::SCPtr &gt; 
<a href="#a3015abeb0439ccd29bd61afa9b7059df">active_options</a> (<a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state) const
 
Get active options from an instance of FilterState for this filter. More...
 
void 
<a href="#a616c09732a25a01fc97341a74aac62f6">update_state</a> (<a href="unity.scopes.FilterState.md">FilterState</a> &filter\_state, FilterOption::SCPtr option, bool active) const
 
Marks given FilterOption of this filter instance as active (or not active) in a FilterState object. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/c9599f4d-80e4-493d-a1ee-f3aa9ade223e-api/scopes/cpp/sdk-15.04/unity.scopes.OptionSelectorFilter/closed.png) Public Member Functions inherited from <a href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a>
void 
<a href="unity.scopes.FilterBase.md#ab4ab1b600ce3967dc50255e736c6d02e">set_display_hints</a> (int hints)
 
Sets display hints for the Shell UI. More...
 
int 
<a href="unity.scopes.FilterBase.md#a8f20819591155edaab29d535c5c4c261">display_hints</a> () const
 
Get display hints of this filter. More...
 
std::string 
<a href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a> () const
 
Get the identifier of this filter. More...
 
std::string 
<a href="unity.scopes.FilterBase.md#aadc7344c951961331dcbe67149d56c78">filter_type</a> () const
 
Get the type name of this filter. More...
 
pub-static-methods
--------------------------------------------------------------------

static OptionSelectorFilter::UPtr 
<a href="#a2930156d8f60172c9e926a3d6ebc85ee">create</a> (std::string const &<a href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, std::string const &<a href="#a125c5b43a776bb80f02293ae6d1801d3">label</a>, bool <a href="#aa1799eafbae1d5228d4520a2dc74f146">multi_select</a>=false)
 
Creates an OpionSelectorFilter. More...
 
static void 
<a href="#ad2f90f01ea9d197dbc089c9b64f0b5a7">update_state</a> (<a href="unity.scopes.FilterState.md">FilterState</a> &filter\_state, std::string const &filter\_id, std::string const &option\_id, bool value)
 
Marks an option of a filter active/inactive in a FilterState object, without having an instance of OptionSelectorFilter. More...
 
inherited
---------------------------------------------------------

![-](https://developer.ubuntu.com/static/devportal_uploaded/94e3b066-f39c-4c4a-9eb3-b407c1060d43-api/scopes/cpp/sdk-15.04/unity.scopes.OptionSelectorFilter/closed.png) Public Types inherited from <a href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a>
enum  
<a href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159">DisplayHints</a> { <a href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f">Default</a> = 0, <a href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56">Primary</a> = 1 }
 
Display hints for the Shell UI. [More...](../unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159)
 
<span id="details"></span>
Detailed Description
--------------------

A selection filter that displays a list of choices and allows one or more of them to be selected.

Member Function Documentation
-----------------------------

<span id="a3015abeb0439ccd29bd61afa9b7059df" class="anchor"></span>
|                                                                                            |     |                                                                                      |                 |     |       |
|--------------------------------------------------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| std::set&lt; FilterOption::SCPtr &gt; unity::scopes::OptionSelectorFilter::active\_options | (   | <a href="unity.scopes.FilterState.md">FilterState</a> const &  | *filter\_state* | )   | const |

Get active options from an instance of <a href="unity.scopes.FilterState.md" title="Captures state of multiple filters. ">FilterState</a> for this filter.

Returns  
The set of selected filter options.

<span id="adeebc09dbf919d0ba9015eae669a0d33" class="anchor"></span>
|                                                                      |     |                      |          |
|----------------------------------------------------------------------|-----|----------------------|----------|
| FilterOption::SCPtr unity::scopes::OptionSelectorFilter::add\_option | (   | std::string const &  | *id*,    |
|                                                                      |     | std::string const &  | *label*  |
|                                                                      | )   |                      |          |

Add a new option to this filter.

Returns  
The new option instance.

<span id="a2930156d8f60172c9e926a3d6ebc85ee" class="anchor"></span>
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
<td>OptionSelectorFilter::UPtr unity::scopes::OptionSelectorFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>bool </td>
<td><em>multi_select</em> = <code>false</code> </td>
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

Creates an OpionSelectorFilter.

Parameters  
|               |                                                                                                               |
|---------------|---------------------------------------------------------------------------------------------------------------|
| id            | A unique identifier for the filter that can be used to identify it later among several filters.               |
| label         | A display label for the filter.                                                                               |
| multi\_select | If true, the filter permits more than option to be selected; otherwise, only a single option can be selected. |

<span id="a6b80b908411779b8bb402c9cbfa2f576" class="anchor"></span>
|                                                               |     |                                                                                      |                 |     |       |
|---------------------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| bool unity::scopes::OptionSelectorFilter::has\_active\_option | (   | <a href="unity.scopes.FilterState.md">FilterState</a> const &  | *filter\_state* | )   | const |

Check if an option is active for this filter.

Parameters  
|               |                      |
|---------------|----------------------|
| filter\_state | The state of filters |

<!-- -->

Returns  
true if an option is active

<span id="a125c5b43a776bb80f02293ae6d1801d3" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::OptionSelectorFilter::label | (   |     | )   | const |

Get the label of this filter.

Returns  
The filter label.

<span id="aa1799eafbae1d5228d4520a2dc74f146" class="anchor"></span>
|                                                         |     |     |     |       |
|---------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::OptionSelectorFilter::multi\_select | (   |     | )   | const |

Check if this filter supports multiple options to be selected.

Returns  
True if multi-selection is enabled.

<span id="a773c6364c3cee05042e975e927faf808" class="anchor"></span>
|                                                                                     |     |     |     |       |
|-------------------------------------------------------------------------------------|-----|-----|-----|-------|
| std::list&lt; FilterOption::SCPtr &gt; unity::scopes::OptionSelectorFilter::options | (   |     | )   | const |

Get all options of this filter, in the order they were added.

Returns  
The list of options.

<span id="a616c09732a25a01fc97341a74aac62f6" class="anchor"></span>
|                                                         |     |                                                                                |                  |
|---------------------------------------------------------|-----|--------------------------------------------------------------------------------|------------------|
| void unity::scopes::OptionSelectorFilter::update\_state | (   | <a href="unity.scopes.FilterState.md">FilterState</a> &  | *filter\_state*, |
|                                                         |     | FilterOption::SCPtr                                                            | *option*,        |
|                                                         |     | bool                                                                           | *active*         |
|                                                         | )   |                                                                                | const            |

Marks given <a href="unity.scopes.FilterOption.md" title="Holds definition of filter option for OptionSelectorFilter. ">FilterOption</a> of this filter instance as active (or not active) in a <a href="unity.scopes.FilterState.md" title="Captures state of multiple filters. ">FilterState</a> object.

Records the given <a href="unity.scopes.FilterOption.md" title="Holds definition of filter option for OptionSelectorFilter. ">FilterOption</a> as "selected" in the <a href="unity.scopes.FilterState.md" title="Captures state of multiple filters. ">FilterState</a>. This is meant to be used to modify a <a href="unity.scopes.FilterState.md" title="Captures state of multiple filters. ">FilterState</a> received with a search request before sending it back to the client (UI shell).

<span id="ad2f90f01ea9d197dbc089c9b64f0b5a7" class="anchor"></span>
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
<td>void unity::scopes::OptionSelectorFilter::update_state</td>
<td>(</td>
<td><a href="unity.scopes.FilterState.md">FilterState</a> &amp; </td>
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
<td>std::string const &amp; </td>
<td><em>option_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>bool </td>
<td><em>value</em> </td>
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

Marks an option of a filter active/inactive in a <a href="unity.scopes.FilterState.md" title="Captures state of multiple filters. ">FilterState</a> object, without having an instance of <a href="index.html" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a>.

Updates an instance of <a href="unity.scopes.FilterState.md" title="Captures state of multiple filters. ">FilterState</a>, without the need for an <a href="index.html" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a> instance. This is meant to be used when creating a canned Query that references another scope.

