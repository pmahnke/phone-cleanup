---
Title: U1db.Document
---

# U1db.Document

<!-- $$$Document-brief -->
<p>The Document class proxies a single document stored in the Database. More...</p>
<!-- @@@Document -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Header:</td><td class="memItemRight bottomAlign"> </b><tt><span class="preprocessor">#include &lt;Document&gt;</span>
</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<table class="propsummary">
<tr><td class="topAlign"><ul>
<li class="fn"><b><a href="#contents-prop">contents</a></b> : QVariant</li>
<li class="fn"><b><a href="#create-prop">create</a></b> : bool</li>
<li class="fn"><b><a href="#database-prop">database</a></b> : Database *</li>
</ul></td><td class="topAlign"><ul>
<li class="fn"><b><a href="#defaults-prop">defaults</a></b> : QVariant</li>
<li class="fn"><b><a href="#docId-prop">docId</a></b> : QString</li>
</ul>
</td></tr>
</table>
<h2>Public Functions</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> </td><td class="memItemRight bottomAlign"><b><a href="#Document">Document</a></b>(QObject *<i> parent</i> = 0)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QVariant </td><td class="memItemRight bottomAlign"><b><a href="#contents-prop">getContents</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> bool </td><td class="memItemRight bottomAlign"><b><a href="#create-prop">getCreate</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> Database * </td><td class="memItemRight bottomAlign"><b><a href="#database-prop">getDatabase</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QVariant </td><td class="memItemRight bottomAlign"><b><a href="#defaults-prop">getDefaults</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QString </td><td class="memItemRight bottomAlign"><b><a href="#docId-prop">getDocId</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#contents-prop">setContents</a></b>(QVariant<i> contents</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#create-prop">setCreate</a></b>(bool<i> create</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#database-prop">setDatabase</a></b>(Database *<i> database</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#defaults-prop">setDefaults</a></b>(QVariant<i> defaults</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#docId-prop">setDocId</a></b>(const QString &amp;<i> docId</i>)</td></tr>
</table>
<h2>Signals</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#contents-prop">contentsChanged</a></b>(QVariant<i> contents</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#create-prop">createChanged</a></b>(bool<i> create</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#database-prop">databaseChanged</a></b>(Database *<i> database</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#defaults-prop">defaultsChanged</a></b>(QVariant<i> defaults</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#docId-prop">docIdChanged</a></b>(const QString &amp;<i> docId</i>)</td></tr>
</table>
<!-- $$$Document-description -->
<h2>Detailed Description</h2>
<p>The Document class proxies a single document stored in the Database.</p>
<p>This is the declarative API equivalent of <a href="U1db.Database.md#putDoc">Database::putDoc</a>() and <a href="U1db.Database.md#getDoc">Database::getDoc</a>().</p>
<!-- @@@Document -->
<h2>Property Documentation</h2>
<!-- $$$contents-prop$$$getContents$$$setContentsQVariant$$$contentsChangedQVariant -->
<h3 class="fn"><span class="name">contents</span> : <span class="type">QVariant</span></h3>
<p>Updates the contents of the document. A valid <a href="#docId-prop">docId</a> must be set.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QVariant </td><td class="memItemRight bottomAlign"><span class="name"><b>getContents</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setContents</b></span>(QVariant<i> contents</i>)</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>contentsChanged</b></span>(QVariant<i> contents</i>)</td></tr>
</table>
<!-- @@@contents -->
<!-- $$$create-prop$$$getCreate$$$setCreatebool$$$createChangedbool -->
<h3 class="fn"><span class="name">create</span> : <span class="type">bool</span></h3>
<p>If create is true, <a href="#docId-prop">docId</a> is not empty and no document with the same <a href="#docId-prop">docId</a> exists, defaults will be used to store the document.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> bool </td><td class="memItemRight bottomAlign"><span class="name"><b>getCreate</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setCreate</b></span>(bool<i> create</i>)</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>createChanged</b></span>(bool<i> create</i>)</td></tr>
</table>
<!-- @@@create -->
<!-- $$$database-prop$$$getDatabase$$$setDatabaseDatabase*$$$databaseChangedDatabase* -->
<h3 class="fn"><span class="name">database</span> : <span class="type"><a href="U1db.Database.md">Database</a></span> *</h3>
<p>The database is used to lookup the contents of the document, reflecting changes done to it and conversely changes are saved to the database.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> Database * </td><td class="memItemRight bottomAlign"><span class="name"><b>getDatabase</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setDatabase</b></span>(Database *<i> database</i>)</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>databaseChanged</b></span>(Database *<i> database</i>)</td></tr>
</table>
<!-- @@@database -->
<!-- $$$defaults-prop$$$getDefaults$$$setDefaultsQVariant$$$defaultsChangedQVariant -->
<h3 class="fn"><span class="name">defaults</span> : <span class="type">QVariant</span></h3>
<p>The default contents of the document, which are used only if create is true, <a href="#docId-prop">docId</a> is not empty and no document with the same <a href="#docId-prop">docId</a> exists in the database yet. If the defaults change, it's up to the API user to handle it.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QVariant </td><td class="memItemRight bottomAlign"><span class="name"><b>getDefaults</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setDefaults</b></span>(QVariant<i> defaults</i>)</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>defaultsChanged</b></span>(QVariant<i> defaults</i>)</td></tr>
</table>
<!-- @@@defaults -->
<!-- $$$docId-prop$$$getDocId$$$setDocIdconstQString&$$$docIdChangedconstQString& -->
<h3 class="fn"><span class="name">docId</span> : <span class="type">QString</span></h3>
<p>The docId can be that of an existing document in the database and will determine what <a href="#contents-prop">getContents</a>() returns. If no such documents exists, <a href="#defaults-prop">setDefaults</a>() can be used to supply a preset.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QString </td><td class="memItemRight bottomAlign"><span class="name"><b>getDocId</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setDocId</b></span>(const QString &amp;<i> docId</i>)</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>docIdChanged</b></span>(const QString &amp;<i> docId</i>)</td></tr>
</table>
<!-- @@@docId -->
<h2>Member Function Documentation</h2>
<!-- $$$Document[overload1]$$$DocumentQObject* -->
<h3 class="fn">Document::<span class="name">Document</span>(<span class="type">QObject</span> *<i> parent</i> = 0)</h3>
<p>Instantiate a new Document with an optional <i>parent</i>, usually by declaring it as a QML item.</p>
<!-- @@@Document -->
