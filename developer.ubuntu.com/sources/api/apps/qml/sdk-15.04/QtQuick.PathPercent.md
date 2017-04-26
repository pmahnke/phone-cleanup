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
-   [SDK 15.04](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   PathPercent

PathPercent
===========

<span class="subtitle"></span>
Manipulates the way a path is interpreted More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[value](index.html#value-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[PathPercent](index.html) allows you to manipulate the spacing between items on a [PathView](../QtQuick.PathView/index.html)'s path. You can use it to bunch together items on part of the path, and spread them out on other parts of the path.

The examples below show the normal distribution of items along a path compared to a distribution which places 50% of the items along the [PathLine](../QtQuick.PathLine/index.html) section of the path.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/d17fb84b-06a9-4456-b182-f2c650e66b29-api/apps/qml/sdk-15.04/QtQuick.PathPercent/images/declarative-nopercent.png" /></p></td>
<td><pre class="qml"><code>PathView {
    // ...
    Path {
        startX: 20; startY: 0
        PathQuad { x: 50; y: 80; controlX: 0; controlY: 80 }
        PathLine { x: 150; y: 80 }
        PathQuad { x: 180; y: 0; controlX: 200; controlY: 80 }
    }
}</code></pre></td>
</tr>
<tr class="even">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/7786c40c-6619-4f03-84af-cee8acbc94fd-api/apps/qml/sdk-15.04/QtQuick.PathPercent/images/declarative-percent.png" /></p></td>
<td><pre class="qml"><code>PathView {
    // ...
    Path {
        startX: 20; startY: 0
        PathQuad { x: 50; y: 80; controlX: 0; controlY: 80 }
        PathPercent { value: 0.25 }
        PathLine { x: 150; y: 80 }
        PathPercent { value: 0.75 }
        PathQuad { x: 180; y: 0; controlX: 200; controlY: 80 }
        PathPercent { value: 1 }
    }
}</code></pre></td>
</tr>
</tbody>
</table>

**See also** [Path](../QtQuick.Path/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The proportion of items that should be laid out up to this point.

This value should always be higher than the last value specified by a [PathPercent](index.html) at a previous position in the Path.

In the following example we have a Path made up of three PathLines. Normally, the items of the [PathView](../QtQuick.PathView/index.html) would be laid out equally along this path, with an equal number of items per line segment. [PathPercent](index.html) allows us to specify that the first and third lines should each hold 10% of the laid out items, while the second line should hold the remaining 80%.

``` qml
PathView {
    // ...
    Path {
        startX: 0; startY: 0
        PathLine { x:100; y: 0; }
        PathPercent { value: 0.1 }
        PathLine { x: 100; y: 100 }
        PathPercent { value: 0.9 }
        PathLine { x: 100; y: 0 }
        PathPercent { value: 1 }
    }
}
```

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