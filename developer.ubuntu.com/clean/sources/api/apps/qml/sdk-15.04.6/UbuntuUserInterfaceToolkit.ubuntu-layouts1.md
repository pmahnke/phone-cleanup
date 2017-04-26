---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts1
---
        
Layouts - Terminology
=====================

<span class="subtitle"></span>
<span id="details"></span>
First let's introduce the terminology we are going to use across this tutorial.

<span id="layout-block-container-and-item-holder"></span>
#### Layout Block, Container and Item holder

A layout block is a component embedding several layout definitions and items to be laid out. It is typically defined by the [Layouts](../Ubuntu.Layouts.Layouts.md) component.

Each layout defined in the block is compound of containers, which can host laid out items hosted by item holders.

An item holder is a pseudo-item which can host only one item, where the item is anchored to the item holder's edges, therefore the item holder has control over the componet's size, scale and rotation.

To understand this let's take the following layout structure:

![](https://developer.ubuntu.com/static/devportal_uploaded/789046e7-ef38-470e-a7b3-4ef64d7493e9-api/apps/qml/sdk-15.04.6/ubuntu-layouts1/images/sample-layout.png)

In this layout all three buttons are laid out in the same container, but green button was required to take the height of the window, whereas the red and blue buttons were required to have the same width and height.

Illustrating the layout on the image with code:

``` qml
Layouts { // <-- layout block
    id: layouts
    layouts: [
        // [...]
        ConditionalLayout { // <-- layout
            name: "composit"
            Row { // <-- layout container
                // [...]
                ItemLayout { // <-- item holder
                    item: "item2"
                    // [...]
                }
                ItemLayout { // <-- item holder
                    item: "item1"
                    // [...]
                }
                ItemLayout { // <-- item holder
                    item: "item3"
                    // [...]
                }
            }
        }
    ]
    // the items to lay outitem3
    Button {
        Layouts.item: "item1"
        // [...]
    }
    Button {
        Layouts.item: "item2"
        // [...]
    }
    Button {
        Layouts.item: "item3"
        // [...]
    }
}
```

A container can be any item, however it is preferable to use positioners or [QtQuick](http://doc.qt.io/qt-5/qtquick-qmlmodule.html) layout elements whenever possible.

As next step let's create some layouts.

<a href="UbuntuUserInterfaceToolkit.ubuntu-layouts2.md" class="nextPage">Layouts - The first conditional layout</a>

