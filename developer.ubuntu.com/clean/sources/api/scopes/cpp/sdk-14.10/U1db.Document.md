---
Title: U1db.Document
---
        
Document
========

The Document class proxies a single document stored in the Database. More...

|         |                       |
|---------|-----------------------|
| Header: | `#include <Document>` |

<span id="properties"></span>
Properties
----------

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><ul>
<li><strong><a href="#contents-prop">contents</a></strong> : QVariant</li>
<li><strong><a href="#create-prop">create</a></strong> : bool</li>
<li><strong><a href="#database-prop">database</a></strong> : Database *</li>
</ul></td>
<td><ul>
<li><strong><a href="#defaults-prop">defaults</a></strong> : QVariant</li>
<li><strong><a href="#docId-prop">docId</a></strong> : QString</li>
</ul></td>
</tr>
</tbody>
</table>

<span id="public-functions"></span>
Public Functions
----------------

|             |                                                                     |
|-------------|---------------------------------------------------------------------|
|             | **[Document](#Document)**(QObject \* *parent* = 0)        |
| QVariant    | **[getContents](#contents-prop)**()                       |
| bool        | **[getCreate](#create-prop)**()                           |
| Database \* | **[getDatabase](#database-prop)**()                       |
| QVariant    | **[getDefaults](#defaults-prop)**()                       |
| QString     | **[getDocId](#docId-prop)**()                             |
| void        | **[setContents](#contents-prop)**(QVariant *contents*)    |
| void        | **[setCreate](#create-prop)**(bool *create*)              |
| void        | **[setDatabase](#database-prop)**(Database \* *database*) |
| void        | **[setDefaults](#defaults-prop)**(QVariant *defaults*)    |
| void        | **[setDocId](#docId-prop)**(const QString & *docId*)      |

<span id="signals"></span>
Signals
-------

|      |                                                                         |
|------|-------------------------------------------------------------------------|
| void | **[contentsChanged](#contents-prop)**(QVariant *contents*)    |
| void | **[createChanged](#create-prop)**(bool *create*)              |
| void | **[databaseChanged](#database-prop)**(Database \* *database*) |
| void | **[defaultsChanged](#defaults-prop)**(QVariant *defaults*)    |
| void | **[docIdChanged](#docId-prop)**(const QString & *docId*)      |

<span id="details"></span>
Detailed Description
--------------------

The Document class proxies a single document stored in the Database.

This is the declarative API equivalent of [Database::putDoc](../U1db.Database.md#putDoc)() and [Database::getDoc](../U1db.Database.md#getDoc)().

Property Documentation
----------------------

### <span id="contents-prop"></span><span class="name">contents</span> : <span class="type">QVariant</span>

Updates the contents of the document. A valid [docId](#docId-prop) must be set.

**Access functions:**

|          |                                                                |
|----------|----------------------------------------------------------------|
| QVariant | <span class="name">**getContents**</span>()                    |
| void     | <span class="name">**setContents**</span>(QVariant *contents*) |

**Notifier signal:**

|      |                                                                    |
|------|--------------------------------------------------------------------|
| void | <span class="name">**contentsChanged**</span>(QVariant *contents*) |

### <span id="create-prop"></span><span class="name">create</span> : <span class="type">bool</span>

If create is true, [docId](#docId-prop) is not empty and no document with the same [docId](#docId-prop) exists, defaults will be used to store the document.

**Access functions:**

|      |                                                        |
|------|--------------------------------------------------------|
| bool | <span class="name">**getCreate**</span>()              |
| void | <span class="name">**setCreate**</span>(bool *create*) |

**Notifier signal:**

|      |                                                            |
|------|------------------------------------------------------------|
| void | <span class="name">**createChanged**</span>(bool *create*) |

### <span id="database-prop"></span><span class="name">database</span> : <span class="type">[Database](../U1db.Database.md)</span> \*

The database is used to lookup the contents of the document, reflecting changes done to it and conversely changes are saved to the database.

**Access functions:**

|             |                                                                   |
|-------------|-------------------------------------------------------------------|
| Database \* | <span class="name">**getDatabase**</span>()                       |
| void        | <span class="name">**setDatabase**</span>(Database \* *database*) |

**Notifier signal:**

|      |                                                                       |
|------|-----------------------------------------------------------------------|
| void | <span class="name">**databaseChanged**</span>(Database \* *database*) |

### <span id="defaults-prop"></span><span class="name">defaults</span> : <span class="type">QVariant</span>

The default contents of the document, which are used only if create is true, [docId](#docId-prop) is not empty and no document with the same [docId](#docId-prop) exists in the database yet. If the defaults change, it's up to the API user to handle it.

**Access functions:**

|          |                                                                |
|----------|----------------------------------------------------------------|
| QVariant | <span class="name">**getDefaults**</span>()                    |
| void     | <span class="name">**setDefaults**</span>(QVariant *defaults*) |

**Notifier signal:**

|      |                                                                    |
|------|--------------------------------------------------------------------|
| void | <span class="name">**defaultsChanged**</span>(QVariant *defaults*) |

### <span id="docId-prop"></span><span class="name">docId</span> : <span class="type">QString</span>

The docId can be that of an existing document in the database and will determine what [getContents](#contents-prop)() returns. If no such documents exists, [setDefaults](#defaults-prop)() can be used to supply a preset.

**Access functions:**

|         |                                                                 |
|---------|-----------------------------------------------------------------|
| QString | <span class="name">**getDocId**</span>()                        |
| void    | <span class="name">**setDocId**</span>(const QString & *docId*) |

**Notifier signal:**

|      |                                                                     |
|------|---------------------------------------------------------------------|
| void | <span class="name">**docIdChanged**</span>(const QString & *docId*) |

Member Function Documentation
-----------------------------

### <span id="Document"></span>Document::<span class="name">Document</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Document with an optional *parent*, usually by declaring it as a QML item.

