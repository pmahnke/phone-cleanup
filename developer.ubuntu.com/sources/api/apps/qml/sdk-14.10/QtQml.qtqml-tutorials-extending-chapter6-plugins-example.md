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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Chapter 6: Writing an Extension Plugin

Chapter 6: Writing an Extension Plugin
======================================

<span class="subtitle"></span>
<span id="details"></span>
Currently the `PieChart` and `PieSlice` types are used by `app.qml`, which is displayed using a QQuickView in a C++ application. An alternative way to use our QML extension is to create a plugin library to make it available to the QML engine as a new QML import module. This allows the `PieChart` and `PieSlice` types to be registered into a type namespace which can be imported by any QML application, instead of restricting these types to be only used by the one application.

The steps for creating a plugin are described in Creating C++ Plugins for QML. To start with, we create a plugin class named `ChartsPlugin`. It subclasses QQmlExtensionPlugin and registers our QML types in the inherited registerTypes() method.

Here is the `ChartsPlugin` definition in `chartsplugin.h`:

``` cpp
#include <QQmlExtensionPlugin>
class ChartsPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")
public:
    void registerTypes(const char *uri);
};
```

And its implementation in `chartsplugin.cpp`:

``` cpp
#include "piechart.h"
#include "pieslice.h"
#include <qqml.h>
void ChartsPlugin::registerTypes(const char *uri)
{
    qmlRegisterType<PieChart>(uri, 1, 0, "PieChart");
    qmlRegisterType<PieSlice>(uri, 1, 0, "PieSlice");
}
```

Then, we write a `.pro` project file that defines the project as a plugin library and specifies with DESTDIR that library files should be built into a `../Charts` directory.

``` cpp
TEMPLATE = lib
CONFIG += plugin
QT += qml quick
DESTDIR = ../Charts
TARGET = $$qtLibraryTarget(chartsplugin)
HEADERS += piechart.h \
           pieslice.h \
           chartsplugin.h
SOURCES += piechart.cpp \
           pieslice.cpp \
           chartsplugin.cpp
DESTPATH=$$[QT_INSTALL_EXAMPLES]/qml/tutorials/extending/chapter6-plugins/Charts
target.path=$$DESTPATH
qmldir.files=$$PWD/qmldir
qmldir.path=$$DESTPATH
INSTALLS += target qmldir
OTHER_FILES += qmldir
# Copy the qmldir file to the same folder as the plugin binary
QMAKE_POST_LINK += $$QMAKE_COPY $$replace($$list($$quote($$PWD/qmldir) $$DESTDIR), /, $$QMAKE_DIR_SEP)
```

In this example, the `Charts` directory is located at the same level as the application that uses our new import module. This way, the QML engine will find our module as the default search path for QML imports includes the directory of the application executable. Alternatively, we could control what directories the [QML import path](../QtQml.qtqml-syntax-imports/index.html#qml-import-path) contains, useful if there are multiple QML applications using the same QML imports.

The `.pro` file also contains additional magic to ensure that the [module definition qmldir file](../QtQml.qtqml-modules-qmldir/index.html) is always copied to the same location as the plugin binary.

The `qmldir` file declares the module name and the plugin that is made available by the module:

``` cpp
module Charts
plugin chartsplugin
```

Now we have a QML module that can be imported to any application, provided that the QML engine knows where to find it. The example contains an executable that loads `app.qml`, which uses the `import Charts 1.0` statement. Alternatively, you can load the QML file using the qmlscene tool, setting the import path to the current directory so that it finds the `qmldir` file:

``` cpp
qmlscene -I . app.qml
```

The module "Charts" will be loaded by the QML engine, and the types provided by that module will be available for use in any QML document which imports it.

Files:

-   tutorials/extending/chapter6-plugins/app.qml
-   tutorials/extending/chapter6-plugins/import/chartsplugin.cpp
-   tutorials/extending/chapter6-plugins/import/chartsplugin.h
-   tutorials/extending/chapter6-plugins/import/piechart.cpp
-   tutorials/extending/chapter6-plugins/import/piechart.h
-   tutorials/extending/chapter6-plugins/import/pieslice.cpp
-   tutorials/extending/chapter6-plugins/import/pieslice.h
-   tutorials/extending/chapter6-plugins/main.cpp
-   tutorials/extending/chapter6-plugins/app.pro
-   tutorials/extending/chapter6-plugins/app.qrc
-   tutorials/extending/chapter6-plugins/chapter6-plugins.pro
-   tutorials/extending/chapter6-plugins/import/import.pro
-   tutorials/extending/chapter6-plugins/import/qmldir

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
