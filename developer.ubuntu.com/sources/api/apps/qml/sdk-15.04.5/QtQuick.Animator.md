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
-   [SDK 15.04.5](../index.html) ›
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
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/7c1295d2-b52d-4ba4-a669-74d46e22e2ac-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-linear.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a9704118-45e6-4bd3-bc5b-341eb0324a5f-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/6e59dbc2-6ac1-4a47-ae05-f3a3501b1a95-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/05e06632-a17c-406b-8899-064e55db1379-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutquad.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuad</code></td>
<td>Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/bbd890ac-0427-494d-a4bf-a9e227820067-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinquad.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCubic</code></td>
<td>Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/f96b0b47-d995-4709-84f6-3f39c340cf96-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-incubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e6d282e0-ae38-429a-9188-20e4f0a99031-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outcubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCubic</code></td>
<td>Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/27900bcc-9501-4d32-a4c2-9fbd279274c2-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutcubic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCubic</code></td>
<td>Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/cf65489e-5dd7-4bef-980d-86f94b052669-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outincubic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuart</code></td>
<td>Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/0dfd71af-b9e4-4946-ba98-bc1bd9d1bd84-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/8b3995be-2501-4f57-af8c-72122aa6bab6-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuart</code></td>
<td>Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/d8c1053a-f46b-4c57-b0a6-8262c680906f-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutquart.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuart</code></td>
<td>Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/45971948-4073-4105-af26-d4a18ce12578-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinquart.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InQuint</code></td>
<td>Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/18b53654-63a7-4fe4-9bd5-b16e2e087fd0-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e1f04385-ede4-40e8-80d5-221d3f679aaf-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutQuint</code></td>
<td>Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/480c8200-684e-4615-98d7-2986fd4b3e13-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutquint.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInQuint</code></td>
<td>Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a09e2510-022d-4aaa-9129-f98eaa476058-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinquint.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/d7105fc2-51dc-4f4b-991d-307bcadc0f25-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-insine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/1cfec624-3fbe-4734-bdb7-5a5f52581adc-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/2cddc989-5b6f-41a1-ba49-6be6aa401d98-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutsine.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInSine</code></td>
<td>Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/dd929a98-ffab-480b-85a5-4cf28e3cabc0-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinsine.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InExpo</code></td>
<td>Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/6c8733b0-04aa-402e-92df-b20be9eafd11-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/99f910f8-1f60-465b-ab1a-53dfab0c4543-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutExpo</code></td>
<td>Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/6fd7306f-0842-43e2-aa39-56a177f784b6-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutexpo.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInExpo</code></td>
<td>Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/f7f17ec4-9575-4020-ac19-e952f564a544-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinexpo.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/cd885c69-fa05-4888-9505-1ccf90f4445d-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-incirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/ec87d6a2-490b-42c4-9671-be0907033429-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outcirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/afc44783-c232-43aa-b827-78c86cbb287e-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutcirc.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInCirc</code></td>
<td>Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/4cb6e8c8-9072-4db4-8be3-acc6cd050fff-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outincirc.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity.<br />
The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/c6ce680e-717e-4d0d-afc6-5558484c76a1-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity.<br />
The peak amplitude can be set with the <em>amplitude</em> parameter, and the period of decay by the <em>period</em> parameter.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/336331b3-1f4b-4584-8d5c-dfd10dbe2c2b-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/2c6f3ee1-b74f-4d2d-bf3f-83d3b3f59090-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutelastic.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInElastic</code></td>
<td>Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/53c42afa-d8bf-4b98-91b4-1f7e056e8a17-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinelastic.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/57192e90-e90a-42f8-b436-03d90aff2b5e-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/4f4b429f-92b1-443b-affb-2a5d50ea72b5-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBack</code></td>
<td>Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/8e2ef721-4c4b-430c-8b36-96583e3bd248-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutback.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBack</code></td>
<td>Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/5889f231-edbd-403f-bb6b-08c9ca09a38c-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinback.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/a86cdad8-dde9-4970-9dbb-acb4e669ad74-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/eed29d6e-67cf-4eaf-a919-cf01b0f7feb1-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outbounce.png" /></td>
</tr>
<tr class="even">
<td><code>Easing.InOutBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/46aad372-e0b9-4165-ad81-6928a5969520-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutbounce.png" /></td>
</tr>
<tr class="odd">
<td><code>Easing.OutInBounce</code></td>
<td>Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td>
<td><img src="https://developer.ubuntu.com/static/devportal_uploaded/e5e6b926-29bf-4b95-ab76-5ebb5d5f0d7a-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinbounce.png" /></td>
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

See the [Easing Curves](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.animation/#easing-curves) for a demonstration of the different easing settings.

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
