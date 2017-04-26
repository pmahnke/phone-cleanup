---
Title: U1db.Database
---
        
Database
========

The Database class implements the on-disk storage of an individual U1DB database. More...

|         |                       |
|---------|-----------------------|
| Header: | `#include <Database>` |

<span id="properties"></span>
Properties
----------

-   **[error](#error-prop)** : const QString
-   **[path](#path-prop)** : QString

<span id="public-functions"></span>
Public Functions
----------------

|                      |                                                                                             |
|----------------------|---------------------------------------------------------------------------------------------|
|                      | **[Database](#Database)**(QObject \* *parent* = 0)                                |
| void                 | **[deleteDoc](#deleteDoc)**(const QString & *docId*)                              |
| QVariant             | **[getDoc](#getDoc)**(const QString & *docId*)                                    |
| QVariant             | **[getDocUnchecked](#getDocUnchecked)**(const QString & *docId*) const            |
| QStringList          | **[getIndexExpressions](#getIndexExpressions)**(const QString & *indexName*)      |
| QStringList          | **[getIndexKeys](#getIndexKeys)**(const QString & *indexName*)                    |
| QString              | **[getPath](#path-prop)**()                                                       |
| QString              | **[lastError](#error-prop)**()                                                    |
| QList&lt;QString&gt; | **[listDocs](#listDocs)**()                                                       |
| QString              | **[putDoc](#putDoc)**(QVariant *contents*, const QString & *docId* = QString())   |
| QString              | **[putIndex](#putIndex)**(const QString & *indexName*, QStringList *expressions*) |
| void                 | **[resetModel](#resetModel)**()                                                   |
| void                 | **[setPath](#path-prop)**(const QString & *path*)                                 |

<span id="signals"></span>
Signals
-------

|      |                                                                    |
|------|--------------------------------------------------------------------|
| void | **[errorChanged](#error-prop)**(const QString & *error*) |
| void | **[pathChanged](#path-prop)**(const QString & *path*)    |

<span id="details"></span>
Detailed Description
--------------------

The Database class implements the on-disk storage of an individual U1DB database.

Database can be used as a QAbstractListModel, delegates will then have access to *docId* and *contents* analogous to the properties of Document.

Property Documentation
----------------------

### <span id="error-prop"></span><span class="name">error</span> : const <span class="type">QString</span>

The last error as a string if the last operation failed.

**Access functions:**

|         |                                           |
|---------|-------------------------------------------|
| QString | <span class="name">**lastError**</span>() |

**Notifier signal:**

|      |                                                                     |
|------|---------------------------------------------------------------------|
| void | <span class="name">**errorChanged**</span>(const QString & *error*) |

### <span id="path-prop"></span><span class="name">path</span> : <span class="type">QString</span>

A relative filename can be given to store the database in an app-specific writable folder. This is recommended as it ensures to work with confinement. If more control is needed absolute paths can be used. By default everything is stored in memory.

**Access functions:**

|         |                                                               |
|---------|---------------------------------------------------------------|
| QString | <span class="name">**getPath**</span>()                       |
| void    | <span class="name">**setPath**</span>(const QString & *path*) |

**Notifier signal:**

|      |                                                                   |
|------|-------------------------------------------------------------------|
| void | <span class="name">**pathChanged**</span>(const QString & *path*) |

Member Function Documentation
-----------------------------

### <span id="Database"></span>Database::<span class="name">Database</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Database with an optional *parent*, usually by declaring it as a QML item.

### <span id="deleteDoc"></span><span class="type">void</span> Database::<span class="name">deleteDoc</span>(const <span class="type">QString</span> & *docId*)

Deletes the document identified by *docId*.

### <span id="getDoc"></span><span class="type">QVariant</span> Database::<span class="name">getDoc</span>(const <span class="type">QString</span> & *docId*)

Returns the contents of a document by *docId* in a form that QML recognizes as a Variant object, it's identical to [Document::getContents](../U1db.Document.md#contents-prop)() with the same *docId*.

### <span id="getDocUnchecked"></span><span class="type">QVariant</span> Database::<span class="name">getDocUnchecked</span>(const <span class="type">QString</span> & *docId*) const

Same functionality as [Database::getDoc](#getDoc)() except it won't set [Database::lastError](#error-prop)() and it doesn't implicitly try to initialize the underlying database. *docId* must be a valid unique ID string Use cases: model implementations, [Document::getContents](../U1db.Document.md#contents-prop)()

### <span id="getIndexExpressions"></span><span class="type">QStringList</span> Database::<span class="name">getIndexExpressions</span>(const <span class="type">QString</span> & *indexName*)

Gets the expressions saved with [putIndex](#putIndex)(). *indexName*: the unique name of an existing index

### <span id="getIndexKeys"></span><span class="type">QStringList</span> Database::<span class="name">getIndexKeys</span>(const <span class="type">QString</span> & *indexName*)

Lists the index keys of an index created with [putIndex](#putIndex)(). *indexName*: the unique name of an existing index

### <span id="listDocs"></span><span class="type">QList</span>&lt;<span class="type">QString</span>&gt; Database::<span class="name">listDocs</span>()

Returns a list of all stored documents by their docId.

### <span id="putDoc"></span><span class="type">QString</span> Database::<span class="name">putDoc</span>(<span class="type">QVariant</span> *contents*, const <span class="type">QString</span> & *docId* = QString())

Updates the existing *contents* of the document identified by *docId* if there's no error. If no *docId* is given or *docId* is an empty string the *contents* will be stored under an autogenerated name. Returns the new revision of the document, or -1 on failure.

### <span id="putIndex"></span><span class="type">QString</span> Database::<span class="name">putIndex</span>(const <span class="type">QString</span> & *indexName*, <span class="type">QStringList</span> *expressions*)

Stores a new index under the given *indexName*, with *expressions*. An existing index won't be replaced implicitly, an error will be set in that case.

### <span id="resetModel"></span><span class="type">void</span> Database::<span class="name">resetModel</span>()

Database::resetModel

Resets the Database model.

