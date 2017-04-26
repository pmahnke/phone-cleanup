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

-   Porting Applications from QtMobility Sensors to Qt Sensors

Porting Applications from QtMobility Sensors to Qt Sensors
==========================================================

<span class="subtitle"></span>
<span id="details"></span> <span id="overview"></span>
Overview
--------

The initial release of Qt Sensors (5.0) is generally expected to be source compatible with QtMobility Sensors 1.2. This document attempts to explain where things need to be changed in order to port applications to Qt Sensors.

<span id="qml"></span>
QML
---

In `QtMobility`, the C++ classes like `QAccelerometer` were directly used as QML types. In Qt Sensors, there are now separate classes for the QML types, which have no public C++ API.

The new QML types in Qt Sensors fix some issues the former QtMobility QML types had, for example:

-   The reading types now have proper change notifications.
-   `availableDataRates` and `outputRanges` of the `Sensor` type are now proper list types.
-   The `identifier` and `type` properties of `Sensor` can now be used.
-   The `lux` property of `LightSensorReading` has been renamed to `illuminance`.
-   The `QmlSensors` singleton now allows to query for sensor types.

For more information, see the QML API documentation.

<span id="c"></span>
C++
---

The C++ API mainly remained the same as in QtMobility.

<span id="includes"></span>
### Includes

QtMobility Sensors installed headers into a `Qt` Sensors directory. This is also the directory that Qt Sensors uses. It is therefore expected that includes that worked with QtMobility Sensors should continue to work.

For example:

``` cpp
#include <QAccelerometer>
#include <qaccelerometer.h>
#include <QtSensors/QAccelerometer>
#include <QtSensors/qaccelerometer.h>
```

<span id="macros-and-namespace"></span>
### Macros and Namespace

QtMobility Sensors was built in a `QtMobility` namespace. This was enabled by the use of various macros. Qt Sensors does not normally build into a namespace and the macros from QtMobility no longer exist.

-   QTM\_BEGIN\_NAMESPACE
-   QTM\_END\_NAMESPACE
-   QTM\_USE\_NAMESPACE
-   QTM\_PREPEND\_NAMESPACE(x)

Note that Qt can be configured to build into a namespace. If Qt is built in this way then Qt Sensors is also built into the nominated namespace. However, as this is optional, the macros for this are typically defined to do nothing.

-   QT\_BEGIN\_NAMESPACE
-   QT\_END\_NAMESPACE
-   QT\_USE\_NAMESPACE
-   QT\_PREPEND\_NAMESPACE(x)

<span id="qtimestamp"></span>
### qtimestamp

qtimestamp was previously defined as an opaque type equivalent to a quint64. It existed as a class due to an implementation detail.

In Qt Sensors, the API uses quint64 instead of qtimestamp. qtimestamp still exists as a typedef so that applications that refer to qtimestamp can be compiled.

<span id="project-files"></span>
Project Files
-------------

QtMobility Sensors applications used this in their project files to enable the Sensors API.

``` cpp
CONFIG += mobility
MOBILITY += sensors
```

Applications should remove these lines and instead use the following statement to enable the Qt Sensors API:

``` cpp
QT += sensors
```

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
