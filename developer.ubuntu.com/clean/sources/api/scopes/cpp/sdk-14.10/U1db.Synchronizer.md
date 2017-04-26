---
Title: U1db.Synchronizer
---
        
Synchronizer
============

The Synchronizer class handles synchronizing between two databases. More...

|         |                           |
|---------|---------------------------|
| Header: | `#include <Synchronizer>` |

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
<li><strong><a href="#resolve_to_source-prop">resolve_to_source</a></strong> : bool</li>
<li><strong><a href="#source-prop">source</a></strong> : Database *</li>
<li><strong><a href="#sync_output-prop">sync_output</a></strong> : const QList&lt;QVariant&gt;</li>
</ul></td>
<td><ul>
<li><strong><a href="#synchronize-prop">synchronize</a></strong> : bool</li>
<li><strong><a href="#targets-prop">targets</a></strong> : QVariant</li>
</ul></td>
</tr>
</tbody>
</table>

<span id="public-functions"></span>
Public Functions
----------------

|                       |                                                                                         |
|-----------------------|-----------------------------------------------------------------------------------------|
|                       | **[Synchronizer](#Synchronizer)**(QObject \* *parent* = 0)                    |
| bool                  | **[getResolveToSource](#resolve_to_source-prop)**()                           |
| Database \*           | **[getSource](#source-prop)**()                                               |
| bool                  | **[getSync](#synchronize-prop)**()                                            |
| QList&lt;QVariant&gt; | **[getSyncOutput](#sync_output-prop)**()                                      |
| QVariant              | **[getTargets](#targets-prop)**()                                             |
| void                  | **[setResolveToSource](#resolve_to_source-prop)**(bool *resolve\_to\_source*) |
| void                  | **[setSource](#source-prop)**(Database \* *source*)                           |
| void                  | **[setSync](#synchronize-prop)**(bool *synchronize*)                          |
| void                  | **[setSyncOutput](#setSyncOutput)**(QList&lt;QVariant&gt; *sync\_output*)     |
| void                  | **[setTargets](#targets-prop)**(QVariant *targets*)                           |

<span id="details"></span>
Detailed Description
--------------------

The Synchronizer class handles synchronizing between two databases.

Property Documentation
----------------------

### <span id="resolve_to_source-prop"></span><span class="name">resolve\_to\_source</span> : <span class="type">bool</span>

**Access functions:**

|      |                                                                              |
|------|------------------------------------------------------------------------------|
| bool | <span class="name">**getResolveToSource**</span>()                           |
| void | <span class="name">**setResolveToSource**</span>(bool *resolve\_to\_source*) |

### <span id="source-prop"></span><span class="name">source</span> : <span class="type">[Database](../U1db.Database.md)</span> \*

Returns a source Database.

**Access functions:**

|             |                                                               |
|-------------|---------------------------------------------------------------|
| Database \* | <span class="name">**getSource**</span>()                     |
| void        | <span class="name">**setSource**</span>(Database \* *source*) |

### <span id="sync_output-prop"></span><span class="name">sync\_output</span> : const <span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt;

This property holds synchronizer::getSyncOutput.

Returns the output from a sync session. The list should contain numerous QVariantMaps, each of which will have various meta-data with informative information about what happened in the background of the session.

In some cases the information will be about errors or warnings, and in other cases simple log messages. Also included would noramlly be associated properties, elements and other data.

The information can be used in any number of ways, such as on screen within an app, testing, console output, logs and more. This is designed to be flexible enough that the app developer can decide themselves how to best use the data.

**Access functions:**

|                       |                                               |
|-----------------------|-----------------------------------------------|
| QList&lt;QVariant&gt; | <span class="name">**getSyncOutput**</span>() |

### <span id="synchronize-prop"></span><span class="name">synchronize</span> : <span class="type">bool</span>

**Access functions:**

|      |                                                           |
|------|-----------------------------------------------------------|
| bool | <span class="name">**getSync**</span>()                   |
| void | <span class="name">**setSync**</span>(bool *synchronize*) |

### <span id="targets-prop"></span><span class="name">targets</span> : <span class="type">QVariant</span>

Sets meta-data for databases to be used during a synchronization session.

The QVariant is a list that can contain definitions for more than one database to be used as a target. For example:

targets: \[{remote:true}, {remote:true, ip:"127.0.0.1", port: 7777, name:"example1.u1db", [resolve\_to\_source](#resolve_to_source-prop):true}, {remote:"OK"}\]

The above example defines three databases. Two of the three definitions in the example are invalid, the first ({remote:true}) and the third ({remote:"OK"}), because they are incomplete.

The second definition is a fully defined and valid definition for a local to remote synchronization of two databases:

{remote:true, ip:"127.0.0.1", port: 7777, name:"example1.u1db", [resolve\_to\_source](#resolve_to_source-prop):true}

'remote' determines whether the database is on disk or located on a server. 'ip' and 'port' for a server are used only when 'remote' is set to true 'name' is the name of the local (on disk) or remote database. Note: If 'remote' is false this is the relative/absolute file location. '[resolve\_to\_source](#resolve_to_source-prop)' determines whether to resolve conflicts automatically in favor of the source (aka local) database's values or the target's.

**Access functions:**

|          |                                                              |
|----------|--------------------------------------------------------------|
| QVariant | <span class="name">**getTargets**</span>()                   |
| void     | <span class="name">**setTargets**</span>(QVariant *targets*) |

Member Function Documentation
-----------------------------

### <span id="Synchronizer"></span>Synchronizer::<span class="name">Synchronizer</span>(<span class="type">QObject</span> \* *parent* = 0)

Create a new Synchronizer element, with an optional *parent*, usually by declaring it as a QML item.

Synchronizer elements sync two databases together, a 'source' database and a remote or local 'target' database.

Example use in a QML application:

U1db.Synchronizer{ id: aSynchronizer synchronize: false source: aDatabase targets: \[{remote:true, ip:"127.0.0.1", port: 7777, name:"example1.u1db", [resolve\_to\_source](#resolve_to_source-prop):true}\]

}

Short description of properties:

id: The element's identification.

bool synchronize: Is the element actively synching or not. Should be set to false.

U1DB::Database source: The id of a local database that will be used for synchronization.

QVariant targets: One or more target databases that will be synched with the local database.

bool targets.remote: Is the target database a remote or local database.

QString targets.ip: The ip address of a remote database (if applicable).

int targets.port: Port number of the remote server.

QString targets.name: The name of the database.

bool targets.[resolve\_to\_source](#resolve_to_source-prop): In case of conflict should the sync resolve to the source's data (if true).

Example use with u1db-serve:

1. In a terminal cd into a directory where the u1db Python reference implemented has been downloaded from lp:u1db. 2. Using Python create a database called 'example1.u1db' using u1db, and a document 'helloworld':

\# python

&gt;&gt;&gt; import u1db &gt;&gt;&gt; db = u1db.open("example1.u1db",create=True) &gt;&gt;&gt; content = {"hello": { "world": { "message":"Hello World Updated" } } } &gt;&gt;&gt; db.create\_doc(content, doc\_id="helloworld")

ctrl+d

3. From the u1db directory above type './u1db-serve --port=7777' and hit enter. 4. Open another terminal tab. 5. Change into a directory containing u1db-qt (assuming this class is included in that directory and the installed version on the host computer). 6. Change into the directory where u1db-qt-example-6.qml is located. 7. Type 'qmlscene u1db-qt-example-6.qml' and hit enter. 8. Click the button labelled 'Sync'. 9. Check the terminal windows for output from either the client or server.

### <span id="setSyncOutput"></span><span class="type">void</span> Synchronizer::<span class="name">setSyncOutput</span>(<span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt; *sync\_output*)

Sets the current value for the active session's *sync\_output*.

