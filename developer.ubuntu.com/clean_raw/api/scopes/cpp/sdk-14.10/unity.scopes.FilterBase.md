---
Title: unity.scopes.FilterBase
---

# unity.scopes.FilterBase

<p>Base class for all implementations of filters.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/FilterBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::FilterBase:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/b156d9cc-c679-433b-bf13-6f7bb8fc6334-../unity.scopes.FilterBase/classunity_1_1scopes_1_1_filter_base__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1_filter_base_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1_filter_base_inherit__map" id="unity_1_1scopes_1_1_filter_base_inherit__map">
<area shape="rect" id="node2" title="A filter that displays mutually exclusive list of options. " alt="" coords="233,5,431,47"/><area shape="rect" id="node3" title="A range filter which allows a start and end value to be entered by user, and any of them is optional..." alt="" coords="233,71,431,112"/><area shape="rect" id="node4" title="A filter that allows for rating&#45;based selection. " alt="" coords="233,136,431,177"/><area shape="rect" id="node5" title="A simple on/off switch filter. " alt="" coords="233,201,431,243"/><area shape="rect" id="node6" title="A value slider filter that allows for selecting a value within given range. " alt="" coords="233,267,431,308"/><area shape="rect" id="node7" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_option_selector_filter.html" title="A selection filter that displays a list of choices and allows one or more of them to be selected..." alt="" coords="228,332,436,373"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:ab9e833d5e4029fed745d15ba63715159"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab9e833d5e4029fed745d15ba63715159">DisplayHints</a> { <a class="el" href="#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f">Default</a> = 0, 
<a class="el" href="#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56">Primary</a> = 1
}</td></tr>
<tr class="memdesc:ab9e833d5e4029fed745d15ba63715159"><td class="mdescLeft">&#160;</td><td class="mdescRight">Display hints for the Shell UI.  <a href="#ab9e833d5e4029fed745d15ba63715159">More...</a><br /></td></tr>
<tr class="separator:ab9e833d5e4029fed745d15ba63715159"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ab4ab1b600ce3967dc50255e736c6d02e"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab4ab1b600ce3967dc50255e736c6d02e">set_display_hints</a> (int hints)</td></tr>
<tr class="memdesc:ab4ab1b600ce3967dc50255e736c6d02e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets display hints for the Shell UI.  More...<br /></td></tr>
<tr class="separator:ab4ab1b600ce3967dc50255e736c6d02e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8f20819591155edaab29d535c5c4c261"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8f20819591155edaab29d535c5c4c261">display_hints</a> () const </td></tr>
<tr class="memdesc:a8f20819591155edaab29d535c5c4c261"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get display hints of this filter.  More...<br /></td></tr>
<tr class="separator:a8f20819591155edaab29d535c5c4c261"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f2d96647b23af77b1ff1cffc80f3868"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1f2d96647b23af77b1ff1cffc80f3868">id</a> () const </td></tr>
<tr class="memdesc:a1f2d96647b23af77b1ff1cffc80f3868"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the identifier of this filter.  More...<br /></td></tr>
<tr class="separator:a1f2d96647b23af77b1ff1cffc80f3868"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aadc7344c951961331dcbe67149d56c78"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aadc7344c951961331dcbe67149d56c78">filter_type</a> () const </td></tr>
<tr class="memdesc:aadc7344c951961331dcbe67149d56c78"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the type name of this filter.  More...<br /></td></tr>
<tr class="separator:aadc7344c951961331dcbe67149d56c78"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Base class for all implementations of filters. </p>
<p>All implementations of <a class="el" href="index.html" title="Base class for all implementations of filters. ">FilterBase</a> define the "look" of a filter in the UI and do not hold any state information. The actual state of a filters is kept by a <a class="el" href="unity.scopes.FilterState.md" title="Captures state of multiple filters. ">FilterState</a> object. </p>
<h2 class="groupheader">Member Enumeration Documentation</h2>
<table class="memname">
<tr>
<td class="memname">enum <a class="el" href="#ab9e833d5e4029fed745d15ba63715159">unity::scopes::FilterBase::DisplayHints</a></td>
</tr>
</table>
<p>Display hints for the Shell UI. </p>
<table class="fieldtable">
<tr><th colspan="2">Enumerator</th></tr><tr><td class="fieldname">Default&#160;</td><td class="fielddoc">
<p>Default value (no hint) </p>
</td></tr>
<tr><td class="fieldname">Primary&#160;</td><td class="fielddoc">
<p>Display this filter at the top of the screen, if possible </p>
</td></tr>
</table>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">int unity::scopes::FilterBase::display_hints </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get display hints of this filter. </p>
<dl class="section return"><dt>Returns</dt><dd>Display hints flags. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::FilterBase::filter_type </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the type name of this filter. </p>
<dl class="section return"><dt>Returns</dt><dd>The filter type string. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::FilterBase::id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the identifier of this filter. </p>
<dl class="section return"><dt>Returns</dt><dd>The filter id. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::FilterBase::set_display_hints </td>
<td>(</td>
<td class="paramtype">int&#160;</td>
<td class="paramname"><em>hints</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Sets display hints for the Shell UI. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">hints</td><td>A combination of DisplayHints for this filter. </td></tr>
</table>
</dd>
</dl>
