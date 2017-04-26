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
-   [SDK 15.04.4](../index.html) ›
-   [U1db](../U1db/index.html) ›

<!-- -->

-   Index

Index
=====

The Index class defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database. More...

|                  |                                                               |
|------------------|---------------------------------------------------------------|
| Header:          | <span class="preprocessor">\#include &lt;Index&gt;</span>     |
| Instantiated By: | [Index](../../../../apps/qml/sdk-14.10/U1db.Index/index.html) |
| Inherits:        |                                                               |

<span id="public-functions"></span>
Public Functions
----------------

|             |                                                                         |
|-------------|-------------------------------------------------------------------------|
|             | **[Index](index.html#Index)**(QObject \* *parent* = 0)                  |
| Database \* | **[getDatabase](index.html#getDatabase)**()                             |
| QStringList | **[getExpression](index.html#getExpression)**()                         |
| QString     | **[getName](index.html#getName)**()                                     |
| void        | **[setDatabase](index.html#setDatabase)**(Database \* *database*)       |
| void        | **[setExpression](index.html#setExpression)**(QStringList *expression*) |
| void        | **[setName](index.html#setName)**(const QString & *name*)               |

<span id="details"></span>
Detailed Description
--------------------

The Index class defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database.

Member Function Documentation
-----------------------------

### <span id="Index"></span>Index::<span class="name">Index</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Index with an optional *parent*, usually by declaring it as a QML item.

### <span id="getDatabase"></span><span class="type">[Database](../../../../apps/qml/sdk-14.10/U1db.Database/index.html)</span> \* Index::<span class="name">getDatabase</span>()

Returns the [Database](../../../../apps/qml/sdk-14.10/U1db.Database/index.html) to lookup documents from and store the index in.

### <span id="getExpression"></span><span class="type">QStringList</span> Index::<span class="name">getExpression</span>()

Returns the expression of the index. Both name and expression must be specified.

### <span id="getName"></span><span class="type">QString</span> Index::<span class="name">getName</span>()

Returns the name of the index. Both name and expression must be specified.

### <span id="setDatabase"></span><span class="type">void</span> Index::<span class="name">setDatabase</span>(<span class="type">[Database](../../../../apps/qml/sdk-14.10/U1db.Database/index.html)</span> \* *database*)

Sets the *database* to lookup documents from and store the index in. The dataInvalidated() signal will be emitted on all changes that could affect the index.

### <span id="setExpression"></span><span class="type">void</span> Index::<span class="name">setExpression</span>(<span class="type">QStringList</span> *expression*)

Sets the *expression* used. Both an expression and a name must be specified for an index to be created.

Also starts the process of creating the Index result list, which can then be queried or populate the Query model as is.

### <span id="setName"></span><span class="type">void</span> Index::<span class="name">setName</span>(const <span class="type">QString</span> & *name*)

Sets the *name* used. Both an expression and a name must be specified for an index to be created.

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
