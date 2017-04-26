---
Title: Ubuntu.Layouts.ItemLayout
---
        
ItemLayout
==========

<span class="subtitle"></span>
ItemLayout defines a new size & position of a single Item, for the purposes of specifying layouts. This is to be used within a ConditionalLayout definition. More...

|                   |                             |
|-------------------|-----------------------------|
| Import Statement: | `import Ubuntu.Layouts 1.0` |

<span id="properties"></span>
Properties
----------

-   ****[item](#item-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Use ItemLayout to define the size and position of a single item within a layout. The item name to be positioned should be specified in item property, which should correspond to the string specified in **Layouts.item** attached to an Item in the default layout. The Item with Layouts.item attached is reparented into ItemLayout and it is anchor filled to it.

Example:

``` qml
import QtQuick 2.0
import Ubuntu.Layouts 0.1
Layouts {
    id: layouts
    width: units.gu(50)
    height: units.gu(50)
    layouts: [
        ConditionalLayout {
            when: layouts.width > units.gu(40)
            Row {
                width: parent.width
                ItemLayout {
                    item: "input"
                    width: units.gu(30)
                    height: units.gu(20)
                }
                TextArea {
                    text: "extra component"
                }
            }
        }
    ]
    // default layout
    TextInput {
        anchors.fill: parent
        text: "input"
        Layouts.item: "input"
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
<td><p><span id="item-prop"></span><span class="name">item</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the item name to be positioned in the fragment.

