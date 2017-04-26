---
Title: QtQml.qtqml-qmlextensionplugins-example
---
        
QML Plugin Example
==================

<span class="subtitle"></span>
<span id="details"></span>
This example creates a C++ plugin extension by subclassing QQmlExtensionPlugin.

![](https://developer.ubuntu.com/static/devportal_uploaded/b349af4c-49b8-4c75-a4b6-aaf71d2dfc53-api/apps/qml/sdk-14.10/qtqml-qmlextensionplugins-example/images/qml-plugins-example.png)

To run this example, use the following commands on the prompt:

``` cpp
> qmake
> make
> qmlscene -I imports plugins.qml
```

Files:

-   qmlextensionplugins/plugin.cpp
-   qmlextensionplugins/plugins.qml
-   qmlextensionplugins/imports/TimeExample/Clock.qml
-   qmlextensionplugins/plugins.qmlproject
-   qmlextensionplugins/qmlextensionplugins.pro
-   qmlextensionplugins/imports/TimeExample/qmldir

