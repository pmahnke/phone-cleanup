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
-   [SDK 15.04.3](../index.html) ›

<!-- -->

-   ValueSliderFilter

ValueSliderFilter
=================

A value slider filter that allows for selecting a value within a given range. [More...](index.html#details)

`#include <unity/scopes/ValueSliderFilter.h>`

Inheritance diagram for unity::scopes::ValueSliderFilter:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/77273879-265f-4ac6-b0b1-52d592c56bf3-api/scopes/cpp/sdk-15.04.3/unity.scopes.ValueSliderFilter/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

void 
<a href="index.html#ac868b40a91520b9a56c2ed98152f1a1a" class="el">set_default_value</a> (double val)
 
Change the default value of this filter. More...
 
double 
<a href="index.html#a32344819474a1ef0956f63e87fb047a4" class="el">default_value</a> () const
 
Get the default value of this filter. More...
 
double 
<a href="index.html#ab6a8d69f025709d3ee09d7cb362eba03" class="el">min</a> () const
 
Get the minimum allowed value. More...
 
double 
<a href="index.html#a5e2e527d77390dc02db1bd1cbdce6460" class="el">max</a> () const
 
Get the maximum allowed value. More...
 
bool 
<a href="index.html#a9a113cc7fbda26aed161067fb7892119" class="el">has_value</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state) const
 
Check if filter state object holds a value of this filter. More...
 
double 
<a href="index.html#a7a81dec2e0595cf95effa6f9f24259ba" class="el">value</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &filter\_state) const
 
Get value of this filter from filter state object. More...
 
<a href="../unity.scopes.ValueSliderLabels/index.html" class="el">ValueSliderLabels</a> const & 
<a href="index.html#a6dc105b666f967fa6a9bbf2eca2ee9dc" class="el">labels</a> () const
 
Get value labeles for this slider filter. More...
 
void 
<a href="index.html#a5b336122dcab4ed78974badb9016e622" class="el">update_state</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> &filter\_state, double <a href="index.html#a7a81dec2e0595cf95effa6f9f24259ba" class="el">value</a>) const
 
Sets value of this filter instance in filter state object. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/40280811-25a1-4c39-88da-b860c3234378-api/scopes/cpp/sdk-15.04.3/unity.scopes.ValueSliderFilter/closed.png) Public Member Functions inherited from <a href="../unity.scopes.FilterBase/index.html" class="el">unity::scopes::FilterBase</a>
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

static ValueSliderFilter::UPtr 
<a href="index.html#a5828d2bf89830af47ac5b2cd53cd4e57" class="el">create</a> (std::string const &<a href="../unity.scopes.FilterBase/index.html#a1f2d96647b23af77b1ff1cffc80f3868" class="el">id</a>, double <a href="index.html#ab6a8d69f025709d3ee09d7cb362eba03" class="el">min</a>, double <a href="index.html#a5e2e527d77390dc02db1bd1cbdce6460" class="el">max</a>, double <a href="index.html#a32344819474a1ef0956f63e87fb047a4" class="el">default_value</a>, <a href="../unity.scopes.ValueSliderLabels/index.html" class="el">ValueSliderLabels</a> const &value\_labels)
 
Create ValueSliderFilter. More...
 
static ValueSliderFilter::UPtr 
<a href="index.html#accaaa9011772ba4f297cb245b3d24738" class="el">create</a> (std::string const &<a href="../unity.scopes.FilterBase/index.html#a1f2d96647b23af77b1ff1cffc80f3868" class="el">id</a>, double <a href="index.html#ab6a8d69f025709d3ee09d7cb362eba03" class="el">min</a>, double <a href="index.html#a5e2e527d77390dc02db1bd1cbdce6460" class="el">max</a>, double <a href="index.html#a32344819474a1ef0956f63e87fb047a4" class="el">default_value</a>, <a href="../unity.scopes.ValueSliderLabels/index.html" class="el">ValueSliderLabels</a> const &value\_labels, FilterGroup::SCPtr const &group)
 
Create ValueSliderFilter inside a FilterGroup. More...
 
static void 
<a href="index.html#ae72a0d0a94095bd3d2fb6950a2c9221e" class="el">update_state</a> (<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> &filter\_state, std::string const &filter\_id, double <a href="index.html#a7a81dec2e0595cf95effa6f9f24259ba" class="el">value</a>)
 
