---
Title: QtQml.qtqml-syntax-signals
---
        
Signal and Handler Event System
===============================

<span class="subtitle"></span>
<span id="details"></span>
Application and user interface components need to communicate with each other. For example, a button needs to know that the user has clicked on it. The button may change colors to indicate its state or perform some logic. As well, application needs to know whether the user is clicking the button. The application may need to relay this clicking event to other applications.

QML has a signal and handler mechanism, where the *signal* is the event and the signal is responded to through a *signal handler*. When a signal is emitted, the corresponding signal handler is invoked. Placing logic such as scripts or other operations in the handler allows the component to respond to the event.

<span id="qml-signals-and-handlers"></span><span id="receiving-signals-with-signal-handlers"></span>
Receiving Signals with Signal Handlers
--------------------------------------

To receive a notification when a particular signal is emitted for a particular object, the object definition should declare a signal handler named *on&lt;Signal&gt;* where *&lt;Signal&gt;* is the name of the signal, with the first letter capitalized. The signal handler should contain the JavaScript code to be executed when the signal handler is invoked.

For example, the MouseArea type from the `QtQuick` module has a `clicked` signal that is emitted whenever the mouse is clicked within the area. Since the signal name is `clicked`, the signal handler for receiving this signal should be named `onClicked`. In the example below, whenever the mouse area is clicked, the `onClicked` handler is invoked, applying a random color to the Rectangle:

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    width: 100; height: 100
    MouseArea {
        anchors.fill: parent
        onClicked: {
            rect.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1);
        }
    }
}
```

Looking at the MouseArea documentation, you can see the clicked signal is emitted with a parameter named `mouse` which is a MouseEvent object that contains further details about the mouse click event. This name can be referred to in our `onClicked` handler to access this parameter. For example, the MouseEvent type has `x` and `y` coordinates that allows us to print out the exact location where the mouse was clicked:

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    width: 100; height: 100
    MouseArea {
        anchors.fill: parent
        onClicked: {
            rect.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1);
            // access 'mouse' parameter
            console.log("Clicked mouse at", mouse.x, mouse.y)
        }
    }
}
```

<span id="property-change-signal-handlers"></span>
### Property Change Signal Handlers

A signal is automatically emitted when the value of a QML property changes. This type of signal is a *property change signal* and signal handlers for these signals are written in the form *on&lt;Property&gt;Changed* where *&lt;Property&gt;* is the name of the property, with the first letter capitalized.

For example, the MouseArea type has a pressed property. To receive a notification whenever this property changes, write a signal handler named `onPressedChanged`:

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    width: 100; height: 100
    MouseArea {
        anchors.fill: parent
        onPressedChanged: {
            console.log("Mouse area is pressed?", pressed)
        }
    }
}
```

Even though the MouseArea documentation does not document a signal handler named `onPressedChanged`, the signal is implicitly provided by the fact that the `pressed` property exists.

<span id="using-the-connections-type"></span>
### Using the Connections Type

In some cases it may be desirable to access a signal outside of the object that emits it. For these purposes, the `QtQuick` module provides the [Connections](../QtQml.Connections.md) type for connecting to signals of arbitrary objects. A [Connections](../QtQml.Connections.md) object can receive any signal from its specified [target](../QtQml.Connections.md#target-prop).

For example, the `onClicked` handler in the earlier example could have been received by the root Rectangle instead, by placing the `onClicked` handler in a [Connections](../QtQml.Connections.md) object that has its [target](../QtQml.Connections.md#target-prop) set to the MouseArea:

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    width: 100; height: 100
    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
    Connections {
        target: mouseArea
        onClicked: {
            rect.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1);
        }
    }
}
```

<span id="attached-signal-handlers"></span>
### Attached Signal Handlers

