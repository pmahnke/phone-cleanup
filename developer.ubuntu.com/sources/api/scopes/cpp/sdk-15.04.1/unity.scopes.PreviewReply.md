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

<!-- -->

-   PreviewReply

PreviewReply
============

Allows the results of a preview to be sent to the preview requester. [More...](index.html#details)

`#include <unity/scopes/PreviewReply.h>`

Inheritance diagram for unity::scopes::PreviewReply:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/7ffb5eb3-8460-403a-a2df-e8c51433d9a9-api/scopes/cpp/sdk-15.04.1/unity.scopes.PreviewReply/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

virtual bool 
<a href="index.html#a16a757d821bd3792d1a69112b1f13964" class="el">register_layout</a> (<a href="../unity.scopes/index.html#a5b970e3c73bf25548398b32e79b2224d" class="el">ColumnLayoutList</a> const &layouts)=0
 
Registers a list of column layouts for the current preview. More...
 
virtual bool 
<a href="index.html#a9fc593618b83ec444fb6c9b2b298764a" class="el">push</a> (<a href="../unity.scopes/index.html#aed3b7b1daf2e49d0a820ef931caa792d" class="el">PreviewWidgetList</a> const &widget\_list)=0
 
Sends widget definitions to the sender of the preview query. More...
 
virtual bool 
<a href="index.html#a8697306bc56dc29bb005d988841f0c8e" class="el">push</a> (std::string const &key, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &value)=0
 
Sends data for a preview widget attribute. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/032361ec-69fc-4ecd-9272-1ec5d17513ee-api/scopes/cpp/sdk-15.04.1/unity.scopes.PreviewReply/closed.png) Public Member Functions inherited from <a href="../unity.scopes.Reply/index.html" class="el">unity::scopes::Reply</a>
virtual void 
<a href="../unity.scopes.Reply/index.html#a9ca653d5d7f7c97a781bc362f2af7749" class="el">finished</a> ()=0
 
Informs the source of a query that the query results are complete. More...
 
virtual void 
<a href="../unity.scopes.Reply/index.html#a526c9cbb11f896210835fb3420324ba8" class="el">error</a> (std::exception\_ptr ex)=0
 
Informs the source of a query that the query was terminated due to an error. More...
 
virtual void 
<a href="../unity.scopes.Reply/index.html#af35cbaba152e4919306f32b06bd81029" class="el">info</a> (<a href="../unity.scopes.OperationInfo/index.html" class="el">OperationInfo</a> const &op\_info)=0
 
Informs the source of a query that additional information regarding the reply is available. More...
 
virtual 
<a href="../unity.scopes.Reply/index.html#a9f0cfeeee75a27e111ebd955523e1bb0" class="el">~Reply</a> ()
 
Destroys a Reply. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/415afca1-0558-4df8-b7fe-b4e9ed65bc62-api/scopes/cpp/sdk-15.04.1/unity.scopes.PreviewReply/closed.png) Public Member Functions inherited from <a href="../unity.scopes.Object/index.html" class="el">unity::scopes::Object</a>
virtual std::string 
<a href="../unity.scopes.Object/index.html#ad7618cc9d878c40b389361d4acd473ae" class="el">endpoint</a> ()=0
 
Returns the endpoint this proxy connects to. More...
 
virtual std::string 
<a href="../unity.scopes.Object/index.html#a1b55aea886f0a68cb8a578f7ee0b1cfd" class="el">identity</a> ()=0
 
Returns the identity of the target object of this proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object/index.html#a40a997516629df3dacca9742dbddd6cb" class="el">target_category</a> ()=0
 
Returns the category of the target object of this proxy. More...
 
virtual int64\_t 
<a href="../unity.scopes.Object/index.html#a41d9839f1e3cbcd6d8baee0736feccab" class="el">timeout</a> ()=0
 
Returns the timeout in milliseconds if this proxy is a twoway proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object/index.html#a9ae27e1f30dc755abcd796a1e8a25150" class="el">to_string</a> ()=0
 
Converts a proxy into its string representation. More...
 
<span id="details"></span>
Detailed Description
--------------------

Allows the results of a preview to be sent to the preview requester.

Member Function Documentation
-----------------------------

<span id="a9fc593618b83ec444fb6c9b2b298764a" class="anchor"></span>
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
<td>virtual bool unity::scopes::PreviewReply::push</td>
<td>(</td>
<td><a href="../unity.scopes/index.html#aed3b7b1daf2e49d0a820ef931caa792d" class="el">PreviewWidgetList</a> const &amp; </td>
<td><em>widget_list</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Sends widget definitions to the sender of the preview query.

This method can be called mutiple times to send widgets in stages.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<span id="a8697306bc56dc29bb005d988841f0c8e" class="anchor"></span>
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
<td>virtual bool unity::scopes::PreviewReply::push</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>key</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &amp; </td>
<td><em>value</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Sends data for a preview widget attribute.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<span id="a16a757d821bd3792d1a69112b1f13964" class="anchor"></span>
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
<td>virtual bool unity::scopes::PreviewReply::register_layout</td>
<td>(</td>
<td><a href="../unity.scopes/index.html#a5b970e3c73bf25548398b32e79b2224d" class="el">ColumnLayoutList</a> const &amp; </td>
<td><em>layouts</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Registers a list of column layouts for the current preview.

Layouts must be registered before pushing a <a href="../unity.scopes/index.html#aed3b7b1daf2e49d0a820ef931caa792d" class="el" title="List of preview widgets (see unity::scopes::PreviewWidget) ">unity::scopes::PreviewWidgetList</a>, and must be registered only once.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<!-- -->

Exceptions  
|                       |                                                                                                                                                                                        |
|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | <a href="index.html#a16a757d821bd3792d1a69112b1f13964" class="el" title="Registers a list of column layouts for the current preview. ">register_layout()</a> is called more than once. |

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
