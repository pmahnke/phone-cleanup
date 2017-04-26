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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.5</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Demo - Calqlatr

Qt Quick Demo - Calqlatr
========================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/91f3228e-ba24-47d3-8734-acc9fdbe6e69-api/apps/qml/sdk-15.04.5/qtquick-demos-calqlatr-example/images/qtquick-demo-calqlatr.png)

*Calqlatr* demonstrates various QML and [Qt Quick](../QtQuick.qtquick-index/index.html) features, such as displaying custom components and using animation to move the components around in the application view. The application logic is implemented in JavaScript and the appearance is implemented in QML.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="displaying-custom-components"></span>
Displaying Custom Components
----------------------------

In the Calqlatr application, we use the following custom types that are each defined in a separate .qml file:

-   Button.qml
-   Display.qml
-   NumberPad.qml

To use the custom types, we add an import statement to the main QML file, calqlatr.qml that imports the folder called `content` where the types are located:

``` cpp
import "content"
```

We can then display custom components by adding the component types to any QML file. For example, we use the NumberPad type in calqlatr.qml to create the number pad of the calculator. We place the type inside an [Item](../QtQuick.Item/index.html) QML type, which is the base type for all visual items in Qt Quick:

``` qml
    Item {
        id: pad
        width: 180
        NumberPad { id: numPad; y: 10; anchors.horizontalCenter: parent.horizontalCenter }
    }
```

Further, we use the Button type in the `NumberPad` type to create the calculator buttons. Button.qml specifies the basic properties for a button that we can modify for each button instance in NumberPad.qml. For the digit and separator buttons, we additionally specify the text property using the property alias `text` that we define in Button.qml.

For the operator buttons, we also specify another color (green) using the property alias `color` and set the operator property to `true`. We use the operator property in functions that perform the calculations.

