---
Title: Ubuntu.DownloadManager.DownloadManager
---
        
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

-   ****[autoStart](#autoStart-prop)**** : bool
-   ****[cleanDownloads](#cleanDownloads-prop)**** : bool
-   ****[downloads](#downloads-prop)**** : list
-   ****[errorMessage](#errorMessage-prop)**** : string

<span id="methods"></span>
Methods
-------

-   void ****[download](#download-method)****(string *url*)

<span id="details"></span>
Detailed Description
--------------------

DownloadManager provides facilities for downloading a several files, connect the downloads property to any Item that works with models, and dynamically update the content of those lists/repeaters/etc to show the current downloads and connect any UI to the [SingleDownload](../Ubuntu.DownloadManager.SingleDownload.md) properties in the delegates.

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

**See also** [SingleDownload](../Ubuntu.DownloadManager.SingleDownload.md).

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

