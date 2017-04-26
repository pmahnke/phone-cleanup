---
Title: QtQml.qml-extending-tutorial7
---
        
Chapter 7: In Summary
=====================

<span class="subtitle"></span>
<span id="details"></span>
In this tutorial, we've shown the basic steps for creating a QML extension:

-   Define new QML types by subclassing QObject and registering them with qmlRegisterType()
-   Add callable methods using Q\_INVOKABLE or Qt slots, and connect to Qt signals with an `onSignal` syntax
-   Add property bindings by defining NOTIFY signals
-   Define custom property types if the built-in types are not sufficient
-   Define list property types using QQmlListProperty
-   Create a plugin library by defining a Qt plugin and writing a `qmldir` file

The [Integrating QML and C++](../QtQml.qtqml-cppintegration-topic.md) documentation shows other useful features that can be added to QML extensions. For example, we could use [default properties](../QtQml.qtqml-syntax-objectattributes.md#default-properties) to allow slices to be added without using the `slices` property:

``` cpp
PieChart {
    PieSlice { ... }
    PieSlice { ... }
    PieSlice { ... }
}
```

Or randomly add and remove slices from time to time using [property value sources](../QtQml.qtqml-cppintegration-definetypes.md#property-value-sources):

``` cpp
PieChart {
    PieSliceRandomizer on slices {}
}
```

See the [Integrating QML and C++](../QtQml.qtqml-cppintegration-topic.md) documentation for more information.

