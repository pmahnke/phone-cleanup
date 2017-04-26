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
-   [SDK 15.04.1](../index.html) ›
-   [U1db](../U1db/index.html) ›

<!-- -->

-   Query

Query
=====

The Query class generates a filtered list of documents based on a query using the given Index. More...

|                  |                                                               |
|------------------|---------------------------------------------------------------|
| Header:          | <span class="preprocessor">\#include &lt;Query&gt;</span>     |
| Instantiated By: | [Query](../../../../apps/qml/sdk-14.10/U1db.Query/index.html) |
| Inherits:        |                                                               |

<span id="public-functions"></span>
Public Functions
----------------

|                       |                                                        |
|-----------------------|--------------------------------------------------------|
|                       | **[Query](index.html#Query)**(QObject \* *parent* = 0) |
| QStringList           | **[getDocuments](index.html#getDocuments)**()          |
| Index \*              | **[getIndex](index.html#getIndex)**()                  |
| QVariant              | **[getQuery](index.html#getQuery)**()                  |
| QList&lt;QVariant&gt; | **[getResults](index.html#getResults)**()              |
| void                  | **[resetModel](index.html#resetModel)**()              |
| void                  | **[setIndex](index.html#setIndex)**(Index \* *index*)  |
| void                  | **[setQuery](index.html#setQuery)**(QVariant *query*)  |

<span id="details"></span>
Detailed Description
--------------------

The Query class generates a filtered list of documents based on a query using the given Index.

Query can be used as a QAbstractListModel, delegates will then have access to *docId* and *contents* analogous to the properties of Document.

Member Function Documentation
-----------------------------

### <span id="Query"></span>Query::<span class="name">Query</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Query with an optional *parent*, usually by declaring it as a QML item.

**See also** [setQuery](index.html#setQuery)().

### <span id="getDocuments"></span><span class="type">QStringList</span> Query::<span class="name">getDocuments</span>()

FIXME

### <span id="getIndex"></span><span class="type">[Index](../../../../apps/qml/sdk-14.10/U1db.Index/index.html)</span> \* Query::<span class="name">getIndex</span>()

FIXME

### <span id="getQuery"></span><span class="type">QVariant</span> Query::<span class="name">getQuery</span>()

FIXME

### <span id="getResults"></span><span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt; Query::<span class="name">getResults</span>()

FIXME

### <span id="resetModel"></span><span class="type">void</span> Query::<span class="name">resetModel</span>()

Query::resetModel

Resets the model of the Query

### <span id="setIndex"></span><span class="type">void</span> Query::<span class="name">setIndex</span>(<span class="type">[Index](../../../../apps/qml/sdk-14.10/U1db.Index/index.html)</span> \* *index*)

FIXME *index*

### <span id="setQuery"></span><span class="type">void</span> Query::<span class="name">setQuery</span>(<span class="type">QVariant</span> *query*)

FIXME *query*

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
