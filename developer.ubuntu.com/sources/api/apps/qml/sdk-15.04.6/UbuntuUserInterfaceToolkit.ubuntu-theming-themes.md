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
-   <a href="../UbuntuUserInterfaceToolkit/index.html" class="sub-nav-item">UbuntuUserInterfaceToolkit</a> ›

<!-- -->

-   Themes

Themes
======

<span class="subtitle"></span>
<span id="details"></span>
A theme is a collection of style implementations. The style component names are typically built using the component name and the Style word, exceptions being documented per component.

In addition to the styles the theme can provide palette values used by the style and components. The palette values are defined in `Palette.qml` file, which must either be derived from [Palette](../Ubuntu.Components.Themes.Palette/index.html) component or from a parent theme's Palette.

There are two types of themes, shared themes and application themes. These themes do not differ in structure but in the way they are exposed. Shared themes are located either under **QML2\_IMPORT\_PATH** or **XDG\_DATA\_DIR**. Application themes are located under the application's private folder, therefore they are typically serving the application styling needs, and cannot be shared. Shared themes are also presented as QML extension modules, giving the possibility for application themes to extend them.

**Note:** Yet there is no possibility to install shared themes into the system through app store, only by providing them as part of the system image.

The system provides two shared themes, **Ambiance** and **SuruDark**, the latest derived from Ambiance theme. Both themes can be used as base theme in application themes, by importing the modules defining them. If you decide to create a shared theme that can be used also as base for custom or application themes, it is recommended to do the same approach as the system themes do.

<span id="theme-structure"></span>
### Theme structure

