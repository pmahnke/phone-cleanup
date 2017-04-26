---
Title: U1db.Query
---
        
Query
=====

The Query class generates a filtered list of documents based on a query using the given Index. More...

|         |                    |
|---------|--------------------|
| Header: | `#include <Query>` |

<span id="properties"></span>
Properties
----------

-   **[documents](#documents-prop)** : const QStringList
-   **[index](#index-prop)** : Index \*
-   **[query](#query-prop)** : QVariant
-   **[results](#results-prop)** : const QList&lt;QVariant&gt;

<span id="public-functions"></span>
Public Functions
----------------

|                       |                                                         |
|-----------------------|---------------------------------------------------------|
|                       | **[Query](#Query)**(QObject \* *parent* = 0)  |
| QStringList           | **[getDocuments](#documents-prop)**()         |
| Index \*              | **[getIndex](#index-prop)**()                 |
| QVariant              | **[getQuery](#query-prop)**()                 |
| QList&lt;QVariant&gt; | **[getResults](#results-prop)**()             |
| void                  | **[resetModel](#resetModel)**()               |
| void                  | **[setIndex](#index-prop)**(Index \* *index*) |
| void                  | **[setQuery](#query-prop)**(QVariant *query*) |

<span id="signals"></span>
Signals
-------

|      |                                                                                |
|------|--------------------------------------------------------------------------------|
| void | **[documentsChanged](#documents-prop)**(QStringList *documents*)     |
| void | **[indexChanged](#index-prop)**(Index \* *index*)                    |
| void | **[queryChanged](#query-prop)**(QVariant *query*)                    |
| void | **[resultsChanged](#results-prop)**(QList&lt;QVariant&gt; *results*) |

<span id="details"></span>
Detailed Description
--------------------

The Query class generates a filtered list of documents based on a query using the given Index.

Query can be used as a QAbstractListModel, delegates will then have access to *docId* and *contents* analogous to the properties of Document.

Property Documentation
----------------------

### <span id="documents-prop"></span><span class="name">documents</span> : const <span class="type">QStringList</span>

The docId's of all matched documents.

**Access functions:**

|             |                                              |
|-------------|----------------------------------------------|
| QStringList | <span class="name">**getDocuments**</span>() |

**Notifier signal:**

|      |                                                                         |
|------|-------------------------------------------------------------------------|
| void | <span class="name">**documentsChanged**</span>(QStringList *documents*) |

### <span id="index-prop"></span><span class="name">index</span> : <span class="type">[Index](../U1db.Index.md)</span> \*

Sets the Index to use. The index must have a valid name and index expressions. If no query is set, the default is all results of the index.

**Access functions:**

|          |                                                          |
|----------|----------------------------------------------------------|
| Index \* | <span class="name">**getIndex**</span>()                 |
| void     | <span class="name">**setIndex**</span>(Index \* *index*) |

**Notifier signal:**

|      |                                                              |
|------|--------------------------------------------------------------|
| void | <span class="name">**indexChanged**</span>(Index \* *index*) |

### <span id="query-prop"></span><span class="name">query</span> : <span class="type">QVariant</span>

A query in one of the allowed forms: 'value', \['value'\] or \[{'sub-field': 'value'}\]. The default is equivalent to '\*'.

**Access functions:**

|          |                                                          |
|----------|----------------------------------------------------------|
| QVariant | <span class="name">**getQuery**</span>()                 |
| void     | <span class="name">**setQuery**</span>(QVariant *query*) |

**Notifier signal:**

|      |                                                              |
|------|--------------------------------------------------------------|
| void | <span class="name">**queryChanged**</span>(QVariant *query*) |

### <span id="results-prop"></span><span class="name">results</span> : const <span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt;

The results of the query as a list.

**Access functions:**

|                       |                                            |
|-----------------------|--------------------------------------------|
| QList&lt;QVariant&gt; | <span class="name">**getResults**</span>() |

**Notifier signal:**

|      |                                                                               |
|------|-------------------------------------------------------------------------------|
| void | <span class="name">**resultsChanged**</span>(QList&lt;QVariant&gt; *results*) |

Member Function Documentation
-----------------------------

### <span id="Query"></span>Query::<span class="name">Query</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Query with an optional *parent*, usually by declaring it as a QML item.

**See also** [setQuery](#query-prop)().

### <span id="resetModel"></span><span class="type">void</span> Query::<span class="name">resetModel</span>()

Query::resetModel

Resets the model of the Query

