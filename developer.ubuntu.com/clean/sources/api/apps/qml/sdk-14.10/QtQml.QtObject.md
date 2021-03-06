---
Title: QtQml.QtObject
---
        
QtObject
========

<span class="subtitle"></span>
A basic QML type More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | `import QtQml 2.2` |

<span id="properties"></span>
Properties
----------

-   ****[objectName](#objectName-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The QtObject type is a non-visual element which contains only the [objectName](#objectName-prop) property.

It can be useful to create a QtObject if you need an extremely lightweight type to enclose a set of custom properties:

``` qml
import QtQuick 2.0
Item {
    QtObject {
        id: attributes
        property string name
        property int size
        property variant attributes
    }
    Text { text: attributes.name }
}
```

It can also be useful for C++ integration, as it is just a plain QObject. See the QObject documentation for further details.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="objectName-prop"></span><span class="name">objectName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the QObject::objectName for this specific object instance.

This allows a C++ application to locate an item within a QML component using the QObject::findChild() method. For example, the following C++ application locates the child Rectangle item and dynamically changes its `color` value:

``` qml
// MyRect.qml
import QtQuick 2.0
Item {
    width: 200; height: 200
    Rectangle {
        anchors.fill: parent
        color: "red"
        objectName: "myRect"
    }
}
```

``` cpp
// main.cpp
QQuickView view;
view.setSource(QUrl::fromLocalFile("MyRect.qml"));
view.show();
QQuickItem *item = view.rootObject()->findChild<QQuickItem*>("myRect");
if (item)
    item->setProperty("color", QColor(Qt::yellow));
```

