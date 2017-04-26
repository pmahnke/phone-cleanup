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

-   Layouts - Introduction

Layouts - Introduction
======================

<span class="subtitle"></span>
<span id="details"></span>
QML has the following basic layout primitives:

-   [Column](https://qt-project.org/doc/qt-5.0/qtquick/qml-qtquick2-column.html) - arrange children in a column
-   [Row](https://qt-project.org/doc/qt-5.0/qtquick/qml-qtquick2-row.html) - arrange children in a row
-   [Grid](https://qt-project.org/doc/qt-5.0/qtquick/qml-qtquick2-grid.html) - arrange children in a grid of x columns and y rows
-   [Flow](https://qt-project.org/doc/qt-5.0/qtquick/qml-qtquick2-flow.html) - arrange children side-by-side with wrapping

Unfortunately in a design that needs to work in many different form factors these aren't very flexible on their own as:

1.  not designed to alter size of children - so no form of stretching supported by default.
2.  as a result no way to have contents fill the container (without calculating the width/height of the children manually).

As a result, most applications need to do calculations to size the children correctly in these primitives to fill the whole container.

Qt offers advice to developers on multi-layouts in QML. In summary they recommend: *Application top level page definitions, and reusable component definitions, should use one QML layout definition for the layout structure. This single definition should include the layout design for separate Device Orientations and container Aspect Ratios.*

UIs layouts should be constructed to share as many components as possible. Then on display mode change these shared components can be reparented, reducing number of components to unload/reload and also helping to save state.

Using a Loader to switch the QML for different display modes is slower, and will involve loss of state. Instead the above advice is to use [AnchorChanges](../../sdk-14.10/QtQuick.AnchorChanges/index.html) & [PropertyChanges](../../sdk-14.10/QtQuick.PropertyChanges/index.html) to specify all layouts in one QML document, so switching display mode is dynamic - but admittedly is a painful for all display modes and states that an application may want to support.

[QtQuick Controls](http://doc-snapshot.qt-project.org/qt5-stable/qtquicklayouts/qmlmodule-qtquick-layouts1-qtquick-layouts-1-0.html) introduces the [ColumnLayout](http://doc-snapshot.qt-project.org/qt5-stable/qtquicklayouts/qml-qtquick-layouts1-columnlayout.html), [RowLayout](http://doc-snapshot.qt-project.org/qt5-stable/qtquicklayouts/qml-qtquick-layouts1-rowlayout.html) and [GridLayout](http://doc-snapshot.qt-project.org/qt5-stable/qtquicklayouts/qml-qtquick-layouts1-gridlayout.html) components as well as the [Layout](http://doc-snapshot.qt-project.org/qt5-stable/qtquicklayouts/qml-qtquick-layouts1-layout.html) attached properties, which brings additional layouting possibilities to Qt Quick.

In addition to these, UI toolkit had introduced the Ubuntu.Layouts module to help developers define different layouts for different orientations and form factors, all being possible to be done within the same code base.

This tutorial gives an introduction to layout factoring abilities offered by Ubuntu UI toolkit. It tries to cover few possible layout scenarios, however will not cover advanced scenarios application developers may need.

Tutorial chapters:

1.  [Terminology](../UbuntuUserInterfaceToolkit.ubuntu-layouts1/index.html)
2.  [The first conditional layout](../UbuntuUserInterfaceToolkit.ubuntu-layouts2/index.html)
3.  [Changing the order](../UbuntuUserInterfaceToolkit.ubuntu-layouts3/index.html)
4.  [Lay out a single item differently from others](../UbuntuUserInterfaceToolkit.ubuntu-layouts4/index.html)
5.  [Hiding elements, showing more](../UbuntuUserInterfaceToolkit.ubuntu-layouts5/index.html)
6.  [Overlay items in an item host](../UbuntuUserInterfaceToolkit.ubuntu-layouts6/index.html)
7.  [Defining more layouts for different form factors](../UbuntuUserInterfaceToolkit.ubuntu-layouts7/index.html)

So, let's take them step-by-step...

<a href="../UbuntuUserInterfaceToolkit.ubuntu-layouts1/index.html" class="nextPage">Layouts - Terminology</a>

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
