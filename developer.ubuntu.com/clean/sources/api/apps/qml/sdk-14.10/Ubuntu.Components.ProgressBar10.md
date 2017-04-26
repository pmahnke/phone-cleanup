---
Title: Ubuntu.Components.ProgressBar10
---
        
ProgressBar10
=============

<span class="subtitle"></span>
The ProgressBar component visually indicates the progress of a process of determinate or indeterminate duration. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import Ubuntu.Components 1.1` |

<span id="properties"></span>
Properties
----------

-   ****[indeterminate](#indeterminate-prop)**** : bool` (preliminary)`
-   ****[maximumValue](#maximumValue-prop)**** : real` (preliminary)`
-   ****[minimumValue](#minimumValue-prop)**** : real` (preliminary)`
-   ****[value](#value-prop)**** : real` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

**This component is under heavy development.**

Example:

``` qml
Item {
    ProgressBar {
        id: indeterminateBar
        indeterminate: true
    }
    ProgressBar {
        id: determinateBar
        minimumValue: -3.0
        maximumValue: 15
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
<td><p><span id="indeterminate-prop"></span><span class="name">indeterminate</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Specifies whether the progress interval is unknown. When set, altering other properties do not have any effect on the component's behavior. By default the property is set to false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumValue-prop"></span><span class="name">maximumValue</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Specifies the maximum value of the progress.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumValue-prop"></span><span class="name">minimumValue</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Specifies the minimum value of the progress.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Specifies the current value of the progress

