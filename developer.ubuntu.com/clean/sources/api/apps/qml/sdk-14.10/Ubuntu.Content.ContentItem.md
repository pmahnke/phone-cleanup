---
Title: Ubuntu.Content.ContentItem
---
        
ContentItem
===========

<span class="subtitle"></span>
Content that can be imported or exported from a ContentPeer More...

|                   |                             |
|-------------------|-----------------------------|
| Import Statement: | `import Ubuntu.Content 1.1` |

<span id="properties"></span>
Properties
----------

-   ****[url](#url-prop)**** : url

<span id="methods"></span>
Methods
-------

-   bool ****[move](#move-method-2)****(dir, fileName)
-   bool ****[move](#move-method)****(dir)

<span id="details"></span>
Detailed Description
--------------------

A ContentItem is an item that can be imported or exported from a [ContentPeer](../Ubuntu.Content.ContentPeer.md)

See documentation for [ContentHub](../Ubuntu.Content.ContentHub.md)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="url-prop"></span><span class="name">url</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

URL of the content data

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="move-method-2"></span><span class="type">bool</span> <span class="name">move</span>(<span class="type">dir</span>, <span class="type">fileName</span>)</p></td>
</tr>
</tbody>
</table>

If the url is a local file, move the file to *dir* and rename to *fileName*

If the move is successful, the url property will be changed and onUrlChanged will be emitted.

Returns true if the file was moved successfully, false on error or if the url wasn't a local file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="move-method"></span><span class="type">bool</span> <span class="name">move</span>(<span class="type">dir</span>)</p></td>
</tr>
</tbody>
</table>

If the url is a local file, move the file to *dir*

If the move is successful, the url property will be changed and onUrlChanged will be emitted.

Returns true if the file was moved successfully, false on error or if the url wasn't a local file.

