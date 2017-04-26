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
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   DragEvent

DragEvent
=========

<span class="subtitle"></span>
Provides information about a drag event More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[accepted](index.html#accepted-prop)**** : bool
-   ****[action](index.html#action-prop)**** : enumeration
-   ****[colorData](index.html#colorData-prop)**** : color
-   ****[drag.source](index.html#drag.source-prop)**** : Object
-   ****[formats](index.html#formats-prop)**** : stringlist
-   ****[hasColor](index.html#hasColor-prop)**** : bool
-   ****[hasHtml](index.html#hasHtml-prop)**** : bool
-   ****[hasText](index.html#hasText-prop)**** : bool
-   ****[hasUrls](index.html#hasUrls-prop)**** : bool
-   ****[html](index.html#html-prop)**** : string
-   ****[keys](index.html#keys-prop)**** : stringlist
-   ****[proposedAction](index.html#proposedAction-prop)**** : flags
-   ****[supportedActions](index.html#supportedActions-prop)**** : flags
-   ****[text](index.html#text-prop)**** : string
-   ****[urls](index.html#urls-prop)**** : urllist
-   ****[x](index.html#x-prop)**** : real
-   ****[y](index.html#y-prop)**** : real

<span id="methods"></span>
Methods
-------

-   ****[accept](index.html#accept-method-2)****(enumeration *action*)
-   ****[accept](index.html#accept-method)****()
-   ****[acceptProposedAction](index.html#acceptProposedAction-method)****()
-   string ****[getDataAsString](index.html#getDataAsString-method)****(string *format*)

<span id="details"></span>
Detailed Description
--------------------

The position of the drag event can be obtained from the [x](index.html#x-prop) and [y](index.html#y-prop) properties, and the [keys](index.html#keys-prop) property identifies the drag keys of the event [source](index.html#drag.source-prop).

The existence of specific drag types can be determined using the [hasColor](index.html#hasColor-prop), [hasHtml](index.html#hasHtml-prop), [hasText](index.html#hasText-prop), and [hasUrls](index.html#hasUrls-prop) properties.

The list of all supplied formats can be determined using the [formats](index.html#formats-prop) property.

Specific drag types can be obtained using the [colorData](index.html#colorData-prop), [html](index.html#html-prop), [text](../QtQuick.qtquick-releasenotes/index.html#text), and [urls](index.html#urls-prop) properties.

A string version of any available mimeType can be obtained using [getDataAsString](index.html#getDataAsString-method).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accepted-prop"></span><span class="name">accepted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the drag event was accepted by a handler.

The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="action-prop"></span><span class="name">action</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the action that the [source](index.html#drag.source-prop) is to perform on an accepted drop.

The drop action may be one of:

-   Qt.CopyAction Copy the data to the target.
-   Qt.MoveAction Move the data from the source to the target.
-   Qt.LinkAction Create a link from the source to the target.
-   Qt.IgnoreAction Ignore the action (do nothing with the data).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="colorData-prop"></span><span class="name">colorData</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds color data, if any.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="drag.source-prop"></span><span class="name">drag.source</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

This property holds the source of a drag event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="formats-prop"></span><span class="name">formats</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of mime type formats contained in the drag data.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasColor-prop"></span><span class="name">hasColor</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the drag event contains a color item.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasHtml-prop"></span><span class="name">hasHtml</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the drag event contains a html item.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasText-prop"></span><span class="name">hasText</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the drag event contains a text item.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasUrls-prop"></span><span class="name">hasUrls</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the drag event contains one or more url items.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="html-prop"></span><span class="name">html</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds html data, if any.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keys-prop"></span><span class="name">keys</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of keys identifying the data type or source of a drag event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="proposedAction-prop"></span><span class="name">proposedAction</span> : <span class="type">flags</span></p></td>
</tr>
</tbody>
</table>

This property holds the set of [actions](index.html#action-prop) proposed by the drag source.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportedActions-prop"></span><span class="name">supportedActions</span> : <span class="type">flags</span></p></td>
</tr>
</tbody>
</table>

This property holds the set of [actions](index.html#action-prop) supported by the drag source.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds text data, if any.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="urls-prop"></span><span class="name">urls</span> : <span class="type">urllist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of urls, if any.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the x coordinate of a drag event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the y coordinate of a drag event.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accept-method-2"></span><span class="name">accept</span>(<span class="type">enumeration</span> <em>action</em>)</p></td>
</tr>
</tbody>
</table>

Accepts the drag event.

If an *action* is specified it will overwrite the value of the [action](index.html#action-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accept-method"></span><span class="name">accept</span>()</p></td>
</tr>
</tbody>
</table>

Accepts the drag event.

If an *action* is specified it will overwrite the value of the [action](index.html#action-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="acceptProposedAction-method"></span><span class="name">acceptProposedAction</span>()</p></td>
</tr>
</tbody>
</table>

Accepts the drag event with the [proposedAction](index.html#proposedAction-prop).

This QML method was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getDataAsString-method"></span><span class="type">string</span> <span class="name">getDataAsString</span>(<span class="type">string</span> <em>format</em>)</p></td>
</tr>
</tbody>
</table>

Returns the data for the given *format* converted to a string. *format* should be one contained in the [formats](index.html#formats-prop) property.

This QML method was introduced in Qt 5.2.

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
