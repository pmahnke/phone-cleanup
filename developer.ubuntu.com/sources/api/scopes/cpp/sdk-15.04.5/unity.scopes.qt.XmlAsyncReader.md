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
-   [SDK 15.04.5](../index.html) ›
-   [unity.scopes.qt](../unity.scopes.qt/index.html) ›

<!-- -->

-   XmlAsyncReader

XmlAsyncReader
==============

Class that downloads http XML files asynchronously. [More...](index.html#details)

`#include <unity/scopes/qt/XmlAsyncReader.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

template&lt;typename BASE , typename TYPE &gt;
ResultsFuture&lt; BASE &gt; 
<a href="index.html#a17d5b0a22026ab8d5979b39cedaa2952" class="el">async_get</a> (std::string const &uri, std::string const &object\_name, ParserFunc&lt; BASE &gt; const &parse=get\_results&lt; BASE, TYPE &gt;) const
 
Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. More...
 
template&lt;typename T &gt;
ResultsFuture&lt; T &gt; 
<a href="index.html#a3fbd67b5f96245f1ea4bbe8ff2d0e849" class="el">async_get</a> (std::string const &uri, std::string const &object\_name, ParserFunc&lt; T &gt; const &parse=get\_results&lt; T, T &gt;) const
 
Downloads a XML HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data. More...
 
template&lt;typename BASE , typename TYPE &gt;
ResultsFuture&lt; BASE &gt; 
<a href="index.html#aa7f613d801a32f69d3a3d09fa775749c" class="el">async_get</a> (std::string const &host, QXmlStreamReaderParams const &params, std::string const &object\_name, ParserFunc&lt; BASE &gt; const &parse=get\_results&lt; BASE, TYPE &gt;) const
 
Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. More...
 
template&lt;typename T &gt;
ResultsFuture&lt; T &gt; 
<a href="index.html#a98a01776b95509671adec9ff6321c8f8" class="el">async_get</a> (std::string const &host, QXmlStreamReaderParams const &params, std::string const &object\_name, ParserFunc&lt; T &gt; const &parse=get\_results&lt; T, T &gt;) const
 
Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. More...
 
QXmlStreamReaderFuture 
<a href="index.html#a1d1abb81853d575a1fdb9ee63350711e" class="el">async_get_parser</a> (std::string const &uri) const
 
Downloads a HTTP remote file asynchronously and returns a future to a valid XML parser containing the data. More...
 
QXmlStreamReaderFuture 
<a href="index.html#a8d8aa17b33a021b9faed3a3ddd1c67d0" class="el">async_get_parser</a> (std::string const &host, QXmlStreamReaderParams const &params) const
 
Downloads a HTTP remote file asynchronously and returns a future to a valid XML parser containing the data. More...
 
<span id="pro-static-methods"></span> Static Protected Member Functions
-----------------------------------------------------------------------

static QXmlStreamReaderSptr 
<a href="index.html#acf558138e801362a2a012771ad590e27" class="el">create_parser_with_data</a> (std::string const &data, std::string &error)
 
Creates a QXmlStreamReader filled with the given data. More...
 
<span id="details"></span>
Detailed Description
--------------------

Class that downloads http XML files asynchronously.

Executes a remote HTTP query asynchronously to return different futures about XML results or a XML parser. The class implements and defines a function that returns a XML parser filled with the data downloaded. The class also offers a default function to obtain all objects of a given name in the results. The user may define his own parsing function to parse data at he desires.

Member Function Documentation
-----------------------------

<span id="a17d5b0a22026ab8d5979b39cedaa2952" class="anchor"></span>
template&lt;typename BASE , typename TYPE &gt;

|                                                                                           |     |                                   |                                      |
|-------------------------------------------------------------------------------------------|-----|-----------------------------------|--------------------------------------|
| XmlAsyncReader::ResultsFuture&lt; BASE &gt; unity::scopes::qt::XmlAsyncReader::async\_get | (   | std::string const &               | *uri*,                               |
|                                                                                           |     | std::string const &               | *object\_name*,                      |
|                                                                                           |     | ParserFunc&lt; BASE &gt; const &  | *parse* = `get_results<BASE, TYPE>`  |
|                                                                                           | )   |                                   | const                                |

Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects.

The user may provide his own function to parse the downloaded data.

The method has 2 template parameters: the type of results returned and the type of objects when instantiating. The type of instantiation has to be a derived class of the return type. This is offered for convenience to return more generic types and get advantage of polymorphism.

The method checks at compile time that the instantiation type is effectively a derived class of the type returned.

Parameters  
|              |                                                                    |
|--------------|--------------------------------------------------------------------|
| uri          | URI to download                                                    |
| object\_name | name of the kind of object we are looking for in the http document |
| parse        | Function that parses the data downloaded                           |

<!-- -->

Returns  
Future of list of results

<span id="a3fbd67b5f96245f1ea4bbe8ff2d0e849" class="anchor"></span>
template&lt;typename T &gt;

|                                                                                        |     |                                |                                |
|----------------------------------------------------------------------------------------|-----|--------------------------------|--------------------------------|
| XmlAsyncReader::ResultsFuture&lt; T &gt; unity::scopes::qt::XmlAsyncReader::async\_get | (   | std::string const &            | *uri*,                         |
|                                                                                        |     | std::string const &            | *object\_name*,                |
|                                                                                        |     | ParserFunc&lt; T &gt; const &  | *parse* = `get_results<T, T>`  |
|                                                                                        | )   |                                | const                          |

Downloads a XML HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data.

The method has 1 template parameter: the type of objects returned and the parser type.

Parameters  
|              |                                                                    |
|--------------|--------------------------------------------------------------------|
| uri          | URI to download                                                    |
| object\_name | name of the kind of object we are looking for in the http document |
| parse        | Function that parses the data downloaded                           |

<!-- -->

Returns  
Future of list of results

<span id="aa7f613d801a32f69d3a3d09fa775749c" class="anchor"></span>
template&lt;typename BASE , typename TYPE &gt;

|                                                                                           |     |                                   |                                      |
|-------------------------------------------------------------------------------------------|-----|-----------------------------------|--------------------------------------|
| XmlAsyncReader::ResultsFuture&lt; BASE &gt; unity::scopes::qt::XmlAsyncReader::async\_get | (   | std::string const &               | *host*,                              |
|                                                                                           |     | QXmlStreamReaderParams const &    | *params*,                            |
|                                                                                           |     | std::string const &               | *object\_name*,                      |
|                                                                                           |     | ParserFunc&lt; BASE &gt; const &  | *parse* = `get_results<BASE, TYPE>`  |
|                                                                                           | )   |                                   | const                                |

Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects.

The user may provide his own function to parse the downloaded data.

The method has 2 template parameters: the type of results returned and the type of objects when intantiating. The type of instantiation has to be a derived class of the return type. This is offered for convenience to return more generic types and get advantage of polymorphism.

The method checks at compile time that the instantiation type is effectively a derived class of the type returned.

Parameters  
|              |                                                                                             |
|--------------|---------------------------------------------------------------------------------------------|
| host         | the remote host name                                                                        |
| params       | The parameters that will build the final query, defined by a list of pairs of key and value |
| object\_name | name of the kind of object we are looking for in the http document                          |
| parse        | Function that parses the data downloaded                                                    |

<!-- -->

Returns  
Future of list of results

<span id="a98a01776b95509671adec9ff6321c8f8" class="anchor"></span>
template&lt;typename T &gt;

|                                                                                        |     |                                 |                                |
|----------------------------------------------------------------------------------------|-----|---------------------------------|--------------------------------|
| XmlAsyncReader::ResultsFuture&lt; T &gt; unity::scopes::qt::XmlAsyncReader::async\_get | (   | std::string const &             | *host*,                        |
|                                                                                        |     | QXmlStreamReaderParams const &  | *params*,                      |
|                                                                                        |     | std::string const &             | *object\_name*,                |
|                                                                                        |     | ParserFunc&lt; T &gt; const &   | *parse* = `get_results<T, T>`  |
|                                                                                        | )   |                                 | const                          |

Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects.

The user may provide his own function to parse the downloaded data.

The method has 1 template parameters: the type of results returned.

The method checks at compile time that the instantiation type is effectively a derived class of the type returned.

Parameters  
|              |                                                                                             |
|--------------|---------------------------------------------------------------------------------------------|
| host         | the remote host name                                                                        |
| params       | The parameters that wlll build the final query, defined by a list of pairs of key and value |
| object\_name | name of the kind of object we are looking for in the http document                          |
| parse        | Function that parses the data downloaded                                                    |

<!-- -->

Returns  
Future of list of results

<span id="a1d1abb81853d575a1fdb9ee63350711e" class="anchor"></span>
|                                                                              |     |                      |       |     |       |
|------------------------------------------------------------------------------|-----|----------------------|-------|-----|-------|
| QXmlStreamReaderFuture unity::scopes::qt::XmlAsyncReader::async\_get\_parser | (   | std::string const &  | *uri* | )   | const |

Downloads a HTTP remote file asynchronously and returns a future to a valid XML parser containing the data.

This method downloads a remote http document, fills a valid QXmlStreamReader parser with the downloaded data and returns a future to the parser.

Parameters  
|     |                 |
|-----|-----------------|
| uri | URI to download |

<!-- -->

Returns  
Future of valid parser filled with the data downloaded

<span id="a8d8aa17b33a021b9faed3a3ddd1c67d0" class="anchor"></span>
|                                                                              |     |                                 |           |
|------------------------------------------------------------------------------|-----|---------------------------------|-----------|
| QXmlStreamReaderFuture unity::scopes::qt::XmlAsyncReader::async\_get\_parser | (   | std::string const &             | *host*,   |
|                                                                              |     | QXmlStreamReaderParams const &  | *params*  |
|                                                                              | )   |                                 | const     |

Downloads a HTTP remote file asynchronously and returns a future to a valid XML parser containing the data.

This method downloads a remote http document, fills a valid QXmlStreamReader parser with the downloaded data and returns a future to the parser.

Parameters  
|        |                                                                                             |
|--------|---------------------------------------------------------------------------------------------|
| host   | host name                                                                                   |
| params | The parameters that will build the final query, defined by a list of pairs of key and value |

<!-- -->

Returns  
Future of valid parser filled with the data downloaded

<span id="acf558138e801362a2a012771ad590e27" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>static QXmlStreamReaderSptr unity::scopes::qt::XmlAsyncReader::create_parser_with_data</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>data</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string &amp; </td>
<td><em>error</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span><span class="mlabel">protected</span></span></td>
</tr>
</tbody>
</table>

Creates a QXmlStreamReader filled with the given data.

Parameters  
|       |                                                                                                        |
|-------|--------------------------------------------------------------------------------------------------------|
| data  | The data that contains the XML document                                                                |
| error | Returned by the method, contains any possible error string obtained during the creation of the parser. |

<!-- -->

Returns  
shared pointer to the QXmlStreamReader created

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
