---
Title: U1db.Index
---
        
Index
=====

The Index class defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database. More...

|         |                    |
|---------|--------------------|
| Header: | `#include <Index>` |

<span id="properties"></span>
Properties
----------

-   **[database](#database-prop)** : Database \*
-   **[expression](#expression-prop)** : QStringList
-   **[name](#name-prop)** : QString

<span id="public-functions"></span>
Public Functions
----------------

|             |                                                                           |
|-------------|---------------------------------------------------------------------------|
|             | **[Index](#Index)**(QObject \* *parent* = 0)                    |
| Database \* | **[getDatabase](#database-prop)**()                             |
| QStringList | **[getExpression](#expression-prop)**()                         |
| QString     | **[getName](#name-prop)**()                                     |
| void        | **[setDatabase](#database-prop)**(Database \* *database*)       |
| void        | **[setExpression](#expression-prop)**(QStringList *expression*) |
| void        | **[setName](#name-prop)**(const QString & *name*)               |

<span id="signals"></span>
Signals
-------

|      |                                                                            |
|------|----------------------------------------------------------------------------|
| void | **[databaseChanged](#database-prop)**(Database \* *database*)    |
| void | **[expressionChanged](#expression-prop)**(QVariant *expression*) |
| void | **[nameChanged](#name-prop)**(const QString & *name*)            |

<span id="details"></span>
Detailed Description
--------------------

The Index class defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database.

This is the declarative API equivalent of [Database::putIndex](../U1db.Database.md#putIndex)() and [Database::getIndexExpressions](../U1db.Database.md#getIndexExpressions)().

Property Documentation
----------------------

### <span id="database-prop"></span><span class="name">database</span> : <span class="type">[Database](../U1db.Database.md)</span> \*

Sets the Database to lookup documents from and store the index in. The dataInvalidated() signal will be emitted on all changes that could affect the index.

**Access functions:**

|             |                                                                   |
|-------------|-------------------------------------------------------------------|
| Database \* | <span class="name">**getDatabase**</span>()                       |
| void        | <span class="name">**setDatabase**</span>(Database \* *database*) |

**Notifier signal:**

|      |                                                                       |
|------|-----------------------------------------------------------------------|
| void | <span class="name">**databaseChanged**</span>(Database \* *database*) |

### <span id="expression-prop"></span><span class="name">expression</span> : <span class="type">QStringList</span>

Sets the expression used. Both an expression and a name must be specified for an index to be created.

Also starts the process of creating the Index result list, which can then be queried or populate the Query model as is.

**Access functions:**

|             |                                                                       |
|-------------|-----------------------------------------------------------------------|
| QStringList | <span class="name">**getExpression**</span>()                         |
| void        | <span class="name">**setExpression**</span>(QStringList *expression*) |

**Notifier signal:**

|      |                                                                        |
|------|------------------------------------------------------------------------|
| void | <span class="name">**expressionChanged**</span>(QVariant *expression*) |

### <span id="name-prop"></span><span class="name">name</span> : <span class="type">QString</span>

Sets the name used. Both an expression and a name must be specified for an index to be created.

**Access functions:**

|         |                                                               |
|---------|---------------------------------------------------------------|
| QString | <span class="name">**getName**</span>()                       |
| void    | <span class="name">**setName**</span>(const QString & *name*) |

**Notifier signal:**

|      |                                                                   |
|------|-------------------------------------------------------------------|
| void | <span class="name">**nameChanged**</span>(const QString & *name*) |

Member Function Documentation
-----------------------------

### <span id="Index"></span>Index::<span class="name">Index</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Index with an optional *parent*, usually by declaring it as a QML item.

