---
Title: Ubuntu.Components.Haptics
---
        
Haptics
=======

<span class="subtitle"></span>
Singleton defining the haptics feedback used in components, where execution of the feedback is controlled by the system settings. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[effect](#effect-prop)**** : HapticsEffect
-   ****[enabled](#enabled-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   void ****[play](#play-method)****(var *customEffect*)

<span id="details"></span>
Detailed Description
--------------------

Supports global feedback as well as custom feedback. Global feedback can be configured through its properties, and [play](#play-method) function will play the default configuration, or a custom one if parameter is given.

Example of using Haptics:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
Item {
    implicitWidth: units.gu(20)
    implicitHeight: units.gu(5)
    Label {
        text: "Press me"
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    MouseArea {
        anchors.fill: parent
        onClicked: Haptics.play()
    }
}
```

Custom effects can be played as follows:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
Item {
    implicitWidth: units.gu(20)
    implicitHeight: units.gu(5)
    Label {
        text: "Press me"
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    MouseArea {
        anchors.fill: parent
        onClicked: Haptics.play({duration: 25, attackIntensity: 0.7})
    }
}
```

**Note:** Though the [effect](#effect-prop) property exposes `start`, `stop` and `pause` functions, use those only if you want to have feedback independent from what the system setting is.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="effect-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">effect</span> : <span class="type">HapticsEffect</span></p></td>
</tr>
</tbody>
</table>

The property defines the settings of the haptics effect used by the component. The default setting is a haptics effect with a duration of 10 milliseconds with an intensity of 1.0, having fading time of 50 millisecods and fading intensity 0.0, and attack time of 50 milliseconds and with an intensity of 0.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property specifies whether the haptics feedback is enabled or not by the system.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method"></span><span class="type">void</span> <span class="name">play</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span> <em>customEffect</em>)</p></td>
</tr>
</tbody>
</table>

The function plays the feedback with the configuration specified in [effect](#effect-prop) if no parameter is given. Custom effect can be played by specifying the effect properties in a JSON object in `customEffect`.

The function will exit unconditionaly if playing the effects is blocked by system settings.

The function will not stop any ongoing haptics effect played, if that one was a default haptics effect. In case of custom effects, the previous effect will be stopped, and settings will be restored before the new haptics will be played. The custom settings properties (the ones which are required to be different from the ones defined in the [effect](#effect-prop)) must be specified in the parameter in a JSON object.

