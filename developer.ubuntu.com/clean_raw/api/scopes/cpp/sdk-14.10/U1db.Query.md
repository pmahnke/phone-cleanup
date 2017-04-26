---
Title: U1db.Query
---

# U1db.Query

<!-- $$$Query-brief -->
<p>The Query class generates a filtered list of documents based on a query using the given Index. More...</p>
<!-- @@@Query -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Header:</td><td class="memItemRight bottomAlign"> </b><tt><span class="preprocessor">#include &lt;Query&gt;</span>
</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><a href="#documents-prop">documents</a></b> : const QStringList</li>
<li class="fn"><b><a href="#index-prop">index</a></b> : Index *</li>
<li class="fn"><b><a href="#query-prop">query</a></b> : QVariant</li>
<li class="fn"><b><a href="#results-prop">results</a></b> : const QList&lt;QVariant&gt;</li>
</ul>
<h2>Public Functions</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> </td><td class="memItemRight bottomAlign"><b><a href="#Query">Query</a></b>(QObject *<i> parent</i> = 0)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QStringList </td><td class="memItemRight bottomAlign"><b><a href="#documents-prop">getDocuments</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> Index * </td><td class="memItemRight bottomAlign"><b><a href="#index-prop">getIndex</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QVariant </td><td class="memItemRight bottomAlign"><b><a href="#query-prop">getQuery</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QList&lt;QVariant&gt; </td><td class="memItemRight bottomAlign"><b><a href="#results-prop">getResults</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#resetModel">resetModel</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#index-prop">setIndex</a></b>(Index *<i> index</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#query-prop">setQuery</a></b>(QVariant<i> query</i>)</td></tr>
</table>
<h2>Signals</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#documents-prop">documentsChanged</a></b>(QStringList<i> documents</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#index-prop">indexChanged</a></b>(Index *<i> index</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#query-prop">queryChanged</a></b>(QVariant<i> query</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#results-prop">resultsChanged</a></b>(QList&lt;QVariant&gt;<i> results</i>)</td></tr>
</table>
<!-- $$$Query-description -->
<h2>Detailed Description</h2>
<p>The Query class generates a filtered list of documents based on a query using the given Index.</p>
<p>Query can be used as a QAbstractListModel, delegates will then have access to <i>docId</i> and <i>contents</i> analogous to the properties of Document.</p>
<!-- @@@Query -->
<h2>Property Documentation</h2>
<!-- $$$documents-prop$$$getDocuments$$$documentsChangedQStringList -->
<h3 class="fn"><span class="name">documents</span> : const <span class="type">QStringList</span></h3>
<p>The docId's of all matched documents.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QStringList </td><td class="memItemRight bottomAlign"><span class="name"><b>getDocuments</b></span>()</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>documentsChanged</b></span>(QStringList<i> documents</i>)</td></tr>
</table>
<!-- @@@documents -->
<!-- $$$index-prop$$$getIndex$$$setIndexIndex*$$$indexChangedIndex* -->
<h3 class="fn"><span class="name">index</span> : <span class="type"><a href="U1db.Index.md">Index</a></span> *</h3>
<p>Sets the Index to use. The index must have a valid name and index expressions. If no query is set, the default is all results of the index.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> Index * </td><td class="memItemRight bottomAlign"><span class="name"><b>getIndex</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setIndex</b></span>(Index *<i> index</i>)</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>indexChanged</b></span>(Index *<i> index</i>)</td></tr>
</table>
<!-- @@@index -->
<!-- $$$query-prop$$$getQuery$$$setQueryQVariant$$$queryChangedQVariant -->
<h3 class="fn"><span class="name">query</span> : <span class="type">QVariant</span></h3>
<p>A query in one of the allowed forms: 'value', ['value'] or [{'sub-field': 'value'}]. The default is equivalent to '*'.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QVariant </td><td class="memItemRight bottomAlign"><span class="name"><b>getQuery</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setQuery</b></span>(QVariant<i> query</i>)</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>queryChanged</b></span>(QVariant<i> query</i>)</td></tr>
</table>
<!-- @@@query -->
<!-- $$$results-prop$$$getResults$$$resultsChangedQList<QVariant> -->
<h3 class="fn"><span class="name">results</span> : const <span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt;</h3>
<p>The results of the query as a list.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QList&lt;QVariant&gt; </td><td class="memItemRight bottomAlign"><span class="name"><b>getResults</b></span>()</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>resultsChanged</b></span>(QList&lt;QVariant&gt;<i> results</i>)</td></tr>
</table>
<!-- @@@results -->
<h2>Member Function Documentation</h2>
<!-- $$$Query[overload1]$$$QueryQObject* -->
<h3 class="fn">Query::<span class="name">Query</span>(<span class="type">QObject</span> *<i> parent</i> = 0)</h3>
<p>Instantiate a new Query with an optional <i>parent</i>, usually by declaring it as a QML item.</p>
<p><b>See also </b><a href="#query-prop">setQuery</a>().</p>
<!-- @@@Query -->
<!-- $$$resetModel[overload1]$$$resetModel -->
<h3 class="fn"><span class="type">void</span> Query::<span class="name">resetModel</span>()</h3>
<p>Query::resetModel</p>
<p>Resets the model of the Query</p>
<!-- @@@resetModel -->
