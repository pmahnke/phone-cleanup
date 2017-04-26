---
Title: Ubuntu.OnlineAccounts.ApplicationModel
---

# Ubuntu.OnlineAccounts.ApplicationModel

<span class="subtitle"></span>
<!-- $$$ApplicationModel-brief -->
<p>A model of the applications using online accounts. More...</p>
<!-- @@@ApplicationModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.OnlineAccounts 0.1</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#service-prop">service</a></b></b> : string</li>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn">variant <b><b><a href="#get-method">get</a></b></b>(int <i>row</i>, string <i>roleName</i>)</li>
</ul>
<!-- $$$ApplicationModel-description -->
<h2>Detailed Description</h2>
<p>The ApplicationModel is a model representing the applications using online accounts installed on the system.</p>
<p>In the current implementation, the model is valid only if its <a href="#service-prop">ApplicationModel::service</a> property is set to a valid service ID.</p>
<p>The model defines the following roles:</p>
<ul>
<li><tt>applicationId</tt> is the unique identifier of the application</li>
<li><tt>displayName</tt> is the application display name</li>
<li><tt>iconName</tt> is the name of the application icon</li>
<li><tt>serviceUsage</tt> is a description of how the application uses the service; this is set to a valid value only if the <a href="#service-prop">ApplicationModel::service</a> property is set to a valid service ID.</li>
<li><tt>application</tt> is the Application object</li>
<li><tt>translations</tt>, the localization domain for translating the <tt>serviceUsage</tt> field</li>
</ul>
<!-- @@@ApplicationModel -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>The number of items in the model.</p>
<!-- @@@count -->
<br/>
<!-- $$$service -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">service</span> : <span class="type">string</span></p></td></tr></table><p>If set, the model will list only those applications which can use this specific service.</p>
<!-- @@@service -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$get -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">get</span>(<span class="type">int</span><i> row</i>, <span class="type">string</span><i> roleName</i>)</p></td></tr></table><p>Returns the data at <i>row</i> for the role <i>roleName</i>.</p>
<!-- @@@get -->
<br/>
