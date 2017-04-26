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
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   WorkerScript

WorkerScript
============

<span class="subtitle"></span>
Enables the use of threads in a Qt Quick application More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQuick . |

<span id="properties"></span>
Properties
----------

-   ****[source](index.html#source-prop)**** : url

<span id="signals"></span>
Signals
-------

-   ****[message](index.html#message-signal)****(jsobject *msg*)

<span id="methods"></span>
Methods
-------

-   ****[sendMessage](index.html#sendMessage-method)****(jsobject *message*)

<span id="details"></span>
Detailed Description
--------------------

Use [WorkerScript](index.html) to run operations in a new thread. This is useful for running operations in the background so that the main GUI thread is not blocked.

Messages can be passed between the new thread and the parent thread using [sendMessage()](index.html#sendMessage-method) and the `onMessage()` handler.

An example:

``` qml
import QtQuick 2.0
Rectangle {
    width: 300; height: 300
    Text {
        id: myText
        text: 'Click anywhere'
    }
    WorkerScript {
        id: myWorker
        source: "script.js"
        onMessage: myText.text = messageObject.reply
    }
    MouseArea {
        anchors.fill: parent
        onClicked: myWorker.sendMessage({ 'x': mouse.x, 'y': mouse.y })
    }
}
```

The above worker script specifies a JavaScript file, "script.js", that handles the operations to be performed in the new thread. Here is `script.js`:

``` cpp
WorkerScript.onMessage = function(message) {
    // ... long-running operations and calculations are done here
    WorkerScript.sendMessage({ 'reply': 'Mouse is at ' + message.x + ',' + message.y })
}
```

When the user clicks anywhere within the rectangle, `sendMessage()` is called, triggering the `WorkerScript.onMessage()` handler in `script.js`. This in turn sends a reply message that is then received by the `onMessage()` handler of `myWorker`.

<span id="restrictions"></span>
#### Restrictions

Since the `WorkerScript.onMessage()` function is run in a separate thread, the JavaScript file is evaluated in a context separate from the main QML engine. This means that unlike an ordinary JavaScript file that is imported into QML, the `script.js` in the above example cannot access the properties, methods or other attributes of the QML item, nor can it access any context properties set on the QML object through QQmlContext.

Additionally, there are restrictions on the types of values that can be passed to and from the worker script. See the [sendMessage()](index.html#sendMessage-method) documentation for details.

Worker script can not use [.import](../QtQml.qtqml-javascript-imports/index.html) syntax.

**See also** Qt Quick Examples - Threading and Threaded ListModel Example.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This holds the url of the JavaScript file that implements the `WorkerScript.onMessage()` handler for threaded operations.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="message-signal"></span><span class="name">message</span>(<span class="type">jsobject</span> <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a message *msg* is received from a worker script in another thread through a call to [sendMessage()](index.html#sendMessage-method).

The corresponding handler is `onMessage`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sendMessage-method"></span><span class="name">sendMessage</span>(<span class="type">jsobject</span> <em>message</em>)</p></td>
</tr>
</tbody>
</table>

Sends the given *message* to a worker script handler in another thread. The other worker script handler can receive this message through the onMessage() handler.

The `message` object may only contain values of the following types:

-   boolean, number, string
-   JavaScript objects and arrays
-   [ListModel](../QtQml.ListModel/index.html) objects (any other type of QObject\* is not allowed)

All objects and arrays are copied to the `message`. With the exception of [ListModel](../QtQml.ListModel/index.html) objects, any modifications by the other thread to an object passed in `message` will not be reflected in the original object.

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
