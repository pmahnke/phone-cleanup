---
Title: Ubuntu.Components.ListItems.Subtitled
---
        
Subtitled
=========

<span class="subtitle"></span>
List item displaying a second string under the main label. **This component is under heavy development.** More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import Ubuntu.Components.ListItems 1.0</code></td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.ListItems.Base.md">Base</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[subText](#subText-prop)**** : string` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

Examples:

``` qml
import Ubuntu.Components.ListItems 1.0 as ListItem
Column {
    ListItem.Subtitled {
        text: "Idle"
        subText: "Secondary label"
    }
    ListItem.Subtitled {
        text: "Disabled"
        enabled: false
        subText: "Secondary label"
    }
    ListItem.Subtitled {
        text: "Selected"
        selected: true
        subText: "Secondary label"
    }
    ListItem.Subtitled {
        text: "Progression"
        subText: "Secondary label"
        progression: true
    }
    ListItem.Subtitled {
        text: "Icon"
        subText: "Secondary label"
        iconName: "compose"
    }
    ListItem.Subtitled {
        text: "Multiple lines"
        subText: "This is a multi-line subText.\nUp to 5 lines are supported."
    }
    ListItem.Subtitled {
        text: "Multiple lines"
        subText: "It also works well with icons and progression."
        iconName: "compose"
        progression: true
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
<td><p><span id="subText-prop"></span><span class="name">subText</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The list of strings that will be shown under the label text

