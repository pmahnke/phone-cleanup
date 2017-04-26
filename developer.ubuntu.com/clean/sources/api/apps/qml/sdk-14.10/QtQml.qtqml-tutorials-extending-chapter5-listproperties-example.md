---
Title: QtQml.qtqml-tutorials-extending-chapter5-listproperties-example
---
        
Chapter 5: Using List Property Types
====================================

<span class="subtitle"></span>
<span id="details"></span>
Right now, a `PieChart` can only have one `PieSlice`. Ideally a chart would have multiple slices, with different colors and sizes. To do this, we could have a `slices` property that accepts a list of `PieSlice` items:

``` qml
import Charts 1.0
import QtQuick 2.0
Item {
    width: 300; height: 200
    PieChart {
        anchors.centerIn: parent
        width: 100; height: 100
        slices: [
            PieSlice {
                anchors.fill: parent
                color: "red"
                fromAngle: 0; angleSpan: 110
            },
            PieSlice {
                anchors.fill: parent
                color: "black"
                fromAngle: 110; angleSpan: 50
            },
            PieSlice {
                anchors.fill: parent
                color: "blue"
                fromAngle: 160; angleSpan: 100
            }
        ]
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/c2613711-7649-4299-942e-9e5cebf58573-api/apps/qml/sdk-14.10/qtqml-tutorials-extending-chapter5-listproperties-example/images/extending-tutorial-chapter5.png)

To do this, we replace the `pieSlice` property in `PieChart` with a `slices` property, declared as a QQmlListProperty type. The QQmlListProperty class enables the creation of list properties in QML extensions. We replace the `pieSlice()` function with a `slices()` function that returns a list of slices, and add an internal `append_slice()` function (discussed below). We also use a QList to store the internal list of slices as `m_slices`:

``` cpp
class PieChart : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(QQmlListProperty<PieSlice> slices READ slices)
    ...
public:
    ...
    QQmlListProperty<PieSlice> slices();
private:
    static void append_slice(QQmlListProperty<PieSlice> *list, PieSlice *slice);
    QString m_name;
    QList<PieSlice *> m_slices;
};
```

Although the `slices` property does not have an associated `WRITE` function, it is still modifiable because of the way QQmlListProperty works. In the `PieChart` implementation, we implement `PieChart::slices()` to return a QQmlListProperty value and indicate that the internal `PieChart::append_slice()` function is to be called whenever a request is made from QML to add items to the list:

``` cpp
QQmlListProperty<PieSlice> PieChart::slices()
{
    return QQmlListProperty<PieSlice>(this, 0, &PieChart::append_slice, 0, 0, 0);
}
void PieChart::append_slice(QQmlListProperty<PieSlice> *list, PieSlice *slice)
{
    PieChart *chart = qobject_cast<PieChart *>(list->object);
    if (chart) {
        slice->setParentItem(chart);
        chart->m_slices.append(slice);
    }
}
```

The `append_slice()` function simply sets the parent item as before, and adds the new item to the `m_slices` list. As you can see, the append function for a QQmlListProperty is called with two arguments: the list property, and the item that is to be appended.

The `PieSlice` class has also been modified to include `fromAngle` and `angleSpan` properties and to draw the slice according to these values. This is a straightforward modification if you have read the previous pages in this tutorial, so the code is not shown here.

The complete code can be seen in the updated `examples/qml/tutorials/extending/chapter5-listproperties` directory.

Files:

-   tutorials/extending/chapter5-listproperties/app.qml
-   tutorials/extending/chapter5-listproperties/piechart.cpp
-   tutorials/extending/chapter5-listproperties/piechart.h
-   tutorials/extending/chapter5-listproperties/pieslice.cpp
-   tutorials/extending/chapter5-listproperties/pieslice.h
-   tutorials/extending/chapter5-listproperties/main.cpp
-   tutorials/extending/chapter5-listproperties/chapter5-listproperties.pro
-   tutorials/extending/chapter5-listproperties/chapter5-listproperties.qrc

