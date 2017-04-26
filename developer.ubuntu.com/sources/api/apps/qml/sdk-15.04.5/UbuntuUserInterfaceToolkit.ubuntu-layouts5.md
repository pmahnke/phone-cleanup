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

-   Layouts - Hiding elements, showing more

Layouts - Hiding elements, showing more
=======================================

<span class="subtitle"></span>
<span id="details"></span>
Till this point we know how to define a layout block, what is the default layout, how to create layout, how to define the container and how to define the hosted elements and how to define item hosts to lay out individual items.

There can be situations when for certain layouts we don't want to transfer all the components of a default layout. More, there can be situations when we want to show more components when we have more space to our disposal. Perhaps we want to provide more functionality when the phone is turned from portrait to landscape (typical use case is a Calculator application which on portrait is a simple calculator but on landscape provides scientific calculator functions). In the following we will define two layouts where we cover both use cases.

<span id="hiding-components"></span>
Hiding components
-----------------

Let's create a layout where we only show the red and green buttons. This can be achieved by specifying only those components to be hosted by the container.

``` qml
ConditionalLayout {
    name: "row"
    when: layouts.width > units.gu(50)
    Row {
        anchors.fill: parent
        ItemLayout {
            item: "red"
            width: parent.width / 2
            height: units.gu(20)
        }
        ItemLayout {
            item: "green"
            width: parent.width / 2
            height: units.gu(20)
        }
    }
}
```

The layout when the block width exceeds 50 GU will look like this:

![](https://developer.ubuntu.com/static/devportal_uploaded/f6758f33-ddc5-43c3-a172-55f9c4496769-api/apps/qml/sdk-15.04.5/ubuntu-layouts5/images/layout6.png)

<span id="showing-more-content"></span>
Showing more content
--------------------

Another use case is to show extra content in a different layout/form factor. These components can simply be declared inside the layout itself, assuming that those are not going to be used in any other layout. If yes, those must also be declared in the default layout in order to preserve their state, or other modalities to transfer the component state must be used. Let's create a layout which will be activated when the layout block width exceeds 70 GU.

``` qml
ConditionalLayout {
    name: "flow"
    when: layouts.width > units.gu(70)
    Flow {
        anchors.fill: parent
        ItemLayout {
            item: "red"
            width: units.gu(20)
            height: units.gu(20)
        }
        ItemLayout {
            item: "green"
            width: units.gu(20)
            height: units.gu(20)
        }
        ItemLayout {
            item: "blue"
            width: units.gu(20)
            height: units.gu(20)
        }
        Button {
            text: "Flow item"
            width: units.gu(20)
            height: units.gu(20)
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/63533016-8466-40ec-90b1-cc7cd28dfc55-api/apps/qml/sdk-15.04.5/ubuntu-layouts5/images/layout6-2.png)

<a href="../UbuntuUserInterfaceToolkit.ubuntu-layouts6/index.html" class="nextPage">Layouts - Overlay items in an item host</a>

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
