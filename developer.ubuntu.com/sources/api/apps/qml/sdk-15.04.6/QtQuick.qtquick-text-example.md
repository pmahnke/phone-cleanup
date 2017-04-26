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
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Examples - Text

Qt Quick Examples - Text
========================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/0229f93a-5018-4e66-a277-a57ad0a536f4-api/apps/qml/sdk-15.04.6/qtquick-text-example/images/qml-text-example.png)

*Text* is a collection of small QML examples relating to text. Each example is a small QML file, usually containing or emphasizing a particular type or feature. You can run and observe the behavior of each example.

<span id="hello"></span>
Hello
-----

*Hello* shows how to change and animate the letter spacing of a [Text](../QtQuick.qtquick-releasenotes/index.html#text) type. It uses a sequential animation to first animate the font.letterSpacing property from `0` to `50` over three seconds and then move the text to a random position on screen:

``` qml
            SequentialAnimation on font.letterSpacing {
                loops: Animation.Infinite;
                NumberAnimation { from: 0; to: 50; easing.type: Easing.InQuad; duration: 3000 }
                ScriptAction {
                    script: {
                        container.y = (screen.height / 4) + (Math.random() * screen.height / 2)
                        container.x = (screen.width / 4) + (Math.random() * screen.width / 2)
                    }
                }
            }
```

<span id="fonts"></span>
Fonts
-----

*Fonts* shows different ways of using fonts with the [Text](../QtQuick.qtquick-releasenotes/index.html#text) type. Simply by name, using the font.family property directly:

``` qml
            font.family: "Times"
```

or using a [FontLoader](../QtQuick.FontLoader/index.html) type:

``` qml
    FontLoader { id: fixedFont; name: "Courier" }
```

or using a [FontLoader](../QtQuick.FontLoader/index.html) and specifying a local font file:

``` qml
    FontLoader { id: localFont; source: "content/fonts/tarzeau_ocr_a.ttf" }
```

or finally using a [FontLoader](../QtQuick.FontLoader/index.html) and specifying a remote font file:

``` qml
    FontLoader { id: webFont; source: "http://www.princexml.com/fonts/steffmann/Starburst.ttf" }
```

<span id="available-fonts"></span>
Available Fonts
---------------

*Available Fonts* shows how to use the QML Qt global object and a list view to display all the fonts available on the system. The [ListView](../QtQuick.ListView/index.html) type uses the list of fonts available as its model:

``` qml
        model: Qt.fontFamilies()
```

Inside the delegate, the font family is set with the modelData:

``` qml
                font.family: modelData
```

<span id="banner"></span>
Banner
------

*Banner* is a simple example showing how to create a banner using a row of text types and a [NumberAnimation](../QtQuick.NumberAnimation/index.html).

<span id="img-tag"></span>
Img Tag
-------

*Img tag* shows different ways of displaying images in text objects using the `<img>` tag.

<span id="text-layout"></span>
Text Layout
-----------

*Text Layout* shows how to create a more complex layout for a text item. This example lays out the text in two columns using the onLineLaidOut handler that allows you to position and resize each line:

``` qml
        onLineLaidOut: {
            line.width = width / 2  - (margin)
            if (line.y + line.height >= height) {
                line.y -= height - margin
                line.x = width / 2 + margin
            }
        }
```

Files:

-   text/styledtext-layout.qml
-   text/text.qml
-   text/fonts/availableFonts.qml
-   text/fonts/banner.qml
-   text/fonts/fonts.qml
-   text/fonts/hello.qml
-   text/imgtag/TextWithImage.qml
-   text/imgtag/imgtag.qml
-   text/textselection/textselection.qml
-   text/main.cpp
-   text/text.pro
-   text/text.qmlproject
-   text/text.qrc

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
