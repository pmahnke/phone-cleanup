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

-   Document

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
<li><strong><a href="index.html#contents-prop">contents</a></strong> : QVariant</li>
<li><strong><a href="index.html#create-prop">create</a></strong> : bool</li>
<li><strong><a href="index.html#database-prop">database</a></strong> : Database *</li>
</ul></td>
<td><ul>
<li><strong><a href="index.html#defaults-prop">defaults</a></strong> : QVariant</li>
<li><strong><a href="index.html#docId-prop">docId</a></strong> : QString</li>
</ul></td>
</tr>
</tbody>
</table>

<span id="public-functions"></span>
Public Functions
----------------

|             |                                                                     |
|-------------|---------------------------------------------------------------------|
|             | **[Document](index.html#Document)**(QObject \* *parent* = 0)        |
| QVariant    | **[getContents](index.html#contents-prop)**()                       |
| bool        | **[getCreate](index.html#create-prop)**()                           |
| Database \* | **[getDatabase](index.html#database-prop)**()                       |
| QVariant    | **[getDefaults](index.html#defaults-prop)**()                       |
| QString     | **[getDocId](index.html#docId-prop)**()                             |
| void        | **[setContents](index.html#contents-prop)**(QVariant *contents*)    |
| void        | **[setCreate](index.html#create-prop)**(bool *create*)              |
| void        | **[setDatabase](index.html#database-prop)**(Database \* *database*) |
| void        | **[setDefaults](index.html#defaults-prop)**(QVariant *defaults*)    |
| void        | **[setDocId](index.html#docId-prop)**(const QString & *docId*)      |

<span id="signals"></span>
Signals
-------

|      |                                                                         |
|------|-------------------------------------------------------------------------|
| void | **[contentsChanged](index.html#contents-prop)**(QVariant *contents*)    |
| void | **[createChanged](index.html#create-prop)**(bool *create*)              |
| void | **[databaseChanged](index.html#database-prop)**(Database \* *database*) |
| void | **[defaultsChanged](index.html#defaults-prop)**(QVariant *defaults*)    |
| void | **[docIdChanged](index.html#docId-prop)**(const QString & *docId*)      |

<span id="details"></span>
Detailed Description
--------------------

The Document class proxies a single document stored in the Database.

This is the declarative API equivalent of [Database::putDoc](../U1db.Database/index.html#putDoc)() and [Database::getDoc](../U1db.Database/index.html#getDoc)().

Property Documentation
----------------------

### <span id="contents-prop"></span><span class="name">contents</span> : <span class="type">QVariant</span>

Updates the contents of the document. A valid [docId](index.html#docId-prop) must be set.

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

If create is true, [docId](index.html#docId-prop) is not empty and no document with the same [docId](index.html#docId-prop) exists, defaults will be used to store the document.

**Access functions:**

|      |                                                        |
|------|--------------------------------------------------------|
| bool | <span class="name">**getCreate**</span>()              |
| void | <span class="name">**setCreate**</span>(bool *create*) |

**Notifier signal:**

|      |                                                            |
|------|------------------------------------------------------------|
| void | <span class="name">**createChanged**</span>(bool *create*) |

### <span id="database-prop"></span><span class="name">database</span> : <span class="type">[Database](../U1db.Database/index.html)</span> \*

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

The default contents of the document, which are used only if create is true, [docId](index.html#docId-prop) is not empty and no document with the same [docId](index.html#docId-prop) exists in the database yet. If the defaults change, it's up to the API user to handle it.

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

The docId can be that of an existing document in the database and will determine what [getContents](index.html#contents-prop)() returns. If no such documents exists, [setDefaults](index.html#defaults-prop)() can be used to supply a preset.

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
