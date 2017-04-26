---
Title: U1db.Index
---

# U1db.Index

<!-- $$$Index-brief -->
<p>The Index class defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database. More...</p>
<!-- @@@Index -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Header:</td><td class="memItemRight bottomAlign"> </b><tt><span class="preprocessor">#include &lt;Index&gt;</span>
</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><a href="#database-prop">database</a></b> : Database *</li>
<li class="fn"><b><a href="#expression-prop">expression</a></b> : QStringList</li>
<li class="fn"><b><a href="#name-prop">name</a></b> : QString</li>
</ul>
<h2>Public Functions</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> </td><td class="memItemRight bottomAlign"><b><a href="#Index">Index</a></b>(QObject *<i> parent</i> = 0)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> Database * </td><td class="memItemRight bottomAlign"><b><a href="#database-prop">getDatabase</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QStringList </td><td class="memItemRight bottomAlign"><b><a href="#expression-prop">getExpression</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QString </td><td class="memItemRight bottomAlign"><b><a href="#name-prop">getName</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#database-prop">setDatabase</a></b>(Database *<i> database</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#expression-prop">setExpression</a></b>(QStringList<i> expression</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#name-prop">setName</a></b>(const QString &amp;<i> name</i>)</td></tr>
</table>
<h2>Signals</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#database-prop">databaseChanged</a></b>(Database *<i> database</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#expression-prop">expressionChanged</a></b>(QVariant<i> expression</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#name-prop">nameChanged</a></b>(const QString &amp;<i> name</i>)</td></tr>
</table>
<!-- $$$Index-description -->
<h2>Detailed Description</h2>
<p>The Index class defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database.</p>
<p>This is the declarative API equivalent of <a href="U1db.Database.md#putIndex">Database::putIndex</a>() and <a href="U1db.Database.md#getIndexExpressions">Database::getIndexExpressions</a>().</p>
<!-- @@@Index -->
<h2>Property Documentation</h2>
<!-- $$$database-prop$$$getDatabase$$$setDatabaseDatabase*$$$databaseChangedDatabase* -->
<h3 class="fn"><span class="name">database</span> : <span class="type"><a href="U1db.Database.md">Database</a></span> *</h3>
<p>Sets the Database to lookup documents from and store the index in. The dataInvalidated() signal will be emitted on all changes that could affect the index.</p>
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
<!-- $$$expression-prop$$$getExpression$$$setExpressionQStringList$$$expressionChangedQVariant -->
<h3 class="fn"><span class="name">expression</span> : <span class="type">QStringList</span></h3>
<p>Sets the expression used. Both an expression and a name must be specified for an index to be created.</p>
<p>Also starts the process of creating the Index result list, which can then be queried or populate the Query model as is.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QStringList </td><td class="memItemRight bottomAlign"><span class="name"><b>getExpression</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setExpression</b></span>(QStringList<i> expression</i>)</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>expressionChanged</b></span>(QVariant<i> expression</i>)</td></tr>
</table>
<!-- @@@expression -->
<!-- $$$name-prop$$$getName$$$setNameconstQString&$$$nameChangedconstQString& -->
<h3 class="fn"><span class="name">name</span> : <span class="type">QString</span></h3>
<p>Sets the name used. Both an expression and a name must be specified for an index to be created.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QString </td><td class="memItemRight bottomAlign"><span class="name"><b>getName</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setName</b></span>(const QString &amp;<i> name</i>)</td></tr>
</table>
<p><b>Notifier signal:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>nameChanged</b></span>(const QString &amp;<i> name</i>)</td></tr>
</table>
<!-- @@@name -->
<h2>Member Function Documentation</h2>
<!-- $$$Index[overload1]$$$IndexQObject* -->
<h3 class="fn">Index::<span class="name">Index</span>(<span class="type">QObject</span> *<i> parent</i> = 0)</h3>
<p>Instantiate a new Index with an optional <i>parent</i>, usually by declaring it as a QML item.</p>
<!-- @@@Index -->
