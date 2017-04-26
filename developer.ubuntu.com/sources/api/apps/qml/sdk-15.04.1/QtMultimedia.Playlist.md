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
-   [QtMultimedia](../QtMultimedia/index.html) ›

<!-- -->

-   Playlist

Playlist
========

<span class="subtitle"></span>
For specifying a list of media to be played. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[currentIndex](index.html#currentIndex-prop)**** : int
-   ****[currentItemsource](index.html#currentItemsource-prop)**** : url
-   ****[error](index.html#error-prop)**** : enumeration
-   ****[errorString](index.html#errorString-prop)**** : string
-   ****[itemCount](index.html#itemCount-prop)**** : int
-   ****[playbackMode](index.html#playbackMode-prop)**** : enumeration
-   ****[readOnly](index.html#readOnly-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   bool ****[addItem](index.html#addItem-method)****(source)
-   bool ****[addItems](index.html#addItems-method)****(sources)
-   bool ****[clear](index.html#clear-method)****()
-   bool ****[insertItem](index.html#insertItem-method)****(index, source)
-   url ****[itemSource](index.html#itemSource-method)****(index)
-   ****[load](index.html#load-method)****(location, format)
-   bool ****[moveItem](index.html#moveItem-method)****(from, to)
-   ****[next](index.html#next-method)****()
-   int ****[nextIndex](index.html#nextIndex-method)****(steps)
-   ****[previous](index.html#previous-method)****()
-   int ****[previousIndex](index.html#previousIndex-method)****(steps)
-   bool ****[removeItem](index.html#removeItem-method)****(index)
-   bool ****[removeItems](index.html#removeItems-method)****(int *start*, int *end*)
-   bool ****[save](index.html#save-method)****(location, format)
-   ****[shuffle](index.html#shuffle-method)****()

<span id="details"></span>
Detailed Description
--------------------

**`\backported`**from 5.6

The Playlist type provides a way to play a list of media with the [MediaPlayer](../QtMultimedia.MediaPlayer/index.html), Audio and Video types. It can be used as a data source for view elements (such as ListView) and other elements that interact with model data (such as Repeater). When used as a data model, each playlist item's source URL can be accessed using the `source` role.

``` qml
import QtQuick 2.0
import QtMultimedia 5.4
Item {
    width: 400;
    height: 300;
    Audio {
        id: player;
        playlist: Playlist {
            id: playlist
            PlaylistItem { source: "song1.ogg"; }
            PlaylistItem { source: "song2.ogg"; }
            PlaylistItem { source: "song3.ogg"; }
        }
    }
    ListView {
        model: playlist;
        delegate: Text {
            font.pixelSize: 16;
            text: source;
        }
    }
    MouseArea {
        anchors.fill: parent;
        onPressed: {
            if (player.playbackState != Audio.PlayingState) {
                player.play();
            } else {
                player.pause();
            }
        }
    }
}
```

**See also** [MediaPlayer](../QtMultimedia.MediaPlayer/index.html), [Audio](../QtMultimedia.qml-multimedia/index.html#audio), and [Video](../QtMultimedia.qml-multimedia/index.html#video).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentIndex-prop"></span><span class="name">currentIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the position of the current item in the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentItemsource-prop"></span><span class="name">currentItemsource</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property holds the source URL of the current item in the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the error condition of the playlist.

| Value                   | Description           |
|-------------------------|-----------------------|
| NoError                 | No errors             |
| FormatError             | Format error.         |
| FormatNotSupportedError | Format not supported. |
| NetworkError            | Network error.        |
| AccessDeniedError       | Access denied error.  |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-prop"></span><span class="name">errorString</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds a string describing the current error condition of the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemCount-prop"></span><span class="name">itemCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of items in the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playbackMode-prop"></span><span class="name">playbackMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the order in which items in the playlist are played.

| Value             | Description                                                                                                                                                                            |
|-------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CurrentItemOnce   | The current item is played only once.                                                                                                                                                  |
| CurrentItemInLoop | The current item is played repeatedly in a loop.                                                                                                                                       |
| Sequential        | Playback starts from the current and moves through each successive item until the last is reached and then stops. The next item is a null item when the last one is currently playing. |
| Loop              | Playback restarts at the first item after the last has finished playing.                                                                                                               |
| Random            | Play items in random order.                                                                                                                                                            |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="readOnly-prop"></span><span class="name">readOnly</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates if the playlist can be modified.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addItem-method"></span><span class="type">bool</span> <span class="name">addItem</span>(<span class="type">source</span>)</p></td>
</tr>
</tbody>
</table>

Appends the *source* URL to the playlist.

Returns true if the *source* is added successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addItems-method"></span><span class="type">bool</span> <span class="name">addItems</span>(<span class="type">sources</span>)</p></td>
</tr>
</tbody>
</table>

Appends *source* URLs to the playlist.

Returns true if the *sources* are added successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clear-method"></span><span class="type">bool</span> <span class="name">clear</span>()</p></td>
</tr>
</tbody>
</table>

Removes all the items from the playlist.

Returns true if the operation is successful.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="insertItem-method"></span><span class="type">bool</span> <span class="name">insertItem</span>(<span class="type">index</span>, <span class="type">source</span>)</p></td>
</tr>
</tbody>
</table>

Inserts the *source* URL to the playlist at the given *index*.

Returns true if the *source* is added successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemSource-method"></span><span class="type">url</span> <span class="name">itemSource</span>(<span class="type">index</span>)</p></td>
</tr>
</tbody>
</table>

Returns the source URL of the item at the given *index* in the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="load-method"></span><span class="name">load</span>(<span class="type">location</span>, <span class="type">format</span>)</p></td>
</tr>
</tbody>
</table>

Loads a playlist from the given *location*. If *format* is specified, it is used, otherwise the format is guessed from the location name and the data.

New items are appended to the playlist.

`onloaded()` is emitted if the playlist loads successfully, otherwise `onLoadFailed()` is emitted with [error](index.html#error-prop) and [errorString](index.html#errorString-prop) defined accordingly.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveItem-method"></span><span class="type">bool</span> <span class="name">moveItem</span>(<span class="type">from</span>, <span class="type">to</span>)</p></td>
</tr>
</tbody>
</table>

Moves the item at the first given *index* to the second given *index*.

Returns true if the *source* is moved successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="next-method"></span><span class="name">next</span>()</p></td>
</tr>
</tbody>
</table>

Advances to the next item in the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nextIndex-method"></span><span class="type">int</span> <span class="name">nextIndex</span>(<span class="type">steps</span>)</p></td>
</tr>
</tbody>
</table>

Returns the index of the item in the playlist which would be current after calling [next()](index.html#next-method) *steps* times.

Returned value depends on the size of the playlist, the current position and the playback mode.

**See also** [playbackMode](index.html#playbackMode-prop) and [previousIndex()](index.html#previousIndex-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previous-method"></span><span class="name">previous</span>()</p></td>
</tr>
</tbody>
</table>

Returns to the previous item in the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousIndex-method"></span><span class="type">int</span> <span class="name">previousIndex</span>(<span class="type">steps</span>)</p></td>
</tr>
</tbody>
</table>

Returns the index of the item in the playlist which would be current after calling [previous()](index.html#previous-method) *steps* times.

Returned value depends on the size of the playlist, the current position and the playback mode.

**See also** [playbackMode](index.html#playbackMode-prop) and [nextIndex()](index.html#nextIndex-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItem-method"></span><span class="type">bool</span> <span class="name">removeItem</span>(<span class="type">index</span>)</p></td>
</tr>
</tbody>
</table>

Removed the item at the given *index* from the playlist.

Returns true if the *source* is removed successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItems-method"></span><span class="type">bool</span> <span class="name">removeItems</span>(<span class="type">int</span> <em>start</em>, <span class="type">int</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Removes items in the playlist from *start* to **`\end`** inclusive.

Returns true if the items are removed successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="save-method"></span><span class="type">bool</span> <span class="name">save</span>(<span class="type">location</span>, <span class="type">format</span>)</p></td>
</tr>
</tbody>
</table>

Saves the playlist to the given *location*. If *format* is specified, it is used, otherwise the format is guessed from the location name.

Returns true if the playlist is saved successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shuffle-method"></span><span class="name">shuffle</span>()</p></td>
</tr>
</tbody>
</table>

Shuffles items in the playlist.

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
