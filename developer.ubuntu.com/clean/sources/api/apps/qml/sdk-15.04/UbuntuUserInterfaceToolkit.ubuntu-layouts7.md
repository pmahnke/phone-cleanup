---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts7
---
        
Layouts - Defining more layouts for different form factors
==========================================================

<span class="subtitle"></span>
<span id="details"></span>
As mentioned, with Layouts we can achieve to have a single code base supporting different form factors. The following example illustrates how to support different layouts with the same code base.

<span id="default-layout"></span>
Default layout
--------------

![](https://developer.ubuntu.com/static/devportal_uploaded/08baccf9-eae5-4408-9061-c1f3221a8494-api/apps/qml/sdk-15.04/ubuntu-layouts7/images/simple-layout1.png)

``` qml
Button {
    id: redButton
    text: "Item #1"
    color: "red"
    Layouts.item: "red"
    anchors {
        left: parent.left
        top: parent.top
        bottom: parent.bottom
    }
    width: units.gu(15)
}
Button {
    id: greenButton
    text: "Item #2"
    color: "green"
    Layouts.item: "green"
    anchors {
        top: parent.top
        left: redButton.right
        right: parent.right
    }
    height: units.gu(10)
}
Button {
    id: nolayout
    text: "Non-laid out"
    color: "brown"
    anchors {
        top: greenButton.bottom
        left: redButton.right
        right: parent.right
        bottom: blueButton.top
    }
}
Button {
    id: blueButton
    text: "Item #3"
    color: "blue"
    Layouts.item: "blue"
    anchors{
        left: redButton.right
        right: parent.right
        bottom: parent.bottom
    }
    height: units.gu(10)
}
```

<span id="conditional-layouts"></span>
Conditional layouts
-------------------

<span id="column-layout"></span>
### Column layout

![](https://developer.ubuntu.com/static/devportal_uploaded/e5b76785-750c-49c7-ad40-bcc355cad6ee-api/apps/qml/sdk-15.04/ubuntu-layouts7/images/simple-layout2.png)

``` qml
ConditionalLayout {
    name: "column"
    when: layouts.width > units.gu(50) && layouts.width <= units.gu(70)
    Column {
        anchors.fill: parent
        ItemLayout {
            item: "red"
            height: parent.height / 3
            anchors {
                left: parent.left
                right: parent.right
            }
        }
        ItemLayout {
            item: "green"
            height: parent.height / 3
            anchors {
                left: parent.left
                right: parent.right
            }
        }
        ItemLayout {
            item: "blue"
            height: parent.height / 3
            anchors {
                left: parent.left
                right: parent.right
            }
        }
    }
},
```

<span id="row-layout"></span>
### Row layout

![](https://developer.ubuntu.com/static/devportal_uploaded/fd9ea71c-6285-49ab-bce3-2594b1b5b4b7-api/apps/qml/sdk-15.04/ubuntu-layouts7/images/simple-layout3.png)

``` qml
ConditionalLayout {
    name: "row"
    when: layouts.width > units.gu(70) && layouts.width <= units.gu(90)
    Row {
        anchors.fill: parent
        ItemLayout {
            item: "blue"
            width: parent.width / 3
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
        }
        ItemLayout {
            item: "red"
            width: parent.width / 3
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
        }
        ItemLayout {
            item: "green"
            width: parent.width / 3
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
        }
    }
},
```

<span id="layout-hiding-element"></span>
### Layout hiding element

![](https://developer.ubuntu.com/static/devportal_uploaded/97ba9ed8-166b-40a6-9b30-c0967502f66c-api/apps/qml/sdk-15.04/ubuntu-layouts7/images/simple-layout4.png)

``` qml
ConditionalLayout {
    name: "hiding-element"
    when: layouts.width > units.gu(90) && layouts.width < units.gu(100)
    Row {
        anchors.fill: parent
        ItemLayout {
            item: "red"
            width: parent.width / 2
            height: units.gu(20)
        }
        ItemLayout {
            item: "green"
            width: parent.width / 2
            height: units.gu(20)
        }
    }
},
```

<span id="layout-showing-more"></span>
### Layout showing more

![](https://developer.ubuntu.com/static/devportal_uploaded/c309114e-ef5e-4758-ba21-42985de828fb-api/apps/qml/sdk-15.04/ubuntu-layouts7/images/simple-layout5.png)

``` qml
ConditionalLayout {
    name: "showing-more"
    when: layouts.width >= units.gu(100)
    Flow {
        anchors.fill: parent
        ItemLayout {
            item: "red"
            width: units.gu(50)
            height: units.gu(20)
        }
        ItemLayout {
            item: "green"
            width: units.gu(50)
            height: units.gu(20)
        }
        ItemLayout {
            item: "blue"
            width: units.gu(50)
            height: units.gu(20)
        }
        Button {
            text: "Flow item"
            width: units.gu(50)
            height: units.gu(20)
        }
    }
}
```

<span id="the-entire-code"></span>
The entire code
---------------

``` qml
Layouts {
    id: layouts
    anchors.fill: parent
    layouts: [
        ConditionalLayout {
            name: "column"
            when: layouts.width > units.gu(50) && layouts.width <= units.gu(70)
            Column {
                anchors.fill: parent
                ItemLayout {
                    item: "red"
                    height: parent.height / 3
                    anchors {
                        left: parent.left
                        right: parent.right
                    }
                }
                ItemLayout {
                    item: "green"
                    height: parent.height / 3
                    anchors {
                        left: parent.left
                        right: parent.right
                    }
                }
                ItemLayout {
                    item: "blue"
                    height: parent.height / 3
                    anchors {
                        left: parent.left
                        right: parent.right
                    }
                }
            }
        },
        ConditionalLayout {
            name: "row"
            when: layouts.width > units.gu(70) && layouts.width <= units.gu(90)
            Row {
                anchors.fill: parent
                ItemLayout {
                    item: "blue"
                    width: parent.width / 3
                    anchors {
                        top: parent.top
                        bottom: parent.bottom
                    }
                }
                ItemLayout {
                    item: "red"
                    width: parent.width / 3
                    anchors {
                        top: parent.top
                        bottom: parent.bottom
                    }
                }
                ItemLayout {
                    item: "green"
                    width: parent.width / 3
                    anchors {
                        top: parent.top
                        bottom: parent.bottom
                    }
                }
            }
        },
        ConditionalLayout {
            name: "hiding-element"
            when: layouts.width > units.gu(90) && layouts.width < units.gu(100)
            Row {
                anchors.fill: parent
                ItemLayout {
                    item: "red"
                    width: parent.width / 2
                    height: units.gu(20)
                }
                ItemLayout {
                    item: "green"
                    width: parent.width / 2
                    height: units.gu(20)
                }
            }
        },
        ConditionalLayout {
            name: "showing-more"
            when: layouts.width >= units.gu(100)
            Flow {
                anchors.fill: parent
                ItemLayout {
                    item: "red"
                    width: units.gu(50)
                    height: units.gu(20)
                }
                ItemLayout {
                    item: "green"
                    width: units.gu(50)
                    height: units.gu(20)
                }
                ItemLayout {
                    item: "blue"
                    width: units.gu(50)
                    height: units.gu(20)
                }
                Button {
                    text: "Flow item"
                    width: units.gu(50)
                    height: units.gu(20)
                }
            }
        }
    ]
    Button {
        id: redButton
        text: "Item #1"
        color: "red"
        Layouts.item: "red"
        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }
        width: units.gu(15)
    }
    Button {
        id: greenButton
        text: "Item #2"
        color: "green"
        Layouts.item: "green"
        anchors {
            top: parent.top
            left: redButton.right
            right: parent.right
        }
        height: units.gu(10)
    }
    Button {
        id: nolayout
        text: "Non-laid out"
        color: "brown"
        anchors {
            top: greenButton.bottom
            left: redButton.right
            right: parent.right
            bottom: blueButton.top
        }
    }
    Button {
        id: blueButton
        text: "Item #3"
        color: "blue"
        Layouts.item: "blue"
        anchors{
            left: redButton.right
            right: parent.right
            bottom: parent.bottom
        }
        height: units.gu(10)
    }
}
```

<span id="that-s-it"></span>
That's it
---------

You're ready to go. You can find the layouting components under [Layouting](../UbuntuUserInterfaceToolkit.overview-ubuntu-sdk.md#layouting). For further questions please visit **\#ubuntu-app-devel** irc channel on freenode.

