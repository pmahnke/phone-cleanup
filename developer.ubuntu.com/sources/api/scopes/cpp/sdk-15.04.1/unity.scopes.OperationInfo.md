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

-   OperationInfo

OperationInfo
=============

A container for details about something of interest that occurs during the operation of a request. [More...](index.html#details)

`#include <unity/scopes/OperationInfo.h>`

<span id="pub-types"></span> Public Types
-----------------------------------------

enum  
<a href="index.html#a57178085d8ea6d116347b8fa3fe8878d" class="el">InfoCode</a> {
  **Unknown**, **NoInternet**, **PoorInternet**, **NoLocationData**,
  **InaccurateLocationData**, **ResultsIncomplete**, **DefaultSettingsUsed**, **SettingsProblem**,
  **LastInfoCode\_** = SettingsProblem
}
 
Indicates the type of / cause for the information being reported. [More...](index.html#a57178085d8ea6d116347b8fa3fe8878d)
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#a38875517344af4ca90565cc523af918b" class="el">OperationInfo</a> (<a href="index.html#a57178085d8ea6d116347b8fa3fe8878d" class="el">InfoCode</a> <a href="index.html#a7e00ec86a3a0974df981146cea0202f9" class="el">code</a>)
 
Create OperationInfo with the given info code. More...
 
 
<a href="index.html#a711cd4c4d7ca4a4ff884b81440fd3934" class="el">OperationInfo</a> (<a href="index.html#a57178085d8ea6d116347b8fa3fe8878d" class="el">InfoCode</a> <a href="index.html#a7e00ec86a3a0974df981146cea0202f9" class="el">code</a>, std::string <a href="index.html#a2676a34824fc6c2481dbc30836d7ebf2" class="el">message</a>)
 
Create OperationInfo with the given info code and message. More...
 
<a href="index.html#a57178085d8ea6d116347b8fa3fe8878d" class="el">InfoCode</a> 
<a href="index.html#a7e00ec86a3a0974df981146cea0202f9" class="el">code</a> () const noexcept
 
Get the info code. More...
 
std::string 
<a href="index.html#a2676a34824fc6c2481dbc30836d7ebf2" class="el">message</a> () const
 
Get the message string. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a67ba27fc68ab22305f8f919cbbd879b0" class="anchor"></span>  
**OperationInfo** (<a href="index.html" class="el">OperationInfo</a> const &other)
 
<span id="a9ce4f4b7360835f1b7f964e214ef94c1" class="anchor"></span>  
**OperationInfo** (<a href="index.html" class="el">OperationInfo</a> &&)
 
<span id="af468429806a5e59b182d084ff5c38ede" class="anchor"></span> <a href="index.html" class="el">OperationInfo</a> & 
**operator=** (<a href="index.html" class="el">OperationInfo</a> const &other)
 
<span id="a21ee79454820214be60a00d6fd0a87c1" class="anchor"></span> <a href="index.html" class="el">OperationInfo</a> & 
**operator=** (<a href="index.html" class="el">OperationInfo</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

A container for details about something of interest that occurs during the operation of a request.

Member Enumeration Documentation
--------------------------------

<span id="a57178085d8ea6d116347b8fa3fe8878d" class="anchor"></span>
|                                                                                                                   |
|-------------------------------------------------------------------------------------------------------------------|
| enum <a href="index.html#a57178085d8ea6d116347b8fa3fe8878d" class="el">unity::scopes::OperationInfo::InfoCode</a> |

Indicates the type of / cause for the information being reported.

For example, the `NoInternet` enumerator may indicate that access to the internet was required in order to properly evaluate a request, but no internet connectivity was available.

Constructor & Destructor Documentation
--------------------------------------

<span id="a38875517344af4ca90565cc523af918b" class="anchor"></span>
|                                             |     |                                                                                 |        |     |     |
|---------------------------------------------|-----|---------------------------------------------------------------------------------|--------|-----|-----|
| unity::scopes::OperationInfo::OperationInfo | (   | <a href="index.html#a57178085d8ea6d116347b8fa3fe8878d" class="el">InfoCode</a>  | *code* | )   |     |

Create <a href="index.html" class="el" title="A container for details about something of interest that occurs during the operation of a request...">OperationInfo</a> with the given info code.

Parameters  
|      |                                                    |
|------|----------------------------------------------------|
| code | Indicates the type of / cause for the information. |

<span id="a711cd4c4d7ca4a4ff884b81440fd3934" class="anchor"></span>
|                                             |     |                                                                                 |            |
|---------------------------------------------|-----|---------------------------------------------------------------------------------|------------|
| unity::scopes::OperationInfo::OperationInfo | (   | <a href="index.html#a57178085d8ea6d116347b8fa3fe8878d" class="el">InfoCode</a>  | *code*,    |
|                                             |     | std::string                                                                     | *message*  |
|                                             | )   |                                                                                 |            |

Create <a href="index.html" class="el" title="A container for details about something of interest that occurs during the operation of a request...">OperationInfo</a> with the given info code and message.

Parameters  
|         |                                                    |
|---------|----------------------------------------------------|
| code    | Indicates the type of / cause for the information. |
| message | Contains further details about the info code.      |

Member Function Documentation
-----------------------------

<span id="a7e00ec86a3a0974df981146cea0202f9" class="anchor"></span>
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
<td><a href="index.html#a57178085d8ea6d116347b8fa3fe8878d" class="el">OperationInfo::InfoCode</a> unity::scopes::OperationInfo::code</td>
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

Get the info code.

Returns  
Enum indicating the type of info contained.

<span id="a2676a34824fc6c2481dbc30836d7ebf2" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::OperationInfo::message | (   |     | )   | const |

Get the message string.

Returns  
The message string.

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
