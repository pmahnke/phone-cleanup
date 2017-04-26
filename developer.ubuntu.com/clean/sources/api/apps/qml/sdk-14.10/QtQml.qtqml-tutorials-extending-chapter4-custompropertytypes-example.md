---
Title: QtQml.qtqml-tutorials-extending-chapter4-custompropertytypes-example
---
        
Chapter 4: Using Custom Property Types
======================================

<span class="subtitle"></span>
<span id="details"></span>
The `PieChart` type currently has a string-type property and a color-type property. It could have many other types of properties. For example, it could have an int-type property to store an identifier for each chart:

``` cpp
// C++
class PieChart : public QQuickPaintedItem
{
    Q_PROPERTY(int chartId READ chartId WRITE setChartId NOTIFY chartIdChanged)
    ...
public:
    void setChartId(int chartId);
    int chartId() const;
    ...
signals:
    void chartIdChanged();
};
// QML
PieChart {
    ...
    chartId: 100
}
```

Aside from `int`, we could use various other property types. Many of the Qt data types such as QColor, QSize and QRect are automatically supported from QML. (See [Data Type Conversion Between QML and C++](../QtQml.qtqml-cppintegration-data.md) documentation for a full list.)

If we want to create a property whose type is not supported by QML by default, we need to register the type with the QML engine.

For example, let's replace the use of the `property` with a type called "PieSlice" that has a `color` property. Instead of assigning a color, we assign an `PieSlice` value which itself contains a `color`:

``` qml
import Charts 1.0
import QtQuick 2.0
Item {
    width: 300; height: 200
    PieChart {
        id: chart
        anchors.centerIn: parent
        width: 100; height: 100
        pieSlice: PieSlice {
            anchors.fill: parent
            color: "red"
        }
    }
    Component.onCompleted: console.log("The pie is colored " + chart.pieSlice.color)
}
```

Like `PieChart`, this new `PieSlice` type inherits from QQuickPaintedItem and declares its properties with Q\_PROPERTY():

``` cpp
class PieSlice : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(QColor color READ color WRITE setColor)
public:
    PieSlice(QQuickItem *parent = 0);
    QColor color() const;
    void setColor(const QColor &color);
    void paint(QPainter *painter);
private:
    QColor m_color;
};
```

To use it in `PieChart`, we modify the `color` property declaration and associated method signatures:

``` cpp
class PieChart : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(PieSlice* pieSlice READ pieSlice WRITE setPieSlice)
    ...
public:
    ...
    PieSlice *pieSlice() const;
    void setPieSlice(PieSlice *pieSlice);
    ...
};
```

There is one thing to be aware of when implementing `setPieSlice()`. The `PieSlice` is a visual item, so it must be set as a child of the `PieChart` using QQuickItem::setParentItem() so that the `PieChart` knows to paint this child item when its contents are drawn:

``` cpp
void PieChart::setPieSlice(PieSlice *pieSlice)
{
    m_pieSlice = pieSlice;
    pieSlice->setParentItem(this);
}
```

Like the `PieChart` type, the `PieSlice` type has to be registered using qmlRegisterType() to be used from QML. As with `PieChart`, we'll add the type to the "Charts" type namespace, version 1.0:

``` cpp
int main(int argc, char *argv[])
{
    ...
    qmlRegisterType<PieSlice>("Charts", 1, 0, "PieSlice");
    ...
}
```

Try it out with the code in Qt's `examples/qml/tutorials/extending/chapter4-customPropertyTypes` directory.

Files:

-   tutorials/extending/chapter4-customPropertyTypes/app.qml
-   tutorials/extending/chapter4-customPropertyTypes/piechart.cpp
-   tutorials/extending/chapter4-customPropertyTypes/piechart.h
-   tutorials/extending/chapter4-customPropertyTypes/pieslice.cpp
-   tutorials/extending/chapter4-customPropertyTypes/pieslice.h
-   tutorials/extending/chapter4-customPropertyTypes/main.cpp
-   tutorials/extending/chapter4-customPropertyTypes/chapter4-customPropertyTypes.pro
-   tutorials/extending/chapter4-customPropertyTypes/chapter4-customPropertyTypes.qrc

