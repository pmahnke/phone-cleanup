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
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   QML Object Attributes

QML Object Attributes
=====================

<span class="subtitle"></span>
<span id="details"></span>
Every QML object type has a defined set of attributes. Each instance of an object type is created with the set of attributes that have been defined for that object type. There are several different kinds of attributes which can be specified, which are described below.

<span id="attributes-in-object-declarations"></span>
Attributes in Object Declarations
---------------------------------

An [object declaration](../QtQml.qtqml-syntax-basics/index.html#object-declarations) in a QML document defines a new type. It also declares an object hierarchy that will be instantiated should an instance of that newly defined type be created.

The set of QML object-type attribute types is as follows:

-   the *id* attribute
-   property attributes
-   signal attributes
-   signal handler attributes
-   method attributes
-   attached properties and attached signal handler attributes

These attributes are discussed in detail below.

<span id="the-id-attribute"></span>
### The *id* Attribute

Every QML object type has exactly one *id* attribute. This attribute is provided by the language itself, and cannot be redefined or overridden by any QML object type.

A value may be assigned to the *id* attribute of an object instance to allow that object to be identified and referred to by other objects. This `id` must begin with a lower-case letter or an underscore, and cannot contain characters other than letters, numbers and underscores.

Below is a TextInput object and a Text object. The TextInput object's `id` value is set to "myTextInput". The Text object sets its `text` property to have the same value as the `text` property of the TextInput, by referring to `myTextInput.text`. Now, both items will display the same text:

``` qml
import QtQuick 2.0
Column {
    width: 200; height: 200
    TextInput { id: myTextInput; text: "Hello World" }
    Text { text: myTextInput.text }
}
```

An object can be referred to by its `id` from anywhere within the *component scope* in which it is declared. Therefore, an `id` value must always be unique within its component scope. See [Scope and Naming Resolution](../QtQml.qtqml-documents-scope/index.html) for more information.

Once an object instance is created, the value of its *id* attribute cannot be changed. While it may look like an ordinary property, the `id` attribute is **not** an ordinary `property` attribute, and special semantics apply to it; for example, it is not possible to access `myTextInput.id` in the above example.

<span id="property-attributes"></span>
### Property Attributes

A property is an attribute of an object that can be assigned a static value or bound to a dynamic expression. A property's value can be read by other objects. Generally it can also be modified by another object, unless a particular QML type has explicitly disallowed this for a specific property.

<span id="defining-property-attributes"></span>
#### Defining Property Attributes

A property may be defined for a type in C++ by registering a Q\_PROPERTY of a class which is then registered with the QML type system. Alternatively, a custom property of an object type may be defined in an object declaration in a QML document with the following syntax:

``` cpp
    [default] property <propertyType> <propertyName>
```

In this way an object declaration may [expose a particular value](../QtQml.qtqml-typesystem-objecttypes/index.html#defining-object-types-from-qml) to outside objects or maintain some internal state more easily.

Property names must begin with a lower case letter and can only contain letters, numbers and underscores. JavaScript reserved words are not valid property names. The `default` keyword is optional, and modifies the semantics of the property being declared. See the upcoming section on [default properties](index.html#default-properties) for more information about the `default` property modifier.

Declaring a custom property implicitly creates a value-change [signal](index.html#signal-attributes) for that property, as well as an associated [signal handler](index.html#signal-handler-attributes) called *on&lt;PropertyName&gt;Changed*, where *&lt;PropertyName&gt;* is the name of the property, with the first letter capitalized.

For example, the following object declaration defines a new type which derives from the Rectangle base type. It has two new properties, with a [signal handler](index.html#signal-handler-attributes) implemented for one of those new properties:

``` qml
Rectangle {
    property color previousColor
    property color nextColor
    onNextColorChanged: console.log("The next color will be: " + nextColor.toString())
}
```

<span id="valid-types-in-custom-property-definitions"></span>
##### Valid Types in Custom Property Definitions

Any of the QML Basic Types aside from the enumeration type can be used as custom property types. For example, these are all valid property declarations:

``` qml
Item {
    property int someNumber
    property string someString
    property url someUrl
}
```

(Enumeration values are simply whole number values and can be referred to with the int type instead.)

Some basic types are provided by the `QtQuick` module and thus cannot be used as property types unless the module is imported. See the [QML Basic Types](../QtQml.qtqml-typesystem-basictypes/index.html) documentation for more details.

Note the var basic type is a generic placeholder type that can hold any type of value, including lists and objects:

``` cpp
property var someNumber: 1.5
property var someString: "abc"
property var someBool: true
property var someList: [1, 2, "three", "four"]
property var someObject: Rectangle { width: 100; height: 100; color: "red" }
```

Additionally, any [QML object type](../QtQml.qtqml-typesystem-objecttypes/index.html) can be used as a property type. For example:

``` cpp
property Item someItem
property Rectangle someRectangle
```

This applies to [custom QML types](../QtQml.qtqml-typesystem-objecttypes/index.html#defining-object-types-from-qml) as well. If a QML type was defined in a file named `ColorfulButton.qml` (in a directory which was then imported by the client), then a property of type `ColorfulButton` would also be valid.

<span id="assigning-values-to-property-attributes"></span>
#### Assigning Values to Property Attributes

The value of a property of an object instance may specified in two separate ways:

-   a value assignment on initialization
-   an imperative value assignment

In either case, the value may be either a *static* value or a *binding expression* value.

<span id="value-assignment-on-initialization"></span>
##### Value Assignment on Initialization

The syntax for assigning a value to a property on initialization is:

``` cpp
    <propertyName> : <value>
```

An initialization value assignment may be combined with a property definition in an object declaration, if desired. In that case, the syntax of the property definition becomes:

``` cpp
    [default] property <propertyType> <propertyName> : <value>
```

An example of property value initialization follows:

``` qml
import QtQuick 2.0
Rectangle {
    color: "red"
    property color nextColor: "blue" // combined property declaration and initialization
}
```

<span id="imperative-value-assignment"></span>
##### Imperative Value Assignment

An imperative value assignment is where a property value (either static value or binding expression) is assigned to a property from imperative JavaScript code. The syntax of an imperative value assignment is just the JavaScript assignment operator, as shown below:

``` cpp
    [<objectId>.]<propertyName> = value
```

An example of imperative value assignment follows:

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    Component.onCompleted: {
        rect.color = "red"
    }
}
```

<span id="static-values-and-binding-expression-values"></span>
#### Static Values and Binding Expression Values

As previously noted, there are two kinds of values which may be assigned to a property: *static* values, and *binding expression* values. The latter are also known as [property bindings](../QtQml.qtqml-syntax-propertybinding/index.html).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Kind</th>
<th>Semantics</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Static Value</td>
<td>A constant value which does not depend on other properties.</td>
</tr>
<tr class="even">
<td>Binding Expression</td>
<td>A JavaScript expression which describes a property's relationship with other properties. The variables in this expression are called the property's <em>dependencies</em>.
<p>The QML engine enforces the relationship between a property and its dependencies. When any of the dependencies change in value, the QML engine automatically re-evaluates the binding expression and assigns the new result to the property.</p></td>
</tr>
</tbody>
</table>

Here is an example that shows both kinds of values being assigned to properties:

``` qml
import QtQuick 2.0
Rectangle {
    // both of these are static value assignments on initialization
    width: 400
    height: 200
    Rectangle {
        // both of these are binding expression value assignments on initialization
        width: parent.width / 2
        height: parent.height
    }
}
```

**Note:** To assign a binding expression imperatively, the binding expression must be contained in a function that is passed into [Qt.binding()](../QtQml.Qt/index.html#binding-method), and then the value returned by Qt.binding() must be assigned to the property. In contrast, Qt.binding() must not be used when assigning a binding expression upon initialization. See [Property Binding](../QtQml.qtqml-syntax-propertybinding/index.html) for more information.

<span id="type-safety"></span>
#### Type Safety

Properties are type safe. A property can only be assigned a value that matches the property type.

For example, if a property is a real, and if you try to assign a string to it, you will get an error:

``` cpp
property int volume: "four"  // generates an error; the property's object will not be loaded
```

Likewise if a property is assigned a value of the wrong type during run time, the new value will not be assigned, and an error will be generated.

Some property types do not have a natural value representation, and for those property types the QML engine automatically performs string-to-typed-value conversion. So, for example, even though properties of the `color` type store colors and not strings, you are able to assign the string `"red"` to a color property, without an error being reported.

See [QML Basic Types](../QtQml.qtqml-typesystem-basictypes/index.html) for a list of the types of properties that are supported by default. Additionally, any available [QML object type](../QtQml.qtqml-typesystem-objecttypes/index.html) may also be used as a property type.

<span id="special-property-types"></span>
#### Special Property Types

<span id="object-list-property-attributes"></span>
##### Object List Property Attributes

A list type property can be assigned a list of QML object-type values. The syntax for defining an object list value is a comma-separated list surrounded by square brackets:

``` cpp
    [ <item 1>, <item 2>, ... ]
```

For example, the Item type has a states property that is used to hold a list of [State](../QtQml.State/index.html) type objects. The code below initializes the value of this property to a list of three [State](../QtQml.State/index.html) objects:

``` qml
import QtQuick 2.0
Item {
    states: [
        State { name: "loading" },
        State { name: "running" },
        State { name: "stopped" }
    ]
}
```

If the list contains a single item, the square brackets may be omitted:

``` qml
import QtQuick 2.0
Item {
    states: State { name: "running" }
}
```

A list type property may be specified in an object declaration with the following syntax:

``` cpp
    [default] property list<<objectType>> propertyName
```

and, like other property declarations, a property initialization may be combined with the property declaration with the following syntax:

``` cpp
    [default] property list<<objectType>> propertyName: <value>
```

An example of list property declaration follows:

``` qml
import QtQuick 2.0
Rectangle {
    // declaration without initialization
    property list<Rectangle> siblingRects
    // declaration with initialization
    property list<Rectangle> childRects: [
        Rectangle { color: "red" },
        Rectangle { color: "blue"}
    ]
}
```

If you wish to declare a property to store a list of values which are not necessarily QML object-type values, you should declare a var property instead.

<span id="grouped-properties"></span>
##### Grouped Properties

In some cases properties contain a logical group of sub-property attributes. These sub-property attributes can be assigned to using either the dot notation or group notation.

For example, the Text type has a font group property. Below, the first Text object initializes its `font` values using dot notation, while the second uses group notation:

``` cpp
Text {
    //dot notation
    font.pixelSize: 12
    font.b: true
}
Text {
    //group notation
    font { pixelSize: 12; b: true }
}
```

Grouped property types are basic types which have subproperties. Some of these basic types are provided by the QML language, while others may only be used if the Qt Quick module is imported. See the documentation about [QML Basic Types](../QtQml.qtqml-typesystem-basictypes/index.html) for more information.

<span id="property-aliases"></span>
#### Property Aliases

Property aliases are properties which hold a reference to another property. Unlike an ordinary property definition, which allocates a new, unique storage space for the property, a property alias connects the newly declared property (called the aliasing property) as a direct reference to an existing property (the aliased property).

A property alias declaration looks like an ordinary property definition, except that it requires the `alias` keyword instead of a property type, and the right-hand-side of the property declaration must be a valid alias reference:

``` cpp
[default] property alias <name>: <alias reference>
```

Unlike an ordinary property, an alias can only refer to a object, or the property of a object, that is within the scope of the [type](../QtQml.qtqml-typesystem-objecttypes/index.html) within which the alias is declared. It cannot contain arbitrary JavaScript expressions and it cannot refer to objects declared outside of the scope of its type. Also note the *alias reference* is not optional, unlike the optional default value for an ordinary property; the alias reference must be provided when the alias is first declared.

For example, below is a `Button` type with a `buttonText` aliased property which is connected to the `text` object of the Text child:

``` qml
// Button.qml
import QtQuick 2.0
Rectangle {
    property alias buttonText: textItem.text
    width: 100; height: 30; color: "yellow"
    Text { id: textItem }
}
```

The following code would create a `Button` with a defined text string for the child Text object:

``` qml
Button { buttonText: "Click Me" }
```

Here, modifying `buttonText` directly modifies the textItem.text value; it does not change some other value that then updates textItem.text. If `buttonText` was not an alias, changing its value would not actually change the displayed text at all, as property bindings are not bi-directional: the `buttonText` value would have changed if textItem.text was changed, but not the other way around.

<span id="considerations-for-property-aliases"></span>
##### Considerations for Property Aliases

Aliases are only activated once a component has been fully initialized. An error is generated when an uninitialized alias is referenced. Likewise, aliasing an aliasing property will also result in an error.

``` qml
property alias widgetLabel: label
//will generate an error
//widgetLabel.text: "Initial text"
//will generate an error
//property alias widgetLabelText: widgetLabel.text
Component.onCompleted: widgetLabel.text = "Alias completed Initialization"
```

When importing a [QML object type](../QtQml.qtqml-typesystem-objecttypes/index.html) with a property alias in the root object, however, the property appear as a regular Qt property and consequently can be used in alias references.

It is possible for an aliasing property to have the same name as an existing property, effectively overwriting the existing property. For example, the following QML type has a `color` alias property, named the same as the built-in Rectangle::color property:

``` qml
Rectangle {
    id: coloredrectangle
    property alias color: bluerectangle.color
    color: "red"
    Rectangle {
        id: bluerectangle
        color: "#1234ff"
    }
    Component.onCompleted: {
        console.log (coloredrectangle.color)    //prints "#1234ff"
        setInternalColor()
        console.log (coloredrectangle.color)    //prints "#111111"
        coloredrectangle.color = "#884646"
        console.log (coloredrectangle.color)    //prints #884646
    }
    //internal function that has access to internal properties
    function setInternalColor() {
        color = "#111111"
    }
}
```

Any object that use this type and refer to its `color` property will be referring to the alias rather than the ordinary Rectangle::color property. Internally, however, the red can correctly set its `color` property and refer to the actual defined property rather than the alias.

<span id="default-properties"></span>
#### Default Properties

An object definition can have a single *default* property. A default property is the property to which a value is assigned if an object is declared within another object's definition without declaring it as a value for a particular property.

Declaring a property with the optional `default` keyword marks it as the default property. For example, say there is a file MyLabel.qml with a default property `someText`:

``` qml
// MyLabel.qml
import QtQuick 2.0
Text {
    default property var someText
    text: "Hello, " + someText.text
}
```

The `someText` value could be assigned to in a `MyLabel` object definition, like this:

``` qml
MyLabel {
    Text { text: "world!" }
}
```

This has exactly the same effect as the following:

``` qml
MyLabel {
    someText: Text { text: "world!" }
}
```

However, since the `someText` property has been marked as the default property, it is not necessary to explicitly assign the Text object to this property.

You will notice that child objects can be added to any Item-based type without explicitly adding them to the children property. This is because the default property of Item is its `data` property, and any items added to this list for an Item are automatically added to its list of children.

Default properties can be useful for reassigning the children of an item. See the TabWidget Example, which uses a default property to automatically reassign children of the TabWidget as children of an inner ListView.

<span id="read-only-properties"></span>
#### Read-Only Properties

An object declaration may define a read-only property using the `readonly` keyword, with the following syntax:

``` cpp
    readonly property <propertyType> <propertyName> : <initialValue>
```

Read-only properties must be assigned a value on initialization. After a read-only property is initialized, it no longer possible to give it a value, whether from imperative code or otherwise.

For example, the code in the `Component.onCompleted` block below is invalid:

``` qml
Item {
    readonly property int someNumber: 10
    Component.onCompleted: someNumber = 20  // doesn't work, causes an error
}
```

**Note:** A read-only property cannot also be a [default](index.html#default-properties) or [alias](index.html#property-aliases) property.

<span id="property-modifier-objects"></span>
#### Property Modifier Objects

Properties can have [property value modifier objects](../QtQml.qtqml-cppintegration-definetypes/index.html#property-modifier-types) associated with them. The syntax for declaring an instance of a property modifier type associated with a particular property is as follows:

``` cpp
<PropertyModifierTypeName> on <propertyName> {
    // attributes of the object instance
}
```

It is important to note that the above syntax is in fact an [object declaration](../QtQml.qtqml-syntax-basics/index.html#object-declarations) which will instantiate an object which acts on a pre-existing property.

Certain property modifier types may only be applicable to specific property types, however this is not enforced by the language. For example, the `NumberAnimation` type provided by `QtQuick` will only animate numeric-type (such as `int` or `real`) properties. Attempting to use a `NumberAnimation` with non-numeric property will not result in an error, however the non-numeric property will not be animated. The behavior of a property modifier type when associated with a particular property type is defined by its implementation.

<span id="signal-attributes"></span>
### Signal Attributes

A signal is a notification from an object that some event has occurred: for example, a property has changed, an animation has started or stopped, or when an image has been downloaded. The MouseArea type, for example, has a clicked signal that is emitted when the user clicks within the mouse area.

An object can be notified through a [signal handler](index.html#signal-handler-attributes) whenever it a particular signal is emitted. A signal handler is declared with the syntax *on&lt;Signal&gt;* where *&lt;Signal&gt;* is the name of the signal, with the first letter capitalized. The signal handler must be declared within the definition of the object that emits the signal, and the handler should contain the block of JavaScript code to be executed when the signal handler is invoked.

For example, the *onClicked* signal handler below is declared within the MouseArea object definition, and is invoked when the MouseArea is clicked, causing a console message to be printed:

``` qml
import QtQuick 2.0
Item {
    width: 100; height: 100
    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.log("Click!")
        }
    }
}
```

<span id="defining-signal-attributes"></span>
#### Defining Signal Attributes

A signal may be defined for a type in C++ by registering a Q\_SIGNAL of a class which is then registered with the QML type system. Alternatively, a custom signal for an object type may be defined in an object declaration in a QML document with the following syntax:

``` cpp
    signal <signalName>[([<type> <parameter name>[, ...]])]
```

Attempting to declare two signals or methods with the same name in the same type block is an error. However, a new signal may reuse the name of an existing signal on the type. (This should be done with caution, as the existing signal may be hidden and become inaccessible.)

Here are three examples of signal declarations:

``` qml
import QtQuick 2.0
Item {
    signal clicked
    signal hovered()
    signal actionPerformed(string action, var actionResult)
}
```

If the signal has no parameters, the "()" brackets are optional. If parameters are used, the parameter types must be declared, as for the `string` and `var` arguments for the `actionPerformed` signal above. The allowed parameter types are the same as those listed under [Defining Property Attributes](index.html#defining-property-attributes) on this page.

To emit a signal, invoke it as a method. Any relevant [signal handlers](index.html#signal-handler-attributes) will be invoked when the signal is emitted, and handlers can use the defined signal argument names to access the respective arguments.

<span id="property-change-signals"></span>
#### Property Change Signals

QML types also provide built-in *property change signals* that are emitted whenever a property value changes, as previously described in the section on [property attributes](index.html#property-attributes). See the upcoming section on [property change signal handlers](../QtQml.qtqml-syntax-signals/index.html#property-change-signal-handlers) for more information about why these signals are useful, and how to use them.

<span id="signal-handler-attributes"></span>
### Signal Handler Attributes

Signal handlers are a special sort of [method attribute](index.html#method-attributes), where the method implementation is invoked by the QML engine whenever the associated signal is emitted. Adding a signal to an object definition in QML will automatically add an associated signal handler to the object definition, which has, by default, an empty implementation. Clients can provide an implementation, to implement program logic.

Consider the following `SquareButton` type, whose definition is provided in the `SquareButton.qml` file as shown below, with signals `activated` and `deactivated`:

``` qml
// SquareButton.qml
Rectangle {
    id: root
    signal activated(real xPosition, real yPosition)
    signal deactivated
    width: 100; height: 100
    MouseArea {
        anchors.fill: parent
        onPressed: root.activated(mouse.x, mouse.y)
        onRelased: root.deactivated()
    }
}
```

These signals could be received by any `SquareButton` objects in another QML file in the same directory, where implementations for the signal handlers are provided by the client:

``` qml
// myapplication.qml
SquareButton {
    onActivated: console.log("Activated at " + xPosition + "," + yPosition)
    onDeactivated: console.log("Deactivated!")
}
```

See the [Signal and Handler Event System](../QtQml.qtqml-syntax-signals/index.html) for more details on use of signals.

<span id="property-change-signal-handlers"></span>
#### Property Change Signal Handlers

Signal handlers for property change signal take the syntax form *on&lt;Property&gt;Changed* where *&lt;Property&gt;* is the name of the property, with the first letter capitalized. For example, although the TextInput type documentation does not document a `textChanged` signal, this signal is implicitly available through the fact that TextInput has a text property and so it is possible to write an `onTextChanged` signal handler to be called whenever this property changes:

``` qml
import QtQuick 2.0
TextInput {
    text: "Change this!"
    onTextChanged: console.log("Text has changed to:", text)
}
```

<span id="method-attributes"></span>
### Method Attributes

A method of an object type is a function which may be called to perform some processing or trigger further events. A method can be connected to a signal so that it is automatically invoked whenever the signal is emitted. See [Signal and Handler Event System](../QtQml.qtqml-syntax-signals/index.html) for more details.

<span id="defining-method-attributes"></span>
#### Defining Method Attributes

A method may be defined for a type in C++ by tagging a function of a class which is then registered with the QML type system with Q\_INVOKABLE or by registering it as a Q\_SLOT of the class. Alternatively, a custom method can be added to an object declaration in a QML document with the following syntax:

``` cpp
    function <functionName>([<parameterName>[, ...]]) { <body> }
```

Methods can be added to a QML type in order to define standalone, reusable blocks of JavaScript code. These methods can be invoked either internally or by external objects.

Unlike signals, method parameter types do not have to be declared as they default to the `var` type.

Attempting to declare two methods or signals with the same name in the same type block is an error. However, a new method may reuse the name of an existing method on the type. (This should be done with caution, as the existing method may be hidden and become inaccessible.)

Below is a Rectangle with a `calculateHeight()` method that is called when assigning the `height` value:

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    function calculateHeight() {
        return rect.width / 2;
    }
    width: 100
    height: calculateHeight()
}
```

If the method has parameters, they are accessible by name within the method. Below, when the MouseArea is clicked it invokes the `moveTo()` method which can then refer to the received `newX` and `newY` parameters to reposition the text:

``` qml
import QtQuick 2.0
Item {
    width: 200; height: 200
    MouseArea {
        anchors.fill: parent
        onClicked: label.moveTo(mouse.x, mouse.y)
    }
    Text {
        id: label
        function moveTo(newX, newY) {
            label.x = newX;
            label.y = newY;
        }
        text: "Move me!"
    }
}
```

<span id="attached-properties-and-attached-signal-handlers"></span>
### Attached Properties and Attached Signal Handlers

*Attached properties* and *attached signal handlers* are mechanisms that enable objects to be annotated with extra properties or signal handlers that are otherwise unavailable to the object. In particular, they allow objects to access properties or signals that are specifically relevant to the individual object.

A QML type implementation may choose to create an *attaching type* with particular properties and signals. Instances of this type can then be created and *attached* to specific objects at run time, allowing those objects to access the properties and signals of the attaching type. These are accessed by prefixing the properties and respective signal handlers with the name of the attaching type.

References to attached properties and handlers take the following syntax form:

``` cpp
<AttachingType>.<propertyName>
<AttachingType>.on<SignalName>
```

For example, the ListView type has an attached property ListView.isCurrentItem that is available to each delegate object in a ListView. This can be used by each individual delegate object to determine whether it is the currently selected item in the view:

``` qml
import QtQuick 2.0
ListView {
    width: 240; height: 320
    model: 3
    delegate: Rectangle {
        width: 100; height: 30
        color: ListView.isCurrentItem ? "red" : "yellow"
    }
}
```

In this case, the name of the *attaching type* is `ListView` and the property in question is `isCurrentItem`, hence the attached property is referred to as `ListView.isCurrentItem`.

An attached signal handler is referred to in the same way. For example, the `Component.isCompleted` attached signal handler is commonly used to execute some JavaScript code when a component's creation process has been completed. In the example below, once the [ListModel](../QtQml.ListModel/index.html) has been fully created, its `Component.onCompleted` signal handler will automatically be invoked to populate the model:

``` qml
import QtQuick 2.0
ListView {
    width: 240; height: 320
    model: ListModel {
        id: listModel
        Component.onCompleted: {
            for (var i = 0; i < 10; i++)
                listModel.append({"Name": "Item " + i})
        }
    }
    delegate: Text { text: index }
}
```

Since the name of the *attaching type* is `Component` and that type has a `completed` signal, the attached signal handler is referred to as `Component.isCompleted`.

<span id="a-note-about-accessing-attached-properties-and-signal-handlers"></span>
#### A Note About Accessing Attached Properties and Signal Handlers

A common error is to assume that attached properties and signal handlers are directly accessible from the children of the object to which these attributes have been attached. This is not the case. The instance of the *attaching type* is only attached to specific objects, not to the object and all of its children.

For example, below is a modified version of the earlier example involving attached properties. This time, the delegate is an Item and the colored Rectangle is a child of that item:

``` qml
import QtQuick 2.0
ListView {
    width: 240; height: 320
    model: 3
    delegate: Item {
        width: 100; height: 30
        Rectangle {
            width: 100; height: 30
            color: ListView.isCurrentItem ? "red" : "yellow"    // WRONG! This won't work.
        }
    }
}
```

This does not work as expected because `ListView.isCurrentItem` is attached *only* to the root delegate object, and not its children. Since the Rectangle is a child of the delegate, rather than being the delegate itself, it cannot access the `isCurrentItem` attached property as `ListView.isCurrentItem`. So instead, the rectangle should access `isCurrentItem` through the root delegate:

``` qml
ListView {
    //....
    delegate: Item {
        id: delegateItem
        width: 100; height: 30
        Rectangle {
            width: 100; height: 30
            color: delegateItem.ListView.isCurrentItem ? "red" : "yellow"   // correct
        }
    }
}
```

Now `delegateItem.ListView.isCurrentItem` correctly refers to the `isCurrentItem` attached property of the delegate.

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
