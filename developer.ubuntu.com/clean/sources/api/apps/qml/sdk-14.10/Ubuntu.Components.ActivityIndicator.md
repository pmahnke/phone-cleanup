---
Title: Ubuntu.Components.ActivityIndicator
---
        
ActivityIndicator
=================

<span class="subtitle"></span>
The ActivityIndicator component visually indicates that a task of unknown duration is in progress, e.g. busy indication, connection in progress indication, etc. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import Ubuntu.Components 1.1` |

<span id="properties"></span>
Properties
----------

-   ****[running](#running-prop)**** : bool` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

Note: for time consuming JavaScript operations use [WorkerScript](../QtQml.WorkerScript.md), otherwise no UI interaction will be possible and the ActicityIndicator animation will freeze.

**This component is under heavy development.**

Example:

``` qml
Item {
    ActivityIndicator {
        id: activity
    }
    Button {
        id: toggleActive
        text: (activity.running) ? "Deactivate" : "Activate"
        onClicked: activity.running = !activity.running
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Presents whether there is activity to be visualized or not. The default value is false. When activated (set to true), an animation is shown indicating an ongoing activity, which continues until deactivated (set to false).

