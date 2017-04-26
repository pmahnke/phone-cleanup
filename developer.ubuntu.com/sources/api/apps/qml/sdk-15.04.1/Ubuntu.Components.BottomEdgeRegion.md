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
-   [SDK 15.04.1](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   BottomEdgeRegion

BottomEdgeRegion
================

<span class="subtitle"></span>
Defines an active region within the BottomEdge component. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import .</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQml.QtObject/index.html">QtObject</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[contentComponent](index.html#contentComponent-prop)**** : Component
-   ****[contentUrl](index.html#contentUrl-prop)**** : url
-   ****[enabled](index.html#enabled-prop)**** : bool
-   ****[from](index.html#from-prop)**** : real
-   ****[to](index.html#to-prop)**** : real

<span id="signals"></span>
Signals
-------

-   void ****[dragEnded](index.html#dragEnded-signal)****()
-   void ****[entered](index.html#entered-signal)****()
-   void ****[exited](index.html#exited-signal)****()

<span id="details"></span>
Detailed Description
--------------------

Bottom edge regions are portions within the bottom edge area which can define different content or action whenever the drag enters in the area. The area is defined by [from](index.html#from-prop) and [to](index.html#to-prop) properties vertically, whereas horizontally is stretched across bottom edge width. Custom content can be defined through [contentUrl](index.html#contentUrl-prop) or [contentComponent](index.html#contentComponent-prop) properties, which will override the [BottomEdge::contentUrl](../Ubuntu.Components.BottomEdge/index.html#contentUrl-prop) and [BottomEdge::contentComponent](../Ubuntu.Components.BottomEdge/index.html#contentComponent-prop) properties for the time the gesture is in the section area.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(70)
    Page {
        header: PageHeader {
            title: "BottomEdge regions"
        }
        BottomEdge {
            id: bottomEdge
            height: parent.height - units.gu(20)
            hint: BottomEdgeHint {
                text: "My bottom edge"
            }
            // a fake content till we reach the committable area
            contentComponent: Rectangle {
                width: bottomEdge.width
                height: bottomEdge.height
                color: UbuntuColors.green
            }
            // override bottom edge sections to switch to real content
            BottomEdgeRegion {
                from: 0.33
                contentComponent: Page {
                    width: bottomEdge.width
                    height: bottomEdge.height
                    header: PageHeader {
                        title: "BottomEdge Content"
                    }
                }
            }
        }
    }
}
```

Entering into the section area is signalled by the [entered](index.html#entered-signal) signal and when drag leaves the area the [exited](index.html#exited-signal) signal is emitted. If the drag ends within the section area, the [dragEnded](index.html#dragEnded-signal) signal is emitted. In case the section's [to](index.html#to-prop) property is less than 1.0, the bottom edge content will only be exposed to that value, and the [BottomEdge::status](../Ubuntu.Components.BottomEdge/index.html#status-prop) will get the *Committed* value. No further drag is possible after reaching *Commited* state.

**Note:** Whereas there is no restriction on making overlapping sections, beware that overlapping sections changing the content through the [contentUrl](index.html#contentUrl-prop) or [contentComponent](index.html#contentComponent-prop) properties will cause unpredictable results.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentComponent-prop"></span><span class="name">contentComponent</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

Specifies the component defining the section specific content. This propery will temporarily override the [BottomEdge::contentComponent](../Ubuntu.Components.BottomEdge/index.html#contentComponent-prop) property value when the drag gesture enters the section area. The orginal value will be restored once the gesture leaves the section area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentUrl-prop"></span><span class="name">contentUrl</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

Specifies the url to the document defining the section specific content. This propery will temporarily override the [BottomEdge::contentUrl](../Ubuntu.Components.BottomEdge/index.html#contentUrl-prop) property value when the drag gesture enters the section area. The orginal value will be restored once the gesture leaves the section area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Enables the section. Disabled sections do not trigger nor change the [BottomEdge](../Ubuntu.Components.BottomEdge/index.html) content. Defaults to false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="name">from</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Specifies the starting ratio of the bottom erge area. The value must be bigger or equal to 0 but strictly smaller than [to](index.html#to-prop). Defaults to 0.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Specifies the ending ratio of the bottom edge area. The value must be bigger than [from](index.html#from-prop) and smaller or equal to 1.0.

**Note:** If the end point is less than 1.0, ending the drag within the section will result in exposing the bottom edge content only till the ration specified by this property.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragEnded-signal"></span><span class="type">void</span> <span class="name">dragEnded</span>()</p></td>
</tr>
</tbody>
</table>

Signal triggered when the drag ends within the active bottom edge section area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="entered-signal"></span><span class="type">void</span> <span class="name">entered</span>()</p></td>
</tr>
</tbody>
</table>

Signal triggered when the drag enters into the area defined by the bottom edge section.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exited-signal"></span><span class="type">void</span> <span class="name">exited</span>()</p></td>
</tr>
</tbody>
</table>

Signal triggered when the drag leaves the area defined by the bottom edge section.

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
