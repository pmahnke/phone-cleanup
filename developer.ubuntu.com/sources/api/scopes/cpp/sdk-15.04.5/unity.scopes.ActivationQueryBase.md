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

-   ActivationQueryBase

ActivationQueryBase
===================

Base class for an activation request that is executed inside a scope. [More...](index.html#details)

`#include <unity/scopes/ActivationQueryBase.h>`

Inheritance diagram for unity::scopes::ActivationQueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/505edda9-7e63-4566-9c0a-b8f043a082b8-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActivationQueryBase/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#ae853aab10c2fd7411208a1764b59c439" class="el">ActivationQueryBase</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &<a href="index.html#ac23d5b45f73f8ed38139996ef8c27195" class="el">result</a>, <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &metadata)
 
Create ActivationQueryBase. More...
 
 
<a href="index.html#a2f4b19b45dac666ab59454abdea73ea1" class="el">ActivationQueryBase</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &<a href="index.html#ac23d5b45f73f8ed38139996ef8c27195" class="el">result</a>, <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &metadata, std::string const &<a href="index.html#a95aa7e96b4b0f7b1bc10e2342de02db8" class="el">widget_id</a>, std::string const &<a href="index.html#a0cb38f795f4096a6bc2f40d5c192df6e" class="el">action_id</a>)
 
Create ActivationQueryBase. More...
 
 
<a href="index.html#ad4833abec80f83682b20b8aa4b37ae06" class="el">ActivationQueryBase</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &update\_result, <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &metadata, std::string const &<a href="index.html#a0cb38f795f4096a6bc2f40d5c192df6e" class="el">action_id</a>)
 
Create ActivationQueryBase. More...
 
<span id="af9b8e83ac6716db51aba942aca9cc6be" class="anchor"></span> virtual void 
<a href="index.html#af9b8e83ac6716db51aba942aca9cc6be" class="el">cancelled</a> () override
 
Called when the originator of the activation request cancelled it.
 
virtual <a href="../unity.scopes.ActivationResponse/index.html" class="el">ActivationResponse</a> 
<a href="index.html#a61ed49d8bc56e677ff2eb1f30e6a6b6b" class="el">activate</a> ()
 
Return response to the activation request. More...
 
<a href="../unity.scopes.Result/index.html" class="el">Result</a> 
<a href="index.html#ac23d5b45f73f8ed38139996ef8c27195" class="el">result</a> () const
 
Get the result for this activation request handler. More...
 
<a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> 
<a href="index.html#ae215e7780c87d835893eb0df70f09d3b" class="el">action_metadata</a> () const
 
Get the metadata for this activation request handler. More...
 
std::string 
<a href="index.html#a95aa7e96b4b0f7b1bc10e2342de02db8" class="el">widget_id</a> () const
 
Get the widget identifier for this activation request handler. More...
 
std::string 
<a href="index.html#a0cb38f795f4096a6bc2f40d5c192df6e" class="el">action_id</a> () const
 
Get the action identifier for this activation request handler. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/abcd9bd9-0944-41ae-99b6-a27ede5c0221-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActivationQueryBase/closed.png) Public Member Functions inherited from <a href="../unity.scopes.QueryBase/index.html" class="el">unity::scopes::QueryBase</a>
bool 
<a href="../unity.scopes.QueryBase/index.html#a095e61eabe2042eeea5c4df1a444d7d4" class="el">valid</a> () const
 
Check whether this query is still valid. More...
 
<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">unity::scopes::VariantMap</a> 
<a href="../unity.scopes.QueryBase/index.html#ab6a25ba587387a7f490b8b5a081e9ed6" class="el">settings</a> () const
 
Returns a dictionary with the scope's current settings. More...
 
<span id="details"></span>
Detailed Description
--------------------

Base class for an activation request that is executed inside a scope.

The default implementation responds with ActivationResponse(ActivationResponse::Status::NotHandled). Reimplement this class and return an instance from <a href="../unity.scopes.ScopeBase/index.html#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" class="el" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate</a> method for custom activation handling.

Constructor & Destructor Documentation
--------------------------------------

<span id="ae853aab10c2fd7411208a1764b59c439" class="anchor"></span>
|                                                         |     |                                                                                            |             |
|---------------------------------------------------------|-----|--------------------------------------------------------------------------------------------|-------------|
| unity::scopes::ActivationQueryBase::ActivationQueryBase | (   | <a href="../unity.scopes.Result/index.html" class="el">Result</a> const &                  | *result*,   |
|                                                         |     | <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &  | *metadata*  |
|                                                         | )   |                                                                                            |             |

Create <a href="index.html" class="el" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a>.

Parameters  
|          |                                                                                                                                                                                                                                                      |
|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| result   | The result received by <a href="../unity.scopes.ScopeBase/index.html#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" class="el" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate()</a>.   |
| metadata | The metadata received by <a href="../unity.scopes.ScopeBase/index.html#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" class="el" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate()</a>. |

