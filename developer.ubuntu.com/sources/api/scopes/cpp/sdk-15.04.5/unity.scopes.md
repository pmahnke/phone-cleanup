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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.5</a> ›

<!-- -->

-   unity.scopes

unity.scopes
============

Top-level namespace for public functionality of the Unity scopes API. More...

<span id="nested-classes"></span> Classes
-----------------------------------------

class  
AbstractScopeBase
 
Abstract base class for a scope implementation. More...
 
class  
<a href="../unity.scopes.ActionMetadata/index.html" class="el">ActionMetadata</a>
 
Metadata passed to scopes for preview and activation. [More...](../unity.scopes.ActionMetadata/index.html#details)
 
class  
<a href="../unity.scopes.ActivationListenerBase/index.html" class="el">ActivationListenerBase</a>
 
Base class to receive a response to a result activation request. [More...](../unity.scopes.ActivationListenerBase/index.html#details)
 
class  
<a href="../unity.scopes.ActivationQueryBase/index.html" class="el">ActivationQueryBase</a>
 
Base class for an activation request that is executed inside a scope. [More...](../unity.scopes.ActivationQueryBase/index.html#details)
 
class  
<a href="../unity.scopes.ActivationResponse/index.html" class="el">ActivationResponse</a>
 
Response to a result activation. [More...](../unity.scopes.ActivationResponse/index.html#details)
 
class  
<a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a>
 
Parameters of a search query. [More...](../unity.scopes.CannedQuery/index.html#details)
 
class  
<a href="../unity.scopes.CategorisedResult/index.html" class="el">CategorisedResult</a>
 
A result, including the category it belongs to. [More...](../unity.scopes.CategorisedResult/index.html#details)
 
class  
<a href="../unity.scopes.Category/index.html" class="el">Category</a>
 
A set of related results returned by a scope and displayed within a single pane in the Unity dash. [More...](../unity.scopes.Category/index.html#details)
 
class  
<a href="../unity.scopes.CategoryRenderer/index.html" class="el">CategoryRenderer</a>
 
A category renderer template in JSON format. [More...](../unity.scopes.CategoryRenderer/index.html#details)
 
struct  
<a href="../unity.scopes.ChildScope/index.html" class="el">ChildScope</a>
 
A container for details about an aggregator's child scope. [More...](../unity.scopes.ChildScope/index.html#details)
 
class  
<a href="../unity.scopes.ColumnLayout/index.html" class="el">ColumnLayout</a>
 
Defines a layout for preview widgets with given column setup. [More...](../unity.scopes.ColumnLayout/index.html#details)
 
class  
<a href="../unity.scopes.CompletionDetails/index.html" class="el">CompletionDetails</a>
 
A container for details about the completion status of a query as well as any additional information regarding the operation of the request. [More...](../unity.scopes.CompletionDetails/index.html#details)
 
class  
<a href="../unity.scopes.ConfigException/index.html" class="el">ConfigException</a>
 
Exception to indicate that something went wrong with the contents of configuration files. [More...](../unity.scopes.ConfigException/index.html#details)
 
class  
<a href="../unity.scopes.Department/index.html" class="el">Department</a>
 
A department with optional sub-departments. [More...](../unity.scopes.Department/index.html#details)
 
class  
<a href="../unity.scopes.FilterBase/index.html" class="el">FilterBase</a>
 
Base class for all implementations of filters. [More...](../unity.scopes.FilterBase/index.html#details)
 
class  
<a href="../unity.scopes.FilterGroup/index.html" class="el">FilterGroup</a>
 
Groups several filters into an expandable widget in the UI. [More...](../unity.scopes.FilterGroup/index.html#details)
 
class  
<a href="../unity.scopes.FilterOption/index.html" class="el">FilterOption</a>
 
Holds definition of filter option for <a href="../unity.scopes.OptionSelectorFilter/index.html" class="el" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a>. [More...](../unity.scopes.FilterOption/index.html#details)
 
class  
<a href="../unity.scopes.FilterState/index.html" class="el">FilterState</a>
 
Stores the state of multiple filters. [More...](../unity.scopes.FilterState/index.html#details)
 
class  
<a href="../unity.scopes.Link/index.html" class="el">Link</a>
 
A hyperlink (label and canned query). [More...](../unity.scopes.Link/index.html#details)
 
class  
<a href="../unity.scopes.ListenerBase/index.html" class="el">ListenerBase</a>
 
Abstract base class to be notified of request completion (such as a query or activation request). [More...](../unity.scopes.ListenerBase/index.html#details)
 
class  
<a href="../unity.scopes.Location/index.html" class="el">Location</a>
 
Holds location attributes such as latitude, longitude, etc. [More...](../unity.scopes.Location/index.html#details)
 
class  
<a href="../unity.scopes.MiddlewareException/index.html" class="el">MiddlewareException</a>
 
Exception to indicate that something went wrong with the middleware layer. [More...](../unity.scopes.MiddlewareException/index.html#details)
 
class  
<a href="../unity.scopes.NotFoundException/index.html" class="el">NotFoundException</a>
 
Exception to indicate that an object wasn't found by a lookup function. [More...](../unity.scopes.NotFoundException/index.html#details)
 
class  
<a href="../unity.scopes.Object/index.html" class="el">Object</a>
 
The root base class for all proxies. [More...](../unity.scopes.Object/index.html#details)
 
class  
<a href="../unity.scopes.ObjectNotExistException/index.html" class="el">ObjectNotExistException</a>
 
Exception to indicate that a (twoway) request was sent to an object with an unknown identity. [More...](../unity.scopes.ObjectNotExistException/index.html#details)
 
class  
<a href="../unity.scopes.OnlineAccountClient/index.html" class="el">OnlineAccountClient</a>
 
A simple interface for integrating online accounts access and monitoring into scopes. [More...](../unity.scopes.OnlineAccountClient/index.html#details)
 
class  
<a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a>
 
A container for details about something of interest that occurs during the operation of a request. [More...](../unity.scopes.OperationInfo/index.html#details)
 
class  
<a href="../unity.scopes.OptionSelectorFilter/index.html" class="el">OptionSelectorFilter</a>
 
A selection filter that displays a list of choices and allows one or more of them to be selected. [More...](../unity.scopes.OptionSelectorFilter/index.html#details)
 
class  
<a href="../unity.scopes.PreviewListenerBase/index.html" class="el">PreviewListenerBase</a>
 
Abstract base class for a scope to respond to preview requests. [More...](../unity.scopes.PreviewListenerBase/index.html#details)
 
class  
<a href="../unity.scopes.PreviewQueryBase/index.html" class="el">PreviewQueryBase</a>
 
Abstract base class to represent a particular preview. [More...](../unity.scopes.PreviewQueryBase/index.html#details)
 
class  
<a href="../unity.scopes.PreviewReply/index.html" class="el">PreviewReply</a>
 
Allows the results of a preview to be sent to the preview requester. [More...](../unity.scopes.PreviewReply/index.html#details)
 
class  
<a href="../unity.scopes.PreviewWidget/index.html" class="el">PreviewWidget</a>
 
A widget for a preview. [More...](../unity.scopes.PreviewWidget/index.html#details)
 
class  
<a href="../unity.scopes.QueryBase/index.html" class="el">QueryBase</a>
 
Abstract server-side base interface for a query that is executed inside a scope. [More...](../unity.scopes.QueryBase/index.html#details)
 
class  
<a href="../unity.scopes.QueryCtrl/index.html" class="el">QueryCtrl</a>
 
<a href="../unity.scopes.QueryCtrl/index.html" class="el" title="QueryCtrl allows a query to be cancelled. ">QueryCtrl</a> allows a query to be cancelled. [More...](../unity.scopes.QueryCtrl/index.html#details)
 
class  
<a href="../unity.scopes.QueryMetadata/index.html" class="el">QueryMetadata</a>
 
Base class for extra metadata passed to scopes as a part of a request. [More...](../unity.scopes.QueryMetadata/index.html#details)
 
class  
<a href="../unity.scopes.RangeInputFilter/index.html" class="el">RangeInputFilter</a>
 
A range filter allows a start and end value to be entered by the user. [More...](../unity.scopes.RangeInputFilter/index.html#details)
 
class  
<a href="../unity.scopes.Registry/index.html" class="el">Registry</a>
 
White pages service for available scopes. [More...](../unity.scopes.Registry/index.html#details)
 
class  
<a href="../unity.scopes.Reply/index.html" class="el">Reply</a>
 
Allows query termination to be sent to the source of a query. [More...](../unity.scopes.Reply/index.html#details)
 
class  
<a href="../unity.scopes.Result/index.html" class="el">Result</a>
 
The attributes of a result returned by a <a href="../unity.scopes.Scope/index.html" class="el" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>. [More...](../unity.scopes.Result/index.html#details)
 
class  
<a href="../unity.scopes.Runtime/index.html" class="el">Runtime</a>
 
The main object for query originators to access the scopes runtime. [More...](../unity.scopes.Runtime/index.html#details)
 
class  
<a href="../unity.scopes.Scope/index.html" class="el">Scope</a>
 
Allows queries, preview requests, and activation requests to be sent to a scope. [More...](../unity.scopes.Scope/index.html#details)
 
class  
<a href="../unity.scopes.ScopeBase/index.html" class="el">ScopeBase</a>
 
Base class for a scope implementation. [More...](../unity.scopes.ScopeBase/index.html#details)
 
class  
<a href="../unity.scopes.ScopeMetadata/index.html" class="el">ScopeMetadata</a>
 
Holds scope attributes such as name, description, icon etc. [More...](../unity.scopes.ScopeMetadata/index.html#details)
 
class  
<a href="../unity.scopes.SearchListenerBase/index.html" class="el">SearchListenerBase</a>
 
Abstract base interface for a client to receive the results of a query. [More...](../unity.scopes.SearchListenerBase/index.html#details)
 
class  
<a href="../unity.scopes.SearchMetadata/index.html" class="el">SearchMetadata</a>
 
Metadata passed with search requests. [More...](../unity.scopes.SearchMetadata/index.html#details)
 
class  
<a href="../unity.scopes.SearchQueryBase/index.html" class="el">SearchQueryBase</a>
 
Abstract base class to represent a particular query. [More...](../unity.scopes.SearchQueryBase/index.html#details)
 
class  
<a href="../unity.scopes.SearchReply/index.html" class="el">SearchReply</a>
 
Allows the results of a search query to be sent to the query source. [More...](../unity.scopes.SearchReply/index.html#details)
 
class  
<a href="../unity.scopes.TimeoutException/index.html" class="el">TimeoutException</a>
 
Exception to indicate that a twoway request timed out. [More...](../unity.scopes.TimeoutException/index.html#details)
 
class  
<a href="../unity.scopes.ValueSliderFilter/index.html" class="el">ValueSliderFilter</a>
 
A value slider filter that allows for selecting a value within a given range. [More...](../unity.scopes.ValueSliderFilter/index.html#details)
 
class  
<a href="../unity.scopes.ValueSliderLabels/index.html" class="el">ValueSliderLabels</a>
 
Labels used by a <a href="../unity.scopes.ValueSliderFilter/index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. [More...](../unity.scopes.ValueSliderLabels/index.html#details)
 
class  
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a>
 
Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. [More...](../unity.scopes.Variant/index.html#details)
 
class  
<a href="../unity.scopes.VariantBuilder/index.html" class="el">VariantBuilder</a>
 
Helper class for creating and populating <a href="../unity.scopes.Variant/index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> containers. [More...](../unity.scopes.VariantBuilder/index.html#details)
 
<span id="typedef-members"></span> Typedefs
-------------------------------------------

<span id="a4daaa9ad07daf596af4dacd6e0b7be9a" class="anchor"></span> typedef std::vector&lt; <a href="../unity.scopes.ChildScope/index.html" class="el">ChildScope</a> &gt; 
<a href="index.html#a4daaa9ad07daf596af4dacd6e0b7be9a" class="el">ChildScopeList</a>
 
A list of child scopes.
 
<span id="a5b970e3c73bf25548398b32e79b2224d" class="anchor"></span> typedef std::list&lt; <a href="../unity.scopes.ColumnLayout/index.html" class="el">ColumnLayout</a> &gt; 
<a href="index.html#a5b970e3c73bf25548398b32e79b2224d" class="el">ColumnLayoutList</a>
 
List of column layouts (see <a href="../unity.scopes.ColumnLayout/index.html" class="el" title="Defines a layout for preview widgets with given column setup. ">unity::scopes::ColumnLayout</a>)
 
<span id="ab8effc4ea05a59f2ddea896833f07231" class="anchor"></span> typedef std::list&lt; std::shared\_ptr&lt; <a href="../unity.scopes.Department/index.html" class="el">Department</a> const &gt; &gt; 
<a href="index.html#ab8effc4ea05a59f2ddea896833f07231" class="el">DepartmentList</a>
 
List of departments (see <a href="../unity.scopes.Department/index.html" class="el" title="A department with optional sub-departments. ">unity::scopes::Department</a>)
 
<span id="adab58c13cf604e0e64bd6b1a745364d3" class="anchor"></span> typedef std::list&lt; FilterBase::SCPtr &gt; 
<a href="index.html#adab58c13cf604e0e64bd6b1a745364d3" class="el">Filters</a>
 
List of filters.
 
<span id="aa68ce1769f7a888d0b4b2951741ca75a" class="anchor"></span> typedef std::shared\_ptr&lt; <a href="../unity.scopes.Object/index.html" class="el">Object</a> &gt; 
<a href="index.html#aa68ce1769f7a888d0b4b2951741ca75a" class="el">ObjectProxy</a>
 
Convenience type definition for the proxy inheritance root.
 
<span id="a7b46ef0e880da4c75314fe60bdd55754" class="anchor"></span> typedef std::shared\_ptr&lt; <a href="../unity.scopes.PreviewReply/index.html" class="el">PreviewReply</a> &gt; 
<a href="index.html#a7b46ef0e880da4c75314fe60bdd55754" class="el">PreviewReplyProxy</a>
 
Convenience type definition.
 
<span id="aed3b7b1daf2e49d0a820ef931caa792d" class="anchor"></span> typedef std::list&lt; <a href="../unity.scopes.PreviewWidget/index.html" class="el">PreviewWidget</a> &gt; 
<a href="index.html#aed3b7b1daf2e49d0a820ef931caa792d" class="el">PreviewWidgetList</a>
 
List of preview widgets (see <a href="../unity.scopes.PreviewWidget/index.html" class="el" title="A widget for a preview. ">unity::scopes::PreviewWidget</a>)
 
<span id="a35e73cba26e0db0b36ffa0283a7d55dd" class="anchor"></span> typedef std::shared\_ptr&lt; <a href="../unity.scopes.QueryCtrl/index.html" class="el">QueryCtrl</a> &gt; 
<a href="index.html#a35e73cba26e0db0b36ffa0283a7d55dd" class="el">QueryCtrlProxy</a>
 
Convenience type definition.
 
<span id="a9f6e8e62689e49cdabadacf39b697816" class="anchor"></span> typedef std::map&lt; std::string, <a href="../unity.scopes.ScopeMetadata/index.html" class="el">ScopeMetadata</a> &gt; 
<a href="index.html#a9f6e8e62689e49cdabadacf39b697816" class="el">MetadataMap</a>
 
Map for scope ID and metadata pairs.
 
<span id="a45babc254d3548863d79ee54f266e84d" class="anchor"></span> typedef std::shared\_ptr&lt; <a href="../unity.scopes.Registry/index.html" class="el">Registry</a> &gt; 
<a href="index.html#a45babc254d3548863d79ee54f266e84d" class="el">RegistryProxy</a>
 
Convenience type definition.
 
<span id="a8c91fad901d437ede2195a1cab136baf" class="anchor"></span> typedef std::shared\_ptr&lt; <a href="../unity.scopes.Reply/index.html" class="el">Reply</a> &gt; 
<a href="index.html#a8c91fad901d437ede2195a1cab136baf" class="el">ReplyProxy</a>
 
Convenience type definition.
 
<span id="a94db15da410f8419e4da711db842aaae" class="anchor"></span> typedef std::shared\_ptr&lt; <a href="../unity.scopes.Scope/index.html" class="el">Scope</a> &gt; 
<a href="index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a>
 
Convenience type definition.
 
<span id="a9cd604d9b842ac3b2b8636c2165dec1f" class="anchor"></span> typedef std::shared\_ptr&lt; <a href="../unity.scopes.SearchReply/index.html" class="el">SearchReply</a> &gt; 
<a href="index.html#a9cd604d9b842ac3b2b8636c2165dec1f" class="el">SearchReplyProxy</a>
 
Convenience type definition.
 
<span id="aa8a0ba9172b4431df7628f2335409e0e" class="anchor"></span> typedef std::pair&lt; double, std::string &gt; 
<a href="index.html#aa8a0ba9172b4431df7628f2335409e0e" class="el">ValueLabelPair</a>
 
A value and its corresponding label.
 
<span id="aa2ccb5d7acadeb38f44e9405f1b55c6b" class="anchor"></span> typedef std::vector&lt; <a href="index.html#aa8a0ba9172b4431df7628f2335409e0e" class="el">ValueLabelPair</a> &gt; 
<a href="index.html#aa2ccb5d7acadeb38f44e9405f1b55c6b" class="el">ValueLabelPairList</a>
 
A sequence of value-label pairs.
 
<span id="ad5d8ccfa11a327fca6f3e4cee11f4c10" class="anchor"></span> typedef std::map&lt; std::string, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> &gt; 
<a href="index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a>
 
A dictionary of (string, <a href="../unity.scopes.Variant/index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>) pairs.
 
<span id="aa3bf32d584efd902bca79698a07dd934" class="anchor"></span> typedef std::vector&lt; <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> &gt; 
<a href="index.html#aa3bf32d584efd902bca79698a07dd934" class="el">VariantArray</a>
 
An array of variants.
 
<span id="func-members"></span> Functions
-----------------------------------------

char const \* 
<a href="index.html#ae62357e6e19eda314bb79ddf65a678ac" class="el">to_string</a> (<a href="../unity.scopes.CompletionDetails/index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="el">CompletionDetails::CompletionStatus</a> status)
 
Convenience function to convert a CompletionDetails::CompletionStatus enumerator to a string. More...
 
<span id="a0e2da826f3ff512e632dff7604f1f63f" class="anchor"></span> void 
<a href="index.html#a0e2da826f3ff512e632dff7604f1f63f" class="el">swap</a> (<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> &, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> &) noexcept
 
Swaps the contents of two Variants.
 
Version information

Version information is represented as *&lt;`major`&gt;*.*&lt;`minor`&gt;*.*&lt;`micro`&gt;*.

Releases that differ in the major version number or minor are binary incompatible.

Releases of the library that differ in the micro version number are binary compatible with older releases, so client code does not need to be recompiled to use the newer library version.

Changes in the micro version number indicate bug fixes or feature additions that are binary compatible.

int 
<a href="index.html#ada491223b797c1f0f5a25ab3c5d8f715" class="el">major_version</a> ()
 
Returns the major version number of the Unity scopes library. More...
 
int 
<a href="index.html#af13f99bac555f4a3c2a1647e972b1953" class="el">minor_version</a> ()
 
Returns the minor version number of the Unity scopes library. More...
 
int 
<a href="index.html#af8cce57971924bc625032a9ff3f6b2b5" class="el">micro_version</a> ()
 
Returns the micro version number of the Unity scopes library. More...
 
const char \* 
<a href="index.html#a80865ea53b482becc5c56f486762545e" class="el">version_string</a> ()
 
Returns the Unity scopes version as a string in the format *&lt;`major`&gt;*.*&lt;`minor`&gt;*.*&lt;`micro`&gt;*. More...
 
<span id="var-members"></span> Variables
----------------------------------------

constexpr const char \* 
<a href="index.html#a697a8f21545922bcfc8345d83f5cc156" class="el">DEFAULT_RENDERER</a>
 
A default template for generic use. More...
 
constexpr const char \* 
<a href="index.html#abf16a855b33daf77e1a3a515cf4ab1e5" class="el">MUSIC_GRID_RENDERER</a>
 
A template suitable for displaying music results. More...
 
<span id="acdcfeeb8506c235a3d4b9f236b64916d" class="anchor"></span> decltype(&UNITY\_SCOPE\_CREATE\_FUNCTION) typedef 
CreateFunction
 
Convenience typedef for the create function pointer.
 
<span id="a2fb52a4c912ff0d0b13d65d8772302aa" class="anchor"></span> decltype(&UNITY\_SCOPE\_DESTROY\_FUNCTION) typedef 
DestroyFunction
 
Convenience typedef for the destroy function pointer.
 
<span id="details"></span>
Detailed Description
--------------------

Top-level namespace for public functionality of the Unity scopes API.

Function Documentation
----------------------

<span id="ada491223b797c1f0f5a25ab3c5d8f715" class="anchor"></span>
|                                   |     |     |     |     |
|-----------------------------------|-----|-----|-----|-----|
| int unity::scopes::major\_version | (   |     | )   |     |

Returns the major version number of the Unity scopes library.

The major version number is also available as the macro `UNITY_SCOPES_VERSION_MAJOR`.

<span id="af8cce57971924bc625032a9ff3f6b2b5" class="anchor"></span>
|                                   |     |     |     |     |
|-----------------------------------|-----|-----|-----|-----|
| int unity::scopes::micro\_version | (   |     | )   |     |

Returns the micro version number of the Unity scopes library.

The micro version number is also available as the macro `UNITY_SCOPES_VERSION_MICRO`.

<span id="af13f99bac555f4a3c2a1647e972b1953" class="anchor"></span>
|                                   |     |     |     |     |
|-----------------------------------|-----|-----|-----|-----|
| int unity::scopes::minor\_version | (   |     | )   |     |

Returns the minor version number of the Unity scopes library.

The minor version number is also available as the macro `UNITY_SCOPES_VERSION_MINOR`.

<span id="ae62357e6e19eda314bb79ddf65a678ac" class="anchor"></span>
|                                         |     |                                                                                                                                              |          |     |     |
|-----------------------------------------|-----|----------------------------------------------------------------------------------------------------------------------------------------------|----------|-----|-----|
| char const \* unity::scopes::to\_string | (   | <a href="../unity.scopes.CompletionDetails/index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="el">CompletionDetails::CompletionStatus</a>  | *status* | )   |     |

Convenience function to convert a <a href="../unity.scopes.CompletionDetails/index.html#a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="el" title="Indicates the completion status for a query. ">CompletionDetails::CompletionStatus</a> enumerator to a string.

Returns  
Possible return values are "ok", "cancelled", and "error".

<span id="a80865ea53b482becc5c56f486762545e" class="anchor"></span>
|                                              |     |     |     |     |
|----------------------------------------------|-----|-----|-----|-----|
| char const \* unity::scopes::version\_string | (   |     | )   |     |

Returns the Unity scopes version as a string in the format *&lt;`major`&gt;*.*&lt;`minor`&gt;*.*&lt;`micro`&gt;*.

The version string is also available as the macro `UNITY_SCOPES_VERSION_STRING`.

Variable Documentation
----------------------

<span id="a697a8f21545922bcfc8345d83f5cc156" class="anchor"></span>
|                                                         |
|---------------------------------------------------------|
| constexpr const char\* unity::scopes::DEFAULT\_RENDERER |

**Initial value:**
{

R<span class="stringliteral">"(</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "schema-version":1,</span>

<span class="stringliteral"> "template":</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "category-layout":"grid"</span>

<span class="stringliteral"> },</span>

<span class="stringliteral"> "components":</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "title":"title",</span>

<span class="stringliteral"> "art":"art"</span>

<span class="stringliteral"> }</span>

<span class="stringliteral"> }</span>

<span class="stringliteral"> )"</span>

<span class="stringliteral">}</span>

A default template for generic use.

<span id="abf16a855b33daf77e1a3a515cf4ab1e5" class="anchor"></span>
|                                                             |
|-------------------------------------------------------------|
| constexpr const char\* unity::scopes::MUSIC\_GRID\_RENDERER |

**Initial value:**
{

R<span class="stringliteral">"(</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "schema-version":1,</span>

<span class="stringliteral"> "template":</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "category-layout":"grid"</span>

<span class="stringliteral"> },</span>

<span class="stringliteral"> "components":</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "title":"title",</span>

<span class="stringliteral"> "subtitle":"subtitle",</span>

<span class="stringliteral"> "art":"art"</span>

<span class="stringliteral"> }</span>

<span class="stringliteral"> }</span>

<span class="stringliteral"> )"</span>

<span class="stringliteral">}</span>

A template suitable for displaying music results.

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