We place the buttons inside a [Grid](../QtQuick.qtquick-positioning-layouts/index.html#grid) QML type to position them in a grid:

``` qml
Grid {
    columns: 3
    columnSpacing: 32
    rowSpacing: 16
    signal buttonPressed
    Button { text: "7" }
    Button { text: "8" }
    Button { text: "9" }
    Button { text: "4" }
    Button { text: "5" }
    Button { text: "6" }
    Button { text: "1" }
    Button { text: "2" }
    Button { text: "3" }
    Button { text: "0" }
    Button { text: "."; dimmable: true }
    Button { text: " " }
    Button { text: "±"; color: "#6da43d"; operator: true; dimmable: true }
    Button { text: "−"; color: "#6da43d"; operator: true; dimmable: true }
    Button { text: "+"; color: "#6da43d"; operator: true; dimmable: true }
    Button { text: "√"; color: "#6da43d"; operator: true; dimmable: true }
    Button { text: "÷"; color: "#6da43d"; operator: true; dimmable: true }
    Button { text: "×"; color: "#6da43d"; operator: true; dimmable: true }
    Button { text: "C"; color: "#6da43d"; operator: true }
    Button { text: " "; color: "#6da43d"; operator: true }
    Button { text: "="; color: "#6da43d"; operator: true; dimmable: true }
}
```

Some of the buttons also have a `dimmable` property set, meaning that they can be visually disabled (dimmed) whenever the calculator engine does not accept input from that button. As an example, the button for square root operator is dimmed for negative values.

<span id="animating-components"></span>
Animating Components
--------------------

We use the Display type to display calculations. In Display.qml, we use images to make the display component look like a slip of paper that contains a grip. Users can drag the grip to move the display from left to right.

When users release the grip, the [AnimationController](../QtQuick.AnimationController/index.html) QML type that we define in the calqlatr.qml file finishes running the controlled animation in either a forwards or a backwards direction. To run the animation, we call either completeToEnd() or completeToBeginning(), depending on the direction. We do this in the [MouseArea](../QtQuick.MouseArea/index.html)'s `onReleased` signal handler, where `controller` is the id of our [AnimationController](../QtQuick.AnimationController/index.html):

``` qml
        MouseArea {
            ...
            onReleased: {
                if (rewind)
                    controller.completeToBeginning()
                else
                    controller.completeToEnd()
            }
        }
```

Unlike other QML animation types, [AnimationController](../QtQuick.AnimationController/index.html) is not driven by internal timers but by explicitly setting its progress property to a value between `0.0` and `1.0`.

Inside the [AnimationController](../QtQuick.AnimationController/index.html), we run two [NumberAnimation](../QtQuick.NumberAnimation/index.html) instances in parallel to move the number pad and the display components simultaneously to the opposite sides of the view. In addition, we run a [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) instance to scale the number pad during the transition, giving the animation some depth.

``` qml
    AnimationController {
        id: controller
        animation: ParallelAnimation {
            id: anim
            NumberAnimation { target: display; property: "x"; duration: 400; from: -16; to: window.width - display.width; easing.type: Easing.InOutQuad }
            NumberAnimation { target: pad; property: "x"; duration: 400; from: window.width - pad.width; to: 0; easing.type: Easing.InOutQuad }
            SequentialAnimation {
                NumberAnimation { target: pad; property: "scale"; duration: 200; from: 1; to: 0.97; easing.type: Easing.InOutQuad }
                NumberAnimation { target: pad; property: "scale"; duration: 200; from: 0.97; to: 1; easing.type: Easing.InOutQuad }
            }
        }
    }
```

We use the easing curve of the type `Easing.InOutQuad` to accelerate the motion until halfway and then decelerate it.

In Button.qml, the text colors of the number pad buttons are also animated.

``` qml
    Text {
        id: textItem
        ...
        color: (dimmable && dimmed) ? Qt.darker(button.color) : button.color
        Behavior on color { ColorAnimation { duration: 120; easing.type: Easing.OutElastic} }
        states: [
            State {
                name: "pressed"
                when: mouse.pressed && !dimmed
                PropertyChanges {
                    target: textItem
                    color: Qt.lighter(button.color)
                }
            }
        ]
    }
```

We use Qt.darker() to darken the color when the button is dimmed, and Qt.lighter() to *light up* the button when pressed. The latter is done in a separate [state](../QtQuick.State/index.html) called *"pressed"*, which activates when the `pressed` property of the button's [MouseArea](../QtQuick.MouseArea/index.html) is set.

The color changes are animated by defining a [Behavior](../QtQuick.Behavior/index.html) on the `color` property.

In order to dynamically change the `dimmed` property of all the buttons of the `NumberPad`, we connect its `buttonPressed` signal to the `Button`'s `updateDimmed()` function in Button.qml:

``` qml
    function updateDimmed() {
        dimmed = window.isButtonDisabled(button.text)
    }
    Component.onCompleted: {
        numPad.buttonPressed.connect(updateDimmed)
        updateDimmed()
    }
```

This way, when a button is pressed, all buttons on the `NumPad` receive a `buttonPressed` signal and are activated or deactivated according to the state of the calculator engine.

<span id="performing-calculations"></span>
Performing Calculations
-----------------------

The calculator.js file defines our calculator engine. It contains variables to store the calculator state, and functions that are called when the user presses the digit and operator buttons. To use the engine, we import calculator.js in the calqlatr.qml file as `CalcEngine`:

``` cpp
import "content/calculator.js" as CalcEngine
```

Importing the engine creates a new instance of it. Therefore, we only do it in the main QML file, `calqlatr.qml`. The root item defined in this file contains helper functions that allow other types to access the calculator engine:

``` qml
    function operatorPressed(operator) {
        CalcEngine.operatorPressed(operator)
        numPad.buttonPressed()
    }
    function digitPressed(digit) {
        CalcEngine.digitPressed(digit)
        numPad.buttonPressed()
    }
    function isButtonDisabled(op) {
        return CalcEngine.disabled(op)
    }
```

When users press a digit, the text from the digit appears on the display. When they press an operator, the appropriate calculation is performed, and the result can be displayed using the equals (=) operator. The clear (C) operator resets the calculator engine.

<span id="list-of-files"></span>
List of Files
-------------

Files:

-   demos/calqlatr/calqlatr.qml
-   demos/calqlatr/content/Button.qml
-   demos/calqlatr/content/Display.qml
-   demos/calqlatr/content/NumberPad.qml
-   demos/calqlatr/content/calculator.js
-   demos/calqlatr/main.cpp
-   demos/calqlatr/calqlatr.pro
-   demos/calqlatr/calqlatr.qmlproject
-   demos/calqlatr/calqlatr.qrc

**See also** QML Applications.

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
