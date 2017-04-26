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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.3</a> ›
-   <a href="../UbuntuUserInterfaceToolkit/index.html" class="sub-nav-item">UbuntuUserInterfaceToolkit</a> ›

<!-- -->

-   Resolution Independence

Resolution Independence
=======================

<span class="subtitle"></span>
<span id="details"></span>
The objective of resolution independence is to make it easy for graphical user interfaces in Ubuntu to scale to all the form factors that Ubuntu targets: phones, tablets, laptops and desktops. The approach taken combines simplicity for the designers and developers with visual fidelity, quality and usability.

<span id="measurement-units"></span> Measurement Units
A new measurement unit is defined called the grid unit, abbreviated ***gu***. 1 grid unit translates to a given number of pixels depending on the type of screen that the user interface is displayed on. For example, on a laptop computer 1 grid unit will typically translate to 8 pixels. The number of pixels per grid unit is chosen in order to preserve the perceived visual size of UI elements and therefore depends on the density of the display and the distance the user is to the screen. We also ensure that 1 grid unit is always an integer number of pixel.

Examples:

| Device                                                                | Conversion   |
|-----------------------------------------------------------------------|--------------|
| Most laptops                                                          | 1 gu = 8 px  |
| Retina laptops                                                        | 1 gu = 16 px |
| Phone with 4 inch screen at HD resolution (around 720x1,280 pixels)   | 1 gu = 18 px |
| Tablet with 10 inch screen at HD resolution (around 720x1,280 pixels) | 1 gu = 10 px |

The grid unit defines a visual rhythm in Ubuntu and should be used for all measurements. Sizes of elements, spacing, margins, etc. should all use multiples of 1 gu.

It is available from QML as a method of the global object **units**, instance of [Units](../Ubuntu.Components.Units/index.html).

Example Usage:

``` cpp
import Ubuntu.Components 1.2
Item {
    width: units.gu(2)
    height: units.gu(5)
}
```

Exceptionally, in order to accommodate for the rare cases where measurements of less than 1 gu are needed another unit is available: the density independent pixel, abbreviated ***dp***. 1 dp typically translates to 1 pixel on laptops and low density mobile phones and tablets.

Example Usage:

``` cpp
import Ubuntu.Components 1.2
Rectangle {
    height: units.dp(1)
}
```

<span id="bitmaps"></span> Bitmaps
Vector graphics, fonts and programmatically drawn elements will usually scale well to the different devices. On the other hand, bitmaps will typically require a bit more care.

The size of a bitmap needs to be adequate to render well on a given device. The toolkit allows to design multiple versions of a bitmap and choose the appropriate one dynamically depending on the device the application is being run on. In order to know for what target device a given version of a bitmap was produced, we define a file naming convention based on the number of pixel per grid unit of the device.

Example:

If the target device the bitmap is produced for has 10 pixels per grid unit, then the file name of the bitmap should be suffixed with @10: *my\_bitmap.png* should be renamed to *my\_bitmap@10.png*.

In order to support the highest possible resolution devices on the market, we recommend to always design bitmaps for a device that would have 30 pixels per grid unit (@30 suffix). The system will perform a high quality downscaling of the bitmap when needed on lower resolution screens.

Example:

If the destination size of the bitmap is 10 gu \* 10 gu and the developer targets a device that has 18 pixels per grid unit (1 gu = 18 px), the bitmap should still be created as if 1 gu = 30 px which results in a 300 px \* 300 px bitmap. When testing on the device the bitmap will be downscaled by a factor of 30 / 18 = 1.66667.

<span id="fonts"></span> Fonts
It is critical for the font sizes to be consistent across Ubuntu and to have a rhythm defining them. Instead of setting the font size in pixels or points, it is imperative to define the font size in terms of literals:

|             |
|-------------|
| **x-large** |
| **large**   |
| **medium**  |
| **small**   |
| **x-small** |

Example Usage:

``` cpp
import Ubuntu.Components 1.2
Label {
    fontSize: "small"
}
```

For reference when designing, these sizes correspond to the following pixel measurements:

| Font Size     | Desktop | Smart Phone with 4" HD screen | Tablet with 10" HD screen |
|---------------|---------|-------------------------------|---------------------------|
| ***x-large*** | 34 px   | 76 px                         | 42 px                     |
| ***large***   | 20 px   | 45 px                         | 25 px                     |
| ***medium***  | 14 px   | 31 px                         | 18 px                     |
| ***small***   | 12 px   | 27 px                         | 15 px                     |
| ***x-small*** | 10 px   | 22 px                         | 12 px                     |

<a href="../UbuntuUserInterfaceToolkit.overview-ubuntu-sdk/index.html" class="nextPage">Ubuntu User Interface Toolkit</a>

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
