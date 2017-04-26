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
-   [Accounts](../Accounts/index.html) ›

<!-- -->

-   Error

Error
=====

Base object definition for accounts error handling. [More...](index.html#details)

`#include <Accounts/Error>`

<span id="pub-types"></span> Public Types
-----------------------------------------

enum  
<a href="index.html#ab0df38968e4f03a3f1f6d6df0f31f45a" class="el">ErrorType</a> {
  **NoError** = 0, **Unknown**, <a href="index.html#ab0df38968e4f03a3f1f6d6df0f31f45aa31884bb2cfbd4d8e2d428904eb1c3f98" class="el">Database</a>, <a href="index.html#ab0df38968e4f03a3f1f6d6df0f31f45aa04ba35ff69a05b2a16733a01fc003d88" class="el">Deleted</a>,
  <a href="index.html#ab0df38968e4f03a3f1f6d6df0f31f45aa155f5bb6520a1d872efe0563428315bf" class="el">DatabaseLocked</a>, <a href="index.html#ab0df38968e4f03a3f1f6d6df0f31f45aab49b276755b64c7a63a391e03aebbf49" class="el">AccountNotFound</a>
}
 
<a href="index.html" class="el" title="Base object definition for accounts error handling. ">Error</a> codes for all the accounts errors. [More...](index.html#ab0df38968e4f03a3f1f6d6df0f31f45a)
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

<span id="a17be1abe802fb9ab3acebe900748cf79" class="anchor"></span>  
<a href="index.html#a17be1abe802fb9ab3acebe900748cf79" class="el">Error</a> ()
 
Basic constructor.
 
 
<a href="index.html#abc095ef325fbb7c22399270e62f400ca" class="el">Error</a> (const <a href="index.html" class="el">Error</a> &src)
 
Copy constructor. More...
 
 
<a href="index.html#a43fd5cb964997186acb7f0297cefd666" class="el">Error</a> (<a href="index.html#ab0df38968e4f03a3f1f6d6df0f31f45a" class="el">ErrorType</a> <a href="index.html#ac3b58ce6dc3ba4cbfbabd9d7d7774567" class="el">type</a>, const QString &<a href="index.html#aba2e3009745c37baeaf086e1bc6a3b8d" class="el">message</a>=QString())
 
Constructor. More...
 
<a href="index.html" class="el">Error</a> & 
<a href="index.html#a25f9ffea919d1d0c265a93df49ee3b32" class="el">operator=</a> (const <a href="index.html" class="el">Error</a> &src)
 
Assignment operator. More...
 
<span id="a810251c55fc575f642cf343c4413c2b1" class="anchor"></span> virtual 
<a href="index.html#a810251c55fc575f642cf343c4413c2b1" class="el">~Error</a> ()
 
Destructor.
 
<a href="index.html#ab0df38968e4f03a3f1f6d6df0f31f45a" class="el">ErrorType</a> 
<a href="index.html#ac3b58ce6dc3ba4cbfbabd9d7d7774567" class="el">type</a> () const
 
QString 
<a href="index.html#aba2e3009745c37baeaf086e1bc6a3b8d" class="el">message</a> () const
 
<span id="details"></span>
Detailed Description
--------------------

Base object definition for accounts error handling.

Definition at line 42 of file error.h.

Member Enumeration Documentation
--------------------------------

<span id="ab0df38968e4f03a3f1f6d6df0f31f45a" class="anchor"></span>
|                                                                                      |
|--------------------------------------------------------------------------------------|
| enum <a href="index.html#ab0df38968e4f03a3f1f6d6df0f31f45a" class="el">ErrorType</a> |

<a href="index.html" class="el" title="Base object definition for accounts error handling. ">Error</a> codes for all the accounts errors.

Enumerator
<span id="ab0df38968e4f03a3f1f6d6df0f31f45aa31884bb2cfbd4d8e2d428904eb1c3f98" class="anchor"></span>Database 
Generic database error

<span id="ab0df38968e4f03a3f1f6d6df0f31f45aa04ba35ff69a05b2a16733a01fc003d88" class="anchor"></span>Deleted 
The account object refers to an account which has been deleted

<span id="ab0df38968e4f03a3f1f6d6df0f31f45aa155f5bb6520a1d872efe0563428315bf" class="anchor"></span>DatabaseLocked 
The database is locked

<span id="ab0df38968e4f03a3f1f6d6df0f31f45aab49b276755b64c7a63a391e03aebbf49" class="anchor"></span>AccountNotFound 
The account couldn't be found

Definition at line 48 of file error.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="abc095ef325fbb7c22399270e62f400ca" class="anchor"></span>
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
<td><a href="index.html" class="el">Error</a></td>
<td>(</td>
<td>const <a href="index.html" class="el">Error</a> &amp; </td>
<td><em>src</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Copy constructor.

Parameters  
|     |                                                                                                                             |
|-----|-----------------------------------------------------------------------------------------------------------------------------|
| src | <a href="index.html" class="el" title="Base object definition for accounts error handling. ">Error</a> object to be copied. |

Definition at line 67 of file error.h.

<span id="a43fd5cb964997186acb7f0297cefd666" class="anchor"></span>
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
<td><a href="index.html" class="el">Error</a></td>
<td>(</td>
<td><a href="index.html#ab0df38968e4f03a3f1f6d6df0f31f45a" class="el">ErrorType</a> </td>
<td><em>type</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>const QString &amp; </td>
<td><em>message</em> = <code>QString()</code> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Constructor.

Parameters  
|         |                      |
|---------|----------------------|
| type    | The error's type.    |
| message | The error's message. |

Definition at line 75 of file error.h.

Member Function Documentation
-----------------------------

<span id="aba2e3009745c37baeaf086e1bc6a3b8d" class="anchor"></span>
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
<td>QString message</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Returns  
The error's message.

Definition at line 99 of file error.h.

Referenced by Error::operator=().

<span id="a25f9ffea919d1d0c265a93df49ee3b32" class="anchor"></span>
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
<td><a href="index.html" class="el">Error</a>&amp; operator=</td>
<td>(</td>
<td>const <a href="index.html" class="el">Error</a> &amp; </td>
<td><em>src</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Assignment operator.

Parameters  
|     |                                                   |
|-----|---------------------------------------------------|
| src | The error object to be assigned to this instance. |

Definition at line 83 of file error.h.

References Error::message(), and Error::type().

<span id="ac3b58ce6dc3ba4cbfbabd9d7d7774567" class="anchor"></span>
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
<td><a href="index.html#ab0df38968e4f03a3f1f6d6df0f31f45a" class="el">ErrorType</a> type</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Returns  
The error's type.

Definition at line 94 of file error.h.

Referenced by Error::operator=().

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
