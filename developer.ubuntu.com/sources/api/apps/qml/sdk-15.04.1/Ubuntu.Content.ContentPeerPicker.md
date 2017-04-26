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
-   [SDK 15.04.1](../index.html) ›
-   [Ubuntu.Content](../Ubuntu.Content/index.html) ›

<!-- -->

-   ContentPeerPicker

ContentPeerPicker
=================

<span class="subtitle"></span>
Component that allows users to select a source/destination for content transfer More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Content 1.1 |

<span id="properties"></span>
Properties
----------

-   ****[contentType](index.html#contentType-prop)**** : ContentType
-   ****[customerPeerModelLoader](index.html#customerPeerModelLoader-prop)**** : Loader
-   ****[handler](index.html#handler-prop)**** : ContentHandler
-   ****[headerText](index.html#headerText-prop)**** : string
-   ****[peer](index.html#peer-prop)**** : ContentPeer
-   ****[showTitle](index.html#showTitle-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[cancelPressed](index.html#cancelPressed-signal)****()
-   ****[peerSelected](index.html#peerSelected-signal)****()

<span id="details"></span>
Detailed Description
--------------------

This component displays a list of applications, devices and services which are appropriate for transferring a given content type with.

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

The [ContentType](../Ubuntu.Content.ContentType/index.html) to use when finding peers.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="customerPeerModelLoader-prop"></span><span class="name">customerPeerModelLoader</span> : <span class="type">Loader</span></p></td>
</tr>
</tbody>
</table>

A Loader containing a [ContentPeerModel](../Ubuntu.Content.ContentPeerModel/index.html).

This can optionally be used to provide a pre-populated [ContentPeerModel](../Ubuntu.Content.ContentPeerModel/index.html) to this [ContentPeerPicker](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="handler-prop"></span><span class="name">handler</span> : <span class="type"><a href="../Ubuntu.Content.ContentHandler/index.html">ContentHandler</a></span></p></td>
</tr>
</tbody>
</table>

The [ContentHandler](../Ubuntu.Content.ContentHandler/index.html) to use when finding peers.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="headerText-prop"></span><span class="name">headerText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Text to display in the header.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="peer-prop"></span><span class="name">peer</span> : <span class="type"><a href="../Ubuntu.Content.ContentPeer/index.html">ContentPeer</a></span></p></td>
</tr>
</tbody>
</table>

The peer selected by the user.

Once the [peerSelected](index.html#peerSelected-signal) signal has been sent, this provides the [ContentPeer](../Ubuntu.Content.ContentPeer/index.html) which the user has selected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showTitle-prop"></span><span class="name">showTitle</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Determines whether the header should be displayed.

This makes it possible to hide the header, which can be useful if embedding the picker within another page or popup.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelPressed-signal"></span><span class="name">cancelPressed</span>()</p></td>
</tr>
</tbody>
</table>

Emitted when the user clicks the cancel button.

The [ContentPeerPicker](index.html) will be hidden automatically when the user cancels the operations and the active [ContentTransfer](../Ubuntu.Content.ContentTransfer/index.html) will be set to Aborted. `onCancelPressed`

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="peerSelected-signal"></span><span class="name">peerSelected</span>()</p></td>
</tr>
</tbody>
</table>

Emitted when a user selects a peer.

Once this signal has been emitted the selected peer can be accessed via the peer property. `onPeerSelected`

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
