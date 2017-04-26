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
-   [SDK 15.04.3](../index.html) ›
-   [Ubuntu.DownloadManager](../Ubuntu.DownloadManager/index.html) ›

<!-- -->

-   SingleDownload

SingleDownload
==============

<span class="subtitle"></span>
Manage file downloads and tracking the progress. More...

|                   |                                   |
|-------------------|-----------------------------------|
| Import Statement: | import Ubuntu.DownloadManager 1.2 |

<span id="properties"></span>
Properties
----------

-   ****[allowMobileDownload](index.html#allowMobileDownload-prop)**** : bool
-   ****[autoStart](index.html#autoStart-prop)**** : bool
-   ****[downloadId](index.html#downloadId-prop)**** : string
-   ****[downloadInProgress](index.html#downloadInProgress-prop)**** : bool
-   ****[downloading](index.html#downloading-prop)**** : bool
-   ****[errorMessage](index.html#errorMessage-prop)**** : string
-   ****[headers](index.html#headers-prop)**** : QVariantMap
-   ****[isCompleted](index.html#isCompleted-prop)**** : bool
-   ****[metadata](index.html#metadata-prop)**** : Metadata
-   ****[progress](index.html#progress-prop)**** : int
-   ****[throttle](index.html#throttle-prop)**** : long

<span id="signals"></span>
Signals
-------

-   ****[finished](index.html#finished-signal)****(QString *path*)

<span id="methods"></span>
Methods
-------

-   void ****[cancel](index.html#cancel-method)****()
-   void ****[download](index.html#download-method)****(string *url*)
-   void ****[pause](index.html#pause-method)****()
-   void ****[resume](index.html#resume-method)****()
-   void ****[start](index.html#start-method)****()

<span id="details"></span>
Detailed Description
--------------------

[SingleDownload](index.html) provides facilities for downloading a single file, track the process, react to error conditions, etc.

Example usage:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.2
import Ubuntu.DownloadManager 1.2
Rectangle {
    width: units.gu(100)
    height: units.gu(20)
    TextField {
        id: text
        placeholderText: "File URL to download..."
        height: 50
        anchors {
            left: parent.left
            right: button.left
            rightMargin: units.gu(2)
        }
    }
    Button {
        id: button
        text: "Download"
        height: 50
        anchors.right: parent.right
        onClicked: {
            single.download(text.text);
        }
    }
    ProgressBar {
        minimumValue: 0
        maximumValue: 100
        value: single.progress
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        SingleDownload {
            id: single
        }
    }
}
```

**See also** [DownloadManager](../Ubuntu.DownloadManager.DownloadManager/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="allowMobileDownload-prop"></span><span class="name">allowMobileDownload</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property sets if the download handled by this object will work under mobile data connection.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoStart-prop"></span><span class="name">autoStart</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property sets if the downloads should start automatically, or let the user decide when to start them calling the "[start()](index.html#start-method)" method.

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

This property provides the unique identifier that represents the download within the download manager.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloadInProgress-prop"></span><span class="name">downloadInProgress</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property represents if the download is active, no matter if it's paused or anything. If a download is active, the value will be True. It will become False when the download finished or get canceled.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloading-prop"></span><span class="name">downloading</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property represents the current state of the download. False if paused or not downloading anything. True if the file is currently being downloaded.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorMessage-prop"></span><span class="name">errorMessage</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The error message associated with the current download, if there is any.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="headers-prop"></span><span class="name">headers</span> : <span class="type">QVariantMap</span></p></td>
</tr>
</tbody>
</table>

This property allows to get and set the headers that will be used to perform the download request. All headers must be strings or at least QVariant should be able to convert them to strings.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isCompleted-prop"></span><span class="name">isCompleted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The current state of the download. True if the download already finished, False otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metadata-prop"></span><span class="name">metadata</span> : <span class="type"><a href="../Ubuntu.DownloadManager.Metadata/index.html">Metadata</a></span></p></td>
</tr>
</tbody>
</table>

This property allows to get and set the metadata that will be linked to the download request.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="progress-prop"></span><span class="name">progress</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property reports the current progress in percentage of the download, from 0 to 100.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="throttle-prop"></span><span class="name">throttle</span> : <span class="type">long</span></p></td>
</tr>
</tbody>
</table>

This property can be used to limit the bandwidth used for the download.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="finished-signal"></span><span class="name">finished</span>(<span class="type">QString</span> <em>path</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a download has finished. The downloaded file path is provided via the 'path' paremeter. The corresponding handler is `onFinished`

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancel-method"></span><span class="type">void</span> <span class="name">cancel</span>()</p></td>
</tr>
</tbody>
</table>

Cancels a download.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="download-method"></span><span class="type">void</span> <span class="name">download</span>(<span class="type">string</span> <em>url</em>)</p></td>
</tr>
</tbody>
</table>

Creates the download for the given url and reports the different states through the properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pause-method"></span><span class="type">void</span> <span class="name">pause</span>()</p></td>
</tr>
</tbody>
</table>

Pauses the download. An error is returned if the download was already paused.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resume-method"></span><span class="type">void</span> <span class="name">resume</span>()</p></td>
</tr>
</tbody>
</table>

Resumes and already paused download. An error is returned if the download was already resumed or not paused.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="type">void</span> <span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Starts the download, used when [autoStart](index.html#autoStart-prop) is False.

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
