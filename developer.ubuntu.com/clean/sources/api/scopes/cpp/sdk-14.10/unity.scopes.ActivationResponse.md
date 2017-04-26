---
Title: unity.scopes.ActivationResponse
---
        
ActivationResponse
==================

Response to a result activation. [More...](#details)

`#include <unity/scopes/ActivationResponse.h>`

pub-types
-----------------------------------------

enum  
<a href="#a726cf6ec58d4e035e2cdc14cda152d02">Status</a> {
  <a href="#a726cf6ec58d4e035e2cdc14cda152d02aa3c4b9a3c5fcb54e5cce7d473cecfde3">NotHandled</a>, <a href="#a726cf6ec58d4e035e2cdc14cda152d02aa1a5253f6bf4d7a39ebb4e990c05508f">ShowDash</a>, <a href="#a726cf6ec58d4e035e2cdc14cda152d02af5f1369ea32773936a8339e0811be045">HideDash</a>, <a href="#a726cf6ec58d4e035e2cdc14cda152d02a8fd3954d3410ba938ee9faf58bda7912">ShowPreview</a>,
  <a href="#a726cf6ec58d4e035e2cdc14cda152d02a91ca5a8fc7bc1e5895336fbca9bc0ac2">PerformQuery</a>
}
 
Status of a <a href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes run time when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a> or <a href="unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a> request. [More...](#a726cf6ec58d4e035e2cdc14cda152d02)
 
pub-methods
------------------------------------------------------

 
<a href="#ac3b7700c436ec2413c1d6a3ca785cc92">ActivationResponse</a> (<a href="#a726cf6ec58d4e035e2cdc14cda152d02">Status</a> <a href="#a7caef418f9e400017d5c62c9cf25c9b8">status</a>)
 
Creates ActivationResponse with given status. More...
 
 
<a href="#ac2c2769688b650df4e6333c052076b71">ActivationResponse</a> (<a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &<a href="#af945b59acaaa90931743ec6ea5b0eac6">query</a>)
 
Creates an ActivationResponse with status Status::PerformQuery and a search query to be executed. More...
 
<a href="#a726cf6ec58d4e035e2cdc14cda152d02">ActivationResponse::Status</a> 
<a href="#a7caef418f9e400017d5c62c9cf25c9b8">status</a> () const
 
Get activation status. More...
 
void 
<a href="#abedc7eb1923e89385ee5244a9824524c">set_scope_data</a> (<a href="unity.scopes.Variant.md">Variant</a> const &data)
 
Attach arbitrary data to this response. More...
 
<a href="unity.scopes.Variant.md">Variant</a> 
<a href="#a25b12fabb64c492a777dfd4dffc277f3">scope_data</a> () const
 
Get data attached to this response object. More...
 
<a href="unity.scopes.CannedQuery.md">CannedQuery</a> 
<a href="#af945b59acaaa90931743ec6ea5b0eac6">query</a> () const
 
A query to be executed if status is Status::PerformQuery. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**ActivationResponse** (<a href="index.html">ActivationResponse</a> const &other)
 
 
**ActivationResponse** (<a href="index.html">ActivationResponse</a> &&other)
 
<a href="index.html">ActivationResponse</a> & 
**operator=** (<a href="index.html">ActivationResponse</a> const &other)
 
<a href="index.html">ActivationResponse</a> & 
**operator=** (<a href="index.html">ActivationResponse</a> &&other)
 
<span id="details"></span>
Detailed Description
--------------------

Response to a result activation.

Member Enumeration Documentation
--------------------------------

<span id="a726cf6ec58d4e035e2cdc14cda152d02" class="anchor"></span>
|                                                                                                                      |
|----------------------------------------------------------------------------------------------------------------------|
| enum <a href="#a726cf6ec58d4e035e2cdc14cda152d02">unity::scopes::ActivationResponse::Status</a> |

Status of a <a href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes run time when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a> or <a href="unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a> request.

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
Perform new search. This state is implied if creating <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> with <a href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a> object and is invalid otherwise

Constructor & Destructor Documentation
--------------------------------------

<span id="ac3b7700c436ec2413c1d6a3ca785cc92" class="anchor"></span>
|                                                       |     |                                                                               |          |     |     |
|-------------------------------------------------------|-----|-------------------------------------------------------------------------------|----------|-----|-----|
| unity::scopes::ActivationResponse::ActivationResponse | (   | <a href="#a726cf6ec58d4e035e2cdc14cda152d02">Status</a>  | *status* | )   |     |

Creates <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> with given status.

Parameters  
|        |                        |
|--------|------------------------|
| status | The activation status. |

<!-- -->

Exceptions  
|                                 |                                                                                                                                                                                                                                                                                                                                                                                                                  |
|---------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::InvalidArgumentException | if status is Status::PerformQuery. To create an <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> of that type, use the <a href="#ac2c2769688b650df4e6333c052076b71" title="Creates an ActivationResponse with status Status::PerformQuery and a search query to be executed...">ActivationResponse(CannedQuery const&amp;)</a> constructor. |

<span id="ac2c2769688b650df4e6333c052076b71" class="anchor"></span>
|                                                       |     |                                                                                      |         |     |     |
|-------------------------------------------------------|-----|--------------------------------------------------------------------------------------|---------|-----|-----|
| unity::scopes::ActivationResponse::ActivationResponse | (   | <a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &  | *query* | )   |     |

Creates an <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> with status Status::PerformQuery and a search query to be executed.

Parameters  
|       |                                                |
|-------|------------------------------------------------|
| query | The search query to be executed by the client. |

Member Function Documentation
-----------------------------

<span id="af945b59acaaa90931743ec6ea5b0eac6" class="anchor"></span>
|                                                                                                                      |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.CannedQuery.md">CannedQuery</a> unity::scopes::ActivationResponse::query | (   |     | )   | const |

A query to be executed if status is Status::PerformQuery.

Exceptions  
|                       |                                                                                                                                                                     |
|-----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if the status of this <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> is anything other than Status::PerformQuery. |

<!-- -->

Returns  
The query to be executed by the client.

<span id="a25b12fabb64c492a777dfd4dffc277f3" class="anchor"></span>
|                                                                                                                    |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.Variant.md">Variant</a> unity::scopes::ActivationResponse::scope\_data | (   |     | )   | const |

Get data attached to this response object.

Returns  
The data attached to response.

<span id="abedc7eb1923e89385ee5244a9824524c" class="anchor"></span>
|                                                          |     |                                                                              |        |     |     |
|----------------------------------------------------------|-----|------------------------------------------------------------------------------|--------|-----|-----|
| void unity::scopes::ActivationResponse::set\_scope\_data | (   | <a href="unity.scopes.Variant.md">Variant</a> const &  | *data* | )   |     |

Attach arbitrary data to this response.

The attached data is sent back to the scope if the status of this response is Status::ShowPreview.

Parameters  
|      |                                      |
|------|--------------------------------------|
| data | arbitrary value attached to response |

<span id="a7caef418f9e400017d5c62c9cf25c9b8" class="anchor"></span>
|                                                                                                                                            |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="#a726cf6ec58d4e035e2cdc14cda152d02">ActivationResponse::Status</a> unity::scopes::ActivationResponse::status | (   |     | )   | const |

Get activation status.

Returns  
The activation status.

