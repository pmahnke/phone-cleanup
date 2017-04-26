---
Title: QtLocation.Category
---
        
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

-   ****[category](#category-prop)**** : QPlaceCategory
-   ****[categoryId](#categoryId-prop)**** : string
-   ****[icon](#icon-prop)**** : PlaceIcon
-   ****[name](#name-prop)**** : string
-   ****[plugin](#plugin-prop)**** : Plugin
-   ****[status](#status-prop)**** : enumeration
-   ****[visibility](#visibility-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   string ****[errorString](#errorString-method)****()
-   void ****[remove](#remove-method)****()
-   void ****[save](#save-method)****()

<span id="details"></span>
Detailed Description
--------------------

Categories are used to search for places based on the categories they are associated with. The list of available categories can be obtained from the [CategoryModel](../QtLocation.CategoryModel.md). The [PlaceSearchModel](../QtLocation.PlaceSearchModel.md) has a [categories](../QtLocation.PlaceSearchModel.md#categories-prop) property that is used to limit the search results to places with the specified categories.

If the [Plugin](../QtLocation.location-places-qml.md#plugin) supports it, categories can be created or removed. To create a new category construct a new Category object and set its properties, then invoke the [save()](#save-method) method.

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

To remove a category ensure that the [plugin](../QtLocation.location-places-qml.md#plugin) and [categoryId](#categoryId-prop) properties are set and call the [remove()](#remove-method) method.

**See also** [CategoryModel](../QtLocation.CategoryModel.md).

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

This property holds the identifier of the category. The categoryId is a string which uniquely identifies this category within the categories [plugin](../QtLocation.location-places-qml.md#plugin).

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
<td><p><span id="plugin-prop"></span><span class="name">plugin</span> : <span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span></p></td>
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

Note that visibility does not affect how [Place](../QtLocation.location-cpp-qml.md#place)s associated with the category are displayed in the user-interface of an application on the device. Instead, it defines the sharing semantics of the category.

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

