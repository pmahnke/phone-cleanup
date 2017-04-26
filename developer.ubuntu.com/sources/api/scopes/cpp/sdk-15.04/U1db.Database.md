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
-   [SDK 15.04](../index.html) ›
-   [U1db](../U1db/index.html) ›

<!-- -->

-   Database

Database
========

The Database class implements on-disk storage for documents and indexes. More...

|                  |                                                                     |
|------------------|---------------------------------------------------------------------|
| Header:          | <span class="preprocessor">\#include &lt;Database&gt;</span>        |
| Instantiated By: | [Database](../../../../apps/qml/sdk-14.10/U1db.Database/index.html) |
| Inherits:        |                                                                     |

<span id="public-functions"></span>
Public Functions
----------------

|                      |                                                                                             |
|----------------------|---------------------------------------------------------------------------------------------|
|                      | **[Database](index.html#Database)**(QObject \* *parent* = 0)                                |
| void                 | **[deleteDoc](index.html#deleteDoc)**(const QString & *docId*)                              |
| QVariant             | **[getDoc](index.html#getDoc)**(const QString & *docId*)                                    |
| QVariant             | **[getDocUnchecked](index.html#getDocUnchecked)**(const QString & *docId*) const            |
| QStringList          | **[getIndexExpressions](index.html#getIndexExpressions)**(const QString & *indexName*)      |
| QStringList          | **[getIndexKeys](index.html#getIndexKeys)**(const QString & *indexName*)                    |
| QString              | **[getPath](index.html#getPath)**()                                                         |
| QString              | **[lastError](index.html#lastError)**()                                                     |
| QList&lt;QString&gt; | **[listDocs](index.html#listDocs)**()                                                       |
| QString              | **[putDoc](index.html#putDoc)**(QVariant *contents*, const QString & *docId* = QString())   |
| QString              | **[putIndex](index.html#putIndex)**(const QString & *indexName*, QStringList *expressions*) |
| void                 | **[resetModel](index.html#resetModel)**()                                                   |
| void                 | **[setPath](index.html#setPath)**(const QString & *path*)                                   |

<span id="details"></span>
Detailed Description
--------------------

The Database class implements on-disk storage for documents and indexes.

Database can be used as a QAbstractListModel, delegates will then have access to *docId* and *contents* analogous to the properties of Document.

Member Function Documentation
-----------------------------

### <span id="Database"></span>Database::<span class="name">Database</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Database with an optional *parent*, usually by declaring it as a QML item.

### <span id="deleteDoc"></span><span class="type">void</span> Database::<span class="name">deleteDoc</span>(const <span class="type">QString</span> & *docId*)

Deletes the document identified by *docId*.

### <span id="getDoc"></span><span class="type">QVariant</span> Database::<span class="name">getDoc</span>(const <span class="type">QString</span> & *docId*)

Returns the contents of a document by *docId* in a form that QML recognizes as a Variant object, it's identical to Document::getContents() with the same *docId*.

### <span id="getDocUnchecked"></span><span class="type">QVariant</span> Database::<span class="name">getDocUnchecked</span>(const <span class="type">QString</span> & *docId*) const

Same functionality as [Database::getDoc](../../../../apps/qml/sdk-14.10/U1db.Database/index.html#getDoc-method)() except it won't set Database::lastError() and it doesn't implicitly try to initialize the underlying database. *docId* must be a valid unique ID string Use cases: model implementations, Document::getContents()

### <span id="getIndexExpressions"></span><span class="type">QStringList</span> Database::<span class="name">getIndexExpressions</span>(const <span class="type">QString</span> & *indexName*)

Gets the expressions saved with [putIndex](index.html#putIndex)(). *indexName*: the unique name of an existing index

### <span id="getIndexKeys"></span><span class="type">QStringList</span> Database::<span class="name">getIndexKeys</span>(const <span class="type">QString</span> & *indexName*)

Lists the index keys of an index created with [putIndex](index.html#putIndex)(). *indexName*: the unique name of an existing index

### <span id="getPath"></span><span class="type">QString</span> Database::<span class="name">getPath</span>()

Returns the path of the database.

### <span id="lastError"></span><span class="type">QString</span> Database::<span class="name">lastError</span>()

The last error as a string if the last operation failed.

### <span id="listDocs"></span><span class="type">QList</span>&lt;<span class="type">QString</span>&gt; Database::<span class="name">listDocs</span>()

Returns a list of all stored documents by their docId.

### <span id="putDoc"></span><span class="type">QString</span> Database::<span class="name">putDoc</span>(<span class="type">QVariant</span> *contents*, const <span class="type">QString</span> & *docId* = QString())

Updates the existing *contents* of the document identified by *docId* if there's no error. If no *docId* is given or *docId* is an empty string the *contents* will be stored under an autogenerated name. Returns the new revision of the document, or -1 on failure.

### <span id="putIndex"></span><span class="type">QString</span> Database::<span class="name">putIndex</span>(const <span class="type">QString</span> & *indexName*, <span class="type">QStringList</span> *expressions*)

Stores a new index under the given *indexName*, with *expressions*. An existing index won't be replaced implicitly, an error will be set in that case.

### <span id="resetModel"></span><span class="type">void</span> Database::<span class="name">resetModel</span>()

Database::resetModel

Resets the Database model.

### <span id="setPath"></span><span class="type">void</span> Database::<span class="name">setPath</span>(const <span class="type">QString</span> & *path*)

A relative *path* can be given to store the database in an app-specific writable folder. This is recommended as it ensures to work with confinement. If more control is needed absolute paths or local file URIs can be used. By default or if the path is empty everything is stored in memory.

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
