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
-   [Qt.labs.settings](../Qt.labs.settings/index.html) ›

<!-- -->

-   Settings

Settings
========

<span class="subtitle"></span>
Provides persistent platform-independent application settings. More...

|                   |                             |
|-------------------|-----------------------------|
| Import Statement: | import Qt.labs.settings 1.0 |

<span id="properties"></span>
Properties
----------

-   ****[category](index.html#category-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The Settings type provides persistent platform-independent application settings.

**Note:** This type is made available by importing the **Qt.labs.settings** module. *Types in the Qt.labs module are not guaranteed to remain compatible in future versions.*

Users normally expect an application to remember its settings (window sizes and positions, options, etc.) across sessions. The Settings type enables you to save and restore such application settings with the minimum of effort.

Individual setting values are specified by declaring properties within a Settings element. All basic type properties are supported. The recommended approach is to use property aliases in order to get automatic property updates both ways. The following example shows how to use Settings to store and restore the geometry of a window.

``` qml
import QtQuick.Window 2.1
import Qt.labs.settings 1.0
Window {
    id: window
    width: 800
    height: 600
    Settings {
        property alias x: window.x
        property alias y: window.y
        property alias width: window.width
        property alias height: window.height
    }
}
```

At first application startup, the window gets default dimensions specified as 800x600. Notice that no default position is specified - we let the window manager handle that. Later when the window geometry changes, new values will be automatically stored to the persistent settings. The second application run will get initial values from the persistent settings, bringing the window back to the previous position and size.

A fully declarative syntax, achieved by using property aliases, comes at the cost of storing persistent settings whenever the values of aliased properties change. Normal properties can be used to gain more fine-grained control over storing the persistent settings. The following example illustrates how to save a setting on component destruction.

``` qml
import QtQuick 2.1
import Qt.labs.settings 1.0
Item {
    id: page
    state: settings.state
    states: [
        State {
            name: "active"
            // ...
        },
        State {
            name: "inactive"
            // ...
        }
    ]
    Settings {
        id: settings
        property string state: "active"
    }
    Component.onDestruction: {
        settings.state = page.state
    }
}
```

Notice how the default value is now specified in the persistent setting property, and the actual property is bound to the setting in order to get the initial value from the persistent settings.

<span id="application-identifiers"></span>
Application Identifiers
-----------------------

Application specific settings are identified by providing application name, organization and domain.

``` cpp
#include <QGuiApplication>
#include <QQmlApplicationEngine>
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    app.setOrganizationName("Some Company");
    app.setOrganizationDomain("somecompany.com");
    app.setApplicationName("Amazing Application");
    QQmlApplicationEngine engine("main.qml");
    return app.exec();
}
```

These are typically specified in C++ in the beginning of `main()`, but can also be controlled in QML via the following properties:

-   Qt.application.name,
-   Qt.application.organization and
-   Qt.application.domain.

<span id="categories"></span>
Categories
----------

Application settings may be divided into logical categories by specifying a category name via the [category](index.html#category-prop) property. Using logical categories not only provides a cleaner settings structure, but also prevents possible conflicts between setting keys.

``` qml
Item {
    id: panel
    visible: true
    Settings {
        category: "OutputPanel"
        property alias visible: panel.visible
        // ...
    }
}
```

Instead of ensuring that all settings in the application have unique names, the settings can be divided into unique categories that may then contain settings using the same names that are used in other categories - without a conflict.

<span id="notes"></span>
Notes
-----

The current implementation is based on QSettings. This imposes certain limitations, such as missing change notifications. Writing a setting value using one instance of Settings does not update the value in another Settings instance, even if they are referring to the same setting in the same category.

The information is stored in the system registry on Windows, and in XML preferences files on OS X. On other Unix systems, in the absence of a standard, INI text files are used. See QSettings documentation for more details.

**See also** QSettings.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="category-prop"></span><span class="name">category</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the settings category.

Categories can be used to group related settings together.

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
