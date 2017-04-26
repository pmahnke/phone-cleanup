<a href="https://developer.ubuntu.com/" class="logo-ubuntu"><img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/logos/logo-ubuntu-orange.svg" width="106" height="25" /> <span>developer</span></a>

-   [Jump to content](index.html#main-content)
-   [Desktop](https://developer.ubuntu.com/en/desktop/)
-   [Phone](https://developer.ubuntu.com/en/phone/)
-   [Core](https://developer.ubuntu.com/core)
-   [Community](https://developer.ubuntu.com/en/community/)
-   [Publish](https://developer.ubuntu.com/en/publish/)
-   [My Apps](https://myapps.developer.ubuntu.com/)

Search

<img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/search-white.svg" alt="Search" height="28" />

-   [APIs](../../../../index.html) ›
-   [Apps](../../../index.html) ›
-   [QML](../../index.html) ›
-   [SDK 15.04.5](../index.html) ›
-   [QtTest](../QtTest/index.html) ›

<!-- -->

-   TestCase

TestCase
========

<span class="subtitle"></span>
Represents a unit test case More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtTest 1.1</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Qt 4.8</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[completed](index.html#completed-prop)**** : bool
-   ****[name](index.html#name-prop)**** : string
-   ****[optional](index.html#optional-prop)**** : bool
-   ****[running](index.html#running-prop)**** : bool
-   ****[when](index.html#when-prop)**** : bool
-   ****[windowShown](index.html#windowShown-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   ****[cleanup](index.html#cleanup-method)****()
-   ****[cleanupTestCase](index.html#cleanupTestCase-method)****()
-   ****[compare](index.html#compare-method)****(*actual*, *expected*, *msg*)
-   ****[expectFail](index.html#expectFail-method)****(*tag*, *msg*)
-   ****[expectFailContinue](index.html#expectFailContinue-method)****(*tag*, *msg*)
-   ****[fail](index.html#fail-method)****(*msg*)
-   ****[findChild](index.html#findChild-method)****(*parent*, *objectName*)
-   ****[fuzzyCompare](index.html#fuzzyCompare-method)****(*actual*, *expected*, *delta*, *msg*)
-   ****[grabImage](index.html#grabImage-method)****(*item*)
-   ****[ignoreWarning](index.html#ignoreWarning-method)****(*msg*)
-   ****[init](index.html#init-method)****()
-   ****[initTestCase](index.html#initTestCase-method)****()
-   ****[keyClick](index.html#keyClick-method)****(*key*, *modifiers*, *delay*)
-   ****[keyPress](index.html#keyPress-method)****(*key*, *modifiers*, *delay*)
-   ****[keyRelease](index.html#keyRelease-method)****(*key*, *modifiers*, *delay*)
-   ****[mouseClick](index.html#mouseClick-method)****(*item*, *x*, *y*, *button*, *modifiers*, *delay*)
-   ****[mouseDoubleClick](index.html#mouseDoubleClick-method)****(*item*, *x*, *y*, *button*, *modifiers*, *delay*)
-   ****[mouseDrag](index.html#mouseDrag-method)****(*item*, *x*, *y*, *dx*, *dy*, *button*, *modifiers*, *delay*)
-   ****[mouseMove](index.html#mouseMove-method)****(*item*, *x*, *y*, *delay*, *buttons*)
-   ****[mousePress](index.html#mousePress-method)****(*item*, *x*, *y*, *button*, *modifiers*, *delay*)
-   ****[mouseRelease](index.html#mouseRelease-method)****(*item*, *x*, *y*, *button*, *modifiers*, *delay*)
-   ****[mouseWheel](index.html#mouseWheel-method)****(*item*, *x*, *y*, *xDelta*, *yDelta*, *buttons*, *modifiers*, *delay*)
-   ****[skip](index.html#skip-method)****(*msg*)
-   ****[sleep](index.html#sleep-method)****(*ms*)
-   ****[tryCompare](index.html#tryCompare-method)****(*obj*, *prop*, *value*, *timeout*, *msg*)
-   ****[verify](index.html#verify-method)****(*cond*, *msg*)
-   ****[wait](index.html#wait-method)****(*ms*)
-   ****[waitForRendering](index.html#waitForRendering-method)****(*item*, *timeout*)
-   ****[warn](index.html#warn-method)****(*msg*)

<span id="details"></span>
Detailed Description
--------------------

<span id="introduction-to-qml-test-cases"></span>
Introduction to QML test cases
------------------------------

Test cases are written as JavaScript functions within a [TestCase](index.html) type:

``` cpp
import QtQuick 2.0
import QtTest 1.0
TestCase {
    name: "MathTests"
    function test_math() {
        compare(2 + 2, 4, "2 + 2 = 4")
    }
    function test_fail() {
        compare(2 + 2, 5, "2 + 2 = 5")
    }
}
```

Functions whose names start with "test\_" are treated as test cases to be executed. The [name](index.html#name-prop) property is used to prefix the functions in the output:

``` cpp
********* Start testing of MathTests *********
Config: Using QTest library 4.7.2, Qt 4.7.2
PASS   : MathTests::initTestCase()
FAIL!  : MathTests::test_fail() 2 + 2 = 5
   Actual (): 4
   Expected (): 5
   Loc: [/home/.../tst_math.qml(12)]
PASS   : MathTests::test_math()
PASS   : MathTests::cleanupTestCase()
Totals: 3 passed, 1 failed, 0 skipped
********* Finished testing of MathTests *********
```

Because of the way JavaScript properties work, the order in which the test functions are found is unpredictable. To assist with predictability, the test framework will sort the functions on ascending order of name. This can help when there are two tests that must be run in order.

Multiple [TestCase](index.html) types can be supplied. The test program will exit once they have all completed. If a test case doesn't need to run (because a precondition has failed), then [optional](index.html#optional-prop) can be set to true.

<span id="data-driven-tests"></span>
Data-driven tests
-----------------

Table data can be provided to a test using a function name that ends with "\_data". Alternatively, the `init_data()` function can be used to provide default test data for all test functions in a [TestCase](index.html) type:

``` cpp
import QtQuick 2.0
import QtTest 1.1
TestCase {
    name: "DataTests"
    function init_data() {
      return [
           {tag:"init_data_1", a:1, b:2, answer: 3},
           {tag:"init_data_2", a:2, b:4, answer: 6}
      ];
    }
    function test_table_data() {
        return [
            {tag: "2 + 2 = 4", a: 2, b: 2, answer: 4 },
            {tag: "2 + 6 = 8", a: 2, b: 6, answer: 8 },
        ]
    }
    function test_table(data) {
        //data comes from test_table_data
        compare(data.a + data.b, data.answer)
    }
    function test__default_table(data) {
        //data comes from init_data
        compare(data.a + data.b, data.answer)
    }
}
```

The test framework will iterate over all of the rows in the table and pass each row to the test function. As shown, the columns can be extracted for use in the test. The `tag` column is special - it is printed by the test framework when a row fails, to help the reader identify which case failed amongst a set of otherwise passing tests.

<span id="benchmarks"></span>
Benchmarks
----------

Functions whose names start with "benchmark\_" will be run multiple times with the Qt benchmark framework, with an average timing value reported for the runs. This is equivalent to using the `QBENCHMARK` macro in the C++ version of QTestLib.

``` cpp
TestCase {
    id: top
    name: "CreateBenchmark"
    function benchmark_create_component() {
        var component = Qt.createComponent("item.qml")
        var obj = component.createObject(top)
        obj.destroy()
        component.destroy()
    }
}
RESULT : CreateBenchmark::benchmark_create_component:
     0.23 msecs per iteration (total: 60, iterations: 256)
PASS   : CreateBenchmark::benchmark_create_component()
```

To get the effect of the `QBENCHMARK_ONCE` macro, prefix the test function name with "benchmark\_once\_".

<span id="simulating-keyboard-and-mouse-events"></span>
Simulating keyboard and mouse events
------------------------------------

The [keyPress()](index.html#keyPress-method), [keyRelease()](index.html#keyRelease-method), and [keyClick()](index.html#keyClick-method) methods can be used to simulate keyboard events within unit tests. The events are delivered to the currently focused QML item. You can pass either a Qt.Key enum value or a latin1 char (string of length one)

``` cpp
Rectangle {
    width: 50; height: 50
    focus: true
    TestCase {
        name: "KeyClick"
        when: windowShown
        function test_key_click() {
            keyClick(Qt.Key_Left)
            keyClick("a")
            ...
        }
    }
}
```

The [mousePress()](index.html#mousePress-method), [mouseRelease()](index.html#mouseRelease-method), [mouseClick()](index.html#mouseClick-method), [mouseDoubleClick()](index.html#mouseDoubleClick-method), and [mouseMove()](index.html#mouseMove-method) methods can be used to simulate mouse events in a similar fashion.

**Note:** keyboard and mouse events can only be delivered once the main window has been shown. Attempts to deliver events before then will fail. Use the [when](index.html#when-prop) and [windowShown](index.html#windowShown-prop) properties to track when the main window has been shown.

**See also** [SignalSpy](../QtTest.SignalSpy/index.html) and Qt Quick Test Reference Documentation.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="completed-prop"></span><span class="name">completed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property will be set to true once the test case has completed execution. Test cases are only executed once. The initial value is false.

**See also** [running](index.html#running-prop) and [when](index.html#when-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property defines the name of the test case for result reporting. The default is the empty string.

``` cpp
TestCase {
    name: "ButtonTests"
    ...
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="optional-prop"></span><span class="name">optional</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Multiple [TestCase](index.html) types can be supplied in a test application. The application will exit once they have all completed. If a test case does not need to run (because a precondition has failed), then this property can be set to true. The default value is false.

``` cpp
TestCase {
    when: false
    optional: true
    function test_not_run() {
        verify(false)
    }
}
```

**See also** [when](index.html#when-prop) and [completed](index.html#completed-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property will be set to true while the test case is running. The initial value is false, and the value will become false again once the test case completes.

**See also** [completed](index.html#completed-prop) and [when](index.html#when-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="when-prop"></span><span class="name">when</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property should be set to true when the application wants the test cases to run. The default value is true. In the following example, a test is run when the user presses the mouse button:

``` cpp
Rectangle {
    id: foo
    width: 640; height: 480
    color: "cyan"
    MouseArea {
        id: area
        anchors.fill: parent
    }
    property bool bar: true
    TestCase {
        name: "ItemTests"
        when: area.pressed
        id: test1
        function test_bar() {
            verify(bar)
        }
    }
}
```

The test application will exit once all [TestCase](index.html) types have been triggered and have run. The [optional](index.html#optional-prop) property can be used to exclude a [TestCase](index.html) type.

**See also** [optional](index.html#optional-prop) and [completed](index.html#completed-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="windowShown-prop"></span><span class="name">windowShown</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property will be set to true after the QML viewing window has been displayed. Normally test cases run as soon as the test application is loaded and before a window is displayed. If the test case involves visual types and behaviors, then it may need to be delayed until after the window is shown.

``` cpp
Button {
    id: button
    onClicked: text = "Clicked"
    TestCase {
        name: "ClickTest"
        when: windowShown
        function test_click() {
            button.clicked();
            compare(button.text, "Clicked");
        }
    }
}
```

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cleanup-method"></span><span class="name">cleanup</span>()</p></td>
</tr>
</tbody>
</table>

This function is called after each test function that is executed in the [TestCase](index.html) type. The default implementation does nothing. The application can provide its own implementation to perform cleanup after each test function.

**See also** [init()](index.html#init-method) and [cleanupTestCase()](index.html#cleanupTestCase-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cleanupTestCase-method"></span><span class="name">cleanupTestCase</span>()</p></td>
</tr>
</tbody>
</table>

This function is called after all other test functions in the [TestCase](index.html) type have completed. The default implementation does nothing. The application can provide its own implementation to perform test case cleanup.

**See also** [initTestCase()](index.html#initTestCase-method) and [cleanup()](index.html#cleanup-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="compare-method"></span><span class="name">compare</span>( <em>actual</em>, <em>expected</em>, <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

Fails the current test case if *actual* is not the same as *expected*, and displays the optional *message*. Similar to `QCOMPARE(actual, expected)` in C++.

**See also** [tryCompare()](index.html#tryCompare-method) and [fuzzyCompare](index.html#fuzzyCompare-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expectFail-method"></span><span class="name">expectFail</span>( <em>tag</em>, <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

In a data-driven test, marks the row associated with *tag* as expected to fail. When the fail occurs, display the *message*, abort the test, and mark the test as passing. Similar to `QEXPECT_FAIL(tag, message, Abort)` in C++.

If the test is not data-driven, then *tag* must be set to the empty string.

**See also** [expectFailContinue()](index.html#expectFailContinue-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expectFailContinue-method"></span><span class="name">expectFailContinue</span>( <em>tag</em>, <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

In a data-driven test, marks the row associated with *tag* as expected to fail. When the fail occurs, display the *message*, and then continue the test. Similar to `QEXPECT_FAIL(tag, message, Continue)` in C++.

If the test is not data-driven, then *tag* must be set to the empty string.

**See also** [expectFail()](index.html#expectFail-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fail-method"></span><span class="name">fail</span>( <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

Fails the current test case, with the optional *message*. Similar to `QFAIL(message)` in C++.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="findChild-method"></span><span class="name">findChild</span>( <em>parent</em>, <em>objectName</em>)</p></td>
</tr>
</tbody>
</table>

Returns the first child of *parent* with *objectName*, or `null` if no such item exists. Both visual and non-visual children are searched recursively, with visual children being searched first.

``` cpp
compare(findChild(item, "childObject"), expectedChildObject);
```

This QML method was introduced in Qt 5.4.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fuzzyCompare-method"></span><span class="name">fuzzyCompare</span>( <em>actual</em>, <em>expected</em>, <em>delta</em>, <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

Fails the current test case if the difference betwen *actual* and *expected* is greater than *delta*, and displays the optional *message*. Similar to `qFuzzyCompare(actual, expected)` in C++ but with a required *delta* value.

This function can also be used for color comparisons if both the *actual* and *expected* values can be converted into color values. If any of the differences for RGBA channel values are greater than *delta*, the test fails.

**See also** [tryCompare()](index.html#tryCompare-method) and [compare()](index.html#compare-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="grabImage-method"></span><span class="name">grabImage</span>( <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Returns a snapshot image object of the given *item*.

The returned image object has the following methods:

-   red(x, y) Returns the red channel value of the pixel at *x*, *y* position
-   green(x, y) Returns the green channel value of the pixel at *x*, *y* position
-   blue(x, y) Returns the blue channel value of the pixel at *x*, *y* position
-   alpha(x, y) Returns the alpha channel value of the pixel at *x*, *y* position
-   pixel(x, y) Returns the color value of the pixel at *x*, *y* position For example:

    ``` cpp
    var image = grabImage(rect);
    compare(image.red(10, 10), 255);
    compare(image.pixel(20, 20), Qt.rgba(255, 0, 0, 255));
    ```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ignoreWarning-method"></span><span class="name">ignoreWarning</span>( <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

Marks *message* as an ignored warning message. When it occurs, the warning will not be printed and the test passes. If the message does not occur, then the test will fail. Similar to `QTest::ignoreMessage(QtWarningMsg, message)` in C++.

**See also** [warn()](index.html#warn-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="init-method"></span><span class="name">init</span>()</p></td>
</tr>
</tbody>
</table>

This function is called before each test function that is executed in the [TestCase](index.html) type. The default implementation does nothing. The application can provide its own implementation to perform initialization before each test function.

**See also** [cleanup()](index.html#cleanup-method) and [initTestCase()](index.html#initTestCase-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="initTestCase-method"></span><span class="name">initTestCase</span>()</p></td>
</tr>
</tbody>
</table>

This function is called before any other test functions in the [TestCase](index.html) type. The default implementation does nothing. The application can provide its own implementation to perform test case initialization.

**See also** [cleanupTestCase()](index.html#cleanupTestCase-method) and [init()](index.html#init-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keyClick-method"></span><span class="name">keyClick</span>( <em>key</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

Simulates clicking of *key* with an optional *modifier* on the currently focused item. If *delay* is larger than 0, the test will wait for *delay* milliseconds.

**See also** [keyPress()](index.html#keyPress-method) and [keyRelease()](index.html#keyRelease-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keyPress-method"></span><span class="name">keyPress</span>( <em>key</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

Simulates pressing a *key* with an optional *modifier* on the currently focused item. If *delay* is larger than 0, the test will wait for *delay* milliseconds.

**Note:** At some point you should release the key using [keyRelease()](index.html#keyRelease-method).

**See also** [keyRelease()](index.html#keyRelease-method) and [keyClick()](index.html#keyClick-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keyRelease-method"></span><span class="name">keyRelease</span>( <em>key</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

Simulates releasing a *key* with an optional *modifier* on the currently focused item. If *delay* is larger than 0, the test will wait for *delay* milliseconds.

**See also** [keyPress()](index.html#keyPress-method) and [keyClick()](index.html#keyClick-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseClick-method"></span><span class="name">mouseClick</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>button</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

Simulates clicking a mouse *button* with an optional *modifier* on an *item*. The position of the click is defined by *x* and *y*. If *delay* is specified, the test will wait for the specified amount of milliseconds before pressing and before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

**See also** [mousePress()](index.html#mousePress-method), [mouseRelease()](index.html#mouseRelease-method), [mouseDoubleClick()](index.html#mouseDoubleClick-method), [mouseMove()](index.html#mouseMove-method), [mouseDrag()](index.html#mouseDrag-method), and [mouseWheel()](index.html#mouseWheel-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseDoubleClick-method"></span><span class="name">mouseDoubleClick</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>button</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

Simulates double-clicking a mouse *button* with an optional *modifier* on an *item*. The position of the click is defined by *x* and *y*. If *delay* is specified, the test will wait for the specified amount of milliseconds before pressing and before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

**See also** [mousePress()](index.html#mousePress-method), [mouseRelease()](index.html#mouseRelease-method), [mouseClick()](index.html#mouseClick-method), [mouseMove()](index.html#mouseMove-method), [mouseDrag()](index.html#mouseDrag-method), and [mouseWheel()](index.html#mouseWheel-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseDrag-method"></span><span class="name">mouseDrag</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>dx</em>, <em>dy</em>, <em>button</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

Simulates dragging the mouse on an *item* with *button* pressed and an optional *modifier*. The initial drag position is defined by *x* and *y*, and drag distance is defined by *dx* and *dy*. If *delay* is specified, the test will wait for the specified amount of milliseconds before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

Note: this method does not imply a drop action, to make a drop, an additional [mouseRelease](index.html#mouseRelease-method)(item, x + dx, y + dy) is needed.

**See also** [mousePress()](index.html#mousePress-method), [mouseClick()](index.html#mouseClick-method), [mouseDoubleClick()](index.html#mouseDoubleClick-method), [mouseMove()](index.html#mouseMove-method), [mouseRelease()](index.html#mouseRelease-method), and [mouseWheel()](index.html#mouseWheel-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseMove-method"></span><span class="name">mouseMove</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>delay</em>, <em>buttons</em>)</p></td>
</tr>
</tbody>
</table>

Moves the mouse pointer to the position given by *x* and *y* within *item*. If a *delay* (in milliseconds) is given, the test will wait before moving the mouse pointer.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

**See also** [mousePress()](index.html#mousePress-method), [mouseRelease()](index.html#mouseRelease-method), [mouseClick()](index.html#mouseClick-method), [mouseDoubleClick()](index.html#mouseDoubleClick-method), [mouseDrag()](index.html#mouseDrag-method), and [mouseWheel()](index.html#mouseWheel-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mousePress-method"></span><span class="name">mousePress</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>button</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

Simulates pressing a mouse *button* with an optional *modifier* on an *item*. The position is defined by *x* and *y*. If *delay* is specified, the test will wait for the specified amount of milliseconds before the press.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

**See also** [mouseRelease()](index.html#mouseRelease-method), [mouseClick()](index.html#mouseClick-method), [mouseDoubleClick()](index.html#mouseDoubleClick-method), [mouseMove()](index.html#mouseMove-method), [mouseDrag()](index.html#mouseDrag-method), and [mouseWheel()](index.html#mouseWheel-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseRelease-method"></span><span class="name">mouseRelease</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>button</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

Simulates releasing a mouse *button* with an optional *modifier* on an *item*. The position of the release is defined by *x* and *y*. If *delay* is specified, the test will wait for the specified amount of milliseconds before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

**See also** [mousePress()](index.html#mousePress-method), [mouseClick()](index.html#mouseClick-method), [mouseDoubleClick()](index.html#mouseDoubleClick-method), [mouseMove()](index.html#mouseMove-method), [mouseDrag()](index.html#mouseDrag-method), and [mouseWheel()](index.html#mouseWheel-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseWheel-method"></span><span class="name">mouseWheel</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>xDelta</em>, <em>yDelta</em>, <em>buttons</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

Simulates rotating the mouse wheel on an *item* with *button* pressed and an optional *modifier*. The position of the wheel event is defined by *x* and *y*. If *delay* is specified, the test will wait for the specified amount of milliseconds before releasing the button.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

The *xDelta* and *yDelta* contain the wheel rotation distance in eighths of a degree. see QWheelEvent::angleDelta() for more details.

**See also** [mousePress()](index.html#mousePress-method), [mouseClick()](index.html#mouseClick-method), [mouseDoubleClick()](index.html#mouseDoubleClick-method), [mouseMove()](index.html#mouseMove-method), [mouseRelease()](index.html#mouseRelease-method), [mouseDrag()](index.html#mouseDrag-method), and QWheelEvent::angleDelta().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="skip-method"></span><span class="name">skip</span>( <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

Skips the current test case and prints the optional *message*. If this is a data-driven test, then only the current row is skipped. Similar to `QSKIP(message)` in C++.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sleep-method"></span><span class="name">sleep</span>( <em>ms</em>)</p></td>
</tr>
</tbody>
</table>

Sleeps for *ms* milliseconds without processing Qt events.

**See also** [wait()](index.html#wait-method) and [waitForRendering()](index.html#waitForRendering-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tryCompare-method"></span><span class="name">tryCompare</span>( <em>obj</em>, <em>prop</em>, <em>value</em>, <em>timeout</em>, <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

Fails the current test case if the specified *property* on *obj* is not the same as *expected*, and displays the optional *message*. The test will be retried multiple times until the *timeout* (in milliseconds) is reached.

This function is intended for testing applications where a property changes value based on asynchronous events. Use [compare()](index.html#compare-method) for testing synchronous property changes.

``` cpp
tryCompare(img, "status", BorderImage.Ready)
compare(img.width, 120)
compare(img.height, 120)
compare(img.horizontalTileMode, BorderImage.Stretch)
compare(img.verticalTileMode, BorderImage.Stretch)
```

[SignalSpy::wait()](../QtTest.SignalSpy/index.html#wait-method) provides an alternative method to wait for a signal to be emitted.

**See also** [compare()](index.html#compare-method) and [SignalSpy::wait()](../QtTest.SignalSpy/index.html#wait-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="verify-method"></span><span class="name">verify</span>( <em>cond</em>, <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

Fails the current test case if *condition* is false, and displays the optional *message*. Similar to `QVERIFY(condition)` or `QVERIFY2(condition, message)` in C++.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="wait-method"></span><span class="name">wait</span>( <em>ms</em>)</p></td>
</tr>
</tbody>
</table>

Waits for *ms* milliseconds while processing Qt events.

**See also** [sleep()](index.html#sleep-method) and [waitForRendering()](index.html#waitForRendering-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="waitForRendering-method"></span><span class="name">waitForRendering</span>( <em>item</em>, <em>timeout</em>)</p></td>
</tr>
</tbody>
</table>

Waits for *timeout* milliseconds or until the *item* is rendered by the renderer. Returns true if `item` is rendered in *timeout* milliseconds, otherwise returns false. The default *timeout* value is 5000.

**See also** [sleep()](index.html#sleep-method) and [wait()](index.html#wait-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="warn-method"></span><span class="name">warn</span>( <em>msg</em>)</p></td>
</tr>
</tbody>
</table>

Prints *message* as a warning message. Similar to `QWARN(message)` in C++.

**See also** [ignoreWarning()](index.html#ignoreWarning-method).

[Back to top](index.html#)

-   [Desktop](https://developer.ubuntu.com/en/desktop/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/desktop/)
    -   [Get started](http://snapcraft.io/?utm_source=developer.ubuntu.com&utm_medium=devportal&utm_term=snaps%20snapcraft%20desktop&utm_content=menu&utm_campaign=duc_snappers)
    -   [Examples](https://github.com/ubuntu/snappy-playpen)

-   [Phone](https://developer.ubuntu.com/en/phone/)
    -----------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/phone/)
    -   [Scopes](https://developer.ubuntu.com/en/phone/scopes/)
    -   [Apps](https://developer.ubuntu.com/en/phone/apps/)
    -   [Web Apps](https://developer.ubuntu.com/en/phone/web/)
    -   [Platform](https://developer.ubuntu.com/en/phone/platform/)
    -   [Devices](https://developer.ubuntu.com/en/phone/devices/)

-   [Core](https://developer.ubuntu.com/core)
    -----------------------------------------

    -   [Overview](https://developer.ubuntu.com/core)
    -   [Get started](https://developer.ubuntu.com/core/get-started)
    -   [Tutorials](https://developer.ubuntu.com/core/tutorials)
    -   [Examples](https://developer.ubuntu.com/core/examples)
    -   [Publish and distribute](https://developer.ubuntu.com/core/publish-and-distribute)
    -   [Documentation](https://developer.ubuntu.com/core/documentation)
    -   [Troubleshooting](https://developer.ubuntu.com/core/troubleshooting)

-   [Community](https://developer.ubuntu.com/en/community/)
    -------------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/community/)
    -   [App development training](https://developer.ubuntu.com/en/community/training/)
    -   [Core apps](https://developer.ubuntu.com/en/community/core-apps/)
    -   [Blog](https://developer.ubuntu.com/en/community/blog/)

-   [Publish](https://developer.ubuntu.com/en/publish/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/publish/)
    -   [Application states](https://developer.ubuntu.com/en/publish/application-states/)
    -   [Packaging click apps](https://developer.ubuntu.com/en/publish/packaging-click-apps/)
    -   [Creating a good icon](https://developer.ubuntu.com/en/publish/creating-a-good-icon/)
    -   [Web](https://developer.ubuntu.com/en/publish/web/)
    -   [Security policy groups](https://developer.ubuntu.com/en/publish/security-policy-groups/)
    -   [Choosing a license](https://developer.ubuntu.com/en/publish/choosing-a-license/)
    -   [Other forms of submitting apps](https://developer.ubuntu.com/en/publish/other-forms-of-submitting-apps/)
    -   [Scopes](https://developer.ubuntu.com/en/publish/scopes/)

-   View in:
    --------

    -   [English](index.html "Change to language: English")
    -   [Simplified Chinese](index.html "Change to language: Simplified Chinese")

-   [Download](http://ubuntu.com/download/)
    ---------------------------------------

    -   [Overview](http://ubuntu.com/download)
    -   [Cloud](http://ubuntu.com/download/cloud)
    -   [Server](http://ubuntu.com/download/server)
    -   [Desktop](http://ubuntu.com/download/desktop)
    -   [Ubuntu Kylin](http://ubuntu.com/download/ubuntu-kylin)
    -   [Alternative downloads](http://ubuntu.com/download/alternative-downloads)

-   [Support](http://ubuntu.com/support/)
    -------------------------------------

    -   [Overview](http://ubuntu.com/support)
    -   [Security notices](http://www.ubuntu.com/usn/)

-   [About](http://ubuntu.com/about/)
    ---------------------------------

    -   [About Ubuntu](http://ubuntu.com/about/about-ubuntu)
    -   [Careers](http://www.canonical.com/careers)
    -   [Canonical and Ubuntu](http://ubuntu.com/about/canonical-and-ubuntu)
    -   [Contact us](http://ubuntu.com/about/contact-us)
    -   [Canonical news feed](http://insights.ubuntu.com/feed/)

© 2015 Canonical Ltd. Ubuntu and Canonical are registered trademarks of Canonical Ltd.

-   [Legal information](http://www.ubuntu.com/legal)
-   [Report a bug on this site](https://bugs.launchpad.net/developer-ubuntu-com/)

<span class="accessibility-aid">[Go to the top of the page](index.html#)</span>
