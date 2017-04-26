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
-   [SDK 14.10](../index.html) ›
-   [Qt.labs.folderlistmodel](../Qt.labs.folderlistmodel/index.html) ›

<!-- -->

-   FolderListModel

FolderListModel
===============

<span class="subtitle"></span>
The FolderListModel provides a model of the contents of a file system folder. More...

|                   |                                      |
|-------------------|--------------------------------------|
| Import Statement: | `import Qt.labs.folderlistmodel 2.1` |

<span id="properties"></span>
Properties
----------

-   ****[count](index.html#count-prop)**** : int
-   ****[folder](index.html#folder-prop)**** : string
-   ****[nameFilters](index.html#nameFilters-prop)**** : list&lt;string&gt;
-   ****[parentFolder](index.html#parentFolder-prop)**** : url
-   ****[showDirs](index.html#showDirs-prop)**** : bool
-   ****[showDirsFirst](index.html#showDirsFirst-prop)**** : bool
-   ****[showDotAndDotDot](index.html#showDotAndDotDot-prop)**** : bool
-   ****[showFiles](index.html#showFiles-prop)**** : bool
-   ****[showHidden](index.html#showHidden-prop)**** : bool
-   ****[showOnlyReadable](index.html#showOnlyReadable-prop)**** : bool
-   ****[sortField](index.html#sortField-prop)**** : enumeration
-   ****[sortReversed](index.html#sortReversed-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   var ****[get](index.html#get-method)****(int *index*, string *property*)
-   bool ****[isFolder](index.html#isFolder-method)****(int *index*)

<span id="details"></span>
Detailed Description
--------------------

FolderListModel provides access to information about the contents of a folder in the local file system, exposing a list of files to views and other data components.

**Note:** This type is made available by importing the `Qt.labs.folderlistmodel` module. *Elements in the Qt.labs module are not guaranteed to remain compatible in future versions.*

**import Qt.labs.folderlistmodel 2.1**

The [folder](index.html#folder-prop) property specifies the folder to access. Information about the files and directories in the folder is supplied via the model's interface. Components access names and paths via the following roles:

-   `fileName`
-   `filePath`
-   `fileURL` (since Qt 5.2)
-   `fileBaseName`
-   `fileSuffix`
-   `fileSize`
-   `fileModified`
-   `fileAccessed`
-   `fileIsDir`

Additionally a file entry can be differentiated from a folder entry via the [isFolder()](index.html#isFolder-method) method.

<span id="filtering"></span>
Filtering
---------

Various properties can be set to filter the number of files and directories exposed by the model.

The [nameFilters](index.html#nameFilters-prop) property can be set to contain a list of wildcard filters that are applied to names of files and directories, causing only those that match the filters to be exposed.

Directories can be included or excluded using the [showDirs](index.html#showDirs-prop) property, navigation directories can also be excluded by setting the [showDotAndDotDot](index.html#showDotAndDotDot-prop) property to false, hidden files can be included or excluded using the [showHidden](index.html#showHidden-prop) property.

It is sometimes useful to limit the files and directories exposed to those that the user can access. The [showOnlyReadable](index.html#showOnlyReadable-prop) property can be set to enable this feature.

<span id="example-usage"></span>
Example Usage
-------------

The following example shows a FolderListModel being used to provide a list of QML files in a [ListView](../QtQuick.ListView/index.html):

``` qml
import QtQuick 2.0
import Qt.labs.folderlistmodel 2.1
ListView {
    width: 200; height: 400
    FolderListModel {
        id: folderModel
        nameFilters: ["*.qml"]
    }
    Component {
        id: fileDelegate
        Text { text: fileName }
    }
    model: folderModel
    delegate: fileDelegate
}
```

<span id="path-separators"></span>
Path Separators
---------------

Qt uses "/" as a universal directory separator in the same way that "/" is used as a path separator in URLs. If you always use "/" as a directory separator, Qt will translate your paths to conform to the underlying operating system.

**See also** [QML Data Models](../QtQuick.qtquick-modelviewsdata-modelview/index.html#qml-data-models).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Returns the number of items in the current folder that match the filter criteria.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="folder-prop"></span><span class="name">folder</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The *folder* property holds a URL for the folder that the model is currently providing.

The value must be a `file`: or `qrc`: URL, or a relative URL.

By default, the value is an invalid URL.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nameFilters-prop"></span><span class="name">nameFilters</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

The *nameFilters* property contains a list of file name filters. The filters may include the ? and \* wildcards.

The example below filters on PNG and JPEG files:

``` qml
FolderListModel {
    nameFilters: [ "*.png", "*.jpg" ]
}
```

**Note:** Directories are not excluded by filters.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parentFolder-prop"></span><span class="name">parentFolder</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

Returns the URL of the parent of of the current [folder](index.html#folder-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showDirs-prop"></span><span class="name">showDirs</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, directories are included in the model; otherwise only files are included.

By default, this property is true.

Note that the [nameFilters](index.html#nameFilters-prop) are not applied to directories.

**See also** [showDotAndDotDot](index.html#showDotAndDotDot-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showDirsFirst-prop"></span><span class="name">showDirsFirst</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, if directories are included in the model they will always be shown first, then the files.

By default, this property is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showDotAndDotDot-prop"></span><span class="name">showDotAndDotDot</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, the "." and ".." directories are included in the model; otherwise they are excluded.

By default, this property is false.

**See also** [showDirs](index.html#showDirs-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showFiles-prop"></span><span class="name">showFiles</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, files are included in the model; otherwise only directories are included.

By default, this property is true.

This QML property was introduced in Qt 5.2.

**See also** [showDirs](index.html#showDirs-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showHidden-prop"></span><span class="name">showHidden</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, hidden files and directories are included in the model; otherwise they are excluded.

By default, this property is false.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showOnlyReadable-prop"></span><span class="name">showOnlyReadable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, only readable files and directories are shown; otherwise all files and directories are shown.

By default, this property is false.

**See also** [showDirs](index.html#showDirs-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sortField-prop"></span><span class="name">sortField</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The *sortField* property contains field to use for sorting. sortField may be one of:

-   Unsorted - no sorting is applied.
-   Name - sort by filename
-   LastModified - sort by time modified
-   Size - sort by file size
-   Type - sort by file type (extension)

**See also** [sortReversed](index.html#sortReversed-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sortReversed-prop"></span><span class="name">sortReversed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If set to true, reverses the sort order. The default is false.

**See also** [sortField](index.html#sortField-prop).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="get-method"></span><span class="type">var</span> <span class="name">get</span>(<span class="type">int</span> <em>index</em>, <span class="type">string</span> <em>property</em>)</p></td>
</tr>
</tbody>
</table>

Get the folder property for the given index. The following properties are available.

-   `fileName`
-   `filePath`
-   `fileURL` (since Qt 5.2)
-   `fileBaseName`
-   `fileSuffix`
-   `fileSize`
-   `fileModified`
-   `fileAccessed`
-   `fileIsDir`

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isFolder-method"></span><span class="type">bool</span> <span class="name">isFolder</span>(<span class="type">int</span> <em>index</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if the entry *index* is a folder; otherwise returns false.

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
