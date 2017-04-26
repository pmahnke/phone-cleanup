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
-   [SDK 15.04.6](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   Category

Category
========

<span class="subtitle"></span>
The Category type represents a category that a Place can be associated with. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[category](../../sdk-15.04.1/QtLocation.Category/index.html#category-prop)**** : QPlaceCategory
-   ****[categoryId](../../sdk-15.04.1/QtLocation.Category/index.html#categoryId-prop)**** : string
-   ****[icon](../../sdk-15.04.1/QtLocation.Category/index.html#icon-prop)**** : PlaceIcon
-   ****[name](../../sdk-15.04.1/QtLocation.Category/index.html#name-prop)**** : string
-   ****[plugin](../../sdk-15.04.1/QtLocation.Category/index.html#plugin-prop)**** : Plugin
-   ****[status](../../sdk-15.04.1/QtLocation.Category/index.html#status-prop)**** : enumeration
-   ****[visibility](../../sdk-15.04.1/QtLocation.Category/index.html#visibility-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   string ****[errorString](../../sdk-15.04.1/QtLocation.Category/index.html#errorString-method)****()
-   void ****[remove](../../sdk-15.04.1/QtLocation.Category/index.html#remove-method)****()
-   void ****[save](../../sdk-15.04.1/QtLocation.Category/index.html#save-method)****()

<span id="details"></span>
Detailed Description
--------------------

Categories are used to search for places based on the categories they are associated with. The list of available categories can be obtained from the [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel/index.html). The [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel/index.html) has a [categories](../../sdk-15.04.1/QtLocation.PlaceSearchModel/index.html#categories-prop) property that is used to limit the search results to places with the specified categories.

If the [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin) supports it, categories can be created or removed. To create a new category construct a new Category object and set its properties, then invoke the [save()](../../sdk-15.04.1/QtLocation.Category/index.html#save-method) method.

``` qml
import QtPositioning 5.2
import QtLocation 5.3
Category {
    id: category
    plugin: myPlugin
    name: "New Category"
    visibility: Category.PrivateVisibility
}
...
category.save();
```

To remove a category ensure that the [plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin) and [categoryId](../../sdk-15.04.1/QtLocation.Category/index.html#categoryId-prop) properties are set and call the [remove()](../../sdk-15.04.1/QtLocation.Category/index.html#remove-method) method.

**See also** [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="category-prop"></span><span class="name">category</span> : <span class="type">QPlaceCategory</span></p></td>
</tr>
</tbody>
</table>

<span id="category-category"></span>
For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="categoryId-prop"></span><span class="name">categoryId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the identifier of the category. The categoryId is a string which uniquely identifies this category within the categories [plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="icon-prop"></span><span class="name">icon</span> : <span class="type">PlaceIcon</span></p></td>
</tr>
</tbody>
</table>

This property holds the image source associated with the category. To display the icon you can use the Image type.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds string based name of the category.

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

This property holds the location based service to which the category belongs.

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

This property holds the status of the category. It can be one of:

|                   |                                                                                                                      |
|-------------------|----------------------------------------------------------------------------------------------------------------------|
| Category.Ready    | No error occurred during the last operation, further operations may be performed on the category.                    |
| Category.Saving   | The category is currently being saved, no other operations may be performed until the current operation completes.   |
| Category.Removing | The category is currently being removed, no other operations can be performed until the current operation completes. |
| Category.Error    | An error occurred during the last operation, further operations can still be performed on the category.              |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visibility-prop"></span><span class="name">visibility</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the visibility of the category. It can be one of:

|                                |                                                                                                                                                                                                                           |
|--------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Category.UnspecifiedVisibility | The visibility of the category is unspecified. If saving a category, the plugin will automatically set a default visibility to the category saved in the backend. This default is dependent on the plugin implementation. |
| Category.DeviceVisibility      | The category is limited to the current device. The category will not be transferred off of the device.                                                                                                                    |
| Category.PrivateVisibility     | The category is private to the current user. The category may be transferred to an online service but is only ever visible to the current user.                                                                           |
| Category.PublicVisibility      | The category is public.                                                                                                                                                                                                   |

Note that visibility does not affect how [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml/index.html#place)s associated with the category are displayed in the user-interface of an application on the device. Instead, it defines the sharing semantics of the category.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-method"></span><span class="type">string</span> <span class="name">errorString</span>()</p></td>
</tr>
</tbody>
</table>

Returns a string description of the error of the last operation. If the last operation completed successfully then the string is empty.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-method"></span><span class="type">void</span> <span class="name">remove</span>()</p></td>
</tr>
</tbody>
</table>

This method permanently removes the category from the backend service.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="save-method"></span><span class="type">void</span> <span class="name">save</span>()</p></td>
</tr>
</tbody>
</table>

This method saves the category to the backend service.

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
