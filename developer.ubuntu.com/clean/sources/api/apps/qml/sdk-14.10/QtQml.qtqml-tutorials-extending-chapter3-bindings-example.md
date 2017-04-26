---
Title: QtQml.qtqml-tutorials-extending-chapter3-bindings-example
---
        
Chapter 3: Adding Property Bindings
===================================

<span class="subtitle"></span>
<span id="details"></span>
Property binding is a powerful feature of QML that allows values of different types to be synchronized automatically. It uses signals to notify and update other types' values when property values are changed.

Let's enable property bindings for the `color` property. That means if we have code like this:

``` qml
import Charts 1.0
import QtQuick 2.0
Item {
    width: 300; height: 200
    Row {
        anchors.centerIn: parent
        spacing: 20
        PieChart {
            id: chartA
            width: 100; height: 100
            color: "red"
        }
        PieChart {
            id: chartB
            width: 100; height: 100
            color: chartA.color
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: { chartA.color = "blue" }
    }
    Text {
        anchors { bottom: parent.bottom; horizontalCenter: parent.horizontalCenter; bottomMargin: 20 }
        text: "Click anywhere to change the chart color"
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/2f843da2-1fb5-414c-ac47-f887a08681e3-api/apps/qml/sdk-14.10/qtqml-tutorials-extending-chapter3-bindings-example/images/extending-tutorial-chapter3.png)

The "color: chartA.color" statement binds the `color` value of `chartB` to the `color` of `chartA`. Whenever `chartA`'s `color` value changes, `chartB`'s `color` value updates to the same value. When the window is clicked, the `onClicked` handler in the MouseArea changes the color of `chartA`, thereby changing both charts to the color blue.

It's easy to enable property binding for the `color` property. We add a NOTIFY feature to its Q\_PROPERTY() declaration to indicate that a "colorChanged" signal is emitted whenever the value changes.

``` cpp
class PieChart : public QQuickPaintedItem
{
    ...
    Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
public:
    ...
signals:
    void colorChanged();
    ...
};
```

Then, we emit this signal in `setPieSlice()`:

``` cpp
void PieChart::setColor(const QColor &color)
{
    if (color != m_color) {
        m_color = color;
        update();   // repaint with the new color
        emit colorChanged();
    }
}
```

It's important for `setColor()` to check that the color value has actually changed before emitting `colorChanged()`. This ensures the signal is not emitted unnecessarily and also prevents loops when other types respond to the value change.

The use of bindings is essential to QML. You should always add NOTIFY signals for properties if they are able to be implemented, so that your properties can be used in bindings. Properties that cannot be bound cannot be automatically updated and cannot be used as flexibly in QML. Also, since bindings are invoked so often and relied upon in QML usage, users of your custom QML types may see unexpected behavior if bindings are not implemented.

Files:

-   tutorials/extending/chapter3-bindings/app.qml
-   tutorials/extending/chapter3-bindings/piechart.cpp
-   tutorials/extending/chapter3-bindings/piechart.h
-   tutorials/extending/chapter3-bindings/main.cpp
-   tutorials/extending/chapter3-bindings/chapter3-binding.qrc
-   tutorials/extending/chapter3-bindings/chapter3-bindings.pro

