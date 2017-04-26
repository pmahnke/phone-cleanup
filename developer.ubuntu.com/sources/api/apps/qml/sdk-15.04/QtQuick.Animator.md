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

-   Animator

Animator
========

<span class="subtitle"></span>
Is the base of all QML animators. More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.2             |

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
-   ****[from](index.html#from-prop)**** : real
-   ****[target](index.html#target-prop)**** : QtQuick::Item
-   ****[to](index.html#to-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

Animator types are a special type of animation which operate directly on Qt Quick's scene graph, rather than the QML objects and their properties like regular Animation types do. This has the benefit that Animator based animations can animate on the [scene graph's rendering thread](../QtQuick.qtquick-visualcanvas-scenegraph/index.html#threaded-render-loop) even when the UI thread is blocked.

The value of the QML property will be updated after the animation has finished. The property is not updated while the animation is running.

The Animator types can be used just like any other Animation type.

``` qml
Rectangle {
    id: mixBox
    width: 50
    height: 50
    ParallelAnimation {
        ColorAnimation {
            target: mixBox
            property: "color"
            from: "forestgreen"
            to: "lightsteelblue";
            duration: 1000
        }
        ScaleAnimator {
            target: mixBox
            from: 2
            to: 1
            duration: 1000
        }
        running: true
    }
}
```

If all sub-animations of [ParallelAnimation](../QtQuick.ParallelAnimation/index.html) and [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) are Animator types, the [ParallelAnimation](../QtQuick.ParallelAnimation/index.html) and [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) will also be treated as an Animator and be run on the scene graph's rendering thread when possible.

The Animator types can be used for animations during transitions, but they do not support the [reversible](../QtQuick.Transition/index.html#reversible-prop) property.

The Animator type cannot be used directly in a QML file. It exists to provide a set of common properties and methods, available across all the other animator types that inherit from it. Attempting to use the Animator type directly will result in an error.

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

This property holds the duration of the animation in milliseconds.

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

Specifies the easing curve used for the animation

To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period and/or overshoot (more details provided after the table). The default easing curve is `Easing.Linear`.

``` qml
PropertyAnimation { properties: "y"; easing.type: Easing.InOutElastic; easing.amplitude: 2.0; easing.period: 1.5 }
```

Available types are:

<table>
<tbody>
<tr class="odd">
<td><code>Easing.Linear</code></td>
<td>Easing curve for a linear (t) function: velocity is constant.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/2ee17eb9-7dac-4787-8094-e77651cf5301-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-linear.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b33c8c80-36ba-43dd-a602-8c853aba8d68-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/995e15cb-9a3e-4b53-96d1-fce966d33380-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/d01c1eeb-c362-4df2-809b-b17aaddfbe50-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inoutquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a435825d-31ce-4d09-9aa1-67d14cb6932b-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outinquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCubic</code></td>
<td>Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/fede605b-5c80-4bcd-a783-b92089fd6e4e-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-incubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b7e03a4a-278f-4802-9aa0-dcb95111648f-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outcubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/adf2af7e-6ac8-4329-b3e2-fea7f13108ef-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inoutcubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCubic</code></td>
<td>Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/aa7c9cdd-0b20-4b6d-abb3-829c8ffd08f4-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outincubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuart</code></td>
<td>Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b775d264-d454-462e-865b-d4ef25349c84-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/493f8bc4-1474-4495-8832-770324ef9514-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b9341f88-66f4-4674-921e-649c48bcecef-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inoutquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuart</code></td>
<td>Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/82054186-4b6e-40cb-95c9-99ec15fc7da9-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outinquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuint</code></td>
<td>Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/86db4b5e-e279-4fee-b201-5b288432e443-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/afac003b-27be-4b6a-a7ac-c403cd4b8b2b-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a79bfb87-ebfc-4ca5-b57b-2f8a82d37761-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inoutquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuint</code></td>
<td>Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/21e6cdf2-8d9f-4b0e-ae71-8d1e673a6e6e-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outinquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/312c6a3d-b869-4c1c-a37a-f6532a273526-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-insine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/65ef7d5b-2679-44dd-96a9-cea6ad3d3a83-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/f1d361df-16f2-4996-96b9-31205f9e9d7e-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inoutsine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e3c9b83e-58f6-47a6-8086-f29b4c67b4e7-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outinsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InExpo</code></td>
<td>Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/fc7dfd66-2215-47f4-bd92-c4fab6460d4b-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/36937e2b-f284-4ae3-852f-eeaaac8b1326-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/afe76032-8485-40ff-bfda-6e1f5f5d64df-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inoutexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInExpo</code></td>
<td>Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/f6fa10fa-9340-4a1e-aeee-c53aa10f6235-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outinexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a6c77e65-8d06-4db6-9f96-35fcbc403886-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-incirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/46bd8d62-b1f5-46da-b401-6747e93bb6e2-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outcirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/04db7b2a-de04-4f5a-a935-04e89fa618f9-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inoutcirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/659661d2-f2cb-4978-a252-f0b7ea35dbac-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outincirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity.<br />
The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/34e6c505-5d00-4484-9018-97b8dbb2d866-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity.<br />
The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/67a20439-55dc-469f-9ed7-6160f653aa44-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/1561447a-6ad2-4c16-a8d0-78f992ff26c9-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inoutelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/b61029ca-ce21-4c63-a5d3-76a29fa62ff0-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outinelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/7138f5ea-eafb-4a45-aa94-8616e2481fe1-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/56ad20e0-bcab-4f5d-9c77-58b22893a08d-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/94e09351-cbf4-41c3-a183-890cb3d323cc-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inoutback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBack</code></td>
<td>Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/075d0f52-df10-4c05-b310-74d761b37236-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outinback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/6b77e7cc-ad1e-4abe-91c4-6689dd3810da-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e1ac66d5-d404-490d-a225-c846d9f19eeb-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outbounce.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/93da660c-2896-4b52-969f-07225aa24609-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-inoutbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/528bdce7-bf14-4fe0-a0b6-f26a2dc6d7eb-api/apps/qml/sdk-15.04/QtQuick.Animator/images/qeasingcurve-outinbounce.png" /></td>
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

See the [Easing Curves](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.animation/#easing-curves) for a demonstration of the different easing settings.

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

This property holds the starting value for the animation.

If the Animator is defined within a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) or [Behavior](../QtQuick.Behavior/index.html), this value defaults to the value defined in the starting state of the [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), or the current value of the property at the moment the [Behavior](../QtQuick.Behavior/index.html) is triggered.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type"><a href="../QtQuick.Item/index.html">QtQuick::Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the target item of the animator.

**Note:** Animator targets must be Item based types.

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

This property holds the end value for the animation.

If the Animator is defined within a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) or [Behavior](../QtQuick.Behavior/index.html), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior/index.html).

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
