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
-   <a href="../QtSensors/index.html" class="sub-nav-item">QtSensors</a> ›

<!-- -->

-   Qt Sensors - C++ Sensor Gestures Example

Qt Sensors - C++ Sensor Gestures Example
========================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/94c78a49-e4a3-4681-98c3-8ecd2e68b530-api/apps/qml/sdk-15.04.6/qtsensors-sensorgestures-example/images/sensorgesturecpp.png)

QSensorGestures class defines one predefined signal, `void detected(const QString &)`

As well, Sensor Gesture Recognizers may implement any number of their own custom signals.

Our shake recognizer defines one custom signal, `void shake()`, as well as the predefined detected signal.

<span id="sensorgestures-class-implementation"></span>
SensorGestures Class Implementation
-----------------------------------

In order to know about custom signals that may be available, we need to ask the QSensorGestureManager about them,

Using the QSensorGesture::gestureIds() function, the manager will return a QStringList of known and valid gesture Ids.

``` cpp
QSensorGestureManager manager;
Q_FOREACH (const QString &gesture, manager.gestureIds()) {
    QTreeWidgetItem *gestureId = new QTreeWidgetItem(ui->treeWidget);
    QStringList recognizerSignals =  manager.recognizerSignals(gesture);
    gestureId->setText(0,gesture);
    for (int i = 0; i < recognizerSignals.count(); i++) {
        QTreeWidgetItem *oneSignal = new QTreeWidgetItem(gestureId);
        oneSignal->setText(0,recognizerSignals.at(i));
    }
    ui->treeWidget->insertTopLevelItem(0,gestureId);
}
```

We can then use this to create a QSensorGesture object that we can use to connect signals to, and start the detection process. A QSensorGesture object will take a list of one or more recognizer ids in it's constructor.

``` cpp
QSensorGestureManager manager;
QSensorGesture *thisGesture = new QSensorGesture(QStringList() << currentRecognizer, this);
if (currentRecognizer.contains("QtSensors.shake")) {
    connect(thisGesture,SIGNAL(shake()),
            this,SLOT(onShake()));
}
connect(thisGesture,SIGNAL(detected(QString)),
        this,SLOT(detectedShake(QString)));
thisGesture->startDetection();
```

and later stop the detection process.

``` cpp
    recognizerMap[currentRecognizer]->stopDetection();
    if (currentRecognizer == "QtSensors.shake") {
        disconnect(recognizerMap[currentRecognizer],SIGNAL(shake()),
                   this,SLOT(onShake()));
    }
    disconnect(recognizerMap[currentRecognizer],SIGNAL(detected(QString)),
               this,SLOT(detectedShake(QString)));
```

The QSensorGesture object will contain all the signals of the valid requested recognizers found on the system.

You can discover which of the requested recognizer ID's that were not found by using QSensorGesture::invalidIds();

By using QSensorGesture::gestureSignals(), you can get a QStringList of usable signals.

Files:

-   sensorgestures/mainwindow.cpp
-   sensorgestures/mainwindow.h
-   sensorgestures/mainwindow.ui
-   sensorgestures/main.cpp
-   sensorgestures/sensorgestures.pro

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
