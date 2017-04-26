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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.6</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Examples - Threading

Qt Quick Examples - Threading
=============================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/0931328d-6149-430e-b9b0-4096831cd8c7-api/apps/qml/sdk-15.04.6/qtquick-threading-example/images/qml-threading-example.png)

*Threading* is a collection of QML multithreading examples.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="threaded-listmodel"></span>
Threaded ListModel
------------------

*Threaded [ListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel)* contains a [ListView](../QtQuick.ListView/index.html) and a [ListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel). The [ListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel) object is updated asynchronously in another thread, and the results propagate back to the main thread. A timer requests updates from the worker thread periodically:

``` qml
        Timer {
            id: timer
            interval: 2000; repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: {
                var msg = {'action': 'appendCurrentTime', 'model': listModel};
                worker.sendMessage(msg);
            }
        }
```

Inside the worker thread, the [ListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel) is synchronized once the data is finished loading:

``` js
WorkerScript.onMessage = function(msg) {
    if (msg.action == 'appendCurrentTime') {
        var data = {'time': new Date().toTimeString()};
        msg.model.append(data);
        msg.model.sync();   // updates the changes to the list
    }
}
```

<span id="workerscript"></span>
WorkerScript
------------

*WorkerScript* contains an example of using a [WorkerScript](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.threading/#workerscript) to offload expensive calculations into another thread. This keeps the UI from being blocked. This example calculates numbers in Pascal's Triangle, and not in a very optimal way, so it will often take several seconds to complete the calculation. By doing this in a [WorkerScript](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.threading/#workerscript) in another thread, the UI is not blocked during this time.

When the UI needs another value, a request is sent to the [WorkerScript](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.threading/#workerscript):

``` qml
        Spinner {
            id: rowSpinner
            label: "Row"
            onValueChanged: {
                resultText.text = "Loading...";
                myWorker.sendMessage( { row: rowSpinner.value, column: columnSpinner.value } );
            }
        }
```

The workerscript then is free to take a really long time to calculate it:

``` js
WorkerScript.onMessage = function(message) {
    //Calculate result (may take a while, using a naive algorithm)
    var calculatedResult = triangle(message.row, message.column);
    //Send result back to main thread
    WorkerScript.sendMessage( { row: message.row,
                                column: message.column,
                                result: calculatedResult} );
}
```

When it's done, the result returns to the main scene via the [WorkerScript](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.threading/#workerscript) type:

``` qml
    WorkerScript {
        id: myWorker
        source: "workerscript.js"
        onMessage: {
            if (messageObject.row == rowSpinner.value && messageObject.column == columnSpinner.value){ //Not an old result
                if (messageObject.result == -1)
                    resultText.text = "Column must be <= Row";
                else
                    resultText.text = messageObject.result;
            }
        }
    }
```

Files:

-   threading/threading.qml
-   threading/threadedlistmodel/dataloader.js
-   threading/threadedlistmodel/timedisplay.qml
-   threading/workerscript/Spinner.qml
-   threading/workerscript/workerscript.js
-   threading/workerscript/workerscript.qml
-   threading/main.cpp
-   threading/threading.pro
-   threading/threading.qmlproject
-   threading/threading.qrc
-   threading/threadedlistmodel/threadedlistmodel.qmlproject
-   threading/workerscript/workerscript.qmlproject

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
