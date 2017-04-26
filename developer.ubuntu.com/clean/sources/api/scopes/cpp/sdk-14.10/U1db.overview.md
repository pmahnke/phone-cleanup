---
Title: U1db.overview
---
        
All Modules
===========

<span class="subtitle"></span>
details
-   [Tutorial](../U1db.tutorial.md) gives a quick start guide from storing a document to querying a database and displaying it in [Ubuntu Components](../../../../apps/qml/sdk-14.10/UbuntuUserInterfaceToolkit.overview-ubuntu-sdk.md).
-   [Design Concepts](../U1db.concepts.md) provides an overview of the design and terminology.

document-storage
Available through:

``` cpp
import U1db 1.0 as U1db
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="U1db.Database.md">Database</a></p></td>
<td><p>Implements the on-disk storage of an individual U1DB database</p></td>
</tr>
<tr class="even">
<td><p><a href="U1db.Document.md">Document</a></p></td>
<td><p>Proxies a single document stored in the Database</p></td>
</tr>
<tr class="odd">
<td><p><a href="U1db.Index.md">Index</a></p></td>
<td><p>Defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database</p></td>
</tr>
<tr class="even">
<td><p><a href="U1db.Query.md">Query</a></p></td>
<td><p>Generates a filtered list of documents based on a query using the given Index</p></td>
</tr>
<tr class="odd">
<td><p><a href="U1db.Synchronizer.md">Synchronizer</a></p></td>
<td><p>Handles synchronizing between two databases</p></td>
</tr>
</tbody>
</table>

