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
-   [SDK 15.04.5](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   CategoryModel

CategoryModel
=============

<span class="subtitle"></span>
The CategoryModel type provides a model of the categories supported by a Plugin. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[hierarchical](../../sdk-15.04.1/QtLocation.CategoryModel/index.html#hierarchical-prop)**** : bool
-   ****[plugin](../../sdk-15.04.1/QtLocation.CategoryModel/index.html#plugin-prop)**** : Plugin
-   ****[status](../../sdk-15.04.1/QtLocation.CategoryModel/index.html#status-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[dataChanged](../../sdk-15.04.1/QtLocation.CategoryModel/index.html#dataChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   string ****[errorString](../../sdk-15.04.1/QtLocation.CategoryModel/index.html#errorString-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel/index.html) type provides a model of the categories that are available from the current [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin). The model supports both a flat list of categories and a hierarchical tree representing category groupings. This can be controlled by the [hierarchical](../../sdk-15.04.1/QtLocation.CategoryModel/index.html#hierarchical-prop) property.

The model supports the following roles:

| Role           | Type                                                                          | Description                                                                           |
|----------------|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
| category       | [Category](../../sdk-15.04.1/QtLocation.location-cpp-qml/index.html#category) | Category object for the current item.                                                 |
| parentCategory | [Category](../../sdk-15.04.1/QtLocation.location-cpp-qml/index.html#category) | Parent category object for the current item. If there is no parent, null is returned. |

The following example displays a flat list of all available categories:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
ListView {
    model: CategoryModel {
        plugin: myPlugin
        hierarchical: false
    }
    delegate: Text { text: category.name }
}
```

To access the hierarchical category model it is necessary to use a DelegateModel to access the child items.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hierarchical-prop"></span><span class="name">hierarchical</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the model provides a hierarchical tree of categories or a flat list. The default is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="plugin-prop"></span><span class="name">plugin</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Plugin/index.html">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the provider [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin) used by this model.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of the model. It can be one of:

|                                                                                |                                                                                                      |
|--------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel/index.html).Null    | No category fetch query has been executed. The model is empty.                                       |
| [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel/index.html).Ready   | No error occurred during the last operation, further operations may be performed on the model.       |
| [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel/index.html).Loading | The model is being updated, no other operations may be performed until complete.                     |
| [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel/index.html).Error   | An error occurred during the last operation, further operations can still be performed on the model. |

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dataChanged-signal"></span><span class="name">dataChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when significant changes have been made to the underlying datastore.

Applications should act on this signal at their own discretion. The data provided by the model could be out of date and so the model should be reupdated sometime, however an immediate reupdate may be disconcerting to users if the categories change without any action on their part.

The corresponding handler is `onDataChanged`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-method"></span><span class="type">string</span> <span class="name">errorString</span>() const</p></td>
</tr>
</tbody>
</table>

This read-only property holds the textual presentation of latest category model error. If no error has occurred, an empty string is returned.

An empty string may also be returned if an error occurred which has no associated textual representation.

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
