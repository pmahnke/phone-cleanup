<a href="https://developer.ubuntu.com/" class="logo-ubuntu"><img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/logos/logo-ubuntu-orange.svg" width="106" height="25" /> <span>developer</span></a>

-   [Jump to content](index.html#main-content)
-   [Desktop](https://developer.ubuntu.com/en/desktop/)
-   [Phone](https://developer.ubuntu.com/en/phone/)
-   [Core](https://developer.ubuntu.com/core)
-   [Community](https://developer.ubuntu.com/en/community/)
-   [Publish](https://developer.ubuntu.com/en/publish/)
-   [My Apps](https://myapps.developer.ubuntu.com/)

Search

<img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/search-white.svg" alt="Search" height="28" />

-   [APIs](../../../../index.html) ›
-   [Scopes](../../../index.html) ›
-   [C++](../../index.html) ›
-   [SDK 14.10](../index.html) ›
-   [U1db](../U1db/index.html) ›

<!-- -->

-   Synchronizer

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
<li><strong><a href="index.html#resolve_to_source-prop">resolve_to_source</a></strong> : bool</li>
<li><strong><a href="index.html#source-prop">source</a></strong> : Database *</li>
<li><strong><a href="index.html#sync_output-prop">sync_output</a></strong> : const QList&lt;QVariant&gt;</li>
</ul></td>
<td><ul>
<li><strong><a href="index.html#synchronize-prop">synchronize</a></strong> : bool</li>
<li><strong><a href="index.html#targets-prop">targets</a></strong> : QVariant</li>
</ul></td>
</tr>
</tbody>
</table>

<span id="public-functions"></span>
Public Functions
----------------

|                       |                                                                                         |
|-----------------------|-----------------------------------------------------------------------------------------|
|                       | **[Synchronizer](index.html#Synchronizer)**(QObject \* *parent* = 0)                    |
| bool                  | **[getResolveToSource](index.html#resolve_to_source-prop)**()                           |
| Database \*           | **[getSource](index.html#source-prop)**()                                               |
| bool                  | **[getSync](index.html#synchronize-prop)**()                                            |
| QList&lt;QVariant&gt; | **[getSyncOutput](index.html#sync_output-prop)**()                                      |
| QVariant              | **[getTargets](index.html#targets-prop)**()                                             |
| void                  | **[setResolveToSource](index.html#resolve_to_source-prop)**(bool *resolve\_to\_source*) |
| void                  | **[setSource](index.html#source-prop)**(Database \* *source*)                           |
| void                  | **[setSync](index.html#synchronize-prop)**(bool *synchronize*)                          |
| void                  | **[setSyncOutput](index.html#setSyncOutput)**(QList&lt;QVariant&gt; *sync\_output*)     |
| void                  | **[setTargets](index.html#targets-prop)**(QVariant *targets*)                           |

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

### <span id="source-prop"></span><span class="name">source</span> : <span class="type">[Database](../U1db.Database/index.html)</span> \*

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

targets: \[{remote:true}, {remote:true, ip:"127.0.0.1", port: 7777, name:"example1.u1db", [resolve\_to\_source](index.html#resolve_to_source-prop):true}, {remote:"OK"}\]

The above example defines three databases. Two of the three definitions in the example are invalid, the first ({remote:true}) and the third ({remote:"OK"}), because they are incomplete.

The second definition is a fully defined and valid definition for a local to remote synchronization of two databases:

{remote:true, ip:"127.0.0.1", port: 7777, name:"example1.u1db", [resolve\_to\_source](index.html#resolve_to_source-prop):true}

'remote' determines whether the database is on disk or located on a server. 'ip' and 'port' for a server are used only when 'remote' is set to true 'name' is the name of the local (on disk) or remote database. Note: If 'remote' is false this is the relative/absolute file location. '[resolve\_to\_source](index.html#resolve_to_source-prop)' determines whether to resolve conflicts automatically in favor of the source (aka local) database's values or the target's.

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

U1db.Synchronizer{ id: aSynchronizer synchronize: false source: aDatabase targets: \[{remote:true, ip:"127.0.0.1", port: 7777, name:"example1.u1db", [resolve\_to\_source](index.html#resolve_to_source-prop):true}\]

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

bool targets.[resolve\_to\_source](index.html#resolve_to_source-prop): In case of conflict should the sync resolve to the source's data (if true).

Example use with u1db-serve:

1. In a terminal cd into a directory where the u1db Python reference implemented has been downloaded from lp:u1db. 2. Using Python create a database called 'example1.u1db' using u1db, and a document 'helloworld':

\# python

&gt;&gt;&gt; import u1db &gt;&gt;&gt; db = u1db.open("example1.u1db",create=True) &gt;&gt;&gt; content = {"hello": { "world": { "message":"Hello World Updated" } } } &gt;&gt;&gt; db.create\_doc(content, doc\_id="helloworld")

ctrl+d

3. From the u1db directory above type './u1db-serve --port=7777' and hit enter. 4. Open another terminal tab. 5. Change into a directory containing u1db-qt (assuming this class is included in that directory and the installed version on the host computer). 6. Change into the directory where u1db-qt-example-6.qml is located. 7. Type 'qmlscene u1db-qt-example-6.qml' and hit enter. 8. Click the button labelled 'Sync'. 9. Check the terminal windows for output from either the client or server.

### <span id="setSyncOutput"></span><span class="type">void</span> Synchronizer::<span class="name">setSyncOutput</span>(<span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt; *sync\_output*)

Sets the current value for the active session's *sync\_output*.

[Back to top](index.html#)

-   [Desktop](https://developer.ubuntu.com/en/desktop/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/desktop/)
    -   [Get started](http://snapcraft.io/?utm_source=developer.ubuntu.com&utm_medium=devportal&utm_term=snaps%20snapcraft%20desktop&utm_content=menu&utm_campaign=duc_snappers)
    -   [Examples](https://github.com/ubuntu/snappy-playpen)

-   [Phone](https://developer.ubuntu.com/en/phone/)
    -----------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/phone/)
    -   [Scopes](https://developer.ubuntu.com/en/phone/scopes/)
    -   [Apps](https://developer.ubuntu.com/en/phone/apps/)
    -   [Web Apps](https://developer.ubuntu.com/en/phone/web/)
    -   [Platform](https://developer.ubuntu.com/en/phone/platform/)
    -   [Devices](https://developer.ubuntu.com/en/phone/devices/)

-   [Core](https://developer.ubuntu.com/core)
    -----------------------------------------

    -   [Overview](https://developer.ubuntu.com/core)
    -   [Get started](https://developer.ubuntu.com/core/get-started)
    -   [Tutorials](https://developer.ubuntu.com/core/tutorials)
    -   [Examples](https://developer.ubuntu.com/core/examples)
    -   [Publish and distribute](https://developer.ubuntu.com/core/publish-and-distribute)
    -   [Documentation](https://developer.ubuntu.com/core/documentation)
    -   [Troubleshooting](https://developer.ubuntu.com/core/troubleshooting)

-   [Community](https://developer.ubuntu.com/en/community/)
    -------------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/community/)
    -   [App development training](https://developer.ubuntu.com/en/community/training/)
    -   [Core apps](https://developer.ubuntu.com/en/community/core-apps/)
    -   [Blog](https://developer.ubuntu.com/en/community/blog/)

-   [Publish](https://developer.ubuntu.com/en/publish/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/publish/)
    -   [Application states](https://developer.ubuntu.com/en/publish/application-states/)
    -   [Packaging click apps](https://developer.ubuntu.com/en/publish/packaging-click-apps/)
    -   [Creating a good icon](https://developer.ubuntu.com/en/publish/creating-a-good-icon/)
    -   [Web](https://developer.ubuntu.com/en/publish/web/)
    -   [Security policy groups](https://developer.ubuntu.com/en/publish/security-policy-groups/)
    -   [Choosing a license](https://developer.ubuntu.com/en/publish/choosing-a-license/)
    -   [Other forms of submitting apps](https://developer.ubuntu.com/en/publish/other-forms-of-submitting-apps/)
    -   [Scopes](https://developer.ubuntu.com/en/publish/scopes/)

-   View in:
    --------

    -   [English](index.html "Change to language: English")
    -   [Simplified Chinese](index.html "Change to language: Simplified Chinese")

-   [Download](http://ubuntu.com/download/)
    ---------------------------------------

    -   [Overview](http://ubuntu.com/download)
    -   [Cloud](http://ubuntu.com/download/cloud)
    -   [Server](http://ubuntu.com/download/server)
    -   [Desktop](http://ubuntu.com/download/desktop)
    -   [Ubuntu Kylin](http://ubuntu.com/download/ubuntu-kylin)
    -   [Alternative downloads](http://ubuntu.com/download/alternative-downloads)

-   [Support](http://ubuntu.com/support/)
    -------------------------------------

    -   [Overview](http://ubuntu.com/support)
    -   [Security notices](http://www.ubuntu.com/usn/)

-   [About](http://ubuntu.com/about/)
    ---------------------------------

    -   [About Ubuntu](http://ubuntu.com/about/about-ubuntu)
    -   [Careers](http://www.canonical.com/careers)
    -   [Canonical and Ubuntu](http://ubuntu.com/about/canonical-and-ubuntu)
    -   [Contact us](http://ubuntu.com/about/contact-us)
    -   [Canonical news feed](http://insights.ubuntu.com/feed/)

© 2015 Canonical Ltd. Ubuntu and Canonical are registered trademarks of Canonical Ltd.

-   [Legal information](http://www.ubuntu.com/legal)
-   [Report a bug on this site](https://bugs.launchpad.net/developer-ubuntu-com/)

<span class="accessibility-aid">[Go to the top of the page](index.html#)</span>
