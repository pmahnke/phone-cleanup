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
-   [SDK 15.04.5](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   ThemeSettings

ThemeSettings
=============

<span class="subtitle"></span>
The ThemeSettings class provides facilities to define the theme of a StyledItem. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.3        |

<span id="properties"></span>
Properties
----------

-   ****[name](index.html#name-prop)**** : string
-   ****[palette](index.html#palette-prop)**** : Palette
-   ****[parentTheme](index.html#parentTheme-prop)**** : ThemeSettings

<span id="details"></span>
Detailed Description
--------------------

A global instance is exposed as the **theme** context property.

The theme defines the visual aspect of the Ubuntu components. An application can use one or more theme the same time. The [ThemeSettings](index.html) component provides abilities to change the theme used by the component and all its child components.

Changing the theme of the entire application can be achieved by changing the name of the root [StyledItem](../Ubuntu.Components.StyledItem/index.html)'s, i.e. [MainView](../Ubuntu.Components.MainView/index.html)'s current theme.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    theme.name: "Ubuntu.Components.Themes.Ambiance"
}
```

By default, styled items inherit the theme they use from their closest styled item ancestor. In case the application uses [MainView](../Ubuntu.Components.MainView/index.html), all components will inherit the theme from the [MainView](../Ubuntu.Components.MainView/index.html).

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    Page {
        title: "Style test"
        Button {
            text: theme.name == "Ubuntu.Components.Themes.Ambiance" ?
                     "SuruDark" : "Ambiance"
            onClicked: theme.name = (text == "Ambiance" ?
                     "Ubuntu.Components.Themes.SuruDark" :
                     "Ubuntu.Components.Themes.Ambiance")
        }
    }
}
```

**Note:** In the example above the Button inherits the theme from Page, which inherits it from [MainView](../Ubuntu.Components.MainView/index.html). Therefore changing the theme name in this way will result in a change of the inherited theme. In case a different theme is desired, a new instance of the [ThemeSettings](index.html) must be created on the styled item desired.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    Page {
        title: "Style test"
        theme: ThemeSettings{}
        Button {
            text: theme.name == "Ubuntu.Components.Themes.Ambiance" ?
                     "SuruDark" : "Ambiance"
            onClicked: theme.name = (text == "Ambiance" ?
                     "Ubuntu.Components.Themes.SuruDark" :
                     "Ubuntu.Components.Themes.Ambiance")
        }
    }
}
```

The style can be set on a [StyledItem](../Ubuntu.Components.StyledItem/index.html) either using [StyledItem::styleName](../Ubuntu.Components.StyledItem/index.html#styleName-prop) or [StyledItem::style](../Ubuntu.Components.StyledItem/index.html#style-prop) properties. When set through [StyledItem::styleName](../Ubuntu.Components.StyledItem/index.html#styleName-prop), the component will load the style from the current theme set, and must be a QML document. The [StyledItem::style](../Ubuntu.Components.StyledItem/index.html#style-prop) property is a Component which can be declared local, or loaded with a Loader or created using Qt.createComponent() function. The following example will create the style with the inherited theme.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
StyledItem {
    styleName: "MyItemStyle"
}
```

All styled toolkit components such as [Button](../Ubuntu.Components.Button/index.html), [CheckBox](../Ubuntu.Components.CheckBox/index.html), [Switch](../Ubuntu.Components.Switch/index.html), etc. create their style in this way. Note that the style component must be part of the theme, otherwise the style creation will fail.

**See also** [StyledItem](../Ubuntu.Components.StyledItem/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The name of the current theme in dotted format i.e. "Ubuntu.Components.Themes.Ambiance".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="palette-prop"></span><span class="name">palette</span> : <span class="type">Palette</span></p></td>
</tr>
</tbody>
</table>

The palette of the current theme. When set, only the valid palette values will be taken into account, which will override the theme defined palette values. The following example will set the system's default theme palette normal background color to Ubuntu blue. All other palette values will be untouched.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes 1.0
MainView {
    // your code
    theme.palette: Palette {
        normal.background: UbuntuColors.blue
    }
}
```

**Note:** Palette values applied on inherited themes will be rolled back once the component declaring the palette is unloaded. This can be demonstracted using a Loader element:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes 1.0
MainView {
    width: units.gu(40)
    height: units.gu(71)
    Loader {
        id: loader
        onItemChanged: if (item) button.theme.palette = item
    }
    Component {
        id: dynamicPalette
        Palette {
            normal.background: UbuntuColors.blue
        }
    }
    Button {
        id: button
        text: "Toggle palette"
        onClicked: {
            if (loader.item) {
                loader.sourceComponent = undefined;
            } else {
                loader.sourceComponent = dynamicPalette;
            }
        }
    }
}
```

The palette doesn't need to be reset as it automatically resets when the palette used for configuration is destroyed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parentTheme-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">parentTheme</span> : <span class="type"><a href="index.html">ThemeSettings</a></span></p></td>
</tr>
</tbody>
</table>

The property specifies the parent [ThemeSettings](index.html) instance.

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
