---
Title: unity.scopes.ActivationResponse
---

# unity.scopes.ActivationResponse

<p>Response to a result activation.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ActivationResponse.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:a726cf6ec58d4e035e2cdc14cda152d02"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a726cf6ec58d4e035e2cdc14cda152d02">Status</a> { <br />
&#160;&#160;<a class="el" href="#a726cf6ec58d4e035e2cdc14cda152d02aa3c4b9a3c5fcb54e5cce7d473cecfde3">NotHandled</a>, 
<a class="el" href="#a726cf6ec58d4e035e2cdc14cda152d02aa1a5253f6bf4d7a39ebb4e990c05508f">ShowDash</a>, 
<a class="el" href="#a726cf6ec58d4e035e2cdc14cda152d02af5f1369ea32773936a8339e0811be045">HideDash</a>, 
<a class="el" href="#a726cf6ec58d4e035e2cdc14cda152d02a8fd3954d3410ba938ee9faf58bda7912">ShowPreview</a>, 
<br />
&#160;&#160;<a class="el" href="#a726cf6ec58d4e035e2cdc14cda152d02a91ca5a8fc7bc1e5895336fbca9bc0ac2">PerformQuery</a>
<br />
}</td></tr>
<tr class="memdesc:a726cf6ec58d4e035e2cdc14cda152d02"><td class="mdescLeft">&#160;</td><td class="mdescRight">Status of a <a class="el" href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes run time when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a> or <a class="el" href="unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a> request.  <a href="#a726cf6ec58d4e035e2cdc14cda152d02">More...</a><br /></td></tr>
<tr class="separator:a726cf6ec58d4e035e2cdc14cda152d02"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ac3b7700c436ec2413c1d6a3ca785cc92"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac3b7700c436ec2413c1d6a3ca785cc92">ActivationResponse</a> (<a class="el" href="#a726cf6ec58d4e035e2cdc14cda152d02">Status</a> <a class="el" href="#a7caef418f9e400017d5c62c9cf25c9b8">status</a>)</td></tr>
<tr class="memdesc:ac3b7700c436ec2413c1d6a3ca785cc92"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates ActivationResponse with given status.  More...<br /></td></tr>
<tr class="separator:ac3b7700c436ec2413c1d6a3ca785cc92"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac2c2769688b650df4e6333c052076b71"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac2c2769688b650df4e6333c052076b71">ActivationResponse</a> (<a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;<a class="el" href="#af945b59acaaa90931743ec6ea5b0eac6">query</a>)</td></tr>
<tr class="memdesc:ac2c2769688b650df4e6333c052076b71"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates an ActivationResponse with status Status::PerformQuery and a search query to be executed.  More...<br /></td></tr>
<tr class="separator:ac2c2769688b650df4e6333c052076b71"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7caef418f9e400017d5c62c9cf25c9b8"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a726cf6ec58d4e035e2cdc14cda152d02">ActivationResponse::Status</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7caef418f9e400017d5c62c9cf25c9b8">status</a> () const </td></tr>
<tr class="memdesc:a7caef418f9e400017d5c62c9cf25c9b8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get activation status.  More...<br /></td></tr>
<tr class="separator:a7caef418f9e400017d5c62c9cf25c9b8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abedc7eb1923e89385ee5244a9824524c"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#abedc7eb1923e89385ee5244a9824524c">set_scope_data</a> (<a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;data)</td></tr>
<tr class="memdesc:abedc7eb1923e89385ee5244a9824524c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Attach arbitrary data to this response.  More...<br /></td></tr>
<tr class="separator:abedc7eb1923e89385ee5244a9824524c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a25b12fabb64c492a777dfd4dffc277f3"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a25b12fabb64c492a777dfd4dffc277f3">scope_data</a> () const </td></tr>
<tr class="memdesc:a25b12fabb64c492a777dfd4dffc277f3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get data attached to this response object.  More...<br /></td></tr>
<tr class="separator:a25b12fabb64c492a777dfd4dffc277f3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af945b59acaaa90931743ec6ea5b0eac6"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af945b59acaaa90931743ec6ea5b0eac6">query</a> () const </td></tr>
<tr class="memdesc:af945b59acaaa90931743ec6ea5b0eac6"><td class="mdescLeft">&#160;</td><td class="mdescRight">A query to be executed if status is Status::PerformQuery.  More...<br /></td></tr>
<tr class="separator:af945b59acaaa90931743ec6ea5b0eac6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a8d4ddca6cb05fafda0e4232ef1e71a59"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ActivationResponse</b> (<a class="el" href="index.html">ActivationResponse</a> const &amp;other)</td></tr>
<tr class="separator:a8d4ddca6cb05fafda0e4232ef1e71a59"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ade34428ee4c6a8ddbebeb887ed8485fb"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ActivationResponse</b> (<a class="el" href="index.html">ActivationResponse</a> &amp;&amp;other)</td></tr>
<tr class="separator:ade34428ee4c6a8ddbebeb887ed8485fb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0ef97d840c409700f2aeb42ee4bf5300"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ActivationResponse</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ActivationResponse</a> const &amp;other)</td></tr>
<tr class="separator:a0ef97d840c409700f2aeb42ee4bf5300"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a112b29b61777dc298ced2026eb9ceb42"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ActivationResponse</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ActivationResponse</a> &amp;&amp;other)</td></tr>
<tr class="separator:a112b29b61777dc298ced2026eb9ceb42"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Response to a result activation. </p>
<h2 class="groupheader">Member Enumeration Documentation</h2>
<table class="memname">
<tr>
<td class="memname">enum <a class="el" href="#a726cf6ec58d4e035e2cdc14cda152d02">unity::scopes::ActivationResponse::Status</a></td>
</tr>
</table>
<p>Status of a <a class="el" href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes run time when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a> or <a class="el" href="unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a> request. </p>
<table class="fieldtable">
<tr><th colspan="2">Enumerator</th></tr><tr><td class="fieldname">NotHandled&#160;</td><td class="fielddoc">
<p>Activation of this result wasn't handled by the scope </p>
</td></tr>
<tr><td class="fieldname">ShowDash&#160;</td><td class="fielddoc">
<p>Activation of this result was handled, show the Dash </p>
</td></tr>
<tr><td class="fieldname">HideDash&#160;</td><td class="fielddoc">
<p>Activation of this result was handled, hide the Dash </p>
</td></tr>
<tr><td class="fieldname">ShowPreview&#160;</td><td class="fielddoc">
<p>Preview should be requested for this result </p>
</td></tr>
<tr><td class="fieldname">PerformQuery&#160;</td><td class="fielddoc">
<p>Perform new search. This state is implied if creating <a class="el" href="index.html" title="Response to a result activation. ">ActivationResponse</a> with <a class="el" href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a> object and is invalid otherwise </p>
</td></tr>
</table>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::ActivationResponse::ActivationResponse </td>
<td>(</td>
<td class="paramtype"><a class="el" href="#a726cf6ec58d4e035e2cdc14cda152d02">Status</a>&#160;</td>
<td class="paramname"><em>status</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Creates <a class="el" href="index.html" title="Response to a result activation. ">ActivationResponse</a> with given status. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">status</td><td>The activation status. </td></tr>
</table>
</dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>if status is Status::PerformQuery. To create an <a class="el" href="index.html" title="Response to a result activation. ">ActivationResponse</a> of that type, use the <a class="el" href="#ac2c2769688b650df4e6333c052076b71" title="Creates an ActivationResponse with status Status::PerformQuery and a search query to be executed...">ActivationResponse(CannedQuery const&amp;)</a> constructor. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">unity::scopes::ActivationResponse::ActivationResponse </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;&#160;</td>
<td class="paramname"><em>query</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Creates an <a class="el" href="index.html" title="Response to a result activation. ">ActivationResponse</a> with status Status::PerformQuery and a search query to be executed. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">query</td><td>The search query to be executed by the client. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> unity::scopes::ActivationResponse::query </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>A query to be executed if status is Status::PerformQuery. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if the status of this <a class="el" href="index.html" title="Response to a result activation. ">ActivationResponse</a> is anything other than Status::PerformQuery. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The query to be executed by the client. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> unity::scopes::ActivationResponse::scope_data </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get data attached to this response object. </p>
<dl class="section return"><dt>Returns</dt><dd>The data attached to response. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ActivationResponse::set_scope_data </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>data</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Attach arbitrary data to this response. </p>
<p>The attached data is sent back to the scope if the status of this response is Status::ShowPreview. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">data</td><td>arbitrary value attached to response </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#a726cf6ec58d4e035e2cdc14cda152d02">ActivationResponse::Status</a> unity::scopes::ActivationResponse::status </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get activation status. </p>
<dl class="section return"><dt>Returns</dt><dd>The activation status. </dd></dl>
