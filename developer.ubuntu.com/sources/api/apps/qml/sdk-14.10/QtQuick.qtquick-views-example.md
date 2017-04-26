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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Examples - Views

Qt Quick Examples - Views
=========================

<span class="subtitle"></span>
<span id="details"></span>
This is a collection of QML model/view examples

![](https://developer.ubuntu.com/static/devportal_uploaded/b2cc131b-83fe-4d1a-a0eb-ba6ee581efb1-api/apps/qml/sdk-14.10/qtquick-views-example/images/qml-modelviews-example.png)

This is a collection of small QML examples relating to model and view functionality. They demonstrate how to show data from a model using the [Qt Quick](../QtQuick.qtquick-index/index.html) view types.

<span id="gridview-and-pathview-demonstrate-usage-of-these-types-to-display-views"></span>
### GridView and PathView demonstrate usage of these types to display views.

``` qml
    GridView {
        anchors.fill: parent
        cellWidth: 100; cellHeight: 100
        focus: true
        model: appModel
        highlight: Rectangle { width: 80; height: 80; color: "lightsteelblue" }
        delegate: Item {
            width: 100; height: 100
            Image {
                id: myIcon
                y: 20; anchors.horizontalCenter: parent.horizontalCenter
                source: icon
            }
            Text {
                anchors { top: myIcon.bottom; horizontalCenter: parent.horizontalCenter }
                text: name
            }
            MouseArea {
                anchors.fill: parent
                onClicked: parent.GridView.view.currentIndex = index
            }
        }
    }
```

<span id="dynamic-list-demonstrates-animation-of-runtime-additions-and-removals-to-a-listview"></span>
### Dynamic List demonstrates animation of runtime additions and removals to a ListView.

The [ListView](../QtQuick.ListView/index.html).onAdd signal handler runs an animation when new items are added to the view, and the [ListView](../QtQuick.ListView/index.html).onRemove another when they are removed.

``` qml
        Item {
            ListView.onAdd: SequentialAnimation {
                PropertyAction { target: delegateItem; property: "height"; value: 0 }
                NumberAnimation { target: delegateItem; property: "height"; to: 80; duration: 250; easing.type: Easing.InOutQuad }
            }
            ListView.onRemove: SequentialAnimation {
                PropertyAction { target: delegateItem; property: "ListView.delayRemove"; value: true }
                NumberAnimation { target: delegateItem; property: "height"; to: 0; duration: 250; easing.type: Easing.InOutQuad }
                // Make sure delayRemove is set back to false so that the item can be destroyed
                PropertyAction { target: delegateItem; property: "ListView.delayRemove"; value: false }
            }
        }
```

<span id="expanding-delegates-demonstrates-delegates-that-expand-when-activated"></span>
### Expanding Delegates demonstrates delegates that expand when activated.

It has a complex delegate the size and appearance of which can change, displacing other items in the view.

``` qml
        Item {
            id: recipe
            // Create a property to contain the visibility of the details.
            // We can bind multiple element's opacity to this one property,
            // rather than having a "PropertyChanges" line for each element we
            // want to fade.
            property real detailsOpacity : 0
            MouseArea {
                anchors.fill: parent
                onClicked: recipe.state = 'Details';
            }
            // Lay out the page: picture, title and ingredients at the top, and method at the
            // bottom.  Note that elements that should not be visible in the list
            // mode have their opacity set to recipe.detailsOpacity.
            Row {
                id: topLayout
                x: 10; y: 10; height: recipeImage.height; width: parent.width
                spacing: 10
                Image {
                    id: recipeImage
                    width: 50; height: 50
                    source: picture
                }
            Item {
                id: details
                x: 10; width: parent.width - 20
                anchors { top: topLayout.bottom; topMargin: 10; bottom: parent.bottom; bottomMargin: 10 }
                opacity: recipe.detailsOpacity
            }
            // A button to close the detailed view, i.e. set the state back to default ('').
            TextButton {
                y: 10
                anchors { right: background.right; rightMargin: 10 }
                opacity: recipe.detailsOpacity
                text: "Close"
                onClicked: recipe.state = '';
            }
            states: State {
                name: "Details"
                PropertyChanges { target: background; color: "white" }
                PropertyChanges { target: recipeImage; width: 130; height: 130 } // Make picture bigger
                PropertyChanges { target: recipe; detailsOpacity: 1; x: 0 } // Make details visible
                PropertyChanges { target: recipe; height: listView.height } // Fill the entire list area with the detailed view
                // Move the list so that this item is at the top.
                PropertyChanges { target: recipe.ListView.view; explicit: true; contentY: recipe.y }
                // Disallow flicking while we're in detailed view
                PropertyChanges { target: recipe.ListView.view; interactive: false }
            }
            transitions: Transition {
                // Make the state changes smooth
                ParallelAnimation {
                    ColorAnimation { property: "color"; duration: 500 }
                    NumberAnimation { duration: 300; properties: "detailsOpacity,x,contentY,height,width" }
                }
            }
        }
```

<span id="highlight-demonstrates-adding-a-custom-highlight-to-a-listview"></span>
### Highlight demonstrates adding a custom highlight to a ListView.

``` qml
    // Define a highlight with customized movement between items.
    Component {
        id: highlightBar
        Rectangle {
            width: 200; height: 50
            color: "#FFFF88"
            y: listView.currentItem.y;
            Behavior on y { SpringAnimation { spring: 2; damping: 0.1 } }
        }
    }
    ListView {
        id: listView
        width: 200; height: parent.height
        x: 30
        model: PetsModel {}
        delegate: petDelegate
        focus: true
        // Set the highlight delegate. Note we must also set highlightFollowsCurrentItem
        // to false so the highlight delegate can control how the highlight is moved.
        highlight: highlightBar
        highlightFollowsCurrentItem: false
    }
```

<span id="highlight-ranges-shows-the-three-different-highlight-range-modes-of-listview"></span>
### Highlight Ranges shows the three different highlight range modes of ListView.

``` qml
Rectangle {
    id: root
    property int current: 0
    property bool increasing: true
    // Example index automation for convenience, disabled on click or tap
    SequentialAnimation {
        id: anim
        loops: -1
        running: true
        ScriptAction {
            script: if (increasing) {
                        current++;
                        if (current >= aModel.count -1) {
                            current = aModel.count - 1;
                            increasing = !increasing;
                        }
                    } else {
                        current--;
                        if (current <= 0) {
                            current = 0;
                            increasing = !increasing;
                        }
                    }
        }
        PauseAnimation { duration: 500 }
    }
    ListView {
        id: list1
        height: 50; width: parent.width
        model: PetsModel {id: aModel}
        delegate: petDelegate
        orientation: ListView.Horizontal
        highlight: Rectangle { color: "lightsteelblue" }
        currentIndex: root.current
        onCurrentIndexChanged: root.current = currentIndex
        focus: true
    }
    ListView {
        id: list2
        y: 160
        height: 50; width: parent.width
        model: PetsModel {}
        delegate: petDelegate
        orientation: ListView.Horizontal
        highlight: Rectangle { color: "yellow" }
        currentIndex: root.current
        preferredHighlightBegin: 80; preferredHighlightEnd: 220
        highlightRangeMode: ListView.ApplyRange
    }
    ListView {
        id: list3
        y: 320
        height: 50; width: parent.width
        model: PetsModel {}
        delegate: petDelegate
        orientation: ListView.Horizontal
        highlight: Rectangle { color: "yellow" }
        currentIndex: root.current
        onCurrentIndexChanged: root.current = currentIndex
        preferredHighlightBegin: 125; preferredHighlightEnd: 125
        highlightRangeMode: ListView.StrictlyEnforceRange
    }
}
```

<span id="sections-demonstrates-the-various-section-headers-and-footers-available-to-listview"></span>
### Sections demonstrates the various section headers and footers available to ListView.

``` qml
    // The delegate for each section header
    Component {
        id: sectionHeading
        Rectangle {
            width: container.width
            height: childrenRect.height
            color: "lightsteelblue"
            Text {
                text: section
                font.bold: true
                font.pixelSize: 20
            }
        }
    }
    ListView {
        id: view
        anchors.top: parent.top
        anchors.bottom: buttonBar.top
        width: parent.width
        model: animalsModel
        delegate: Text { text: name; font.pixelSize: 18 }
        section.property: "size"
        section.criteria: ViewSection.FullString
        section.delegate: sectionHeading
    }
```

<span id="packages-demonstrates-using-packages-to-transition-delegates-between-two-views"></span>
### Packages demonstrates using Packages to transition delegates between two views.

It has a Package which defines delegate items for each view and an item that can be transferred between delegates.

``` qml
Package {
    Text { id: listDelegate; width: parent.width; height: 25; text: 'Empty'; Package.name: 'list' }
    Text { id: gridDelegate; width: parent.width / 2; height: 50; text: 'Empty'; Package.name: 'grid' }
    Rectangle {
        id: wrapper
        width: parent.width; height: 25
        color: 'lightsteelblue'
        Text { text: display; anchors.centerIn: parent }
        state: root.upTo > index ? 'inGrid' : 'inList'
        states: [
            State {
                name: 'inList'
                ParentChange { target: wrapper; parent: listDelegate }
            },
            State {
                name: 'inGrid'
                ParentChange {
                    target: wrapper; parent: gridDelegate
                    x: 0; y: 0; width: gridDelegate.width; height: gridDelegate.height
                }
            }
        ]
        transitions: [
            Transition {
                ParentAnimation {
                    NumberAnimation { properties: 'x,y,width,height'; duration: 300 }
                }
            }
        ]
    }
}
```

A DelegateModel allows the individual views to access their specific items from the shared package delegate.

``` qml
DelegateModel {
    id: visualModel
    delegate: Delegate {}
    model: myModel
}
ListView {
    id: lv
    height: parent.height/2
    width: parent.width
    model: visualModel.parts.list
}
GridView {
    y: parent.height/2
    height: parent.height/2
    width: parent.width
    cellWidth: width / 2
    cellHeight: 50
    model: visualModel.parts.grid
}
```

<span id="objectmodel-uses-an-objectmodel-for-the-model-instead-of-a-listmodel"></span>
### ObjectModel uses an ObjectModel for the model instead of a ListModel.

``` qml
    ObjectModel {
        id: itemModel
        Rectangle {
            width: view.width; height: view.height
            color: "#FFFEF0"
            Text { text: "Page 1"; font.bold: true; anchors.centerIn: parent }
            Component.onDestruction: if (printDestruction) print("destroyed 1")
        }
        Rectangle {
            width: view.width; height: view.height
            color: "#F0FFF7"
            Text { text: "Page 2"; font.bold: true; anchors.centerIn: parent }
            Component.onDestruction: if (printDestruction) print("destroyed 2")
        }
        Rectangle {
            width: view.width; height: view.height
            color: "#F4F0FF"
            Text { text: "Page 3"; font.bold: true; anchors.centerIn: parent }
            Component.onDestruction: if (printDestruction) print("destroyed 3")
        }
    }
    ListView {
        id: view
        anchors { fill: parent; bottomMargin: 30 }
        model: itemModel
        preferredHighlightBegin: 0; preferredHighlightEnd: 0
        highlightRangeMode: ListView.StrictlyEnforceRange
        orientation: ListView.Horizontal
        snapMode: ListView.SnapOneItem; flickDeceleration: 2000
        cacheBuffer: 200
    }
```

Files:

-   views/views.qml
-   views/gridview/gridview-example.qml
-   views/listview/displaymargin.qml
-   views/listview/dynamiclist.qml
-   views/listview/expandingdelegates.qml
-   views/listview/highlight.qml
-   views/listview/highlightranges.qml
-   views/listview/sections.qml
-   views/listview/content/PetsModel.qml
-   views/listview/content/PressAndHoldButton.qml
-   views/listview/content/RecipesModel.qml
-   views/listview/content/SmallText.qml
-   views/listview/content/TextButton.qml
-   views/listview/content/ToggleButton.qml
-   views/objectmodel/objectmodel.qml
-   views/package/Delegate.qml
-   views/package/view.qml
-   views/parallax/parallax.qml
-   views/parallax/content/Clock.qml
-   views/parallax/content/ParallaxView.qml
-   views/parallax/content/QuitButton.qml
-   views/parallax/content/Smiley.qml
-   views/parallax/content/pics/home-page.svg
-   views/pathview/pathview-example.qml
-   views/visualdatamodel/dragselection.qml
-   views/visualdatamodel/slideshow.qml
-   views/main.cpp
-   views/views.pro
-   views/views.qmlproject
-   views/views.qrc
-   views/visualdatamodel/visualdatamodel.qmlproject

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
