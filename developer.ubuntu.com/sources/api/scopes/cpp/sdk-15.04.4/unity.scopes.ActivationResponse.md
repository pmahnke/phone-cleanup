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

-   ActivationResponse

ActivationResponse
==================

Response to a result activation. [More...](index.html#details)

`#include <unity/scopes/ActivationResponse.h>`

<span id="pub-types"></span> Public Types
-----------------------------------------

enum  
<a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02" class="el">Status</a> {
  <a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02aa3c4b9a3c5fcb54e5cce7d473cecfde3" class="el">NotHandled</a>, <a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02aa1a5253f6bf4d7a39ebb4e990c05508f" class="el">ShowDash</a>, <a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02af5f1369ea32773936a8339e0811be045" class="el">HideDash</a>, <a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02a8fd3954d3410ba938ee9faf58bda7912" class="el">ShowPreview</a>,
  <a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02a91ca5a8fc7bc1e5895336fbca9bc0ac2" class="el">PerformQuery</a>, <a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02a80e4269cf8263509c6a99914d40a1c00" class="el">UpdateResult</a>, <a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02ac0d0d3b809d0f7a051ca474b15a69660" class="el">UpdatePreview</a>
}
 
Status of a <a href="../unity.scopes.ScopeBase/index.html#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" class="el" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a>, <a href="../unity.scopes.ScopeBase/index.html#a2f4d476fa790349c9a7de52be3232d11" class="el" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a>, or <a href="../unity.scopes.ScopeBase/index.html#a7ac39ca44f4790dd36900657692d0565" class="el" title="Invoked when a scope is requested to handle a result in-card action. ">unity::scopes::ScopeBase::activate_result_action</a> request. [More...](index.html#a726cf6ec58d4e035e2cdc14cda152d02)
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#ac3b7700c436ec2413c1d6a3ca785cc92" class="el">ActivationResponse</a> (<a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02" class="el">Status</a> <a href="index.html#a7caef418f9e400017d5c62c9cf25c9b8" class="el">status</a>)
 
Creates ActivationResponse with given status. More...
 
 
<a href="index.html#ac2c2769688b650df4e6333c052076b71" class="el">ActivationResponse</a> (<a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> const &<a href="index.html#af945b59acaaa90931743ec6ea5b0eac6" class="el">query</a>)
 
Creates an ActivationResponse with status Status::PerformQuery and a search query to be executed. More...
 
 
<a href="index.html#a2221da7ee9e35bbf1cf0a62812120e6b" class="el">ActivationResponse</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> const &<a href="index.html#a342e63bf810daa6ccd7a69520e63fb90" class="el">updated_result</a>)
 
Creates an ActivationResponse with status Status::UpdateResult and an updated result that replaces the original result of the action. More...
 
 
<a href="index.html#aedfc9aceac4127af885311788201a09f" class="el">ActivationResponse</a> (<a href="../unity.scopes/index.html#aed3b7b1daf2e49d0a820ef931caa792d" class="el">PreviewWidgetList</a> const &<a href="index.html#a640e02cda7bff66aed9af88ff872b2ed" class="el">updated_widgets</a>)
 
Creates ActivationResponse with status Status::UpdatePreview and an updated list of preview widgets that replace the original widgets in the preview. Widgets not included in this list stay intact and are still displayed in the preview. Responding with this type of ActivationResponse outside of a preview context will not have any effect. More...
 
<a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02" class="el">ActivationResponse::Status</a> 
<a href="index.html#a7caef418f9e400017d5c62c9cf25c9b8" class="el">status</a> () const
 
Get activation status. More...
 
void 
<a href="index.html#abedc7eb1923e89385ee5244a9824524c" class="el">set_scope_data</a> (<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &data)
 
Attach arbitrary data to this response. More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> 
<a href="index.html#a25b12fabb64c492a777dfd4dffc277f3" class="el">scope_data</a> () const
 
Get data attached to this response object. More...
 
<a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> 
<a href="index.html#af945b59acaaa90931743ec6ea5b0eac6" class="el">query</a> () const
 
A query to be executed if status is Status::PerformQuery. More...
 
<a href="../unity.scopes.Result/index.html" class="el">Result</a> 
<a href="index.html#a342e63bf810daa6ccd7a69520e63fb90" class="el">updated_result</a> () const
 
The updated result if status is Status::UpdateResult. More...
 
<a href="../unity.scopes/index.html#aed3b7b1daf2e49d0a820ef931caa792d" class="el">PreviewWidgetList</a> 
<a href="index.html#a640e02cda7bff66aed9af88ff872b2ed" class="el">updated_widgets</a> () const
 
The updated widgets if status is Status::UpdatePreview. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a8d4ddca6cb05fafda0e4232ef1e71a59" class="anchor"></span>  
**ActivationResponse** (<a href="index.html" class="el">ActivationResponse</a> const &other)
 
