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
-   [SDK 14.10](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   PropertyAnimation

PropertyAnimation
=================

<span class="subtitle"></span>
Animates changes in property values More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import QtQuick 2.2</code></td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../QtQuick.Animation/index.html">Animation</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="../QtQuick.ColorAnimation/index.html">ColorAnimation</a>, <a href="../QtQuick.NumberAnimation/index.html">NumberAnimation</a>, <a href="../QtQuick.RotationAnimation/index.html">RotationAnimation</a>, and <a href="../QtQuick.Vector3dAnimation/index.html">Vector3dAnimation</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[duration](index.html#duration-prop)**** : int
-   ****[easing](index.html#easing-prop)****
    -   ****[easing.type](index.html#easing.type-prop)**** : enumeration
    -   ****[easing.amplitude](index.html#easing.amplitude-prop)**** : real
    -   ****[easing.overshoot](index.html#easing.overshoot-prop)**** : real
    -   ****[easing.period](index.html#easing.period-prop)**** : real
    -   ****[easing.bezierCurve](index.html#easing.bezierCurve-prop)**** : list&lt;real&gt;
-   ****[exclude](index.html#exclude-prop)**** : list&lt;Object&gt;
-   ****[from](index.html#from-prop)**** : variant
-   ****[properties](index.html#properties-prop)**** : string
-   ****[property](index.html#property-prop)**** : string
-   ****[target](index.html#target-prop)**** : Object
-   ****[targets](index.html#targets-prop)**** : list&lt;Object&gt;
-   ****[to](index.html#to-prop)**** : variant

<span id="details"></span>
Detailed Description
--------------------

PropertyAnimation provides a way to animate changes to a property's value.

It can be used to define animations in a number of ways:

-   In a [Transition](../QtQuick.Transition/index.html)

    For example, to animate any objects that have changed their `x` or `y` properties as a result of a state change, using an `InOutQuad` easing curve:

    ``` qml
    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        states: State {
            name: "moved"
            PropertyChanges { target: rect; x: 50 }
        }
        transitions: Transition {
            PropertyAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
        }
    }
    ```

-   In a [Behavior](../QtQuick.Behavior/index.html)

    For example, to animate all changes to a rectangle's `x` property:

    ``` qml
    Rectangle {
        width: 100; height: 100
        color: "red"
        Behavior on x { PropertyAnimation {} }
        MouseArea { anchors.fill: parent; onClicked: parent.x = 50 }
    }
    ```

-   As a property value source

    For example, to repeatedly animate the rectangle's `x` property:

    ``` qml
    Rectangle {
        width: 100; height: 100
        color: "red"
        SequentialAnimation on x {
            loops: Animation.Infinite
            PropertyAnimation { to: 50 }
            PropertyAnimation { to: 0 }
        }
    }
    ```

-   In a signal handler

    For example, to fade out `theObject` when clicked:

    ``` qml
    MouseArea {
        anchors.fill: theObject
        onClicked: PropertyAnimation { target: theObject; property: "opacity"; to: 0 }
    }
    ```

-   Standalone

    For example, to animate `rect`'s `width` property over 500ms, from its current width to 30:

    ``` qml
    Rectangle {
        id: theRect
        width: 100; height: 100
        color: "red"
        // this is a standalone animation, it's not running by default
        PropertyAnimation { id: animation; target: theRect; property: "width"; to: 30; duration: 500 }
        MouseArea { anchors.fill: parent; onClicked: animation.running = true }
    }
    ```

Depending on how the animation is used, the set of properties normally used will be different. For more information see the individual property documentation, as well as the [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) introduction.

Note that PropertyAnimation inherits the abstract [Animation](../QtQuick.Animation/index.html) type. This includes additional properties and methods for controlling the animation.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) and [Qt Quick Examples - Animation](https://developer.ubuntu.com/api/apps/qml/sdk-14.10/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="duration-prop"></span><span class="name">duration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the duration of the animation, in milliseconds.

The default value is 250.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="easing-prop"></span><strong>easing group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="easing.type-prop"></span><span class="name">easing.type</span> : <span class="type">enumeration</span></p></td>
</tr>
<tr class="even">
<td><p><span id="easing.amplitude-prop"></span><span class="name">easing.amplitude</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="easing.overshoot-prop"></span><span class="name">easing.overshoot</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="easing.period-prop"></span><span class="name">easing.period</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="easing.bezierCurve-prop"></span><span class="name">easing.bezierCurve</span> : <span class="type">list</span>&lt;<span class="type">real</span>&gt;</p></td>
</tr>
</tbody>
</table>

//! propertyanimation.easing

Specifies the easing curve used for the animation

To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period and/or overshoot (more details provided after the table). The default easing curve is `Easing.Linear`.

``` qml
PropertyAnimation { properties: "y"; easing.type: Easing.InOutElastic; easing.amplitude: 2.0; easing.period: 1.5 }
```

Available types are:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code>Easing.Linear</code></td>
<td>Easing curve for a linear (t) function: velocity is constant.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/2c80d87d-73c3-432c-80b9-e630aaf119de-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-linear.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/aca59338-7f5e-44a7-8c64-87317d0d9dc4-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/4906ba89-1787-4991-ac52-67bfbeb88b3f-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/d2cee9a9-49b3-415a-a799-d801f1783007-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/75dcf082-73aa-4789-981e-b677f58f9919-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outinquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCubic</code></td>
<td>Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/db7f81dd-aee4-480f-b465-4848120f786c-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-incubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b3e09693-fe8f-4b68-b735-0a66bff10010-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outcubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/6b0addf1-d85f-4f6e-9270-2d7f9fb7c406-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inoutcubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCubic</code></td>
<td>Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/4bef43e0-1cea-47a9-9983-5fdd0df277e2-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outincubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuart</code></td>
<td>Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/39c0c4ca-9dd5-4734-8b6f-df52aa958308-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/86e083bd-00f9-4f45-ad93-3daf2dbe5daf-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/5063de1e-d513-4deb-9786-db059a62caeb-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuart</code></td>
<td>Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/4fff36ac-8040-4a5d-addd-692ccc33857d-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outinquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuint</code></td>
<td>Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/58443d55-5349-4468-8273-5dc12446f88c-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/c2da256a-6e00-4cef-a1d3-265edbe9ef6d-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a567986b-60b0-4911-82cd-4e9b56977bb1-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuint</code></td>
<td>Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/f00e600d-fb29-4bf2-bd73-3547449f65b7-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outinquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/678cc879-5b8e-4808-b52b-e7a5399930d3-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-insine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a0a6fac8-eeaa-4167-ac6c-688c6193ab11-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/c9b9f5d1-f00f-47c3-88a9-b5f77f060f76-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inoutsine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/9f82d14d-9406-4eb6-b652-54eef262e3c2-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outinsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InExpo</code></td>
<td>Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/f715da9a-6f2e-4b55-899a-b950d475d89c-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/161272ad-1261-406c-85c2-702f4294fe15-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/d52be0d2-56be-4eac-bee7-399b557e7bf7-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inoutexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInExpo</code></td>
<td>Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/739f03ed-e669-4803-a6be-b8b3307c4d07-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outinexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/52be1464-8876-4c2e-9d63-e0cd3e221ec5-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-incirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/4166ca1b-a29d-4b9f-829e-8182bae43d9b-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outcirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e6f06caa-e949-4115-8f2c-b282f5bc3873-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inoutcirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/9cfb1132-57a4-4217-b293-309a4144ecf2-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outincirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity.<br />

<p>The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</p></td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/c07b9a40-aea5-4ed6-a8fe-582b349fac21-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity.<br />

<p>The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</p></td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/767d9ecc-bddd-4216-b9d9-be05053728d5-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/251a7329-8f3a-4e88-8f12-cb8852299a21-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inoutelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a309813d-e1fd-44bd-9ffc-03b2055a4b8a-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outinelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/cbc052a9-bf88-43e1-a9fb-5b52f4f6266a-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e76a9885-df02-4444-8f28-859db852eb29-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b826fdcf-6de9-4fc1-bb97-cb5b8936afbf-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inoutback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBack</code></td>
<td>Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b51d9e6c-c2a3-4595-ad6c-246cd051b583-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outinback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/8dfbff17-2cc8-4063-b750-a7ba665b5f66-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/18f32ae4-b430-42bb-aa9a-f2154086159d-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outbounce.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/9ae207c2-9091-4576-afe5-6bad66ab016b-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-inoutbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/751759c6-a623-4ed4-bee5-ded2938b49c4-api/apps/qml/sdk-14.10/QtQuick.PropertyAnimation/images/qeasingcurve-outinbounce.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.Bezier</code></td>
<td>Custom easing curve defined by the easing.bezierCurve property.</td>
<td></td>
</tr>
</tbody>
</table>

`easing.amplitude` is only applicable for bounce and elastic curves (curves of type `Easing.InBounce`, `Easing.OutBounce`, `Easing.InOutBounce`, `Easing.OutInBounce`, `Easing.InElastic`, `Easing.OutElastic`, `Easing.InOutElastic` or `Easing.OutInElastic`).

`easing.overshoot` is only applicable if `easing.type` is: `Easing.InBack`, `Easing.OutBack`, `Easing.InOutBack` or `Easing.OutInBack`.

`easing.period` is only applicable if easing.type is: `Easing.InElastic`, `Easing.OutElastic`, `Easing.InOutElastic` or `Easing.OutInElastic`.

`easing.bezierCurve` is only applicable if easing.type is: `Easing.Bezier`. This property is a list&lt;real&gt; containing groups of three points defining a curve from 0,0 to 1,1 - control1, control2, end point: \[cx1, cy1, cx2, cy2, endx, endy, ...\]. The last point must be 1,1.

See the easing example for a demonstration of the different easing settings. //! propertyanimation.easing

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exclude-prop"></span><span class="name">exclude</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the items not to be affected by this animation.

**See also** [PropertyAnimation::targets](index.html#targets-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="name">from</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the starting value for the animation.

If the [PropertyAnimation](index.html) is defined within a [Transition](../QtQuick.Transition/index.html) or [Behavior](../QtQuick.Behavior/index.html), this value defaults to the value defined in the starting state of the [Transition](../QtQuick.Transition/index.html), or the current value of the property at the moment the [Behavior](../QtQuick.Behavior/index.html) is triggered.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="properties-prop"></span><span class="name">properties</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g.

``` qml
NumberAnimation { target: theItem; property: "x"; to: 500 }
```

has the same meaning as

``` qml
NumberAnimation { targets: theItem; properties: "x"; to: 500 }
```

The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.

The `targets` property allows multiple targets to be set. For example, this animates the `x` property of both `itemA` and `itemB`:

``` qml
NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }
```

In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Value Source / Behavior</td>
<td>When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       NumberAnimation on x { to: 500; loops: Animation.Infinite } //animate theRect&#39;s x property
       Behavior on y { NumberAnimation {} } //animate theRect&#39;s y property
   }</code></pre></td>
</tr>
<tr class="even">
<td>Transition</td>
<td>When used in a transition, a property animation is assumed to match <em>all</em> targets but <em>no</em> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       Item { id: uselessItem }
       states: State {
           name: &quot;state1&quot;
           PropertyChanges { target: theRect; x: 200; y: 200; z: 4 }
           PropertyChanges { target: uselessItem; x: 10; y: 10; z: 2 }
       }
       transitions: Transition {
           //animate both theRect&#39;s and uselessItem&#39;s x and y to their final values
           NumberAnimation { properties: &quot;x,y&quot; }
           //animate theRect&#39;s z to its final value
           NumberAnimation { target: theRect; property: &quot;z&quot; }
       }
   }</code></pre></td>
</tr>
<tr class="odd">
<td>Standalone</td>
<td>When an animation is used standalone, both the target and property need to be explicitly specified.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       //need to explicitly specify target and property
       NumberAnimation { id: theAnim; target: theRect; property: &quot;x&quot;; to: 500 }
       MouseArea {
           anchors.fill: parent
           onClicked: theAnim.start()
       }
   }</code></pre></td>
</tr>
</tbody>
</table>

As seen in the above example, properties is specified as a comma-separated string of property names to animate.

**See also** [exclude](index.html#exclude-prop) and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="property-prop"></span><span class="name">property</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g.

``` qml
NumberAnimation { target: theItem; property: "x"; to: 500 }
```

has the same meaning as

``` qml
NumberAnimation { targets: theItem; properties: "x"; to: 500 }
```

The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.

The `targets` property allows multiple targets to be set. For example, this animates the `x` property of both `itemA` and `itemB`:

``` qml
NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }
```

In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Value Source / Behavior</td>
<td>When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       NumberAnimation on x { to: 500; loops: Animation.Infinite } //animate theRect&#39;s x property
       Behavior on y { NumberAnimation {} } //animate theRect&#39;s y property
   }</code></pre></td>
</tr>
<tr class="even">
<td>Transition</td>
<td>When used in a transition, a property animation is assumed to match <em>all</em> targets but <em>no</em> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       Item { id: uselessItem }
       states: State {
           name: &quot;state1&quot;
           PropertyChanges { target: theRect; x: 200; y: 200; z: 4 }
           PropertyChanges { target: uselessItem; x: 10; y: 10; z: 2 }
       }
       transitions: Transition {
           //animate both theRect&#39;s and uselessItem&#39;s x and y to their final values
           NumberAnimation { properties: &quot;x,y&quot; }
           //animate theRect&#39;s z to its final value
           NumberAnimation { target: theRect; property: &quot;z&quot; }
       }
   }</code></pre></td>
</tr>
<tr class="odd">
<td>Standalone</td>
<td>When an animation is used standalone, both the target and property need to be explicitly specified.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       //need to explicitly specify target and property
       NumberAnimation { id: theAnim; target: theRect; property: &quot;x&quot;; to: 500 }
       MouseArea {
           anchors.fill: parent
           onClicked: theAnim.start()
       }
   }</code></pre></td>
</tr>
</tbody>
</table>

As seen in the above example, properties is specified as a comma-separated string of property names to animate.

**See also** [exclude](index.html#exclude-prop) and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g.

``` qml
NumberAnimation { target: theItem; property: "x"; to: 500 }
```

has the same meaning as

``` qml
NumberAnimation { targets: theItem; properties: "x"; to: 500 }
```

The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.

The `targets` property allows multiple targets to be set. For example, this animates the `x` property of both `itemA` and `itemB`:

``` qml
NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }
```

In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Value Source / Behavior</td>
<td>When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       NumberAnimation on x { to: 500; loops: Animation.Infinite } //animate theRect&#39;s x property
       Behavior on y { NumberAnimation {} } //animate theRect&#39;s y property
   }</code></pre></td>
</tr>
<tr class="even">
<td>Transition</td>
<td>When used in a transition, a property animation is assumed to match <em>all</em> targets but <em>no</em> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       Item { id: uselessItem }
       states: State {
           name: &quot;state1&quot;
           PropertyChanges { target: theRect; x: 200; y: 200; z: 4 }
           PropertyChanges { target: uselessItem; x: 10; y: 10; z: 2 }
       }
       transitions: Transition {
           //animate both theRect&#39;s and uselessItem&#39;s x and y to their final values
           NumberAnimation { properties: &quot;x,y&quot; }
           //animate theRect&#39;s z to its final value
           NumberAnimation { target: theRect; property: &quot;z&quot; }
       }
   }</code></pre></td>
</tr>
<tr class="odd">
<td>Standalone</td>
<td>When an animation is used standalone, both the target and property need to be explicitly specified.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       //need to explicitly specify target and property
       NumberAnimation { id: theAnim; target: theRect; property: &quot;x&quot;; to: 500 }
       MouseArea {
           anchors.fill: parent
           onClicked: theAnim.start()
       }
   }</code></pre></td>
</tr>
</tbody>
</table>

As seen in the above example, properties is specified as a comma-separated string of property names to animate.

**See also** [exclude](index.html#exclude-prop) and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targets-prop"></span><span class="name">targets</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g.

``` qml
NumberAnimation { target: theItem; property: "x"; to: 500 }
```

has the same meaning as

``` qml
NumberAnimation { targets: theItem; properties: "x"; to: 500 }
```

The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.

The `targets` property allows multiple targets to be set. For example, this animates the `x` property of both `itemA` and `itemB`:

``` qml
NumberAnimation { targets: [itemA, itemB]; properties: "x"; to: 500 }
```

In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Value Source / Behavior</td>
<td>When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       NumberAnimation on x { to: 500; loops: Animation.Infinite } //animate theRect&#39;s x property
       Behavior on y { NumberAnimation {} } //animate theRect&#39;s y property
   }</code></pre></td>
</tr>
<tr class="even">
<td>Transition</td>
<td>When used in a transition, a property animation is assumed to match <em>all</em> targets but <em>no</em> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       Item { id: uselessItem }
       states: State {
           name: &quot;state1&quot;
           PropertyChanges { target: theRect; x: 200; y: 200; z: 4 }
           PropertyChanges { target: uselessItem; x: 10; y: 10; z: 2 }
       }
       transitions: Transition {
           //animate both theRect&#39;s and uselessItem&#39;s x and y to their final values
           NumberAnimation { properties: &quot;x,y&quot; }
           //animate theRect&#39;s z to its final value
           NumberAnimation { target: theRect; property: &quot;z&quot; }
       }
   }</code></pre></td>
</tr>
<tr class="odd">
<td>Standalone</td>
<td>When an animation is used standalone, both the target and property need to be explicitly specified.
<pre class="qml"><code>   Rectangle {
       id: theRect
       width: 100; height: 100
       color: Qt.rgba(0,0,1)
       //need to explicitly specify target and property
       NumberAnimation { id: theAnim; target: theRect; property: &quot;x&quot;; to: 500 }
       MouseArea {
           anchors.fill: parent
           onClicked: theAnim.start()
       }
   }</code></pre></td>
</tr>
</tbody>
</table>

As seen in the above example, properties is specified as a comma-separated string of property names to animate.

**See also** [exclude](index.html#exclude-prop) and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the end value for the animation.

If the [PropertyAnimation](index.html) is defined within a [Transition](../QtQuick.Transition/index.html) or [Behavior](../QtQuick.Behavior/index.html), this value defaults to the value defined in the end state of the [Transition](../QtQuick.Transition/index.html), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior/index.html).

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html).

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