An [attached signal handler](../QtQml.qtqml-syntax-objectattributes.md#attached-properties-and-attached-signal-handlers) is a signal handler that receives a signal from an *attaching type* rather than the object within which the handler is declared.

For example, `\l` {Component::isCompleted}{Component.isCompleted} is an attached signal handler. This handler is often used to execute some JavaScript code when its creation process has been completed, as in the example below:

``` qml
import QtQuick 2.0
Rectangle {
    width: 200; height: 200
    color: Qt.rgba(Qt.random(), Qt.random(), Qt.random(), 1)
    Component.onCompleted: {
        console.log("The rectangle's color is", color)
    }
}
```

The `onCompleted` handler is not responding to some `completed` signal from the Rectangle type. Instead, an object of the `Component` *attaching type* with a `completed` signal has automatically been *attached* to the Rectangle object by the QML engine, and the engine emits this signal when the object is fully created, thus triggering the `Component.onCompleted` signal handler.

Attached signal handlers allow objects to be notified of particular signals that are significant to each individual object. If there was no `Component.onCompleted` attached signal handler, for example, then an object could not receive this notification without registering for some special signal from some special object. The *attached signal handler* mechanism enables objects to receive particular signals without these extra processes.

See [Attached properties and attached signal handlers](../QtQml.qtqml-syntax-objectattributes.md#attached-properties-and-attached-signal-handlers) for more information on attached signal handlers.

<span id="adding-signals-to-custom-qml-types"></span>
Adding Signals to Custom QML Types
----------------------------------

Signals can be added to custom QML types through the `signal` keyword.

The syntax for defining a new signal is:

`signal <name>[([<type> <parameter name>[, ...]])]`

A signal is emitted by invoking the signal as a method.

For example, say the code below is defined in a file named `SquareButton.qml`. The root Rectangle object has an `activated` signal. When the child MouseArea is clicked, it emits the parent's `activated` signal with the coordinates of the mouse click:

``` qml
// SquareButton.qml
Rectangle {
    id: root
    signal activated(real xPosition, real yPosition)
    width: 100; height: 100
    MouseArea {
        anchors.fill: parent
        onPressed: root.activated(mouse.x, mouse.y)
    }
}
```

Now any objects of the `SquareButton` can connect to the `activated` signal using an `onActivated` signal handler:

``` qml
// myapplication.qml
SquareButton {
    onActivated: console.log("Activated at " + xPosition + "," + yPosition)
}
```

See [Signal Attributes](../QtQml.qtqml-syntax-objectattributes.md#signal-attributes) for more details on writing signals for custom QML types.

<span id="qml-connect-signals-to-method"></span><span id="connecting-signals-to-methods-and-signals"></span>
Connecting Signals to Methods and Signals
-----------------------------------------

Signal objects have a `connect()` method to a connect a signal either to a method or another signal. When a signal is connected to a method, the method is automatically invoked whenever the signal is emitted. This mechanism enables a signal to be received by a method instead of a signal handler.

Below, the `messageReceived` signal is connected to three methods using the `connect()` method:

``` qml
Rectangle {
    id: relay
    signal messageReceived(string person, string notice)
    Component.onCompleted: {
        relay.messageReceived.connect(sendToPost)
        relay.messageReceived.connect(sendToTelegraph)
        relay.messageReceived.connect(sendToEmail)
        relay.messageReceived("Tom", "Happy Birthday")
    }
    function sendToPost(person, notice) {
        console.log("Sending to post: " + person + ", " + notice)
    }
    function sendToTelegraph(person, notice) {
        console.log("Sending to telegraph: " + person + ", " + notice)
    }
    function sendToEmail(person, notice) {
        console.log("Sending to email: " + person + ", " + notice)
    }
}
```

In many cases it is sufficient to receive signals through signal handlers rather than using the connect() function. However, using the `connect` method allows a signal to be received by multiple methods as shown above, which would not be possible with signal handlers as they must be uniquely named. Also, the `connect` method is useful when connecting signals to [dynamically created objects](../QtQml.qtqml-javascript-dynamicobjectcreation.md).

There is a corresponding `disconnect()` method for removing connected signals:

``` qml
Rectangle {
    id: relay
    //...
    function removeTelegraphSignal() {
        relay.messageReceived.disconnect(sendToTelegraph)
    }
}
```

<span id="signal-to-signal-connect"></span>
#### Signal to Signal Connect

By connecting signals to other signals, the `connect()` method can form different signal chains.

``` qml
Rectangle {
    id: forwarder
    width: 100; height: 100
    signal send()
    onSend: console.log("Send clicked")
    MouseArea {
        id: mousearea
        anchors.fill: parent
        onClicked: console.log("MouseArea clicked")
    }
    Component.onCompleted: {
        mousearea.clicked.connect(send)
    }
}
```

Whenever the MouseArea `clicked` signal is emitted, the `send` signal will automatically be emitted as well.

``` cpp
output:
    MouseArea clicked
    Send clicked
```