<span id="ade34428ee4c6a8ddbebeb887ed8485fb" class="anchor"></span>  
**ActivationResponse** (<a href="index.html" class="el">ActivationResponse</a> &&other)
 
<span id="a0ef97d840c409700f2aeb42ee4bf5300" class="anchor"></span> <a href="index.html" class="el">ActivationResponse</a> & 
**operator=** (<a href="index.html" class="el">ActivationResponse</a> const &other)
 
<span id="a112b29b61777dc298ced2026eb9ceb42" class="anchor"></span> <a href="index.html" class="el">ActivationResponse</a> & 
**operator=** (<a href="index.html" class="el">ActivationResponse</a> &&other)
 
<span id="details"></span>
Detailed Description
--------------------

Response to a result activation.

Member Enumeration Documentation
--------------------------------

<span id="a726cf6ec58d4e035e2cdc14cda152d02" class="anchor"></span>
|                                                                                                                      |
|----------------------------------------------------------------------------------------------------------------------|
| enum <a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02" class="el">unity::scopes::ActivationResponse::Status</a> |

Status of a <a href="../unity.scopes.ScopeBase/index.html#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" class="el" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a>, <a href="../unity.scopes.ScopeBase/index.html#a2f4d476fa790349c9a7de52be3232d11" class="el" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a>, or <a href="../unity.scopes.ScopeBase/index.html#a7ac39ca44f4790dd36900657692d0565" class="el" title="Invoked when a scope is requested to handle a result in-card action. ">unity::scopes::ScopeBase::activate_result_action</a> request.

Enumerator
<span id="a726cf6ec58d4e035e2cdc14cda152d02aa3c4b9a3c5fcb54e5cce7d473cecfde3" class="anchor"></span>NotHandled 
Activation of this result wasn't handled by the scope

<span id="a726cf6ec58d4e035e2cdc14cda152d02aa1a5253f6bf4d7a39ebb4e990c05508f" class="anchor"></span>ShowDash 
Activation of this result was handled, show the Dash

<span id="a726cf6ec58d4e035e2cdc14cda152d02af5f1369ea32773936a8339e0811be045" class="anchor"></span>HideDash 
Activation of this result was handled, hide the Dash

<span id="a726cf6ec58d4e035e2cdc14cda152d02a8fd3954d3410ba938ee9faf58bda7912" class="anchor"></span>ShowPreview 
Preview should be requested for this result

<span id="a726cf6ec58d4e035e2cdc14cda152d02a91ca5a8fc7bc1e5895336fbca9bc0ac2" class="anchor"></span>PerformQuery 
Perform new search. This state is implied if creating <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> with <a href="../unity.scopes.CannedQuery/index.html" class="el" title="Parameters of a search query. ">CannedQuery</a> object and is invalid otherwise

<span id="a726cf6ec58d4e035e2cdc14cda152d02a80e4269cf8263509c6a99914d40a1c00" class="anchor"></span>UpdateResult 
Update the result. This state is implied if creating <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> with <a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> object and is invalid otherwise

<span id="a726cf6ec58d4e035e2cdc14cda152d02ac0d0d3b809d0f7a051ca474b15a69660" class="anchor"></span>UpdatePreview 
Update the preview. This state is implied if creating <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> with PreviewWidgetList and is invalid otherwise

Constructor & Destructor Documentation
--------------------------------------

