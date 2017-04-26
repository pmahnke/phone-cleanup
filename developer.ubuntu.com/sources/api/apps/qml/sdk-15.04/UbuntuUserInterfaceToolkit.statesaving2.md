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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04</a> ›
-   <a href="../UbuntuUserInterfaceToolkit/index.html" class="sub-nav-item">UbuntuUserInterfaceToolkit</a> ›

<!-- -->

-   Saving multiple properties

Saving multiple properties
==========================

<span class="subtitle"></span>
<span id="details"></span> <span id="specifying-more-properties"></span>
Specifying more properties
--------------------------

So far we have saved one single property, but as the {[StateSaver::properties](../Ubuntu.Components.StateSaver/index.html#properties-prop)} property name suggests, there can be more properties serialized at the same time. For example, to serialize both color and opacity of a Rectangle, the code would look as follows:

``` qml
Rectangle {
    id: rectangle
    color: "green"
    opacity: 0.9
    StateSaver.properties: "color, opacity"
}
```

**Note** that not all types of properties can be saved. Object types or list models for example are excluded from the types that can be saved, but all properties listed as [QML base types](../QtQml.qtqml-typesystem-basictypes/index.html) can be serialized.

<span id="grouped-properties"></span>
Grouped properties
------------------

Grouped properties, which have serializable types can also be saved. It simply needs to be specified together with the group identifier.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
Rectangle {
    id: root
    width: units.gu(40)
    height: units.gu(71)
    color: "green"
    StateSaver.properties: "color, border.color, border.width"
    Button {
        text: "Change"
        anchors.centerIn: parent
        onClicked: {
            root.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
            root.border.width = units.gu(2) * Math.random(1)
            root.border.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
        }
    }
}
```

<span id="property-groups"></span>
Property groups
---------------

Using the same logic, custom property groups can also be saved.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
Rectangle {
    id: root
    width: units.gu(40)
    height: units.gu(71)
    color: "green"
    StateSaver.properties: "border.color, border.width, innerRect.color"
    property Rectangle innerRect: Rectangle {
        width: units.gu(20)
        height: units.gu(40)
        parent: root
        z: 0
        anchors.centerIn: root
    }
    Button {
        text: "Change"
        anchors.centerIn: parent
        z: 1
        onClicked: {
            root.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
            root.border.width = units.gu(2) * Math.random(1)
            root.border.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
            innerRect.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
        }
    }
}
```

Alternatively, individual properties of the property group can be saved in the following way:

``` qml
property Rectangle innerRect: Rectangle {
    id: inner
    width: units.gu(20)
    height: units.gu(40)
    parent: root
    z: 0
    anchors.centerIn: root
    StateSaver.properties: "color"
}
```

<a href="../UbuntuUserInterfaceToolkit.statesaving3/index.html" class="nextPage">Recap on state saving</a>

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
