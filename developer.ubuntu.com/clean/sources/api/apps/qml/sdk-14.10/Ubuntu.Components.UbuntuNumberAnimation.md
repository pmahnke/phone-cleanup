---
Title: Ubuntu.Components.UbuntuNumberAnimation
---
        
UbuntuNumberAnimation
=====================

<span class="subtitle"></span>
UbuntuNumberAnimation is a NumberAnimation that has predefined settings to ensure that Ubuntu applications are consistent in their animations. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import Ubuntu.Components 1.1</code></td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></p></td>
</tr>
</tbody>
</table>

<span id="details"></span>
Detailed Description
--------------------

Example of use:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
Rectangle {
    width: 100; height: 100
    color: UbuntuColors.orange
    UbuntuNumberAnimation on x { to: 50 }
}
```

UbuntuNumberAnimation is predefined with the following settings:

-   *duration*: [UbuntuAnimation.FastDuration](../Ubuntu.Components.UbuntuAnimation.md#FastDuration-prop)
-   *easing*: [UbuntuAnimation.StandardEasing](../Ubuntu.Components.UbuntuAnimation.md#StandardEasing-prop)

If the standard duration and easing used by UbuntuNumberAnimation do not satisfy a use case or you need to use a different type of Animation (e.g. [ColorAnimation](../QtQuick.ColorAnimation.md)), use standard durations and easing defined in [UbuntuAnimation](../Ubuntu.Components.UbuntuAnimation.md) manually in order to ensure consistency.

