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

-   CompletionDetails

CompletionDetails
=================

A container for details about the completion status of a query as well as any additional information regarding the operation of the request. [More...](index.html#details)

`#include <unity/scopes/CompletionDetails.h>`

<span id="pub-types"></span> Public Types
-----------------------------------------

enum  
<a href="index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="el">CompletionStatus</a> { **OK**, **Cancelled**, **Error** }
 
Indicates the completion status for a query. [More...](index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c)
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#a7d7e63b4ef6a1286bfd9746efd58e926" class="el">CompletionDetails</a> (<a href="index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="el">CompletionStatus</a> <a href="index.html#ad9fdc4fb9b50a64bf29b0427e48c8c07" class="el">status</a>)
 
Create CompletionDetails with the given completion status. More...
 
 
<a href="index.html#af85a27d3c36fc776f234712dcb4da55c" class="el">CompletionDetails</a> (<a href="index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="el">CompletionStatus</a> <a href="index.html#ad9fdc4fb9b50a64bf29b0427e48c8c07" class="el">status</a>, std::string const &<a href="index.html#a08cb1da4948495694ef4f131e3f53bce" class="el">message</a>)
 
Create CompletionDetails with the given completion status and message. More...
 
<a href="index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="el">CompletionStatus</a> 
<a href="index.html#ad9fdc4fb9b50a64bf29b0427e48c8c07" class="el">status</a> () const noexcept
 
Get the completion status. More...
 
std::string 
<a href="index.html#a08cb1da4948495694ef4f131e3f53bce" class="el">message</a> () const
 
Get the completion message string. More...
 
void 
<a href="index.html#af296751d26e25283e7287efaaf01878b" class="el">add_info</a> (<a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a> const &info)
 
Add additional operation info to the info list. More...
 
std::vector&lt; <a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a> &gt; 
<a href="index.html#ad1d378fbd9600558920faafbe08e5f74" class="el">info_list</a> () const
 
Get a list of all additional operation info. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a62928d8bb5782528159eb51bb08ba34a" class="anchor"></span>  
**CompletionDetails** (<a href="index.html" class="el">CompletionDetails</a> const &other)
 
<span id="ae6b1ea9b02287e13bf2d0397ccf489a7" class="anchor"></span>  
**CompletionDetails** (<a href="index.html" class="el">CompletionDetails</a> &&)
 
<span id="af6ebd300795d8116559abad4ff21ceff" class="anchor"></span> <a href="index.html" class="el">CompletionDetails</a> & 
**operator=** (<a href="index.html" class="el">CompletionDetails</a> const &other)
 
<span id="a2f853708d17bc4d5e28ba38bc0b0f8d5" class="anchor"></span> <a href="index.html" class="el">CompletionDetails</a> & 
**operator=** (<a href="index.html" class="el">CompletionDetails</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

A container for details about the completion status of a query as well as any additional information regarding the operation of the request.

Member Enumeration Documentation
--------------------------------

<span id="a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="anchor"></span>
|                                                                                                                               |
|-------------------------------------------------------------------------------------------------------------------------------|
| enum <a href="index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="el">unity::scopes::CompletionDetails::CompletionStatus</a> |

Indicates the completion status for a query.

The `Error` enumerator indicates that a query terminated abnormally, for example, a scope could not be reached over the network or explicitly reported an error.

Constructor & Destructor Documentation
--------------------------------------

<span id="a7d7e63b4ef6a1286bfd9746efd58e926" class="anchor"></span>
|                                                     |     |                                                                                         |          |     |     |
|-----------------------------------------------------|-----|-----------------------------------------------------------------------------------------|----------|-----|-----|
| unity::scopes::CompletionDetails::CompletionDetails | (   | <a href="index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="el">CompletionStatus</a>  | *status* | )   |     |

Create <a href="index.html" class="el" title="A container for details about the completion status of a query as well as any additional information ...">CompletionDetails</a> with the given completion status.

Parameters  
|        |                                               |
|--------|-----------------------------------------------|
| status | Indicates the completion status of the query. |

<span id="af85a27d3c36fc776f234712dcb4da55c" class="anchor"></span>
|                                                     |     |                                                                                         |            |
|-----------------------------------------------------|-----|-----------------------------------------------------------------------------------------|------------|
| unity::scopes::CompletionDetails::CompletionDetails | (   | <a href="index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="el">CompletionStatus</a>  | *status*,  |
|                                                     |     | std::string const &                                                                     | *message*  |
|                                                     | )   |                                                                                         |            |

Create <a href="index.html" class="el" title="A container for details about the completion status of a query as well as any additional information ...">CompletionDetails</a> with the given completion status and message.

Parameters  
|         |                                                       |
|---------|-------------------------------------------------------|
| status  | Indicates the completion status of the query.         |
| message | Contains further details about the completion status. |

Member Function Documentation
-----------------------------

<span id="af296751d26e25283e7287efaaf01878b" class="anchor"></span>
|                                                  |     |                                                                                          |        |     |     |
|--------------------------------------------------|-----|------------------------------------------------------------------------------------------|--------|-----|-----|
| void unity::scopes::CompletionDetails::add\_info | (   | <a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a> const &  | *info* | )   |     |

Add additional operation info to the info list.

Parameters  
|      |                                                                                           |
|------|-------------------------------------------------------------------------------------------|
| info | Contains details about something of interest that occurs during the operation of a query. |

<span id="ad1d378fbd9600558920faafbe08e5f74" class="anchor"></span>
|                                                                                                                                                   |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| std::vector&lt; <a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a> &gt; unity::scopes::CompletionDetails::info\_list | (   |     | )   | const |

Get a list of all additional operation info.

Returns  
List containing additional information regarding the operation of the query.

<span id="a08cb1da4948495694ef4f131e3f53bce" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::CompletionDetails::message | (   |     | )   | const |

Get the completion message string.

Returns  
The completion message string.

<span id="ad9fdc4fb9b50a64bf29b0427e48c8c07" class="anchor"></span>
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
<td><a href="index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="el">CompletionDetails::CompletionStatus</a> unity::scopes::CompletionDetails::status</td>
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

Get the completion status.

Returns  
Enum indicating the completion status of the query.

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
