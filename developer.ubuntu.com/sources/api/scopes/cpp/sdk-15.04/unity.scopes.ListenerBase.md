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
-   [SDK 15.04](../index.html) ›

<!-- -->

-   ListenerBase

ListenerBase
============

Abstract base class to be notified of request completion (such as a query or activation request). [More...](index.html#details)

`#include <unity/scopes/ListenerBase.h>`

Inheritance diagram for unity::scopes::ListenerBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/76a09356-5b12-4dfe-bd5d-5658bba0818f-api/scopes/cpp/sdk-15.04/unity.scopes.ListenerBase/classunity_1_1scopes_1_1_listener_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual void 
<a href="index.html#afb44937749b61c9e3ebfa20ec6e4634b" class="el">finished</a> (<a href="../unity.scopes.CompletionDetails/index.html" class="el">CompletionDetails</a> const &details)=0
 
Called once by the scopes run time after the final result for a request was sent. More...
 
virtual void 
<a href="index.html#a3b38fa642754142f40968f3ff8d1bdc8" class="el">info</a> (<a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a> const &op\_info)
 
Called by the scopes run time each time a scope reports additional information about the reply to a query. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class to be notified of request completion (such as a query or activation request).

See also  
<a href="../unity.scopes.ActivationListenerBase/index.html" class="el" title="Base class to receive a response to a result activation request. ">ActivationListenerBase</a>

<a href="../unity.scopes.PreviewQueryBase/index.html" class="el" title="Abstract base class to represent a particular preview. ">PreviewQueryBase</a>

<a href="../unity.scopes.SearchListenerBase/index.html" class="el" title="Abstract base interface for a client to receive the results of a query. ">SearchListenerBase</a>

Member Function Documentation
-----------------------------

<span id="afb44937749b61c9e3ebfa20ec6e4634b" class="anchor"></span>
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
<td>virtual void unity::scopes::ListenerBase::finished</td>
<td>(</td>
<td><a href="../unity.scopes.CompletionDetails/index.html" class="el">CompletionDetails</a> const &amp; </td>
<td><em>details</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scopes run time after the final result for a request was sent.

Calls to <a href="index.html#afb44937749b61c9e3ebfa20ec6e4634b" class="el" title="Called once by the scopes run time after the final result for a request was sent. ...">finished()</a> are made by an arbitrary thread.

Exceptions thrown from <a href="index.html#afb44937749b61c9e3ebfa20ec6e4634b" class="el" title="Called once by the scopes run time after the final result for a request was sent. ...">finished()</a> are ignored.

Parameters  
|         |                                                                                                                                       |
|---------|---------------------------------------------------------------------------------------------------------------------------------------|
| details | Contains details about the completion status of a query as well as any additional information regarding the operation of the request. |

Implemented in <a href="../unity.scopes.utility.BufferedResultForwarder/index.html#a9bd57e76c08a01560a700d665cc40e96" class="el">unity::scopes::utility::BufferedResultForwarder</a>, and <a href="../unity.scopes.ActivationListenerBase/index.html#a89f1e3697d62b098c73704368d3bc4c8" class="el">unity::scopes::ActivationListenerBase</a>.

<span id="a3b38fa642754142f40968f3ff8d1bdc8" class="anchor"></span>
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
<td>virtual void unity::scopes::ListenerBase::info</td>
<td>(</td>
<td><a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a> const &amp; </td>
<td><em>op_info</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes run time each time a scope reports additional information about the reply to a query.

More than one <a href="index.html#a3b38fa642754142f40968f3ff8d1bdc8" class="el" title="Called by the scopes run time each time a scope reports additional information about the reply to a q...">info()</a> call can arrive during processing of a single query.

Calls to <a href="index.html#a3b38fa642754142f40968f3ff8d1bdc8" class="el" title="Called by the scopes run time each time a scope reports additional information about the reply to a q...">info()</a> are made by an arbitrary thread.

Exceptions thrown from <a href="index.html#a3b38fa642754142f40968f3ff8d1bdc8" class="el" title="Called by the scopes run time each time a scope reports additional information about the reply to a q...">info()</a> are ignored.

Parameters  
|          |                                                         |
|----------|---------------------------------------------------------|
| op\_info | Contains all details of the information being reported. |

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
