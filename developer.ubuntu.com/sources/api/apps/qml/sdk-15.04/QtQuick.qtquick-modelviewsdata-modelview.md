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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Models and Views in Qt Quick

Models and Views in Qt Quick
============================

<span class="subtitle"></span>
<span id="details"></span>
Simply put, applications need to form data and display the data. Qt Quick has the notion of *models*, *views*, and *delegates* to display data. They modularize the visualization of data in order to give the developer or designer control over the different aspects of the data. A developer can swap a list view with a grid view with little changes to the data. Similarly, encapsulating an instance of the data in a delegate allows the developer to dictate how to present or handle the data.

![](https://developer.ubuntu.com/static/devportal_uploaded/9e0e03be-b2ba-4ac1-8218-4c22871177d1-api/apps/qml/sdk-15.04/qtquick-modelviewsdata-modelview/images/modelview-overview.png)

-   **Model** - contains the data and its structure. There are several QML types for creating models.
-   **View** - a container that displays the data. The view might display the data in a list or a grid.
-   **Delegate** - dictates how the data should appear in the view. The delegate takes each data in the model and encapsulates it. The data is accessible through the delegate.

To visualize data, bind the view's `model` property to a model and the `delegate` property to a component or another compatible type.

<span id="displaying-data-with-views"></span>
Displaying Data with Views
--------------------------

Views are containers for collections of items. They are feature-rich and can be customizable to meet style or behavior requirements.

<span id="qtquick-views"></span>
A set of standard views are provided in the basic set of Qt Quick graphical types:

-   [ListView](../QtQuick.ListView/index.html) - arranges items in a horizontal or vertical list
-   [GridView](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.draganddrop/#gridview) - arranges items in a grid within the available space
-   [PathView](../QtQuick.PathView/index.html) - arranges items on a path

These types have properties and behaviors exclusive to each type. Visit their respective documentation for more information.

<span id="decorating-views"></span>
### Decorating Views

Views allow visual customization through *decoration* properties such as the `header`, `footer`, and `section` properties. By binding an object, usually another visual object, to these properties, the views are decoratable. A footer may include a [Rectangle](../QtQuick.Rectangle/index.html) type showcasing borders or a header that displays a logo on top of the list.

Suppose that a specific club wants to decorate its members list with its brand colors. A member list is in a `model` and the `delegate` will display the model's content.

``` qml
ListModel {
    id: nameModel
    ListElement { name: "Alice" }
    ListElement { name: "Bob" }
    ListElement { name: "Jane" }
    ListElement { name: "Harry" }
    ListElement { name: "Wendy" }
}
Component {
    id: nameDelegate
    Text {
        text: name;
        font.pixelSize: 24
    }
}
```

The club may decorate the members list by binding visual objects to the `header` and `footer` properties. The visual object may be defined inline, in another file, or in a Component type.

``` qml
ListView {
    anchors.fill: parent
    clip: true
    model: nameModel
    delegate: nameDelegate
    header: bannercomponent
    footer: Rectangle {
        width: parent.width; height: 30;
        gradient: clubcolors
    }
    highlight: Rectangle {
        width: parent.width
        color: "lightgray"
    }
}
Component {     //instantiated when header is processed
    id: bannercomponent
    Rectangle {
        id: banner
        width: parent.width; height: 50
        gradient: clubcolors
        border {color: "#9EDDF2"; width: 2}
        Text {
            anchors.centerIn: parent
            text: "Club Members"
            font.pixelSize: 32
        }
    }
}
Gradient {
    id: clubcolors
    GradientStop { position: 0.0; color: "#8EE2FE"}
    GradientStop { position: 0.66; color: "#7ED2EE"}
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/0e7071c2-8c86-4345-a62a-1288b829b731-api/apps/qml/sdk-15.04/qtquick-modelviewsdata-modelview/images/listview-decorations.png)

<span id="mouse-and-touch-handling"></span>
### Mouse and Touch Handling

The views handle dragging and flicking of their content, however they do not handle touch interaction with the individual delegates. In order for the delegates to react to touch input, e.g. to set the `currentIndex`, a [MouseArea](../QtQuick.MouseArea/index.html) with the appropriate touch handling logic must be provided by the delegate.

Note that if `highlightRangeMode` is set to `StrictlyEnforceRange` the currentIndex will be affected by dragging/flicking the view, since the view will always ensure that the `currentIndex` is within the highlight range specified.

<span id="listview-sections"></span>
### ListView Sections

[ListView](../QtQuick.ListView/index.html) contents may be grouped into *sections*, where related list items are labeled according to their sections. Further, the sections may be decorated with [delegates](index.html#qml-view-delegate).

A list may contain a list indicating people's names and the team on which team the person belongs.

``` qml
ListModel {
    id: nameModel
    ListElement { name: "Alice"; team: "Crypto" }
    ListElement { name: "Bob"; team: "Crypto" }
    ListElement { name: "Jane"; team: "QA" }
    ListElement { name: "Victor"; team: "QA" }
    ListElement { name: "Wendy"; team: "Graphics" }
}
Component {
    id: nameDelegate
    Text {
        text: name;
        font.pixelSize: 24
        anchors.left: parent.left
        anchors.leftMargin: 2
    }
}
```

The [ListView](../QtQuick.ListView/index.html) type has the `section` attached property that can combine adjacent and related types into a section. The `section.property` determines which list type property to use as sections. The `section.criteria` can dictate how the section names are displayed and the `section.delegate` is similar to the views' [delegate](index.html#qml-view-delegate) property.

``` qml
ListView {
    anchors.fill: parent
    model: nameModel
    delegate: nameDelegate
    focus: true
    highlight: Rectangle {
        color: "lightblue"
        width: parent.width
    }
    section {
        property: "team"
        criteria: ViewSection.FullString
        delegate: Rectangle {
            color: "#b0dfb0"
            width: parent.width
            height: childrenRect.height + 4
            Text { anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 16
                font.bold: true
                text: section
            }
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/4b142790-28b2-49f3-8d34-1e40c70e906b-api/apps/qml/sdk-15.04/qtquick-modelviewsdata-modelview/images/listview-section.png)

<span id="qml-view-delegate"></span><span id="view-delegates"></span>
View Delegates
--------------

Views need a *delegate* to visually represent an item in a list. A view will visualize each item list according to the template defined by the delegate. Items in a model are accessible through the `index` property as well as the item's properties.

``` qml
Component {
    id: petdelegate
    Text {
        id: label
        font.pixelSize: 24
        text: if (index == 0)
            label.text = type + " (default)"
        else
            text: type
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/70ca5022-a64b-4102-8a9f-61c13818c82d-api/apps/qml/sdk-15.04/qtquick-modelviewsdata-modelview/images/listview-setup.png)

<span id="accessing-views-and-models-from-delegates"></span>
### Accessing Views and Models from Delegates

The list view to which the delegate is bound is accessible from the delegate through the `ListView.view` property. Likewise, the [GridView](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.draganddrop/#gridview) `GridView.view` is available to delegates. The corresponding model and its properties, therefore, are available through `ListView.view.model`. In addition, any defined signals or methods in the model are also accessible.

This mechanism is useful when you want to use the same delegate for a number of views, for example, but you want decorations or other features to be different for each view, and you would like these different settings to be properties of each of the views. Similarly, it might be of interest to access or show some properties of the model.

In the following example, the delegate shows the property *language* of the model, and the color of one of the fields depends on the property *fruit\_color* of the view.

``` qml
Rectangle {
     width: 200; height: 200
    ListModel {
        id: fruitModel
        property string language: "en"
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
    Component {
        id: fruitDelegate
        Row {
                id: fruit
                Text { text: " Fruit: " + name; color: fruit.ListView.view.fruit_color }
                Text { text: " Cost: $" + cost }
                Text { text: " Language: " + fruit.ListView.view.model.language }
        }
    }
    ListView {
        property color fruit_color: "green"
        model: fruitModel
        delegate: fruitDelegate
        anchors.fill: parent
    }
}
```

<span id="qml-data-models"></span><span id="models"></span>
Models
------

Data is provided to the delegate via named data roles which the delegate may bind to. Here is a [ListModel](index.html#listmodel) with two roles, *type* and *age*, and a [ListView](../QtQuick.ListView/index.html) with a delegate that binds to these roles to display their values:

``` qml
import QtQuick 2.0
Item {
    width: 200; height: 250
    ListModel {
        id: myModel
        ListElement { type: "Dog"; age: 8 }
        ListElement { type: "Cat"; age: 5 }
    }
    Component {
        id: myDelegate
        Text { text: type + ", " + age }
    }
    ListView {
        anchors.fill: parent
        model: myModel
        delegate: myDelegate
    }
}
```

If there is a naming clash between the model's properties and the delegate's properties, the roles can be accessed with the qualified *model* name instead. For example, if a [Text](../QtQuick.qtquick-releasenotes/index.html#text) type had *type* or *age* properties, the text in the above example would display those property values instead of the *type* and *age* values from the model item. In this case, the properties could have been referenced as `model.type` and `model.age` instead to ensure the delegate displays the property values from the model item.

A special *index* role containing the index of the item in the model is also available to the delegate. Note this index is set to -1 if the item is removed from the model. If you bind to the index role, be sure that the logic accounts for the possibility of index being -1, i.e. that the item is no longer valid. (Usually the item will shortly be destroyed, but it is possible to delay delegate destruction in some views via a `delayRemove` attached property.)

Models that do not have named roles (such as the [ListModel](index.html#listmodel) shown below) will have the data provided via the *modelData* role. The *modelData* role is also provided for models that have only one role. In this case the *modelData* role contains the same data as the named role.

QML provides several types of data models among the built-in set of QML types. In addition, models can be created with Qt C++ and then made available to the QMLEngine for use by QML components. For information about creating these models, visit the [Using C++ Models with Qt Quick Views](../QtQuick.qtquick-modelviewsdata-cppmodels/index.html) and creating QML types articles.

Positioning of items from a model can be achieved using a [Repeater](../QtQuick.Repeater/index.html).

<span id="listmodel"></span>
### ListModel

[ListModel](index.html#listmodel) is a simple hierarchy of types specified in QML. The available roles are specified by the ListElement properties.

``` qml
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

The above model has two roles, *name* and *cost*. These can be bound to by a [ListView](../QtQuick.ListView/index.html) delegate, for example:

``` qml
ListView {
    anchors.fill: parent
    model: fruitModel
    delegate: Row {
        Text { text: "Fruit: " + name }
        Text { text: "Cost: $" + cost }
    }
}
```

[ListModel](index.html#listmodel) provides methods to manipulate the [ListModel](index.html#listmodel) directly via JavaScript. In this case, the first item inserted determines the roles available to any views that are using the model. For example, if an empty [ListModel](index.html#listmodel) is created and populated via JavaScript, the roles provided by the first insertion are the only roles that will be shown in the view:

``` qml
ListModel { id: fruitModel }
    ...
MouseArea {
    anchors.fill: parent
    onClicked: fruitModel.append({"cost": 5.95, "name":"Pizza"})
}
```

When the [MouseArea](../QtQuick.MouseArea/index.html) is clicked, `fruitModel` will have two roles, *cost* and *name*. Even if subsequent roles are added, only the first two will be handled by views using the model. To reset the roles available in the model, call ListModel::clear().

<span id="xmllistmodel"></span>
### XmlListModel

[XmlListModel](index.html#xmllistmodel) allows construction of a model from an XML data source. The roles are specified via the [XmlRole](../QtQuick.XmlListModel.XmlRole/index.html) type. The type needs to be imported.

``` cpp
import QtQuick.XmlListModel 2.0
```

The following model has three roles, *title*, *link* and *description*:

``` qml
XmlListModel {
     id: feedModel
     source: "http://rss.news.yahoo.com/rss/oceania"
     query: "/rss/channel/item"
     XmlRole { name: "title"; query: "title/string()" }
     XmlRole { name: "link"; query: "link/string()" }
     XmlRole { name: "description"; query: "description/string()" }
}
```

The [RSS News demo](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.demos-rssnews/) shows how [XmlListModel](index.html#xmllistmodel) can be used to display an RSS feed.

<span id="visualitemmodel"></span>
### VisualItemModel

[VisualItemModel](index.html#visualitemmodel) allows QML items to be provided as a model.

This model contains both the data and delegate; the child items of a [VisualItemModel](index.html#visualitemmodel) provide the contents of the delegate. The model does not provide any roles.

``` qml
VisualItemModel {
    id: itemModel
    Rectangle { height: 30; width: 80; color: "red" }
    Rectangle { height: 30; width: 80; color: "green" }
    Rectangle { height: 30; width: 80; color: "blue" }
}
ListView {
    anchors.fill: parent
    model: itemModel
}
```

Note that in the above example there is no delegate required. The items of the model itself provide the visual types that will be positioned by the view.

<span id="integers-as-models"></span>
### Integers as Models

An integer can be used as a model that contains a certain number of types. In this case, the model does not have any data roles.

The following example creates a [ListView](../QtQuick.ListView/index.html) with five elements:

``` qml
Item {
    width: 200; height: 250
    Component {
        id: itemDelegate
        Text { text: "I am item number: " + index }
    }
    ListView {
        anchors.fill: parent
        model: 5
        delegate: itemDelegate
    }
}
```

<span id="object-instances-as-models"></span>
### Object Instances as Models

An object instance can be used to specify a model with a single object type. The properties of the object are provided as roles.

The example below creates a list with one item, showing the color of the *myText* text. Note the use of the fully qualified *model.color* property to avoid clashing with *color* property of the Text type in the delegate.

``` qml
Rectangle {
    width: 200; height: 250
    Text {
        id: myText
        text: "Hello"
        color: "#dd44ee"
    }
    Component {
        id: myDelegate
        Text { text: model.color }
    }
    ListView {
        anchors.fill: parent
        anchors.topMargin: 30
        model: myText
        delegate: myDelegate
    }
}
```

<span id="qml-c-models"></span><span id="c-data-models"></span>
### C++ Data Models

Models can be defined in C++ and then made available to QML. This mechanism is useful for exposing existing C++ data models or otherwise complex datasets to QML.

For information, visit the [Using C++ Models with Qt Quick Views](../QtQuick.qtquick-modelviewsdata-cppmodels/index.html) article.

<span id="repeaters"></span>
Repeaters
---------

![](https://developer.ubuntu.com/static/devportal_uploaded/d2a236c2-2706-4b4c-9500-86735d1ef18e-api/apps/qml/sdk-15.04/qtquick-modelviewsdata-modelview/images/repeater-index.png)

Repeaters create items from a template for use with positioners, using data from a model. Combining repeaters and positioners is an easy way to lay out lots of items. A [Repeater](../QtQuick.Repeater/index.html) item is placed inside a positioner, and generates items that the enclosing positioner arranges.

Each Repeater creates a number of items by combining each element of data from a model, specified using the [model](../QtQuick.Repeater/index.html#model-prop) property, with the template item, defined as a child item within the Repeater. The total number of items is determined by the amount of data in the model.

The following example shows a repeater used with a Grid item to arrange a set of Rectangle items. The Repeater item creates a series of 24 rectangles for the Grid item to position in a 5 by 5 arrangement.

``` qml
import QtQuick 2.0
Rectangle {
    width: 400; height: 400; color: "black"
    Grid {
        x: 5; y: 5
        rows: 5; columns: 5; spacing: 10
        Repeater { model: 24
                   Rectangle { width: 70; height: 70
                               color: "lightgreen"
                               Text { text: index
                                      font.pointSize: 30
                                      anchors.centerIn: parent } }
        }
    }
}
```

The number of items created by a Repeater is held by its [count](../QtQuick.Repeater/index.html#count-prop) property. It is not possible to set this property to determine the number of items to be created. Instead, as in the above example, we use an integer as the model. This is explained in the [QML Data Models](index.html#integers-as-models) document.

It is also possible to use a delegate as the template for the items created by a Repeater. This is specified using the [delegate](../QtQuick.Repeater/index.html#delegate-prop) property.

<span id="using-transitions"></span>
Using Transitions
-----------------

Transitions can be used to animate items that are added to, moved within, or removed from a positioner.

Transitions for adding items apply to items that are created as part of a positioner, as well as those that are reparented to become children of a positioner. Transitions for removing items apply to items within a positioner that are deleted, as well as those that are removed from a positioner and given new parents in a document.

Additionally, changing the opacity of items to zero will cause them to disappear using the remove transition, and making the opacity non-zero will cause them to appear using the add transition.

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
