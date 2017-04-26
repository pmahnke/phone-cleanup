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
-   [SDK 15.04.3](../index.html) ›
-   [U1db](../U1db/index.html) ›

<!-- -->

-   Document

Document
========

The Document class proxies a single document stored in the Database. More...

|                  |                                                                     |
|------------------|---------------------------------------------------------------------|
| Header:          | <span class="preprocessor">\#include &lt;Document&gt;</span>        |
| Instantiated By: | [Document](../../../../apps/qml/sdk-14.10/U1db.Document/index.html) |
| Inherits:        |                                                                     |

<span id="public-functions"></span>
Public Functions
----------------

|             |                                                                   |
|-------------|-------------------------------------------------------------------|
|             | **[Document](index.html#Document)**(QObject \* *parent* = 0)      |
| QVariant    | **[getContents](index.html#getContents)**()                       |
| bool        | **[getCreate](index.html#getCreate)**()                           |
| Database \* | **[getDatabase](index.html#getDatabase)**()                       |
| QVariant    | **[getDefaults](index.html#getDefaults)**()                       |
| QString     | **[getDocId](index.html#getDocId)**()                             |
| void        | **[setContents](index.html#setContents)**(QVariant *contents*)    |
| void        | **[setCreate](index.html#setCreate)**(bool *create*)              |
| void        | **[setDatabase](index.html#setDatabase)**(Database \* *database*) |
| void        | **[setDefaults](index.html#setDefaults)**(QVariant *defaults*)    |
| void        | **[setDocId](index.html#setDocId)**(const QString & *docId*)      |

<span id="details"></span>
Detailed Description
--------------------

The Document class proxies a single document stored in the Database.

Member Function Documentation
-----------------------------

### <span id="Document"></span>Document::<span class="name">Document</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Document with an optional *parent*, usually by declaring it as a QML item.

### <span id="getContents"></span><span class="type">QVariant</span> Document::<span class="name">getContents</span>()

Returns the current contents of the document.

### <span id="getCreate"></span><span class="type">bool</span> Document::<span class="name">getCreate</span>()

Returns whether the document will be newly created if it doesn't exist.

### <span id="getDatabase"></span><span class="type">[Database](../../../../apps/qml/sdk-14.10/U1db.Database/index.html)</span> \* Document::<span class="name">getDatabase</span>()

Returns the [Database](../../../../apps/qml/sdk-14.10/U1db.Database/index.html).

### <span id="getDefaults"></span><span class="type">QVariant</span> Document::<span class="name">getDefaults</span>()

Returns the defaults to be used when the document is newly created because it doesn't exist, if create is true.

### <span id="getDocId"></span><span class="type">QString</span> Document::<span class="name">getDocId</span>()

Returns the docId.

### <span id="setContents"></span><span class="type">void</span> Document::<span class="name">setContents</span>(<span class="type">QVariant</span> *contents*)

Updates the *contents* of the document. A valid docId must be set.

### <span id="setCreate"></span><span class="type">void</span> Document::<span class="name">setCreate</span>(<span class="type">bool</span> *create*)

If *create* is true, docId is not empty and no document with the same docId exists, defaults will be used to store the document.

### <span id="setDatabase"></span><span class="type">void</span> Document::<span class="name">setDatabase</span>(<span class="type">[Database](../../../../apps/qml/sdk-14.10/U1db.Database/index.html)</span> \* *database*)

The *database* is used to lookup the contents of the document, reflecting changes done to it and conversely changes are saved to the database.

### <span id="setDefaults"></span><span class="type">void</span> Document::<span class="name">setDefaults</span>(<span class="type">QVariant</span> *defaults*)

The default contents of the document, which are used only if create is true, docId is not empty and no document with the same docId exists in the database yet. If the *defaults* change, it's up to the API user to handle it.

### <span id="setDocId"></span><span class="type">void</span> Document::<span class="name">setDocId</span>(const <span class="type">QString</span> & *docId*)

The *docId* can be that of an existing document in the database and will determine what [getContents](index.html#getContents)() returns. If no such documents exists, [setDefaults](index.html#setDefaults)() can be used to supply a preset.

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