<span id="a2f4b19b45dac666ab59454abdea73ea1" class="anchor"></span>
|                                                         |     |                                                                                            |               |
|---------------------------------------------------------|-----|--------------------------------------------------------------------------------------------|---------------|
| unity::scopes::ActivationQueryBase::ActivationQueryBase | (   | <a href="../unity.scopes.Result/index.html" class="el">Result</a> const &                  | *result*,     |
|                                                         |     | <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &  | *metadata*,   |
|                                                         |     | std::string const &                                                                        | *widget\_id*, |
|                                                         |     | std::string const &                                                                        | *action\_id*  |
|                                                         | )   |                                                                                            |               |

Create <a href="index.html" class="el" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a>.

Parameters  
|            |                                                                                                                                                                                                                                       |
|------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| result     | The result received by <a href="../unity.scopes.ScopeBase/index.html#a2f4d476fa790349c9a7de52be3232d11" class="el" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>.            |
| metadata   | The metadata received by <a href="../unity.scopes.ScopeBase/index.html#a2f4d476fa790349c9a7de52be3232d11" class="el" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>.          |
| widget\_id | The widget identifier receiver of <a href="../unity.scopes.ScopeBase/index.html#a2f4d476fa790349c9a7de52be3232d11" class="el" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>. |
| action\_id | The action identifier receiver of <a href="../unity.scopes.ScopeBase/index.html#a2f4d476fa790349c9a7de52be3232d11" class="el" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>. |

<span id="ad4833abec80f83682b20b8aa4b37ae06" class="anchor"></span>
|                                                         |     |                                                                                            |                   |
|---------------------------------------------------------|-----|--------------------------------------------------------------------------------------------|-------------------|
| unity::scopes::ActivationQueryBase::ActivationQueryBase | (   | <a href="../unity.scopes.Result/index.html" class="el">Result</a> const &                  | *update\_result*, |
|                                                         |     | <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> const &  | *metadata*,       |
|                                                         |     | std::string const &                                                                        | *action\_id*      |
|                                                         | )   |                                                                                            |                   |

Create <a href="index.html" class="el" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a>.

Parameters  
|                |                                                                                                                                                                                                                                                      |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| update\_result | The result received by <a href="../unity.scopes.ScopeBase/index.html#a7ac39ca44f4790dd36900657692d0565" class="el" title="Invoked when a scope is requested to handle a result in-card action. ">ScopeBase::activate_result_action()</a>.            |
| metadata       | The metadata received by <a href="../unity.scopes.ScopeBase/index.html#a7ac39ca44f4790dd36900657692d0565" class="el" title="Invoked when a scope is requested to handle a result in-card action. ">ScopeBase::activate_result_action()</a>.          |
| action\_id     | The action identifier received by <a href="../unity.scopes.ScopeBase/index.html#a7ac39ca44f4790dd36900657692d0565" class="el" title="Invoked when a scope is requested to handle a result in-card action. ">ScopeBase::activate_result_action()</a>. |

Member Function Documentation
-----------------------------

<span id="a0cb38f795f4096a6bc2f40d5c192df6e" class="anchor"></span>
|                                                            |     |     |     |       |
|------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ActivationQueryBase::action\_id | (   |     | )   | const |

Get the action identifier for this activation request handler.

Action identifier is empty when using the <a href="index.html" class="el" title="Base class for an activation request that is executed inside a scope. ">unity::scopes::ActivationQueryBase(Result const&amp; result, ActionMetadata const&amp; metadata)</a> constructor.

Returns  
The action identifier passed to the constructor of this object.

<span id="ae215e7780c87d835893eb0df70f09d3b" class="anchor"></span>
|                                                                                                                                        |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a> unity::scopes::ActivationQueryBase::action\_metadata | (   |     | )   | const |

Get the metadata for this activation request handler.

Returns  
The metadata passed to the constructor of this object.

<span id="a61ed49d8bc56e677ff2eb1f30e6a6b6b" class="anchor"></span>
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
<td><a href="../unity.scopes.ActivationResponse/index.html" class="el">ActivationResponse</a> unity::scopes::ActivationQueryBase::activate</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Return response to the activation request.

The response is received by the originator of the request. Default implementation returns <a href="../unity.scopes.ActivationResponse/index.html" class="el" title="Response to a result activation. ">ActivationResponse</a>(ActivationResponse::Status::NotHandled.

Returns  
The response to the activation request.

<span id="ac23d5b45f73f8ed38139996ef8c27195" class="anchor"></span>
|                                                                                                              |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.Result/index.html" class="el">Result</a> unity::scopes::ActivationQueryBase::result | (   |     | )   | const |

Get the result for this activation request handler.

Returns  
The result passed to the constructor of this object.

<span id="a95aa7e96b4b0f7b1bc10e2342de02db8" class="anchor"></span>
|                                                            |     |     |     |       |
|------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ActivationQueryBase::widget\_id | (   |     | )   | const |

Get the widget identifier for this activation request handler.

Widget identifier is empty when using the <a href="index.html" class="el" title="Base class for an activation request that is executed inside a scope. ">unity::scopes::ActivationQueryBase(Result const&amp; result, ActionMetadata const&amp; metadata)</a> constructor.

Returns  
The widget identifier passed to the constructor of this object.

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
