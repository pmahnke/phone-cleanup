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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.5</a> ›
-   <a href="../UbuntuUserInterfaceToolkit/index.html" class="sub-nav-item">UbuntuUserInterfaceToolkit</a> ›

<!-- -->

-   Sub-theming

Sub-theming
===========

<span class="subtitle"></span>
<span id="details"></span>
There can be situations when an application has a design which combines styles from different themes, which would not be possible or would be hard to be combined in a single theme. In these situations developers can use different themes in the components and its child components. This is called sub-theming, which was introduced in Ubuntu.Components 1.3. The only thing the application has to do is to define a [ThemeSettings](../Ubuntu.Components.ThemeSettings/index.html) instance for the component which is desired to use a different theme.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    applicationName: "subthemed"
    // make sure the main theme is Ambiance
    theme.name: "Ubuntu.Components.Themes.Ambiance"
    Component {
        id: dialogComponent
        Dialog {
            id: dialog
            title: "Input dialog"
            // the dialog and its children will use SuruDark
            theme: ThemeSettings {
                name: "Ubuntu.Components.Themes.SuruDark"
            }
            TextField {
                placeholderText: "enter text"
            }
            Button {
                text: "Close"
                onClicked: PopupUtils.close(dialog)
            }
        }
    }
    Button {
        text: "Open dialog"
        onClicked: PopupUtils.open(dialogComponent)
    }
}
```

Another use-case is when a different palette set is needed in the application. One way to achieve that is to define a custom theme for the application, however that theme must be derived from one particular theme, so the application will be restricted to one given theme. If we want to have the same palette values to be used no matter where the component is used, we can override the palette values we want to change, by setting the theme palette to a [Palette](../Ubuntu.Components.Themes.Palette/index.html) instance where only the desired palette values are changed. This can be combined with sub-theming, which will make sure that the palette values are applied only on a certain component sub-tree.

The following example makes sure the Dialog and its child components will use a given palette value:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    applicationName: "subthemed"
    Component {
        id: dialogComponent
        Dialog {
            id: dialog
            title: "Input dialog"
            // make sure the dialog and its children will use the same
            // theme as the rest of the application
            theme: ThemeSettings {
                name: parentTheme.name
                palette: Palette {
                    id: config
                    normal {
                        foregroundText: UbuntuColors.blue
                        overlayText: "#BAFEDC"
                    }
                    selected {
                        fieldText: "brown"
                        foregroundText: Qt.rgba(0, 0, 1, 1)
                        overlayText: config.normal.overlayText
                        foreground: UbuntuColors.green
                    }
                }
            }
            TextField {
                placeholderText: "enter text"
            }
            Button {
                text: "Close"
                onClicked: PopupUtils.close(dialog)
            }
        }
    }
    Column {
        spacing: units.gu(1)
        Button {
            text: "Set Ambiance theme"
            onClicked: theme.name = "Ubuntu.Components.Themes.Ambiance"
        }
        Button {
            text: "Set SuruDark theme"
            onClicked: theme.name = "Ubuntu.Components.Themes.SuruDark"
        }
        Button {
            text: "Open dialog"
            onClicked: PopupUtils.open(dialogComponent)
        }
    }
}
```

**Note:** Note the way the theme is changed! The first two buttons actually change the name of the theme they inherit, which is the application's theme. This means that the theme will actually be changed on the entire application, not only on the Button itself.

The Dialog uses the [parentTheme](../Ubuntu.Components.ThemeSettings/index.html#parentTheme-prop) property to load the same theme as its parent styled item is using, meaning that the Dialog will also load the same theme as the application does, and will change the loaded palette values with the ones defined in the `config` Palette instance, namely the `foregroundText` and `overlayText` of `normal`, as well as `fieldText`, `foregroundText`, `overlayText` and `foreground` on `selected` groups.

There may be cases when a subset of components wants to use different style versions than the one provided by the module version. Remember, using earlier minor versions of the theme is perfectly fine while using newer versions may not work, as component styles may use newer APIs of the component which is not present in the component, thus the style will fail.

Let's take the example above, and assume that we want to show the Dialog with the same theme as the application but with an earlier version. We can do this by specifying the theme version with [Ubuntu.version()](../Ubuntu.Components.Ubuntu/index.html#version-method) as follows:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    applicationName: "subthemed"
    Component {
        id: dialogComponent
        Dialog {
            id: dialog
            title: "Input dialog"
            // make sure the dialog and its children will use the same
            // theme as the rest of the application
            theme: ThemeSettings {
                name: parentTheme.name
                // use version 1.2 of the theme
                version: Ubuntu.version(1, 2)
            }
            TextField {
                placeholderText: "enter text"
            }
            Button {
                text: "Close"
                onClicked: PopupUtils.close(dialog)
            }
        }
    }
    Column {
        spacing: units.gu(1)
        Button {
            text: "Set Ambiance theme"
            onClicked: theme.name = "Ubuntu.Components.Themes.Ambiance"
        }
        Button {
            text: "Set SuruDark theme"
            onClicked: theme.name = "Ubuntu.Components.Themes.SuruDark"
        }
        Button {
            text: "Open dialog"
            onClicked: PopupUtils.open(dialogComponent)
        }
    }
}
```

<span id="that-s-it"></span>
That's it
---------

By now you should have learned what the styling means, what are the themes, what kind of themes the toolkit has, how can you create shared or application themes, where should you store them, how to extend styles, how to use multiple themes in an application and how to set custom palette values runtime. If you have questions or need guidance, you can contact us on **\#ubuntu-app-devel** IRC channel on freenode.

<a href="../UbuntuUserInterfaceToolkit.ubuntu-theming-themes/index.html" class="prevPage">Themes</a>

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
