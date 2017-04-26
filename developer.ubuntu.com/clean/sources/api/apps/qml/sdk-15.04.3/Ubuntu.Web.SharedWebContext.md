---
Title: Ubuntu.Web.SharedWebContext
---
        
SharedWebContext
================

<span class="subtitle"></span>
A singleton that exposes a shared WebContext that can be used by several WebView instances in the same application. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import Ubuntu.Web 0.2 |

<span id="properties"></span>
Properties
----------

-   ****[customUA](#customUA-prop)**** : string
-   ****[sharedContext](#sharedContext-prop)**** : WebContext

<span id="details"></span>
Detailed Description
--------------------

Note that the [WebView](../Ubuntu.Web.WebView.md) component already uses the shared context.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="customUA-prop"></span><span class="name">customUA</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

An alias to the shared context’s default user agent string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sharedContext-prop"></span><span class="name">sharedContext</span> : <span class="type"><a href="Ubuntu.Web.WebContext.md">WebContext</a></span></p></td>
</tr>
</tbody>
</table>

The [WebContext](../Ubuntu.Web.WebContext.md) instance that several [WebView](../Ubuntu.Web.WebView.md) instances can share.

