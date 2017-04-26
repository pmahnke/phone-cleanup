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

-   PathAttribute

PathAttribute
=============

<span class="subtitle"></span>
Specifies how to set an attribute at a given position in a Path More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[name](index.html#name-prop)**** : string
-   ****[value](index.html#value-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The [PathAttribute](index.html) object allows attributes consisting of a name and a value to be specified for various points along a path. The attributes are exposed to the delegate as Attached Properties. The value of an attribute at any particular point along the path is interpolated from the PathAttributes bounding that point.

The example below shows a path with the items scaled to 30% with opacity 50% at the top of the path and scaled 100% with opacity 100% at the bottom. Note the use of the [PathView](../QtQuick.PathView/index.html).iconScale and [PathView](../QtQuick.PathView/index.html).iconOpacity attached properties to set the scale and opacity of the delegate.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/d1166bef-1020-4ee4-af7a-cc16c96a26c7-api/apps/qml/sdk-15.04/QtQuick.PathAttribute/images/declarative-pathattribute.png" /></p></td>
<td><pre class="qml"><code>import QtQuick 2.0
Rectangle {
    width: 240; height: 200
    Component {
        id: delegate
        Item {
            width: 80; height: 80
            scale: PathView.iconScale
            opacity: PathView.iconOpacity
            Column {
                Image { anchors.horizontalCenter: nameText.horizontalCenter; width: 64; height: 64; source: icon }
                Text { id: nameText; text: name; font.pointSize: 16 }
            }
        }
    }
    PathView {
        anchors.fill: parent
        model: ContactModel {}
        delegate: delegate
        path: Path {
            startX: 120; startY: 100
            PathAttribute { name: &quot;iconScale&quot;; value: 1.0 }
            PathAttribute { name: &quot;iconOpacity&quot;; value: 1.0 }
            PathQuad { x: 120; y: 25; controlX: 260; controlY: 75 }
            PathAttribute { name: &quot;iconScale&quot;; value: 0.3 }
            PathAttribute { name: &quot;iconOpacity&quot;; value: 0.5 }
            PathQuad { x: 120; y: 100; controlX: -20; controlY: 75 }
        }
    }
}</code></pre>
<p>(see the <a href="../QtQuick.PathView/index.html">PathView</a> documentation for the specification of ContactModel.qml used for ContactModel above.)</p></td>
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
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the attribute to change.

This attribute will be available to the delegate as [PathView](../QtQuick.PathView/index.html).&lt;name&gt;

Note that using an existing Item property name such as "opacity" as an attribute is allowed. This is because path attributes add a new Attached Property which in no way clashes with existing properties.

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

This property holds the value for the attribute.

The value specified can be used to influence the visual appearance of an item along the path. For example, the following Path specifies an attribute named *itemRotation*, which has the value *0* at the beginning of the path, and the value 90 at the end of the path.

``` qml
Path {
    startX: 0
    startY: 0
    PathAttribute { name: "itemRotation"; value: 0 }
    PathLine { x: 100; y: 100 }
    PathAttribute { name: "itemRotation"; value: 90 }
}
```

In our delegate, we can then bind the *rotation* property to the Attached Property *PathView.itemRotation* created for this attribute.

``` qml
Rectangle {
    width: 10; height: 10
    rotation: PathView.itemRotation
}
```

As each item is positioned along the path, it will be rotated accordingly: an item at the beginning of the path with be not be rotated, an item at the end of the path will be rotated 90 degrees, and an item mid-way along the path will be rotated 45 degrees.

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
