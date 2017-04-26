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
-   [Apps](../../../index.html) ›
-   [QML](../../index.html) ›
-   [SDK 15.04.4](../index.html) ›
-   [Ubuntu.Content](../Ubuntu.Content/index.html) ›

<!-- -->

-   ContentTransfer

ContentTransfer
===============

<span class="subtitle"></span>
Represents a transfer of content between two ContentPeers More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Content 1.1 |

<span id="properties"></span>
Properties
----------

-   ****[contentType](index.html#contentType-prop)**** : ContentType
-   ****[destination](index.html#destination-prop)**** : QString
-   ****[direction](index.html#direction-prop)**** : ContentTransfer.Direction
-   ****[downloadId](index.html#downloadId-prop)**** : string
-   ****[items](index.html#items-prop)**** : list&lt;ContentItem&gt;
-   ****[selectionType](index.html#selectionType-prop)**** : ContentTransfer.SelectionType
-   ****[source](index.html#source-prop)**** : QString
-   ****[state](index.html#state-prop)**** : ContentTransfer.State
-   ****[store](index.html#store-prop)**** : string

<span id="methods"></span>
Methods
-------

-   ****[finalize](index.html#finalize-method)****()
-   ****[start](index.html#start-method)****()

<span id="details"></span>
Detailed Description
--------------------

See documentation for [ContentHub](../Ubuntu.Content.ContentHub/index.html)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentType-prop"></span><span class="name">contentType</span> : <span class="type"><a href="../Ubuntu.Content.ContentType/index.html">ContentType</a></span></p></td>
</tr>
</tbody>
</table>

Specifies the [ContentType](../Ubuntu.Content.ContentType/index.html) requested.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="destination-prop"></span><span class="name">destination</span> : <span class="type">QString</span></p></td>
</tr>
</tbody>
</table>

Provides the app id of the destination application for this transfer

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type"><a href="index.html">ContentTransfer</a></span>.<span class="type">Direction</span></p></td>
</tr>
</tbody>
</table>

ContentTransfer::direction indicates if this transferobject is used for import or export transaction

*[ContentTransfer](index.html).Direction* is an enumeration:
Direction
Description
[ContentTransfer](index.html).Import
Transfer is a request to import content.
[ContentTransfer](index.html).Export
Transfer is a request to export content.
[ContentTransfer](index.html).Share
Transfer is a request to share content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloadId-prop"></span><span class="name">downloadId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The Download Manager ID of a SingleDownload, which will then be transfered to the selected peer.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="items-prop"></span><span class="name">items</span> : <span class="type">list</span>&lt;<span class="type"><a href="../Ubuntu.Content.ContentItem/index.html">ContentItem</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of items included in the [ContentTransfer](index.html)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectionType-prop"></span><span class="name">selectionType</span> : <span class="type"><a href="index.html">ContentTransfer</a></span>.<span class="type">SelectionType</span></p></td>
</tr>
</tbody>
</table>

ContentTransfer::selectionType indicates if this transfer object allows single or multiple selection of items

*[ContentTransfer](index.html).SelectionType* is an enumeration:
Type
Description
[ContentTransfer](index.html).Single
Transfer should contain a single item.
[ContentTransfer](index.html).Multiple
Transfer can contain multiple items.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">QString</span></p></td>
</tr>
</tbody>
</table>

Provides the app id of the source application for this transfer

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="state-prop"></span><span class="name">state</span> : <span class="type"><a href="index.html">ContentTransfer</a></span>.<span class="type">State</span></p></td>
</tr>
</tbody>
</table>

*[ContentTransfer](index.html).State* is an enumeration:
State
Description
[ContentTransfer](index.html).Created
Transfer created, waiting to be initiated.
[ContentTransfer](index.html).Initiated
Transfer has been initiated.
[ContentTransfer](index.html).InProgress
Transfer is in progress.
[ContentTransfer](index.html).Downloading
Transfer is downloading item specified by [downloadId](index.html#downloadId-prop).
[ContentTransfer](index.html).Downloaded
Download specified by [downloadId](index.html#downloadId-prop) has completed.
[ContentTransfer](index.html).Charged
Transfer is charged with items and ready to be collected.
[ContentTransfer](index.html).Collected
Items in the transfer have been collected.
[ContentTransfer](index.html).Aborted
Transfer has been aborted.
[ContentTransfer](index.html).Finalized
Transfer has been finished and cleaned up.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="store-prop"></span><span class="name">store</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

[ContentStore](../Ubuntu.Content.ContentStore/index.html) where the [ContentTransfer](index.html) will add items

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="finalize-method"></span><span class="name">finalize</span>()</p></td>
</tr>
</tbody>
</table>

Sets State to [ContentTransfer](index.html).Finalized and cleans up temporary files

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Start the transfer, this sets the State to [ContentTransfer](index.html).Initiated

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
