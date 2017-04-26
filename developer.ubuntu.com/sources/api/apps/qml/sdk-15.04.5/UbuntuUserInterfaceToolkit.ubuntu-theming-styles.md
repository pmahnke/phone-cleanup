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

-   Styles

Styles
======

<span class="subtitle"></span>
<span id="details"></span> <span id="naming-conventions"></span>
### Naming conventions

With few exception, each toolkit component is having [StyledItem](../Ubuntu.Components.StyledItem/index.html) as its base component. The component is aimed to be the base component for all styled elements in the toolkit. Modules providing additional components to UI Toolkit can also use this component as base, especially if they want to provide styling capabilities.

As mentioned, each styled component is having a style pair in a theme which is implemented in a document named using the component name adding the *Style* word. The [Button](../Ubuntu.Components.Button/index.html)'s style is implemented by `ButtonStyle.qml` document in the theme, and [Button](../Ubuntu.Components.Button/index.html) is loading this style from the theme:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
AbstractButton {
    id: button
    // [...]
    styleName: "ButtonStyle"
}
```

Developers can override the style in two ways, depending on how they want to style the component:

-   1. by overriding the style using an other style component from the theme, or
-   2. by overriding the style with a custom style component.

But let's see first how the styles are implemented.

<span id="creating-styles"></span>
### Creating styles

As mentioned before, styles are not restricted to only provide visuals to a component or set of components, but can have also logic which drives the component functionality. These kind of styles must implement the given component's style API, listed in `Ubuntu.Components.Styles` module.

A good example of such a style is the [ListItemStyle](../Ubuntu.Components.Styles.ListItemStyle/index.html). The [ListItem](../Ubuntu.Components.ListItem/index.html) drives the style animation through the [ListItemStyle::animatePanels](../Ubuntu.Components.Styles.ListItemStyle/index.html#animatePanels-prop) property, value being false when the style is loaded during component creation, i.e. when the component requires some visuals to be present at creation time. Also, [ListItem](../Ubuntu.Components.ListItem/index.html) informs the style when to execute leading or trailing panel [rebound](../Ubuntu.Components.Styles.ListItemStyle/index.html#rebound-method)s and provides the style the ability to overrule the [swipe](../Ubuntu.Components.Styles.ListItemStyle/index.html#swipeEvent-method) coordinates calculated by the [ListItem](../Ubuntu.Components.ListItem/index.html). On the other hand, the style must inform the component about the position of the [drag panel](../Ubuntu.Components.Styles.ListItemStyle/index.html#dragPanel-prop) so the dragging (reordering of list items in a [ListView](../../sdk-14.10/QtQuick.ListView/index.html)) hot spot can be detected. A style implementation must use the API provided by [ListItemStyle](../Ubuntu.Components.Styles.ListItemStyle/index.html), otherwise [ListItem](../Ubuntu.Components.ListItem/index.html) will fail to function properly.

Other styles are requested to provide additional *content* elements, which are then positioned by the styled component separately from the main visuals given by the style. A typical example of such a style API is the [PullToRefresh](../Ubuntu.Components.PullToRefresh/index.html) component's style:

``` qml
Item {
    /*!
      The property holds the style provided default content component. The value
      is assigned to the \l PullToRefresh::content property.
      */
    property Component defaultContent
    /*!
      The property holds the threshold value when the component should enter
      into \a ready-to-refresh state when dragged manually. The default value
      is the height of the component styled.
      */
    property real activationThreshold: styledItem.height
    /*!
      The property informs the component when a manual refresh can be triggered.
      Style implementations (themes) can decide when to flip the component to be
      ready to trigger reftesh signal.
      */
    property bool releaseToRefresh: false
}
```

The default style implementation can be found under Ubuntu.Components.Themes.Ambiance theme [PullToRefreshStyle.qml](http://bazaar.launchpad.net/~ubuntu-sdk-team/ubuntu-ui-toolkit/trunk/view/head:/src/Ubuntu/Components/Themes/Ambiance/1.3/PullToRefreshStyle.qml).

Beside these, component styles may provide default values for colors, fonts, widths, margins, thicknesses.

Each style component has a `styledItem` context property defined by the [StyledItem](../Ubuntu.Components.StyledItem/index.html), which points to the [StyledItem](../Ubuntu.Components.StyledItem/index.html) instance that uses the style. Style implementations can access the actual styled item through this property.

<span id="overriding-the-default-component-style"></span>
### Overriding the default component style

<span id="override-with-a-different-style-from-the-theme"></span>
#### Override with a different style from the theme

Returning back to the ways to override a component's style, overriding by using a different style from the theme can simply be done by assigning the document name to the [StyledItem.styleName](../Ubuntu.Components.StyledItem/index.html#styleName-prop) property as follows:

``` qml
Button {
    id: button
    styleName: "SquaryButtonStyle"
}
```

**Note:** The document extension doesn't have to be specified, the style creation will automatically append the .qml extension to it. This kind of style override assumes that the `SquaryButtonStyle.qml` document is present in the theme. This type of component styling makes sure the style will always have theme specific implementation or coloring, however it also requires the style document to be present in all the themes used by the application.

<span id="override-with-a-custom-component"></span>
#### Override with a custom component

The other way is to override the style with a local component not present in any theme. The style component can be in-source (Component) or declared in a separate document, loaded dynamically with Loader or Qt.createComponent(). This kind of override will make sure the component will use the custom style no matter of the theme used. These styles however can still use the theme palette to be in sync with the theme coloring.

``` qml
Button {
    id: button
    style: Rectangle {
        implicitWidth: units.gu(12)
        implicitHeight: units.gu(5)
        color: styledItem.color
        border {
            width: units.dp(1)
            color: styledItem.strokeColor
        }
        Label {
            text: styledItem.text
            font: styledItem.font
        }
    }
}
```

**Note:** Specifying a component for the [StyledItem.style](../Ubuntu.Components.StyledItem/index.html#style-prop) has precedence over the [StyledItem::styleName](../Ubuntu.Components.StyledItem/index.html#styleName-prop). When both set, the stlke specified `style` property will be used. When this property is set to undefined or null, the style specified in `styleName` will be used. Obviously, when both properties are invalid, no style will be used.

<a href="../UbuntuUserInterfaceToolkit.ubuntu-theming/index.html" class="prevPage">Introduction</a>
<a href="../UbuntuUserInterfaceToolkit.ubuntu-theming-themes/index.html" class="nextPage">Themes</a>

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
