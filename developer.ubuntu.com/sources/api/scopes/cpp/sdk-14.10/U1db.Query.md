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

-   Query

Query
=====

The Query class generates a filtered list of documents based on a query using the given Index. More...

|         |                    |
|---------|--------------------|
| Header: | `#include <Query>` |

<span id="properties"></span>
Properties
----------

-   **[documents](index.html#documents-prop)** : const QStringList
-   **[index](index.html#index-prop)** : Index \*
-   **[query](index.html#query-prop)** : QVariant
-   **[results](index.html#results-prop)** : const QList&lt;QVariant&gt;

<span id="public-functions"></span>
Public Functions
----------------

|                       |                                                         |
|-----------------------|---------------------------------------------------------|
|                       | **[Query](index.html#Query)**(QObject \* *parent* = 0)  |
| QStringList           | **[getDocuments](index.html#documents-prop)**()         |
| Index \*              | **[getIndex](index.html#index-prop)**()                 |
| QVariant              | **[getQuery](index.html#query-prop)**()                 |
| QList&lt;QVariant&gt; | **[getResults](index.html#results-prop)**()             |
| void                  | **[resetModel](index.html#resetModel)**()               |
| void                  | **[setIndex](index.html#index-prop)**(Index \* *index*) |
| void                  | **[setQuery](index.html#query-prop)**(QVariant *query*) |

<span id="signals"></span>
Signals
-------

|      |                                                                                |
|------|--------------------------------------------------------------------------------|
| void | **[documentsChanged](index.html#documents-prop)**(QStringList *documents*)     |
| void | **[indexChanged](index.html#index-prop)**(Index \* *index*)                    |
| void | **[queryChanged](index.html#query-prop)**(QVariant *query*)                    |
| void | **[resultsChanged](index.html#results-prop)**(QList&lt;QVariant&gt; *results*) |

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

### <span id="index-prop"></span><span class="name">index</span> : <span class="type">[Index](../U1db.Index/index.html)</span> \*

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

**See also** [setQuery](index.html#query-prop)().

### <span id="resetModel"></span><span class="type">void</span> Query::<span class="name">resetModel</span>()

Query::resetModel

Resets the model of the Query

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
