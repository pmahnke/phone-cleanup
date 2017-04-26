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

-   Department

Department
==========

A department with optional sub-departments. [More...](index.html#details)

`#include <unity/scopes/Department.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

void 
<a href="index.html#ab17057cef9ce35f1302f5421a087c067" class="el">set_subdepartments</a> (<a href="../unity.scopes/index.html#ab8effc4ea05a59f2ddea896833f07231" class="el">DepartmentList</a> const &departments)
 
Set sub-departments of this department. More...
 
void 
<a href="index.html#acfea57f2fcca24339e0b3c2f58cde567" class="el">add_subdepartment</a> (Department::SCPtr const &department)
 
Add sub-department to this department. More...
 
void 
<a href="index.html#a9ab1192cdfcbce44b9164df11290c217" class="el">set_alternate_label</a> (std::string const &<a href="index.html#aa84ff5c8a1ebaf43beceb8379330db42" class="el">label</a>)
 
Set the alternate label (plural of the normal label) of this department. More...
 
void 
<a href="index.html#af1adb3d18a901c0b8a1cb5b98e924dfa" class="el">set_has_subdepartments</a> (bool <a href="index.html#aee8ee96bcd5a6ce0d6ca5786aa6f6450" class="el">subdepartments</a>=true)
 
Sets has\_subdepartments flag of this department. More...
 
std::string 
<a href="index.html#ad715a9991355c4f08efa6cf32c61b2c6" class="el">id</a> () const
 
Get the identifier of this department. More...
 
std::string 
<a href="index.html#aa84ff5c8a1ebaf43beceb8379330db42" class="el">label</a> () const
 
Get the label of this department. More...
 
std::string 
<a href="index.html#a77c6faaed77693259c0862dca2fc2459" class="el">alternate_label</a> () const
 
Get the alternate label of this department. More...
 
<a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> 
<a href="index.html#a6256e78d1e3eece6e2afd8a63978bce4" class="el">query</a> () const
 
Get the canned query associated with this department. More...
 
<a href="../unity.scopes/index.html#ab8effc4ea05a59f2ddea896833f07231" class="el">DepartmentList</a> 
<a href="index.html#aee8ee96bcd5a6ce0d6ca5786aa6f6450" class="el">subdepartments</a> () const
 
Get list of sub-departments of this department. More...
 
bool 
<a href="index.html#a0ca9c7c16072e881f245063c19fae179" class="el">has_subdepartments</a> () const
 
Check if this department has subdepartments or has\_subdepartments flag is set. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a4b0372ee2eb5b9b99eff3e1a95cf610a" class="anchor"></span>  
**Department** (<a href="index.html" class="el">Department</a> const &other)
 
<span id="af2583eeb0da808e2c16e6e46ee8a1eb1" class="anchor"></span>  
**Department** (<a href="index.html" class="el">Department</a> &&)
 
<span id="a0c97ef4995169f3935efe6f135eca70f" class="anchor"></span> <a href="index.html" class="el">Department</a> & 
**operator=** (<a href="index.html" class="el">Department</a> const &other)
 
<span id="a87990d70c37fe840900db1a610e3f9c9" class="anchor"></span> <a href="index.html" class="el">Department</a> & 
**operator=** (<a href="index.html" class="el">Department</a> &&)
 
<span id="pub-static-methods"></span> Static Public Member Functions
--------------------------------------------------------------------

static Department::UPtr 
<a href="index.html#a11a3b8e9a3317f963d4bc9f46f79922b" class="el">create</a> (<a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> const &<a href="index.html#a6256e78d1e3eece6e2afd8a63978bce4" class="el">query</a>, std::string const &<a href="index.html#aa84ff5c8a1ebaf43beceb8379330db42" class="el">label</a>)
 
Create a department with the given canned query and name. More...
 
static Department::UPtr 
<a href="index.html#a1f4feec9298abd3eefbacf60d9ba1fd9" class="el">create</a> (std::string const &department\_id, <a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> const &<a href="index.html#a6256e78d1e3eece6e2afd8a63978bce4" class="el">query</a>, std::string const &<a href="index.html#aa84ff5c8a1ebaf43beceb8379330db42" class="el">label</a>)
 
Create a department with the given department identifier, canned query, and name. More...
 
<span id="details"></span>
Detailed Description
--------------------

A department with optional sub-departments.

Member Function Documentation
-----------------------------

<span id="acfea57f2fcca24339e0b3c2f58cde567" class="anchor"></span>
|                                                    |     |                            |              |     |     |
|----------------------------------------------------|-----|----------------------------|--------------|-----|-----|
| void unity::scopes::Department::add\_subdepartment | (   | Department::SCPtr const &  | *department* | )   |     |

Add sub-department to this department.

Parameters  
|            |                             |
|------------|-----------------------------|
| department | The subdepartment instance. |

<span id="a77c6faaed77693259c0862dca2fc2459" class="anchor"></span>
|                                                         |     |     |     |       |
|---------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Department::alternate\_label | (   |     | )   | const |

Get the alternate label of this department.

Return the alternate label of this department. The alternate label expresses the plural "all" form of the normal label. For example, if the normal label is "Books", then the alternate label is "All Books". Note that alternate label and can be empty - in that case the normal label should be displayed instead.

Returns  
The alternate label.

<span id="a11a3b8e9a3317f963d4bc9f46f79922b" class="anchor"></span>
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
<td>static Department::UPtr unity::scopes::Department::create</td>
<td>(</td>
<td><a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> const &amp; </td>
<td><em>query</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>label</em> </td>
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

Create a department with the given canned query and name.

The identifier of this department instance is that of the `query` instance (<a href="../unity.scopes.CannedQuery/index.html#a61351960149bb4c0840f020c4e645f66" class="el">CannedQuery::department_id()</a>).

Parameters  
|       |                                                                                                                   |
|-------|-------------------------------------------------------------------------------------------------------------------|
| query | The query (and associated parameters, such as filter state) to be executed when the user selects this department. |
| label | The display name of this department.                                                                              |

<span id="a1f4feec9298abd3eefbacf60d9ba1fd9" class="anchor"></span>
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
<td>static Department::UPtr unity::scopes::Department::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>department_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> const &amp; </td>
<td><em>query</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>label</em> </td>
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

Create a department with the given department identifier, canned query, and name.

The canned query's target department identifier is updated with department\_id. This constructor is convenient for creating multiple departments that use the same query and only need a different department identifier.

Parameters  
|                |                                                                                                                          |
|----------------|--------------------------------------------------------------------------------------------------------------------------|
| department\_id | The department identifier.                                                                                               |
| query          | The canned query (and associated parameters, such as filter state) to be executed when the user selects this department. |
| label          | The display name of this department.                                                                                     |

<span id="a0ca9c7c16072e881f245063c19fae179" class="anchor"></span>
|                                                     |     |     |     |       |
|-----------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Department::has\_subdepartments | (   |     | )   | const |

Check if this department has subdepartments or has\_subdepartments flag is set.

Returns  
true if this deparment has subdepartments or has\_subdepartments flag is set

<span id="ad715a9991355c4f08efa6cf32c61b2c6" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Department::id | (   |     | )   | const |

Get the identifier of this department.

Returns  
The department identifier.

<span id="aa84ff5c8a1ebaf43beceb8379330db42" class="anchor"></span>
|                                              |     |     |     |       |
|----------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Department::label | (   |     | )   | const |

Get the label of this department.

Returns  
The department label.

<span id="a6256e78d1e3eece6e2afd8a63978bce4" class="anchor"></span>
|                                                                                                              |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> unity::scopes::Department::query | (   |     | )   | const |

Get the canned query associated with this department.

Returns  
The canned query for this department.

<span id="a9ab1192cdfcbce44b9164df11290c217" class="anchor"></span>
|                                                       |     |                      |         |     |     |
|-------------------------------------------------------|-----|----------------------|---------|-----|-----|
| void unity::scopes::Department::set\_alternate\_label | (   | std::string const &  | *label* | )   |     |

Set the alternate label (plural of the normal label) of this department.

The alternate label should express the plural "all" form of the normal label. For example, if the normal label is "Books", then the alternate label should be "All Books". The alternate label needs to be provided for the current department only.

Parameters  
|       |                                                                                    |
|-------|------------------------------------------------------------------------------------|
| label | The alternate label to display when showing plural form of this department's name. |

<span id="af1adb3d18a901c0b8a1cb5b98e924dfa" class="anchor"></span>
|                                                          |     |       |                           |     |     |
|----------------------------------------------------------|-----|-------|---------------------------|-----|-----|
| void unity::scopes::Department::set\_has\_subdepartments | (   | bool  | *subdepartments* = `true` | )   |     |

Sets has\_subdepartments flag of this department.

This flag is a display hint for the Shell that indicates if this department has sub-departments and as such should be displayed in a way that suggests further navigation to the user. Setting this flag is not needed when sub-departments have been added with <a href="index.html#ab17057cef9ce35f1302f5421a087c067" class="el" title="Set sub-departments of this department. ">set_subdepartments()</a> method. Setting this flag to false after adding sub-departments with <a href="index.html#ab17057cef9ce35f1302f5421a087c067" class="el" title="Set sub-departments of this department. ">set_subdepartments()</a> throws unity::LogicException.

Exceptions  
|                       |                                                                                                                                                                                                                               |
|-----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if called with false after adding sub-departments with <a href="index.html#ab17057cef9ce35f1302f5421a087c067" class="el" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> |

<span id="ab17057cef9ce35f1302f5421a087c067" class="anchor"></span>
|                                                     |     |                                                                                                               |               |     |     |
|-----------------------------------------------------|-----|---------------------------------------------------------------------------------------------------------------|---------------|-----|-----|
| void unity::scopes::Department::set\_subdepartments | (   | <a href="../unity.scopes/index.html#ab8effc4ea05a59f2ddea896833f07231" class="el">DepartmentList</a> const &  | *departments* | )   |     |

Set sub-departments of this department.

Parameters  
|             |                              |
|-------------|------------------------------|
| departments | The list of sub-departments. |

<span id="aee8ee96bcd5a6ce0d6ca5786aa6f6450" class="anchor"></span>
|                                                                                                                                                |     |     |     |       |
|------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#ab8effc4ea05a59f2ddea896833f07231" class="el">DepartmentList</a> unity::scopes::Department::subdepartments | (   |     | )   | const |

Get list of sub-departments of this department.

Returns  
The list of sub-departments.

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
