---
Title: QtQml.qtqml-tutorials-extending-chapter6-plugins-example
---
        
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

In this example, the `Charts` directory is located at the same level as the application that uses our new import module. This way, the QML engine will find our module as the default search path for QML imports includes the directory of the application executable. Alternatively, we could control what directories the [QML import path](../QtQml.qtqml-syntax-imports.md#qml-import-path) contains, useful if there are multiple QML applications using the same QML imports.

The `.pro` file also contains additional magic to ensure that the [module definition qmldir file](../QtQml.qtqml-modules-qmldir.md) is always copied to the same location as the plugin binary.

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