<span id="ac3b7700c436ec2413c1d6a3ca785cc92" class="anchor"></span>
|                                                       |     |                                                                               |          |     |     |
|-------------------------------------------------------|-----|-------------------------------------------------------------------------------|----------|-----|-----|
| unity::scopes::ActivationResponse::ActivationResponse | (   | <a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02" class="el">Status</a>  | *status* | )   |     |

Creates <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> with given status.

Parameters  
|        |                        |
|--------|------------------------|
| status | The activation status. |

<!-- -->

Exceptions  
|                                 |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|---------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::InvalidArgumentException | if status is Status::PerformQuery or Status::Update. To create an <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> for one of these types, use the <a href="index.html#ac2c2769688b650df4e6333c052076b71" class="el" title="Creates an ActivationResponse with status Status::PerformQuery and a search query to be executed...">ActivationResponse(CannedQuery const&amp;)</a> or <a href="index.html#a2221da7ee9e35bbf1cf0a62812120e6b" class="el" title="Creates an ActivationResponse with status Status::UpdateResult and an updated result that replaces th...">ActivationResponse(Result const&amp;)</a> constructors. |

<span id="ac2c2769688b650df4e6333c052076b71" class="anchor"></span>
|                                                       |     |                                                                                      |         |     |     |
|-------------------------------------------------------|-----|--------------------------------------------------------------------------------------|---------|-----|-----|
| unity::scopes::ActivationResponse::ActivationResponse | (   | <a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> const &  | *query* | )   |     |

Creates an <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> with status Status::PerformQuery and a search query to be executed.

Parameters  
|       |                                                |
|-------|------------------------------------------------|
| query | The search query to be executed by the client. |

<span id="a2221da7ee9e35bbf1cf0a62812120e6b" class="anchor"></span>
|                                                       |     |                                                                            |                   |     |     |
|-------------------------------------------------------|-----|----------------------------------------------------------------------------|-------------------|-----|-----|
| unity::scopes::ActivationResponse::ActivationResponse | (   | <a href="../unity.scopes.Result/index.html" class="el">Result</a> const &  | *updated\_result* | )   |     |

Creates an <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> with status Status::UpdateResult and an updated result that replaces the original result of the action.

Parameters  
|                 |                                                                  |
|-----------------|------------------------------------------------------------------|
| updated\_result | The updated result to replace the original result of the action. |

<span id="aedfc9aceac4127af885311788201a09f" class="anchor"></span>
|                                                       |     |                                                                                                                  |                    |     |     |
|-------------------------------------------------------|-----|------------------------------------------------------------------------------------------------------------------|--------------------|-----|-----|
| unity::scopes::ActivationResponse::ActivationResponse | (   | <a href="../unity.scopes/index.html#aed3b7b1daf2e49d0a820ef931caa792d" class="el">PreviewWidgetList</a> const &  | *updated\_widgets* | )   |     |

Creates <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> with status Status::UpdatePreview and an updated list of preview widgets that replace the original widgets in the preview. Widgets not included in this list stay intact and are still displayed in the preview. Responding with this type of <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> outside of a preview context will not have any effect.

Parameters  
|                  |                                                                     |
|------------------|---------------------------------------------------------------------|
| updated\_widgets | The updated widgets to replace the original widgets in the preview. |

<!-- -->

Exceptions  
|                                 |                                    |
|---------------------------------|------------------------------------|
| unity::InvalidArgumentException | if updated\_widgets list is empty. |

Member Function Documentation
-----------------------------

<span id="af945b59acaaa90931743ec6ea5b0eac6" class="anchor"></span>
|                                                                                                                      |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> unity::scopes::ActivationResponse::query | (   |     | )   | const |

A query to be executed if status is Status::PerformQuery.

Exceptions  
|                       |                                                                                                                                                                     |
|-----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if the status of this <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> is anything other than Status::PerformQuery. |

<!-- -->

Returns  
The query to be executed by the client.

<span id="a25b12fabb64c492a777dfd4dffc277f3" class="anchor"></span>
|                                                                                                                    |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> unity::scopes::ActivationResponse::scope\_data | (   |     | )   | const |

Get data attached to this response object.

Returns  
The data attached to the response.

<span id="abedc7eb1923e89385ee5244a9824524c" class="anchor"></span>
|                                                          |     |                                                                              |        |     |     |
|----------------------------------------------------------|-----|------------------------------------------------------------------------------|--------|-----|-----|
| void unity::scopes::ActivationResponse::set\_scope\_data | (   | <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &  | *data* | )   |     |

Attach arbitrary data to this response.

The attached data is sent back to the scope if the status of this response is Status::ShowPreview.

Parameters  
|      |                                              |
|------|----------------------------------------------|
| data | An arbitrary value attached to the response. |

<span id="a7caef418f9e400017d5c62c9cf25c9b8" class="anchor"></span>
|                                                                                                                                            |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="index.html#a726cf6ec58d4e035e2cdc14cda152d02" class="el">ActivationResponse::Status</a> unity::scopes::ActivationResponse::status | (   |     | )   | const |

Get activation status.

Returns  
The activation status.

<span id="a342e63bf810daa6ccd7a69520e63fb90" class="anchor"></span>
|                                                                                                                      |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.Result/index.html" class="el">Result</a> unity::scopes::ActivationResponse::updated\_result | (   |     | )   | const |

The updated result if status is Status::UpdateResult.

Exceptions  
|                       |                                                                                                                                                                     |
|-----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if the status of this <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> is anything other than Status::UpdateResult. |

<!-- -->

Returns  
The result to be displayed instead of the original result.

<span id="a640e02cda7bff66aed9af88ff872b2ed" class="anchor"></span>
|                                                                                                                                                             |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#aed3b7b1daf2e49d0a820ef931caa792d" class="el">PreviewWidgetList</a> unity::scopes::ActivationResponse::updated\_widgets | (   |     | )   | const |

The updated widgets if status is Status::UpdatePreview.

Exceptions  
|                       |                                                                                                                                                                      |
|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if the status of this <a href="index.html" class="el" title="Response to a result activation. ">ActivationResponse</a> is anything other than Status::UpdatePreview. |

<!-- -->

Returns  
The widgets to be displayed instead of the original widgets with same IDs.

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
