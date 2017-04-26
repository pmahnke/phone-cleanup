---
Title: UbuntuUI.OptionSelector
---

# UbuntuUI.OptionSelector

<p>OptionSelector is a component displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a
listing of all the possible values for selection with an additional option of always being expanded. If multiple choice is selected the list is expanded automatically.</p>
<strong class="name"><code>UbuntuUI.OptionSelector</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> &lt;section data-role=&quot;option-selector&quot; id=&quot;OptionSelectorID&quot;&gt;
&lt;ul&gt;
&lt;li data-value=&quot;0&quot;&gt;
&lt;p&gt;Label 1&lt;/p&gt;
&lt;/li&gt;
&lt;li data-value=&quot;1&quot;&gt;
&lt;p&gt;Label 2&lt;/p&gt;
&lt;/li&gt;
&lt;li data-value=&quot;3&quot;&gt;
&lt;p&gt;Label 3&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;/section&gt;
JavaScript access:
Expanded:
UI.optionselector(&quot;OptionSelectorID&quot;, true);
Expanded and multi selection:
UI.optionselector(&quot;OptionSelectorID&quot;, true, true);
Multi selection:
UI.optionselector(&quot;OptionSelectorID&quot;, false, true);</code></pre>
<ul>
</ul>
<div>
