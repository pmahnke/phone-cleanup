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
-   [SDK 15.04.1](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   ListItemLayout

ListItemLayout
==============

<span class="subtitle"></span>
ListItemLayout provides an easy way to create list items which follow Ubuntu design standards, thus making them visually appealing and consistent with the rest of the platform without effort. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.SlotsLayout/index.html">SlotsLayout</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[subtitle](index.html#subtitle-prop)**** : Label
-   ****[summary](index.html#summary-prop)**** : Label
-   ****[title](index.html#title-prop)**** : Label

<span id="details"></span>
Detailed Description
--------------------

[ListItemLayout](index.html) is essentially a [SlotsLayout](../Ubuntu.Components.SlotsLayout/index.html) with a predefined [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout/index.html#mainSlot-prop) that provides (up to) 3 Labels automatically laid out according to our UI guidelines. This main slot has been optimized to cover most of the usecases without compromising performance (read more in [Optimizing memory consumption](index.html#optimizing-memory-consumption)).

We're aware there could be usecases which the [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout/index.html#mainSlot-prop) provided by [ListItemLayout](index.html) doesn't cover. If that is the case, please use [SlotsLayout](../Ubuntu.Components.SlotsLayout/index.html) instead of [ListItemLayout](index.html) and provide your own [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout/index.html#mainSlot-prop).

[ListItemLayout](index.html) works similarly to [QtQuick](http://doc.qt.io/qt-5/qtquick-qmlmodule.html)'s Row, but while Row just positions its children in a horizontal formation, [ListItemLayout](index.html) also tweaks their vertical position to ensure a clean layout.

We will call [ListItemLayout](index.html)'s visual children "slots". [ListItemLayout](index.html) positions its slots automatically, following the visual rules specified by the Ubuntu Design team. Because we think flexibility is an important value of our UI components, we made it possible to tweak the position of each slot by modifying its attached properties (see [Advanced layout tweaks](../Ubuntu.Components.SlotsLayout/index.html#advanced-layout-tweaks)).

If you need a progression symbol in your list item, just add [ProgressionSlot](../Ubuntu.Components.ProgressionSlot/index.html) as a child of your [ListItemLayout](index.html). No manual positioning is needed, the layout will handle it for you.

To read more about advanced slots positioning or how to handle input (mouse or touch) in [ListItemLayout](index.html), see [SlotsLayout](../Ubuntu.Components.SlotsLayout/index.html) documentation.

If you don't need the features provided by [ListItem](../Ubuntu.Components.ListItem/index.html) (such as the swiping actions), you can also use [ListItemLayout](index.html) directly as root of your list view delegate or inside a [MouseArea](../../sdk-14.10/QtQuick.MouseArea/index.html), as explained in [Input handling](../Ubuntu.Components.SlotsLayout/index.html#input-handling).

The following code example shows how easy it is to create even non trivial list items using [ListItem](../Ubuntu.Components.ListItem/index.html) and [ListItemLayout](index.html):

``` qml
ListItem {
    height: layout.height + (divider.visible ? divider.height : 0)
    ListItemLayout {
        id: layout
        title.text: "Hello developers!"
        subtitle.text: "I'm a subtitle, I'm tiny!"
        summary.text: "Ubuntu!"
        CheckBox { SlotsLayout.position: SlotsLayout.Leading }
        Icon {
            name: "message"
            SlotsLayout.position: SlotsLayout.Trailing;
            width: units.gu(2)
        }
    }
}
```

Although [ListItemLayout](index.html) covers most of the usecases, there might be times where you might want to tweak the position of one or more slots. The following example shows one way to implement a list item with a trailing slot holding two labels. What is special about this example is that we want the baseline of one label inside the trailing slot to align to [title](index.html#title-prop)'s baseline and the baseline of the other label to align to [subtitle](index.html#subtitle-prop)'s baseline.

``` qml
ListItem {
    id: listItem
    height: layout.height + (divider.visible ? divider.height : 0)
    ListItemLayout {
        id: layout
        title.text: "Hello..."
        title.color: UbuntuColors.Orange
        subtitle.text: "...world!"
        Rectangle {
            SlotsLayout.position: SlotsLayout.Leading
            color: "pink"
            height: units.gu(6)
            width: height
        }
        Item {
            id: slot
            width: secondLabel.width
            height: parent.height
            //as we want to position labels to align with title and subtitle
            SlotsLayout.overrideVerticalPositioning: true
            Label {
                id: firstLabel
                anchors.right: secondLabel.right
                text: "19:17"
                fontSize: "small"
                y: layout.mainSlot.y + layout.title.y
                   + layout.title.baselineOffset - baselineOffset
            }
            Label {
                id: secondLabel
                text: "Outgoing"
                fontSize: "small"
                y: layout.mainSlot.y + layout.subtitle.y
                   + layout.subtitle.baselineOffset - baselineOffset
            }
        }
    }
}
```

<span id="labels-layout"></span>
Labels layout
-------------

The labels in [ListItemLayout](index.html)'s default [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout/index.html#mainSlot-prop) are laid out in a column. The [title](index.html#title-prop) is positioned at the top, followed by [subtitle](index.html#subtitle-prop) and [summary](index.html#summary-prop), respectively.

The [subtitle](index.html#subtitle-prop) has its top anchored to [title](index.html#title-prop)'s bottom, with a margin of 2 DPs.

The [summary](index.html#summary-prop) has its top tightly anchored to [subtitle](index.html#subtitle-prop)'s bottom.

The height of the default [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout/index.html#mainSlot-prop) provided with [ListItemLayout](index.html) is the minimum height required to accomodate the **visible** and **non-empty** labels it holds. If only [title](index.html#title-prop) is visible and has a non-empty text set, for instance, the height of the main slot will be `title.height`.

If you wish to have the layout process accomodate a label which doesn't have a defined text yet, you should set its text property to " ", as shown in the following example:

``` qml
ListItemLayout {
    title.text: "Hello developers!"
    //NOTE: the whitespace
    subtitle.text: " "
}
```

That will make sure [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout/index.html#mainSlot-prop) is resized to accomodate the (currently empty) subtitle.

This is useful, for instance, if you want all list items in a list view to have the same height even without having to fill [subtitle](index.html#subtitle-prop)'s (or summary's) text with dummy content.

<span id="optimizing-memory-consumption"></span>
Optimizing memory consumption
-----------------------------

In order to minimize memory consumption, the Labels in the [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout/index.html#mainSlot-prop) are only allocated in memory on demand, i.e. the first time one of their properties is queried.

``` qml
ListItemLayout {
    //NOTE: querying subtitle.text triggers allocation of subtitle Label
    Component.onCompleted: console.log(subtitle.text)
    title.text: "Hello developers!"
}
```

In the example above, querying subtitle.text will trigger the allocation in memory of the subtitle Label, which we don't actually use. We **recommend** avoiding querying properties of labels that we don't plan to use in the layout, in order to minimize memory consumption and maximize the scrolling performance of our list views.

``` qml
ListItemLayout {
    //no extra labels created
    title.text: "Hello developers!"
}
```

<span id="about-aliasing-labels-properties"></span>
About aliasing labels properties
--------------------------------

Due to the way ListItemsLayout's labels are created (see [Optimizing memory consumption](index.html#optimizing-memory-consumption)) it is not possible to directly alias their properties. It is still possible, however, to expose an API that gives indirect read-write access to those properties. The following code:

``` qml
ListItem {
    property alias titleText: layout.title.text
    ListItemLayout {
        id: layout
    }
}
```

will return the error "Invalid alias location", because the title object does not yet exist at time when the alias is created.

If you need to expose an API for your component that allows changing the properties of the labels, we recommend aliasing the labels themselves. Let's assume you want to create a QML component to use as a delegate of many list views inside your application: you will probably have a qml file holding the definition of the that delegate, and the content of that file will be similar to:

``` qml
//Content of CustomListItem.qml
import QtQuick 2.4
import Ubuntu.Components 1.3
ListItem {
    id: listitem
    property alias title: layout.title
    property alias iconName: icon.name
    height: layout.height + (divider.visible ? divider.height : 0)
    ListItemLayout {
        id: layout
        Icon {
            id: icon
            width: units.gu(2)
        }
    }
}
```

As you can see, we alias the label item itself instead of its properties. This also has the advantage of only exposing one alias instead of one for each property, thus making your QML app a bit more performant. Once your delegate is defined, you can use it in your ListViews like usual.

``` qml
//other UI code...
ListView {
    anchors.fill: parent
    model: ListModel {
        id: listViewModel
        ListElement { titleText: "Hello1"; icon: "message" }
        ListElement { titleText: "Hello2"; icon: "email" }
        ListElement { titleText: "Hello3"; icon: "email" }
        ListElement { titleText: "Hello4"; icon: "message" }
    }
    delegate: CustomListItem {
        title.text: model.titleText
        iconName: model.icon
    }
}
```

Note how title's properties are all accessible via the "title" identifier.

**See also** [SlotsLayout](../Ubuntu.Components.SlotsLayout/index.html) and [ProgressionSlot](../Ubuntu.Components.ProgressionSlot/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="subtitle-prop"></span><span class="name">subtitle</span> : <span class="type">Label</span></p></td>
</tr>
</tbody>
</table>

This property defines the subtitle label and its properties. Styling and font properties can be set by using the prefix `subtitle.` in a similar way as shown in [title](index.html#title-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="summary-prop"></span><span class="name">summary</span> : <span class="type">Label</span></p></td>
</tr>
</tbody>
</table>

This property defines the subtitle label and its properties. Styling and font properties can be set by using the prefix `summary.` in a similar way as shown in [title](index.html#title-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="title-prop"></span><span class="name">title</span> : <span class="type">Label</span></p></td>
</tr>
</tbody>
</table>

This property defines the title label and its properties. Styling and font properties can be set just like on any other Text component, as shown in the following example:

``` qml
Item {
    ListItemLayout {
        title.text: "Hello"
        title.color: "yellow"
    }
}
```

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
