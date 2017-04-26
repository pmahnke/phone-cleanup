---
Title: U1db.overview
---

# U1db.overview

<span class="subtitle"></span>
<!-- $$$overview.html-description -->
<h0>General Topics</h0>
<ul>
<li><a href="U1db.tutorial.md">Tutorial</a> gives a quick start guide from storing a document to querying a database and displaying it in <a href="../../../apps/qml/sdk-14.10/UbuntuUserInterfaceToolkit.overview-ubuntu-sdk.md">Ubuntu Components</a>.</li>
<li><a href="U1db.concepts.md">Design Concepts</a> provides an overview of the design and terminology.</li>
</ul>
<h0>Document Storage</h0>
<p>Available through:</p>
<pre class="cpp">import U1db <span class="number">1.0</span> as U1db</pre>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="U1db.Database.md">Database</a></p></td><td class="tblDescr"><p>Implements the on-disk storage of an individual U1DB database</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="U1db.Document.md">Document</a></p></td><td class="tblDescr"><p>Proxies a single document stored in the Database</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="U1db.Index.md">Index</a></p></td><td class="tblDescr"><p>Defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="U1db.Query.md">Query</a></p></td><td class="tblDescr"><p>Generates a filtered list of documents based on a query using the given Index</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="U1db.Synchronizer.md">Synchronizer</a></p></td><td class="tblDescr"><p>Handles synchronizing between two databases</p></td></tr>
</table>
<!-- @@@overview.html -->
<p class="naviNextPrevious footerNavi">
</p>
