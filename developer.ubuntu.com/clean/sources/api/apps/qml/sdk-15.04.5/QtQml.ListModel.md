---
Title: QtQml.ListModel
---
        
ListModel
=========

<span class="subtitle"></span>
Defines a free-form list data source More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtQml.Models 2.1 |

<span id="properties"></span>
Properties
----------

-   ****[count](#count-prop)**** : int
-   ****[dynamicRoles](#dynamicRoles-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   ****[append](#append-method)****(jsobject *dict*)
-   ****[clear](#clear-method)****()
-   object ****[get](#get-method)****(int *index*)
-   ****[insert](#insert-method)****(int *index*, jsobject *dict*)
-   ****[move](#move-method)****(int *from*, int *to*, int *n*)
-   ****[remove](#remove-method)****(int *index*, int *count*)
-   ****[set](#set-method)****(int *index*, jsobject *dict*)
-   ****[setProperty](#setProperty-method)****(int *index*, string *property*, variant *value*)
-   ****[sync](#sync-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [ListModel](index.html) is a simple container of [ListElement](../QtQml.ListElement.md) definitions, each containing data roles. The contents can be defined dynamically, or explicitly in QML.

The number of elements in the model can be obtained from its [count](#count-prop) property. A number of familiar methods are also provided to manipulate the contents of the model, including [append()](#append-method), [insert()](#insert-method), [move()](#move-method), [remove()](#remove-method) and [set()](#set-method). These methods accept dictionaries as their arguments; these are translated to [ListElement](../QtQml.ListElement.md) objects by the model.

Elements can be manipulated via the model using the [setProperty()](#setProperty-method) method, which allows the roles of the specified element to be set and changed.

<span id="example-usage"></span>
Example Usage
-------------

The following example shows a [ListModel](index.html) containing three elements, with the roles "name" and "cost".

![](https://developer.ubuntu.com/static/devportal_uploaded/f2a83bc6-9968-4e90-9079-69462688ce49-api/apps/qml/sdk-15.04.5/QtQml.ListModel/images/listmodel.png)

``` qml
import QtQuick 2.0
ListModel {
    id: fruitModel
    ListElement {
        name: "Apple"
        cost: 2.45
    }
    ListElement {
        name: "Orange"
        cost: 3.25
    }
    ListElement {
        name: "Banana"
        cost: 1.95
    }
}
```

Roles (properties) in each element must begin with a lower-case letter and should be common to all elements in a model. The [ListElement](../QtQml.ListElement.md) documentation provides more guidelines for how elements should be defined.

Since the example model contains an `id` property, it can be referenced by views, such as the ListView in this example:

``` qml
import QtQuick 2.0
Rectangle {
    width: 200; height: 200
    ListModel {
        id: fruitModel
        ...
    }
    Component {
        id: fruitDelegate
        Row {
            spacing: 10
            Text { text: name }
            Text { text: '$' + cost }
        }
    }
    ListView {
        anchors.fill: parent
        model: fruitModel
        delegate: fruitDelegate
    }
}
```

It is possible for roles to contain list data. In the following example we create a list of fruit attributes:

``` qml
ListModel {
    id: fruitModel
    ListElement {
        name: "Apple"
        cost: 2.45
        attributes: [
            ListElement { description: "Core" },
            ListElement { description: "Deciduous" }
        ]
    }
    ListElement {
        name: "Orange"
        cost: 3.25
        attributes: [
            ListElement { description: "Citrus" }
        ]
    }
    ListElement {
        name: "Banana"
        cost: 1.95
        attributes: [
            ListElement { description: "Tropical" },
            ListElement { description: "Seedless" }
        ]
    }
}
```

The delegate displays all the fruit attributes:

![](https://developer.ubuntu.com/static/devportal_uploaded/12c5abb4-a255-4b62-a73e-f760c4845a05-api/apps/qml/sdk-15.04.5/QtQml.ListModel/images/listmodel-nested.png)

``` qml
Component {
    id: fruitDelegate
    Item {
        width: 200; height: 50
        Text { id: nameField; text: name }
        Text { text: '$' + cost; anchors.left: nameField.right }
        Row {
            anchors.top: nameField.bottom
            spacing: 5
            Text { text: "Attributes:" }
            Repeater {
                model: attributes
                Text { text: description }
            }
        }
    }
}
```

<span id="modifying-list-models"></span>
Modifying List Models
---------------------

The content of a [ListModel](index.html) may be created and modified using the [clear()](#clear-method), [append()](#append-method), [set()](#set-method), [insert()](#insert-method) and [setProperty()](#setProperty-method) methods. For example:

``` qml
    Component {
        id: fruitDelegate
        Item {
            width: 200; height: 50
            Text { text: name }
            Text { text: '$' + cost; anchors.right: parent.right }
            // Double the price when clicked.
            MouseArea {
                anchors.fill: parent
                onClicked: fruitModel.setProperty(index, "cost", cost * 2)
            }
        }
    }
```

Note that when creating content dynamically the set of available properties cannot be changed once set. Whatever properties are first added to the model are the only permitted properties in the model.

<span id="using-threaded-list-models-with-workerscript"></span>
Using Threaded List Models with WorkerScript
--------------------------------------------

[ListModel](index.html) can be used together with [WorkerScript](../QtQml.WorkerScript.md) access a list model from multiple threads. This is useful if list modifications are synchronous and take some time: the list operations can be moved to a different thread to avoid blocking of the main GUI thread.

Here is an example that uses [WorkerScript](../QtQml.WorkerScript.md) to periodically append the current time to a list model:

``` qml
        Timer {
            id: timer
            interval: 2000; repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: {
                var msg = {'action': 'appendCurrentTime', 'model': listModel};
                worker.sendMessage(msg);
            }
        }
```

The included file, `dataloader.js`, looks like this:

``` js
WorkerScript.onMessage = function(msg) {
    if (msg.action == 'appendCurrentTime') {
        var data = {'time': new Date().toTimeString()};
        msg.model.append(data);
        msg.model.sync();   // updates the changes to the list
    }
}
```

The timer in the main example sends messages to the worker script by calling [WorkerScript::sendMessage()](../QtQml.WorkerScript.md#sendMessage-method). When this message is received, `WorkerScript.onMessage()` is invoked in `dataloader.js`, which appends the current time to the list model.

Note the call to [sync()](#sync-method) from the external thread. You must call [sync()](#sync-method) or else the changes made to the list from that thread will not be reflected in the list model in the main thread.

**See also** Data Models, Qt Quick Examples - Threading, and [Qt QML](../QtQml.qtqml-index.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The number of data entries in the model.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dynamicRoles-prop"></span><span class="name">dynamicRoles</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

By default, the type of a role is fixed the first time the role is used. For example, if you create a role called "data" and assign a number to it, you can no longer assign a string to the "data" role. However, when the dynamicRoles property is enabled, the type of a given role is not fixed and can be different between elements.

The dynamicRoles property must be set before any data is added to the [ListModel](index.html), and must be set from the main thread.

A [ListModel](index.html) that has data statically defined (via the [ListElement](../QtQml.ListElement.md) QML syntax) cannot have the dynamicRoles property enabled.

There is a significant performance cost to using a [ListModel](index.html) with dynamic roles enabled. The cost varies from platform to platform but is typically somewhere between 4-6x slower than using static role types.

Due to the performance cost of using dynamic roles, they are disabled by default.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="append-method"></span><span class="name">append</span>(<span class="type">jsobject</span> <em>dict</em>)</p></td>
</tr>
</tbody>
</table>

Adds a new item to the end of the list model, with the values in *dict*.

``` cpp
fruitModel.append({"cost": 5.95, "name":"Pizza"})
```

**See also** [set()](#set-method) and [remove()](#remove-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clear-method"></span><span class="name">clear</span>()</p></td>
</tr>
</tbody>
</table>

Deletes all content from the model.

**See also** [append()](#append-method) and [remove()](#remove-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="get-method"></span><span class="type">object</span> <span class="name">get</span>(<span class="type">int</span> <em>index</em>)</p></td>
</tr>
</tbody>
</table>

Returns the item at *index* in the list model. This allows the item data to be accessed or modified from JavaScript:

``` cpp
Component.onCompleted: {
    fruitModel.append({"cost": 5.95, "name":"Jackfruit"});
    console.log(fruitModel.get(0).cost);
    fruitModel.get(0).cost = 10.95;
}
```

The *index* must be an element in the list.

Note that properties of the returned object that are themselves objects will also be models, and this get() method is used to access elements:

``` cpp
    fruitModel.append(..., "attributes":
        [{"name":"spikes","value":"7mm"},
         {"name":"color","value":"green"}]);
    fruitModel.get(0).attributes.get(1).value; // == "green"
```

**Warning:** The returned object is not guaranteed to remain valid. It should not be used in [property bindings](../QtQml.qtqml-syntax-propertybinding.md).

**See also** [append()](#append-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="insert-method"></span><span class="name">insert</span>(<span class="type">int</span> <em>index</em>, <span class="type">jsobject</span> <em>dict</em>)</p></td>
</tr>
</tbody>
</table>

Adds a new item to the list model at position *index*, with the values in *dict*.

``` cpp
fruitModel.insert(2, {"cost": 5.95, "name":"Pizza"})
```

The *index* must be to an existing item in the list, or one past the end of the list (equivalent to append).

**See also** [set()](#set-method) and [append()](#append-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="move-method"></span><span class="name">move</span>(<span class="type">int</span> <em>from</em>, <span class="type">int</span> <em>to</em>, <span class="type">int</span> <em>n</em>)</p></td>
</tr>
</tbody>
</table>

Moves *n* items *from* one position *to* another.

The from and to ranges must exist; for example, to move the first 3 items to the end of the list:

``` cpp
fruitModel.move(0, fruitModel.count - 3, 3)
```

**See also** [append()](#append-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-method"></span><span class="name">remove</span>(<span class="type">int</span> <em>index</em>, <span class="type">int</span> <em>count</em> = 1)</p></td>
</tr>
</tbody>
</table>

Deletes the content at *index* from the model.

**See also** [clear()](#clear-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="set-method"></span><span class="name">set</span>(<span class="type">int</span> <em>index</em>, <span class="type">jsobject</span> <em>dict</em>)</p></td>
</tr>
</tbody>
</table>

Changes the item at *index* in the list model with the values in *dict*. Properties not appearing in *dict* are left unchanged.

``` cpp
fruitModel.set(3, {"cost": 5.95, "name":"Pizza"})
```

If *index* is equal to count() then a new item is appended to the list. Otherwise, *index* must be an element in the list.

**See also** [append()](#append-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setProperty-method"></span><span class="name">setProperty</span>(<span class="type">int</span> <em>index</em>, <span class="type">string</span> <em>property</em>, <span class="type">variant</span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Changes the *property* of the item at *index* in the list model to *value*.

``` cpp
fruitModel.setProperty(3, "cost", 5.95)
```

The *index* must be an element in the list.

**See also** [append()](#append-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sync-method"></span><span class="name">sync</span>()</p></td>
</tr>
</tbody>
</table>

Writes any unsaved changes to the list model after it has been modified from a worker script.

