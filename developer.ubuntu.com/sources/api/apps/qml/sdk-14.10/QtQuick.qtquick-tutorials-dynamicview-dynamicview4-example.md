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

-   QML Dynamic View Ordering Tutorial 4 - Sorting Items

QML Dynamic View Ordering Tutorial 4 - Sorting Items
====================================================

<span class="subtitle"></span>
<span id="details"></span>
Drag and drop isn't the only way items in a view can be re-ordered, using a VisualDataModel it is also possible to sort items based on model data. To do that we extend our VisualDataModel instance like this:

``` qml
    DelegateModel {
        id: visualModel
        property var lessThan: [
            function(left, right) { return left.name < right.name },
            function(left, right) { return left.type < right.type },
            function(left, right) { return left.age < right.age },
            function(left, right) {
                if (left.size == "Small")
                    return true
                else if (right.size == "Small")
                    return false
                else if (left.size == "Medium")
                    return true
                else
                    return false
            }
        ]
        property int sortOrder: orderSelector.selectedIndex
        onSortOrderChanged: items.setGroups(0, items.count, "unsorted")
        function insertPosition(lessThan, item) {
            var lower = 0
            var upper = items.count
            while (lower < upper) {
                var middle = Math.floor(lower + (upper - lower) / 2)
                var result = lessThan(item.model, items.get(middle).model);
                if (result) {
                    upper = middle
                } else {
                    lower = middle + 1
                }
            }
            return lower
        }
        function sort(lessThan) {
            while (unsortedItems.count > 0) {
                var item = unsortedItems.get(0)
                var index = insertPosition(lessThan, item)
                item.groups = "items"
                items.move(item.itemsIndex, index)
            }
        }
        items.includeByDefault: false
        groups: VisualDataGroup {
            id: unsortedItems
            name: "unsorted"
            includeByDefault: true
            onChanged: {
                if (visualModel.sortOrder == visualModel.lessThan.length)
                    setGroups(0, count, "items")
                else
                    visualModel.sort(visualModel.lessThan[visualModel.sortOrder])
            }
        }
        model: PetsModel {}
        delegate: dragDelegate
    }
```

<span id="walkthrough"></span>
### Walkthrough

Items in a VisualDataModel are filtered into groups represented by the VisualDataGroup type, normally all items in the model belong to a default items group but this default can be changed with the includeByDefault property. To implement our sorting we want items to first be added to an unsorted group from where we can transfer them to a sorted position in the items group. To do that we clear includeByDefault on the items group and set it on a new group name 'unsorted'.

``` qml
        items.includeByDefault: false
        groups: VisualDataGroup {
            id: unsortedItems
            name: "unsorted"
            includeByDefault: true
        }
```

We sort the items by first finding the position in the items group to insert the first unsorted item and then transfer the item to the items group before moving it to the pre-determined index and repeat until the unsorted group is empty.

To find the insert position for an item we request a handle for the item from the unsorted group with the get function. Through the model property on this handle we can access the same model data that is available in a delegate instance of that item and compare against other items to determine relative position.

``` qml
        function insertPosition(lessThan, item) {
            var lower = 0
            var upper = items.count
            while (lower < upper) {
                var middle = Math.floor(lower + (upper - lower) / 2)
                var result = lessThan(item.model, items.get(middle).model);
                if (result) {
                    upper = middle
                } else {
                    lower = middle + 1
                }
            }
            return lower
        }
        function sort(lessThan) {
            while (unsortedItems.count > 0) {
                var item = unsortedItems.get(0)
                var index = insertPosition(lessThan, item)
                item.groups = "items"
                items.move(item.itemsIndex, index)
            }
        }
```

The lessThan argument to the sort function is a comparsion function which will determine the order of the list. In this example it can be one of the following:

``` qml
        property var lessThan: [
            function(left, right) { return left.name < right.name },
            function(left, right) { return left.type < right.type },
            function(left, right) { return left.age < right.age },
            function(left, right) {
                if (left.size == "Small")
                    return true
                else if (right.size == "Small")
                    return false
                else if (left.size == "Medium")
                    return true
                else
                    return false
            }
        ]
```

A sort is triggered whenever new items are added to the unsorted VisualDataGroup which we are notified of by the onChanged handler. If no sort function is currently selected we simply transfer all items from the unsorted group to the items group, otherwise we call sort with the selected sort function.

``` qml
        groups: VisualDataGroup {
            id: unsortedItems
            name: "unsorted"
            includeByDefault: true
            onChanged: {
                if (visualModel.sortOrder == visualModel.lessThan.length)
                    setGroups(0, count, "items")
                else
                    visualModel.sort(visualModel.lessThan[visualModel.sortOrder])
            }
        }
```

Finally when the selected sort order changes we can trigger a full re-sort of the list by moving all items from the items group to the unsorted group, which will trigger the onChanged handler and transfer the items back to the items group in correct order. Note that the onChanged handler will not be invoked recursively so there's no issue with it being invoked during a sort.

``` qml
        property int sortOrder: orderSelector.selectedIndex
        onSortOrderChanged: items.setGroups(0, items.count, "unsorted")
```

Files:

-   tutorials/dynamicview/dynamicview4/ListSelector.qml
-   tutorials/dynamicview/dynamicview4/PetsModel.qml
-   tutorials/dynamicview/dynamicview4/dynamicview.qml
-   tutorials/dynamicview/dynamicview4/dynamicview4.qmlproject

<a href="https://developer.ubuntu.com/api/apps/qml/sdk-14.10/QtQuick.tutorials-dynamicview-dynamicview3/" class="prevPage">QML Dynamic View Ordering Tutorial 3 - Moving Dragged Items</a>

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
