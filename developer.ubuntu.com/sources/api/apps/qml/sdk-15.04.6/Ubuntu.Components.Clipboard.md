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
-   [SDK 15.04.6](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   Clipboard

Clipboard
=========

<span class="subtitle"></span>
This is a singleton type providing access to the system clipboard. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[data](index.html#data-prop)**** : MimeData

<span id="signals"></span>
Signals
-------

-   ****[dataChanged](index.html#dataChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[clear](index.html#clear-method)****()
-   MimeData ****[newData](index.html#newData-method)****()
-   ****[push](index.html#push-method)****(var *data*)

<span id="details"></span>
Detailed Description
--------------------

Clipboard data can be retrieved through data property, which returns an object of [MimeData](../Ubuntu.Components.MimeData/index.html) type. The actual content of the clipboard can be accessed through this object. Data can be pushed to the clipboard using [push()](index.html#push-method) function.

The clipboard data cannot be modified through the type returned by the data property, for this a new instance of [MimeData](../Ubuntu.Components.MimeData/index.html) type must be used. This instance can be either a standalone MimeDala component or an object created using [newData()](index.html#newData-method) function. Remember that standalone [MimeData](../Ubuntu.Components.MimeData/index.html) types duplicate the clipboard data which may cause extensive memory use.

Examples of use:

1. Using standard MimeType component - the following example copies the selected text from the text area into the clipboard pushing also a color

``` qml
Item {
    TextArea {
        id: editor
    }
    MimeData {
        id: mimeData
        color: "green"
        text: editor.text
    }
    Button {
        text: "Copy"
        onClicked: Clipboard.push(mimeData)
    }
}
```

2. Pushing data straight to clipboard

``` qml
Item {
    TextArea {
        id: editor
    }
    Button {
        text: "Copy"
        onClicked: {
            Clipboard.push(editor.text);
            Clipboard.push(["application/x-color", "green"]);
        }
    }
}
```

3. Pushing data using [MimeData](../Ubuntu.Components.MimeData/index.html) object

``` qml
Item {
    TextArea {
        id: editor
    }
    Button {
        text: "Copy"
        onClicked: {
            var mimeData = Clipboard.newData();
            mimeData.text = editor.text;
            mimeData.color = "green";
            Clipboard.push(mimeData);
        }
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-prop"></span><span class="name">data</span> : <span class="type"><a href="../Ubuntu.Components.MimeData/index.html">MimeData</a></span></p></td>
</tr>
</tbody>
</table>

Provides access to the Clipboard's current data.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dataChanged-signal"></span><span class="name">dataChanged</span>()</p></td>
</tr>
</tbody>
</table>

The signal is triggered when clipboard content gets changed.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clear-method"></span><span class="name">clear</span>()</p></td>
</tr>
</tbody>
</table>

The function clears the clipboard content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="newData-method"></span><span class="type"><a href="../Ubuntu.Components.MimeData/index.html">MimeData</a></span> <span class="name">newData</span>()</p></td>
</tr>
</tbody>
</table>

The function returns a new [MimeData](../Ubuntu.Components.MimeData/index.html) object that can be used in Java script code to push pultiple MIME types at the same time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="push-method"></span><span class="name">push</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span> <em>data</em>)</p></td>
</tr>
</tbody>
</table>

The function copies data provided as parameter to the clipboard. The parameter can be a [MimeData](../Ubuntu.Components.MimeData/index.html) instance or object created using [newData()](index.html#newData-method) beside the ones listed at [MimeData::data](../Ubuntu.Components.MimeData/index.html#data-prop).

When [MimeData](../Ubuntu.Components.MimeData/index.html) instance or object is given, the entire object content will be pushed to the clipboard.

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
