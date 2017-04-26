---
Title: QtQml.qtqml-tutorials-extending-chapter2-methods-example
---
        
Chapter 2: Connecting to C++ Methods and Signals
================================================

<span class="subtitle"></span>
<span id="details"></span>
Suppose we want `PieChart` to have a "clearChart()" method that erases the chart and then emits a "chartCleared" signal. Our `app.qml` would be able to call `clearChart()` and receive `chartCleared()` signals like this:

``` qml
import Charts 1.0
import QtQuick 2.0
Item {
    width: 300; height: 200
    PieChart {
        id: aPieChart
        anchors.centerIn: parent
        width: 100; height: 100
        color: "red"
        onChartCleared: console.log("The chart has been cleared")
    }
    MouseArea {
        anchors.fill: parent
        onClicked: aPieChart.clearChart()
    }
    Text {
        anchors { bottom: parent.bottom; horizontalCenter: parent.horizontalCenter; bottomMargin: 20 }
        text: "Click anywhere to clear the chart"
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/497714c7-90e1-4715-8d2d-aa27fa2fffda-api/apps/qml/sdk-14.10/qtqml-tutorials-extending-chapter2-methods-example/images/extending-tutorial-chapter2.png)

To do this, we add a `clearChart()` method and a `chartCleared()` signal to our C++ class:

``` cpp
class PieChart : public QQuickPaintedItem
{
    ...
public:
    ...
    Q_INVOKABLE void clearChart();
signals:
    void chartCleared();
    ...
};
```

The use of Q\_INVOKABLE makes the `clearChart()` method available to the Qt Meta-Object system, and in turn, to QML. Note that it could have been declared as as a Qt slot instead of using Q\_INVOKABLE, as slots are also callable from QML. Both of these approaches are valid.

The `clearChart()` method simply changes the color to Qt::transparent, repaints the chart, then emits the `chartCleared()` signal:

``` cpp
void PieChart::clearChart()
{
    setColor(QColor(Qt::transparent));
    update();
    emit chartCleared();
}
```

Now when we run the application and click the window, the pie chart disappears, and the application outputs:

``` cpp
The chart has been cleared
```

Try out the example yourself with the updated code in Qt's `examples/qml/tutorials/extending/chapter2-methods` directory.

Files:

-   tutorials/extending/chapter2-methods/app.qml
-   tutorials/extending/chapter2-methods/piechart.cpp
-   tutorials/extending/chapter2-methods/piechart.h
-   tutorials/extending/chapter2-methods/main.cpp
-   tutorials/extending/chapter2-methods/chapter2-methods.pro
-   tutorials/extending/chapter2-methods/chapter2-methods.qrc