Sets value of this filter instance in filter state object, without having an instance of ValueSliderFilter. More...
 
<span id="inherited"></span> Additional Inherited Members
---------------------------------------------------------

![-](https://developer.ubuntu.com/static/devportal_uploaded/55c39180-d0c0-4561-8497-93d2ae31a538-api/scopes/cpp/sdk-15.04.3/unity.scopes.ValueSliderFilter/closed.png) Public Types inherited from <a href="../unity.scopes.FilterBase/index.html" class="el">unity::scopes::FilterBase</a>
enum  
<a href="../unity.scopes.FilterBase/index.html#ab9e833d5e4029fed745d15ba63715159" class="el">DisplayHints</a> { <a href="../unity.scopes.FilterBase/index.html#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f" class="el">Default</a> = 0, <a href="../unity.scopes.FilterBase/index.html#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56" class="el">Primary</a> = 1 }
 
Display hints for the Shell UI. [More...](../unity.scopes.FilterBase/index.html#ab9e833d5e4029fed745d15ba63715159)
 
<span id="details"></span>
Detailed Description
--------------------

A value slider filter that allows for selecting a value within a given range.

The <a href="index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> allows for selecting a value within a range defined by minimum and maximum values. Both minimum and maximum values can have labels and, in addition, the scope may provide extra labels to mark other values from that range - these label will serve as a guidance to the user.

Member Function Documentation
-----------------------------

<span id="a5828d2bf89830af47ac5b2cd53cd4e57" class="anchor"></span>
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
<td>ValueSliderFilter::UPtr unity::scopes::ValueSliderFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>double </td>
<td><em>min</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>double </td>
<td><em>max</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>double </td>
<td><em>default_value</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="../unity.scopes.ValueSliderLabels/index.html" class="el">ValueSliderLabels</a> const &amp; </td>
<td><em>value_labels</em> </td>
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

Create <a href="index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>.

Creates <a href="index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> of ValueSliderFilter::SliderType::LessThan type.

Parameters  
|                |                                                                                                 |
|----------------|-------------------------------------------------------------------------------------------------|
| id             | A unique identifier for the filter that can be used to later identify it among several filters. |
| min            | The minimum allowed value                                                                       |
| max            | The maximum allowed value                                                                       |
| default\_value | The default value of this filter, from the min..max range.                                      |
| value\_labels  | The labels for min and max values as well as optional extra labels.                             |

<!-- -->

Returns  
Instance of <a href="index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>.

<!-- -->

Exceptions  
|                       |                                                         |
|-----------------------|---------------------------------------------------------|
| unity::LogicException | on invalid (min, max) range or erroneous value\_labels. |

<span id="accaaa9011772ba4f297cb245b3d24738" class="anchor"></span>
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
<td>ValueSliderFilter::UPtr unity::scopes::ValueSliderFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>double </td>
<td><em>min</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>double </td>
<td><em>max</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>double </td>
<td><em>default_value</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="../unity.scopes.ValueSliderLabels/index.html" class="el">ValueSliderLabels</a> const &amp; </td>
<td><em>value_labels</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>FilterGroup::SCPtr const &amp; </td>
<td><em>group</em> </td>
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

Create <a href="index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> inside a <a href="../unity.scopes.FilterGroup/index.html" class="el" title="Groups several filters into an expandable widget in the UI. ">FilterGroup</a>.

Creates <a href="index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> of ValueSliderFilter::SliderType::LessThan type.

Parameters  
|                |                                                                                                 |
|----------------|-------------------------------------------------------------------------------------------------|
| id             | A unique identifier for the filter that can be used to later identify it among several filters. |
| min            | The minimum allowed value                                                                       |
| max            | The maximum allowed value                                                                       |
| default\_value | The default value of this filter, from the min..max range.                                      |
| value\_labels  | The labels for min and max values as well as optional extra labels.                             |
| group          | A filter group this filter should be added to.                                                  |

<!-- -->

Returns  
Instance of <a href="index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>.

<!-- -->

Exceptions  
|                       |                                                         |
|-----------------------|---------------------------------------------------------|
| unity::LogicException | on invalid (min, max) range or erroneous value\_labels. |

<span id="a32344819474a1ef0956f63e87fb047a4" class="anchor"></span>
|                                                         |     |     |     |       |
|---------------------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::ValueSliderFilter::default\_value | (   |     | )   | const |

Get the default value of this filter.

The default value will be used by the shell if no value is present for this filter in the <a href="../unity.scopes.FilterState/index.html" class="el" title="Stores the state of multiple filters. ">unity::scopes::FilterState</a> (no value has been set by the user).

Returns  
The default value

<span id="a9a113cc7fbda26aed161067fb7892119" class="anchor"></span>
|                                                   |     |                                                                                      |                 |     |       |
|---------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| bool unity::scopes::ValueSliderFilter::has\_value | (   | <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &  | *filter\_state* | )   | const |

Check if filter state object holds a value of this filter.

Returns  
true if filter\_state has a value of this filter.

<span id="a6dc105b666f967fa6a9bbf2eca2ee9dc" class="anchor"></span>
|                                                                                                                                          |     |     |     |       |
|------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.ValueSliderLabels/index.html" class="el">ValueSliderLabels</a> const & unity::scopes::ValueSliderFilter::labels | (   |     | )   | const |

Get value labeles for this slider filter.

Returns  
the value labels.

<span id="a5e2e527d77390dc02db1bd1cbdce6460" class="anchor"></span>
|                                              |     |     |     |       |
|----------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::ValueSliderFilter::max | (   |     | )   | const |

Get the maximum allowed value.

Returns  
maximum value

<span id="ab6a8d69f025709d3ee09d7cb362eba03" class="anchor"></span>
|                                              |     |     |     |       |
|----------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::ValueSliderFilter::min | (   |     | )   | const |

Get the minimum allowed value.

Returns  
mimimum value

<span id="ac868b40a91520b9a56c2ed98152f1a1a" class="anchor"></span>
|                                                            |     |         |       |     |     |
|------------------------------------------------------------|-----|---------|-------|-----|-----|
| void unity::scopes::ValueSliderFilter::set\_default\_value | (   | double  | *val* | )   |     |

Change the default value of this filter.

The default value will be used by the shell if no value is present for this filter in the <a href="../unity.scopes.FilterState/index.html" class="el" title="Stores the state of multiple filters. ">unity::scopes::FilterState</a> (no value has been set by the user).

Parameters  
|     |                        |
|-----|------------------------|
| val | The new default value. |

<span id="a5b336122dcab4ed78974badb9016e622" class="anchor"></span>
|                                                      |     |                                                                                |                  |
|------------------------------------------------------|-----|--------------------------------------------------------------------------------|------------------|
| void unity::scopes::ValueSliderFilter::update\_state | (   | <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> &  | *filter\_state*, |
|                                                      |     | double                                                                         | *value*          |
|                                                      | )   |                                                                                | const            |

Sets value of this filter instance in filter state object.

This is meant to be used to modify a <a href="../unity.scopes.FilterState/index.html" class="el" title="Stores the state of multiple filters. ">FilterState</a> received with a search request before sending it back to the client (UI shell).

Exceptions  
|                       |                                      |
|-----------------------|--------------------------------------|
| unity::LogicException | if value is out of (min, max) range. |

<span id="ae72a0d0a94095bd3d2fb6950a2c9221e" class="anchor"></span>
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
<td>void unity::scopes::ValueSliderFilter::update_state</td>
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
<td>double </td>
<td><em>value</em> </td>
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

Sets value of this filter instance in filter state object, without having an instance of <a href="index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>.

Updates an instance of <a href="../unity.scopes.FilterState/index.html" class="el" title="Stores the state of multiple filters. ">FilterState</a>, without the need for an <a href="index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> instance. This is meant to be used when creating a canned Query that references another scope.

<span id="a7a81dec2e0595cf95effa6f9f24259ba" class="anchor"></span>
|                                                |     |                                                                                      |                 |     |       |
|------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| double unity::scopes::ValueSliderFilter::value | (   | <a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a> const &  | *filter\_state* | )   | const |

Get value of this filter from filter state object.

Returns  
value of this filter or the default value if value is not present in the filter\_state.

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
