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

-   HttpAsyncReader

HttpAsyncReader
===============

Class that downloads http files asynchronously. [More...](index.html#details)

`#include <unity/scopes/qt/HttpAsyncReader.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

template&lt;typename BASE , typename TYPE , typename PARSER &gt;
ResultsFuture&lt; BASE &gt; 
<a href="index.html#aaf1d8c3889f748e3ddd7d96c5f2350fd" class="el">async_get</a> (std::string const &uri, std::string const &object\_name, FactoryFunc&lt; PARSER &gt; const &create, ParseFunc&lt; BASE, PARSER &gt; const &parse) const
 
Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data. More...
 
template&lt;typename TYPE , typename PARSER &gt;
ResultsFuture&lt; TYPE &gt; 
<a href="index.html#ae46599f9b8490c17d6ed5780111ffbcd" class="el">async_get</a> (std::string const &uri, std::string const &object\_name, FactoryFunc&lt; PARSER &gt; const &create, ParseFunc&lt; TYPE, PARSER &gt; const &parse) const
 
Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data. More...
 
template&lt;typename PARSER &gt;
ParserFuture&lt; PARSER &gt; 
<a href="index.html#a9edea62503249b74b41689c2b524a740" class="el">async_get_parser</a> (std::string const &uri, FactoryFunc&lt; PARSER &gt; const &create) const
 
Downloads a HTTP remote file asynchronously and returns a future to a valid parser containing the data. More...
 
<span id="a47ca526cf459e30e0d5191f1b97c4491" class="anchor"></span> std::string 
<a href="index.html#a47ca526cf459e30e0d5191f1b97c4491" class="el">get_uri</a> (std::string const &host, std::vector&lt; std::pair&lt; std::string, std::string &gt;&gt; const &parameters) const
 
Constructs a URI with the given host and parameters. This is a convenience method that constructs a uri with a given host and parameterss.
 
<span id="pub-static-methods"></span> Static Public Member Functions
--------------------------------------------------------------------

template&lt;typename T &gt;
static T 
<a href="index.html#ae2ce7cab02f7dba9b5326246802a65f3" class="el">get_or_throw</a> (std::future&lt; T &gt; &f, int64\_t seconds=20)
 
Gets the data of the given future in the gived timeout. If the time given expires and the data in the future is not ready throws a unity::scopes::TimeoutException exception. More...
 
<span id="details"></span>
Detailed Description
--------------------

Class that downloads http files asynchronously.

Executes a remote HTTP query asynchronously to return different futures about results or a parser. The user should define which parser wants to use, and offer a method that given a char\* containing the data downloaded by this class contructs the parser.

Member Function Documentation
-----------------------------

<span id="aaf1d8c3889f748e3ddd7d96c5f2350fd" class="anchor"></span>
template&lt;typename BASE , typename TYPE , typename PARSER &gt;

|                                                                                             |     |                                          |                 |
|---------------------------------------------------------------------------------------------|-----|------------------------------------------|-----------------|
| HttpAsyncReader::ResultsFuture&lt; BASE &gt; unity::scopes::qt::HttpAsyncReader::async\_get | (   | std::string const &                      | *uri*,          |
|                                                                                             |     | std::string const &                      | *object\_name*, |
|                                                                                             |     | FactoryFunc&lt; PARSER &gt; const &      | *create*,       |
|                                                                                             |     | ParseFunc&lt; BASE, PARSER &gt; const &  | *parse*         |
|                                                                                             | )   |                                          | const           |

Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data.

The method has 3 template parameters: the type of results returned, the type of objects when intantiating and the parser type. The type of instantiation has to be a derived class of the return type. This is offered for convenience to return more generic types and get advantage of polymorphism.

The method checks at compile time that the instantiation type is effectively a derived class of the type returned.

Parameters  
|              |                                                                                          |
|--------------|------------------------------------------------------------------------------------------|
| uri          | URI to download                                                                          |
| object\_name | name of the kind of object we are looking for in the http document                       |
| create       | Function that returns a valid parser filled with the data contained in the http document |
| parse        | Function that parses the data downloaded                                                 |

<!-- -->

Returns  
Future of list of results

<span id="ae46599f9b8490c17d6ed5780111ffbcd" class="anchor"></span>
template&lt;typename TYPE , typename PARSER &gt;

|                                                                                             |     |                                          |                 |
|---------------------------------------------------------------------------------------------|-----|------------------------------------------|-----------------|
| HttpAsyncReader::ResultsFuture&lt; TYPE &gt; unity::scopes::qt::HttpAsyncReader::async\_get | (   | std::string const &                      | *uri*,          |
|                                                                                             |     | std::string const &                      | *object\_name*, |
|                                                                                             |     | FactoryFunc&lt; PARSER &gt; const &      | *create*,       |
|                                                                                             |     | ParseFunc&lt; TYPE, PARSER &gt; const &  | *parse*         |
|                                                                                             | )   |                                          | const           |

Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data.

The method has 2 template parameters: the type of objects returned and the parser type.

Parameters  
|              |                                                                                          |
|--------------|------------------------------------------------------------------------------------------|
| uri          | URI to download                                                                          |
| object\_name | name of the kind of object we are looking for in the http document                       |
| create       | Function that returns a valid parser filled with the data contained in the http document |
| parse        | Function that parses the data downloaded                                                 |

<!-- -->

Returns  
Future of list of results

<span id="a9edea62503249b74b41689c2b524a740" class="anchor"></span>
template&lt;typename PARSER &gt;

|                                                                                                      |     |                                      |           |
|------------------------------------------------------------------------------------------------------|-----|--------------------------------------|-----------|
| HttpAsyncReader::ParserFuture&lt; PARSER &gt; unity::scopes::qt::HttpAsyncReader::async\_get\_parser | (   | std::string const &                  | *uri*,    |
|                                                                                                      |     | FactoryFunc&lt; PARSER &gt; const &  | *create*  |
|                                                                                                      | )   |                                      | const     |

Downloads a HTTP remote file asynchronously and returns a future to a valid parser containing the data.

This method downloads a remote http document, fills a valid parser with the downloaded data and returns a future to the parser.

Parameters  
|        |                                                                                          |
|--------|------------------------------------------------------------------------------------------|
| uri    | URI to download                                                                          |
| create | Function that returns a valid parser filled with the data contained in the http document |

<!-- -->

Returns  
Future of valid parser filled with the data downloaded

<span id="ae2ce7cab02f7dba9b5326246802a65f3" class="anchor"></span>
template&lt;typename T &gt;

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
<td>T unity::scopes::qt::HttpAsyncReader::get_or_throw</td>
<td>(</td>
<td>std::future&lt; T &gt; &amp; </td>
<td><em>f</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>int64_t </td>
<td><em>seconds</em> = <code>20</code> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Gets the data of the given future in the gived timeout. If the time given expires and the data in the future is not ready throws a <a href="../unity.scopes.TimeoutException/index.html" class="el" title="Exception to indicate that a twoway request timed out. ">unity::scopes::TimeoutException</a> exception.

Parameters  
|         |                                     |
|---------|-------------------------------------|
| f       | Future                              |
| seconds | Maximum time to wait for the result |

<!-- -->

Returns  
<a href="../unity.scopes.Result/index.html" class="el" title="The attributes of a result returned by a Scope. ">Result</a> of the given future.

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
