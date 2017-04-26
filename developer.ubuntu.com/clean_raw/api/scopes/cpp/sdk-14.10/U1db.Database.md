---
Title: U1db.Database
---

# U1db.Database

<!-- $$$Database-brief -->
<p>The Database class implements the on-disk storage of an individual U1DB database. More...</p>
<!-- @@@Database -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Header:</td><td class="memItemRight bottomAlign"> </b><tt><span class="preprocessor">#include &lt;Database&gt;</span>
</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><a href="#error-prop">error</a></b> : const QString</li>
<li class="fn"><b><a href="#path-prop">path</a></b> : QString</li>
</ul>
<h2>Public Functions</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> </td><td class="memItemRight bottomAlign"><b><a href="#Database">Database</a></b>(QObject *<i> parent</i> = 0)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#deleteDoc">deleteDoc</a></b>(const QString &amp;<i> docId</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QVariant </td><td class="memItemRight bottomAlign"><b><a href="#getDoc">getDoc</a></b>(const QString &amp;<i> docId</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QVariant </td><td class="memItemRight bottomAlign"><b><a href="#getDocUnchecked">getDocUnchecked</a></b>(const QString &amp;<i> docId</i>) const</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QStringList </td><td class="memItemRight bottomAlign"><b><a href="#getIndexExpressions">getIndexExpressions</a></b>(const QString &amp;<i> indexName</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QStringList </td><td class="memItemRight bottomAlign"><b><a href="#getIndexKeys">getIndexKeys</a></b>(const QString &amp;<i> indexName</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QString </td><td class="memItemRight bottomAlign"><b><a href="#path-prop">getPath</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QString </td><td class="memItemRight bottomAlign"><b><a href="#error-prop">lastError</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QList&lt;QString&gt; </td><td class="memItemRight bottomAlign"><b><a href="#listDocs">listDocs</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QString </td><td class="memItemRight bottomAlign"><b><a href="#putDoc">putDoc</a></b>(QVariant<i> contents</i>, const QString &amp;<i> docId</i> = QString())</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QString </td><td class="memItemRight bottomAlign"><b><a href="#putIndex">putIndex</a></b>(const QString &amp;<i> indexName</i>, QStringList<i> expressions</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#resetModel">resetModel</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#path-prop">setPath</a></b>(const QString &amp;<i> path</i>)</td></tr>
</table>
<h2>Signals</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#error-prop">errorChanged</a></b>(const QString &amp;<i> error</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#path-prop">pathChanged</a></b>(const QString &amp;<i> path</i>)</td></tr>
</table>
<!-- $$$Database-description -->
<h2>Detailed Description</h2>
<p>The Database class implements the on-disk storage of an individual U1DB database.</p>
<p>Database can be used as a QAbstractListModel, delegates will then have access to <i>docId</i> and <i>contents</i> analogous to the properties of Document.</p>
<!-- @@@Database -->
<h2>Property Documentation</h2>
<!-- $$$error-prop$$$lastError$$$errorChangedconstQString& -->
<h3 class="fn"><span class="name">error</span> : const <span class="type">QString</span></h3>
<p>The last error as a string if the last operation failed.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QString </td><td class="memItemRight bottomAlign"><span class="name"><b>lastError</b></span>()</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>errorChanged</b></span>(const QString &amp;<i> error</i>)</td></tr>
</table>
<!-- @@@error -->
<!-- $$$path-prop$$$getPath$$$setPathconstQString&$$$pathChangedconstQString& -->
<h3 class="fn"><span class="name">path</span> : <span class="type">QString</span></h3>
<p>A relative filename can be given to store the database in an app-specific writable folder. This is recommended as it ensures to work with confinement. If more control is needed absolute paths can be used. By default everything is stored in memory.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QString </td><td class="memItemRight bottomAlign"><span class="name"><b>getPath</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setPath</b></span>(const QString &amp;<i> path</i>)</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>pathChanged</b></span>(const QString &amp;<i> path</i>)</td></tr>
</table>
<!-- @@@path -->
<h2>Member Function Documentation</h2>
<!-- $$$Database[overload1]$$$DatabaseQObject* -->
<h3 class="fn">Database::<span class="name">Database</span>(<span class="type">QObject</span> *<i> parent</i> = 0)</h3>
<p>Instantiate a new Database with an optional <i>parent</i>, usually by declaring it as a QML item.</p>
<!-- @@@Database -->
<!-- $$$deleteDoc[overload1]$$$deleteDocconstQString& -->
<h3 class="fn"><span class="type">void</span> Database::<span class="name">deleteDoc</span>(const <span class="type">QString</span> &amp;<i> docId</i>)</h3>
<p>Deletes the document identified by <i>docId</i>.</p>
<!-- @@@deleteDoc -->
<!-- $$$getDoc[overload1]$$$getDocconstQString& -->
<h3 class="fn"><span class="type">QVariant</span> Database::<span class="name">getDoc</span>(const <span class="type">QString</span> &amp;<i> docId</i>)</h3>
<p>Returns the contents of a document by <i>docId</i> in a form that QML recognizes as a Variant object, it's identical to <a href="U1db.Document.md#contents-prop">Document::getContents</a>() with the same <i>docId</i>.</p>
<!-- @@@getDoc -->
<!-- $$$getDocUnchecked[overload1]$$$getDocUncheckedconstQString& -->
<h3 class="fn"><span class="type">QVariant</span> Database::<span class="name">getDocUnchecked</span>(const <span class="type">QString</span> &amp;<i> docId</i>) const</h3>
<p>Same functionality as <a href="#getDoc">Database::getDoc</a>() except it won't set <a href="#error-prop">Database::lastError</a>() and it doesn't implicitly try to initialize the underlying database. <i>docId</i> must be a valid unique ID string Use cases: model implementations, <a href="U1db.Document.md#contents-prop">Document::getContents</a>()</p>
<!-- @@@getDocUnchecked -->
<!-- $$$getIndexExpressions[overload1]$$$getIndexExpressionsconstQString& -->
<h3 class="fn"><span class="type">QStringList</span> Database::<span class="name">getIndexExpressions</span>(const <span class="type">QString</span> &amp;<i> indexName</i>)</h3>
<p>Gets the expressions saved with <a href="#putIndex">putIndex</a>(). <i>indexName</i>: the unique name of an existing index</p>
<!-- @@@getIndexExpressions -->
<!-- $$$getIndexKeys[overload1]$$$getIndexKeysconstQString& -->
<h3 class="fn"><span class="type">QStringList</span> Database::<span class="name">getIndexKeys</span>(const <span class="type">QString</span> &amp;<i> indexName</i>)</h3>
<p>Lists the index keys of an index created with <a href="#putIndex">putIndex</a>(). <i>indexName</i>: the unique name of an existing index</p>
<!-- @@@getIndexKeys -->
<!-- $$$listDocs[overload1]$$$listDocs -->
<h3 class="fn"><span class="type">QList</span>&lt;<span class="type">QString</span>&gt; Database::<span class="name">listDocs</span>()</h3>
<p>Returns a list of all stored documents by their docId.</p>
<!-- @@@listDocs -->
<!-- $$$putDoc[overload1]$$$putDocQVariantconstQString& -->
<h3 class="fn"><span class="type">QString</span> Database::<span class="name">putDoc</span>(<span class="type">QVariant</span><i> contents</i>, const <span class="type">QString</span> &amp;<i> docId</i> = QString())</h3>
<p>Updates the existing <i>contents</i> of the document identified by <i>docId</i> if there's no error. If no <i>docId</i> is given or <i>docId</i> is an empty string the <i>contents</i> will be stored under an autogenerated name. Returns the new revision of the document, or -1 on failure.</p>
<!-- @@@putDoc -->
<!-- $$$putIndex[overload1]$$$putIndexconstQString&QStringList -->
<h3 class="fn"><span class="type">QString</span> Database::<span class="name">putIndex</span>(const <span class="type">QString</span> &amp;<i> indexName</i>, <span class="type">QStringList</span><i> expressions</i>)</h3>
<p>Stores a new index under the given <i>indexName</i>, with <i>expressions</i>. An existing index won't be replaced implicitly, an error will be set in that case.</p>
<!-- @@@putIndex -->
<!-- $$$resetModel[overload1]$$$resetModel -->
<h3 class="fn"><span class="type">void</span> Database::<span class="name">resetModel</span>()</h3>
<p>Database::resetModel</p>
<p>Resets the Database model.</p>
<!-- @@@resetModel -->
