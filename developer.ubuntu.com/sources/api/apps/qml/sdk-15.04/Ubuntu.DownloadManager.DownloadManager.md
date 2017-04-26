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
-   [SDK 15.04](../index.html) ›
-   [Ubuntu.DownloadManager](../Ubuntu.DownloadManager/index.html) ›

<!-- -->

-   DownloadManager

DownloadManager
===============

<span class="subtitle"></span>
Manage downloads for several files. More...

|                   |                                     |
|-------------------|-------------------------------------|
| Import Statement: | `import Ubuntu.DownloadManager 0.1` |

<span id="properties"></span>
Properties
----------

-   ****[autoStart](index.html#autoStart-prop)**** : bool
-   ****[cleanDownloads](index.html#cleanDownloads-prop)**** : bool
-   ****[downloads](index.html#downloads-prop)**** : list
-   ****[errorMessage](index.html#errorMessage-prop)**** : string

<span id="methods"></span>
Methods
-------

-   void ****[download](index.html#download-method)****(string *url*)

<span id="details"></span>
Detailed Description
--------------------

DownloadManager provides facilities for downloading a several files, connect the downloads property to any Item that works with models, and dynamically update the content of those lists/repeaters/etc to show the current downloads and connect any UI to the [SingleDownload](../Ubuntu.DownloadManager.SingleDownload/index.html) properties in the delegates.

Example usage:

``` qml
import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.DownloadManager 0.1
Rectangle {
    width: units.gu(100)
    height: units.gu(80)
    DownloadManager {
        id: manager
    }
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
            manager.download(text.text);
        }
    }
    ListView {
        id: list
        anchors {
            left: parent.left
            right: parent.right
            top: text.bottom
            bottom: parent.bottom
        }
        model: manager.downloads
        delegate: ProgressBar {
            minimumValue: 0
            maximumValue: 100
            value: modelData.progress
        }
    }
}
```

**See also** [SingleDownload](../Ubuntu.DownloadManager.SingleDownload/index.html).

Property Documentation
----------------------

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

This property sets if the downloads should start automatically, or let the user decide when to start them calling the "start()" method on each download.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cleanDownloads-prop"></span><span class="name">cleanDownloads</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property sets if the model with the list of downloads should be cleaned when a download finish. Removing those completed transfers, and only showing current downloads.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloads-prop"></span><span class="name">downloads</span> : <span class="type">list</span></p></td>
</tr>
</tbody>
</table>

This property provides a model that can be used for Lists, Repeaters, etc. To handle those downloads in a UI component that changes automatically when a new download is started, and let a custom delegate how to represent the UI for each download.

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

Method Documentation
--------------------

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

Starts the download for the given url and update the model with the list of the different downloads.

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