![](https://developer.ubuntu.com/static/devportal_uploaded/4c66467b-88bb-48ec-8ff9-ca10c22eb301-api/apps/qml/sdk-15.04.6/ubuntu-theming-themes/images/surudark-theme.png)

The theme structure is similar to a QML extension module structure, and this applies to both shared and application themes. Contains component style documents, palette description document, `qmldir` file and a special file called `parent_theme`. All these files are optional in a theme depending on context.

`parent_theme` is a special file which defines the theme the current one is derifed from. The parent theme must be a shared theme and its name must be specified in dotted format. For example SuruDark theme is located under `$QML2_IMPORT_PATH/Ubuntu/Components/Themes/SuruDark` folder. This means that the theme name is identified by the **Ubuntu.Components.Themes.SuruDark** dotted format.

In addition to the files mentioned, themes can provide components supporting the styling (i.e. components providing common visuals in the style implementations). Style implementations can also provide additional APIs alongside the standard style API. These additional APIs are typically there to configure the style itself, or to turn on/off features provided by styles in derived themes.

Starting with Ubuntu Components version 1.3, themes must provide versioned styles. This means that themes must store the styles in subfolders, meaning that toolkit version 1.3 must have the version specific styles under the theme's 1.3/ subfolder. The styling engine will look for the styles based on the theme version used by the component. If the style is not found with the requested version, it will fall back to the previous version of that style.

![](https://developer.ubuntu.com/static/devportal_uploaded/0cf2f06d-e81a-4482-be13-e5b2964a19c6-api/apps/qml/sdk-15.04.6/ubuntu-theming-themes/images/surudark-theme-13.png)

<span id="standalone-theme"></span>
#### Standalone theme

A standalone theme is a theme which defines all style documents and theme palette, and it is not derived from any theme. The only standalone theme UI Toolkit provides is the Ambiance theme. Both shared and application themes can be standalone themes, however Applications should make sure they implement all the styles used by the toolkit components used in the application. `qmldir` file presence is mandatory only if the theme is shared.

<span id="derived-themes"></span>
#### Derived themes

As the name suggests derived themes are themes which use other themes (standalone or derived ones) as base theme. These themes must have the `parent_theme` file which contains the name of the theme they are derived from. These themes do not have to provide palette configuration as long as they use the derived theme's palette values.

Derived themes should only list those style components which overrule the derived style or extend the derived style. The only requirement is to use the same document name as the parent theme is having.

Let's take SuruDark theme as en example. The theme is derived from Ambiance theme, and only extends few style components. When theming engine loads the style components, it looks after the styles starting from the current theme. If the style is not found there, it tries to look after the style in the parent themes until it finds one.

The extended (or even overridden) style component documents must follow the naming convention, and must have the names implied by the components styled.

The style imports the Ambiance theme module, and extends the Ambiance [ListItemStyle](../Ubuntu.Components.Styles.ListItemStyle/index.html) component. The same is done in the other style components. However, Palette defines own values, and does not re-use Ambiance palette values.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes 1.3
Palette {
    normal: SuruDarkNormal {}
    disabled: SuruDarkNormal {
        Component.onCompleted: {
            // specific disabled colors
            var diff = {
                foreground: UbuntuColors.inkstone,
                field: UbuntuColors.inkstone,
                positiveText: UbuntuColors.porcelain,
                negativeText: UbuntuColors.porcelain,
                activityText: UbuntuColors.porcelain,
                focusText: UbuntuColors.porcelain
            };
            for (var p in normal) {
                // skip objectName and all change signals
                if (p == "objectName"|| p.indexOf("Changed") > 0) continue;
                disabled[p] = diff[p] || (
                    // if not specific, colors are 30% opaque normal
                    Qt.rgba(normal[p].r, normal[p].g, normal[p].b, normal[p].a * 0.5)
                );
            }
        }
    }
    // selected differs from normal in background, base, foreground
    selected: SuruDarkSelected {}
    // selected differs from normal in background, base, foreground
    selectedDisabled: SuruDarkSelected {
        Component.onCompleted: {
            var diff = {
                background: UbuntuColors.inkstone,
                base: UbuntuColors.inkstone,
                foreground: UbuntuColors.inkstone,
                positiveText: UbuntuColors.porcelain,
                negativeText: UbuntuColors.porcelain,
                activityText: UbuntuColors.porcelain,
                focusText: UbuntuColors.porcelain
            };
            for (var p in selected) {
                // skip objectName and all change signals
                if (p == "objectName"|| p.indexOf("Changed") > 0) continue;
                selectedDisabled[p] = diff[p] || (
                    // if not specific, colors are 30% opaque normal
                    Qt.rgba(selected[p].r, selected[p].g, selected[p].b, normal[p].a * 0.5)
                );
            }
        }
    }
    highlighted: SuruDarkNormal {
        background: UbuntuColors.slate
        base: UbuntuColors.slate
        baseText: UbuntuColors.silk
        foreground: UbuntuColors.slate
        raised: UbuntuColors.silk
        raisedText: UbuntuColors.inkstone
        raisedSecondaryText: UbuntuColors.ash
    }
    focused: SuruDarkNormal {
        background: Qt.rgba(UbuntuColors.blue.r, UbuntuColors.blue.g, UbuntuColors.blue.b, 0.4)
    }
}
```

**Note:** If a theme derived from SuruDark wants to override style components not present in SuruDark, they must import the SuruDark's parent theme in the style component. As example, if FancyTheme would want to override the SwitchStyle, it would need to import Ambiance module in the component as SuruDark doesn't have that style component defined.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes.Ambiance 1.3 as Ambiance
Ambiance.SwitchStyle {
    // [...]
}
```

<span id="application-themes"></span>
### Application themes

Application themes can also be standalone or derived themes. Usually applications need slight differences on certain component styles, colors. These can be configured in multiple ways, depending on the needs of the application. Applications can decide to have their own theme, and override the palette value in the theme, or to use the system themes and override few color values from the theme palette.

Let's take an example of an application which changes some palette values of SuruDark theme.

First, the application has to define the theme, preferably in a separate folder (e.g. theme). The folder should contain a `parent_theme` file with the content

``` cpp
Ubuntu.Components.Themes.SuruDark
```

This will make sure theme engine will look after the style components that are not defined by the application theme inside the parent theme. Remember, the parent themes can have parent themes (SuruDark is derived from Ambiance) in which case the style components will be looked up in all these themes.

As shown next, the application can define the palette.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes.SuruDark 1.1 as Suru
Suru.Palette {
    normal.background: "#A21E1C"
    selected.backgroundText: "lightblue"
}
```

Note that the palette uses the SuruDark palette as base, and changes few colors from it.

The application can use its own theme in the following way:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    id: mainView
    objectName: "mainView"
    applicationName: "customtheme"
    width: units.gu(100)
    height: units.gu(75)
    theme.name: "theme"
    Page {
        title: i18n.tr("Theme sample")
        Column {
            spacing: units.gu(1)
            anchors {
                margins: units.gu(2)
                fill: parent
            }
            Label {
                text: i18n.tr("Theme.name:") + " " + theme.name
            }
            Button {
                width: parent.width
                text: i18n.tr("Set Ambiance theme")
                onClicked: {
                    theme.name = "Ubuntu.Components.Themes.Ambiance";
                }
            }
            Button {
                width: parent.width
                text: i18n.tr("Set SuruDark theme")
                onClicked: {
                    theme.name = "Ubuntu.Components.Themes.SuruDark";
                }
            }
            Button {
                width: parent.width
                text: i18n.tr("Application theme")
                onClicked: {
                    theme.name = "theme";
                }
            }
        }
    }
}
```

**Note:** An application, which overrides multiple shared theme versions must provide separate style versions in its theme so the styling engine can identify the proper styles for the components. Note however that this is not mandatory, and it is up to the application developer to decide whether the application should support multiple style versions or not.

<a href="../UbuntuUserInterfaceToolkit.ubuntu-theming-styles/index.html" class="prevPage">Styles</a>
<a href="../UbuntuUserInterfaceToolkit.ubuntu-theming-subtheming/index.html" class="nextPage">Sub-theming</a>

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
