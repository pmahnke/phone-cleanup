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
-   [QtOrganizer](../QtOrganizer/index.html) ›

<!-- -->

-   OrganizerModel

OrganizerModel
==============

<span class="subtitle"></span>
The OrganizerModel element provides access to organizer items from the organizer store. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[ImportError](index.html#ImportError-prop)**** : enumeration
-   ****[autoUpdate](index.html#autoUpdate-prop)**** : bool
-   ****[availableManagers](index.html#availableManagers-prop)**** : list&lt;string&gt;
-   ****[collections](index.html#collections-prop)**** : list&lt;Collection&gt;
-   ****[endPeriod](index.html#endPeriod-prop)**** : date
-   ****[error](index.html#error-prop)**** : string
-   ****[fetchHint](index.html#fetchHint-prop)**** : FetchHint
-   ****[filter](index.html#filter-prop)**** : Filter
-   ****[itemCount](index.html#itemCount-prop)**** : int
-   ****[items](index.html#items-prop)**** : list&lt;OrganizerItem&gt;
-   ****[manager](index.html#manager-prop)**** : string
-   ****[managerName](index.html#managerName-prop)**** : string
-   ****[sortOrders](index.html#sortOrders-prop)**** : list&lt;SortOrder&gt;
-   ****[startPeriod](index.html#startPeriod-prop)**** : date

<span id="signals"></span>
Signals
-------

-   ****[onExportCompleted](index.html#onExportCompleted-signal)****()
-   ****[onImportCompleted](index.html#onImportCompleted-signal)****(ImportError *error*, URL *url*, list&lt;string&gt; *ids*)
-   ****[onItemsFetched](index.html#onItemsFetched-signal)****(int *requestId*, list&lt;OrganizerItem&gt; *fetchedItems*)
-   ****[onModelChanged](index.html#onModelChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[cancelUpdate](index.html#cancelUpdate-method)****()
-   Collection ****[collection](index.html#collection-method)****(string *collectionId*)
-   bool ****[containsItems](index.html#containsItems-method-2)****(date *start*, date *end*)
-   list&lt;bool&gt; ****[containsItems](index.html#containsItems-method)****(date *start*, date *end*, int *interval*)
-   Collection ****[defaultCollection](index.html#defaultCollection-method)****()
-   ****[exportItems](index.html#exportItems-method)****(url *url*, list&lt;string&gt; *profiles*)
-   ****[fetchCollections](index.html#fetchCollections-method)****()
-   int ****[fetchItems](index.html#fetchItems-method-2)****(stringlist *itemIds*)
-   int ****[fetchItems](index.html#fetchItems-method)****(date *start*, date *end*, Filter *filter*, int *maxCount*, list&lt;SortOrder&gt; *sortOrders*, FetchHint *fetchHint*)
-   ****[importItems](index.html#importItems-method)****(url *url*, list&lt;string&gt; *profiles*)
-   OrganizerItem ****[item](index.html#item-method)****(string *itemId*)
-   list&lt;string&gt; ****[itemIds](index.html#itemIds-method)****(date *start*, date *end*)
-   list&lt;OrganizerItem&gt; ****[itemsByTimePeriod](index.html#itemsByTimePeriod-method)****(date *start*, date *end*)
-   ****[removeCollection](index.html#removeCollection-method)****(string *collectionId*)
-   ****[removeItem](index.html#removeItem-method-2)****(OrganizerItem *item*)
-   ****[removeItem](index.html#removeItem-method)****(string *itemId*)
-   ****[removeItems](index.html#removeItems-method-2)****(list&lt;OrganizerItem&gt; *items*)
-   ****[removeItems](index.html#removeItems-method)****(list&lt;string&gt; *itemId*)
-   ****[saveCollection](index.html#saveCollection-method)****(Collection *collection*)
-   ****[saveItem](index.html#saveItem-method)****(OrganizerItem *item*)
-   ****[update](index.html#update-method)****()
-   ****[updateCollections](index.html#updateCollections-method)****()
-   ****[updateItems](index.html#updateItems-method)****()

<span id="details"></span>
Detailed Description
--------------------

[OrganizerModel](index.html) provides a model of organizer items from the organizer store. The contents of the model can be specified with [filter](index.html#filter-prop), [sortOrders](index.html#sortOrders-prop) and [fetchHint](index.html#fetchHint-prop) properties. Whether the model is automatically updated when the store or [C++ organizer](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtOrganizer.organizer/) item changes, can be controlled with [OrganizerModel::autoUpdate](index.html#autoUpdate-prop) property.

There are two ways of accessing the organizer item data: via the model by using views and delegates, or alternatively via [items](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtOrganizer.organizer/#items) list property. Of the two, the model access is preferred. Direct list access (i.e. non-model) is not guaranteed to be in order set by sortOrder.

At the moment the model roles provided by [OrganizerModel](index.html) are `display` and `item`. Through the `item` role can access any data provided by the [OrganizerItem](../QtOrganizer.OrganizerItem/index.html) element.

**Note:** Both the `startPeriod` and `endPeriod` are set by default to the current time (when the OrganizerModel was created). In most cases, both (or at least one) of the startPeriod and endPeriod should be set; otherwise, the OrganizerModel will contain zero items because the `startPeriod` and `endPeriod` are the same value. For example, if only `endPeriod` is provided, the OrganizerModel will contain all items from now (the time of the OrganizerModel's creation) to the `endPeriod` time.

**See also** OrganizerItem and QOrganizerManager.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ImportError-prop"></span><span class="name">ImportError</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Defines the errors cases for [OrganizerModel::importItems()](index.html#importItems-method) -function.

-   OrganizerModel::ImportNoError Completed successfully, no error.
-   OrganizerModel::ImportUnspecifiedError Unspecified error.
-   OrganizerModel::ImportIOError Input/output error.
-   OrganizerModel::ImportOutOfMemoryError Out of memory error.
-   OrganizerModel::ImportNotReadyError Not ready for importing. Only one import operation can be active at a time.
-   OrganizerModel::ImportParseError Error during parsing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoUpdate-prop"></span><span class="name">autoUpdate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether or not the organizer model should be updated automatically, default value is true.

**See also** [OrganizerModel::update()](index.html#update-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableManagers-prop"></span><span class="name">availableManagers</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of available manager names. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collections-prop"></span><span class="name">collections</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtOrganizer.Collection/index.html">Collection</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of collections in the organizer model.

**See also** [Collection](../QtOrganizer.Collection/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="endPeriod-prop"></span><span class="name">endPeriod</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the end date and time period used by the organizer model to fetch organizer items. The default value is the datetime of [OrganizerModel](index.html) creation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the latest error code returned by the organizer manager.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchHint-prop"></span><span class="name">fetchHint</span> : <span class="type"><a href="../QtOrganizer.FetchHint/index.html">FetchHint</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the fetch hint instance used by the organizer model.

**See also** [FetchHint](../QtOrganizer.FetchHint/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="filter-prop"></span><span class="name">filter</span> : <span class="type"><a href="../QtOrganizer.Filter/index.html">Filter</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the filter instance used by the organizer model.

Set filter property to 'null', when you want to reset it to default value.

**See also** [Filter](../QtOrganizer.Filter/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemCount-prop"></span><span class="name">itemCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the size of organizer items the [OrganizerModel](index.html) currently holds.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="items-prop"></span><span class="name">items</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtOrganizer.OrganizerItem/index.html">OrganizerItem</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of organizer items in the organizer model.

**See also** [OrganizerItem](../QtOrganizer.OrganizerItem/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manager-prop"></span><span class="name">manager</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the manager name or manager uri of the organizer backend engine. The manager uri format: qtorganizer:&lt;managerid&gt;:&lt;key&gt;=&lt;value&gt;&&lt;key&gt;=&lt;value&gt;.

For example, memory organizer engine has an optional id parameter, if user want to share the same memory engine with multiple [OrganizerModel](index.html) instances, the manager property should declared like this:

``` cpp
model : OrganizerModel {
   manager:"qtorganizer:memory:id=organizer1
}
```

instead of just the manager name:

``` cpp
model : OrganizerModel {
   manager:"memory"
}
```

**See also** QOrganizerManager::fromUri().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="managerName-prop"></span><span class="name">managerName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the manager name of the organizer backend engine. This property is read only.

**See also** QOrganizerManager::fromUri().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sortOrders-prop"></span><span class="name">sortOrders</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtOrganizer.SortOrder/index.html">SortOrder</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of sort orders used by the organizer model.

**See also** [SortOrder](../QtOrganizer.SortOrder/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startPeriod-prop"></span><span class="name">startPeriod</span> : <span class="type">date</span></p></td>
</tr>
</tbody>
</table>

This property holds the start date and time period used by the organizer model to fetch organizer items. The default value is the datetime of [OrganizerModel](index.html) creation.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onExportCompleted-signal"></span><span class="name">onExportCompleted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when [OrganizerModel::exportItems()](index.html#exportItems-method) completes. The success of operation can be seen on *error* which is defined in OrganizerModel::ExportError. *url* indicates the file, which was exported.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onImportCompleted-signal"></span><span class="name">onImportCompleted</span>(<span class="type"><a href="index.html#ImportError-prop">ImportError</a></span> <em>error</em>, <span class="type">URL</span> <em>url</em>, <span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>ids</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when [OrganizerModel::importItems()](index.html#importItems-method) completes. The success of operation can be seen on *error* which is defined in [OrganizerModel::ImportError](index.html#ImportError-prop). *url* indicates the file, which was imported. *ids* contains the imported items ids.

If the operation was successful, items are now imported to backend. If [OrganizerModel::autoUpdate](index.html#autoUpdate-prop) is enabled, OrganizerModel::modelChanged will be emitted when imported items are also visible on [OrganizerModel](index.html)'s data model.

**See also** [OrganizerModel::importItems](index.html#importItems-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onItemsFetched-signal"></span><span class="name">onItemsFetched</span>(<span class="type">int</span> <em>requestId</em>, <span class="type">list</span>&lt;<span class="type"><a href="../QtOrganizer.OrganizerItem/index.html">OrganizerItem</a></span>&gt; <em>fetchedItems</em>)</p></td>
</tr>
</tbody>
</table>

This handler is called when request of the given *requestId* is finished with the *fetchedItems*.

**See also** [fetchItems](index.html#fetchItems-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onModelChanged-signal"></span><span class="name">onModelChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when there are changes in items contained by [OrganizerModel](index.html)'s data model. Items have either been added, removed or modified. This signal is also always emitted during [OrganizerModel](index.html) construction when data model is ready for use, even in cases when data model is not having any items in it.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelUpdate-method"></span><span class="name">cancelUpdate</span>()</p></td>
</tr>
</tbody>
</table>

Cancel the running organizer model content update request.

**See also** [OrganizerModel::autoUpdate](index.html#autoUpdate-prop) and [OrganizerModel::update](index.html#update-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collection-method"></span><span class="type"><a href="../QtOrganizer.Collection/index.html">Collection</a></span> <span class="name">collection</span>(<span class="type">string</span> <em>collectionId</em>)</p></td>
</tr>
</tbody>
</table>

Returns the Collection object which collection id is the given *collectionId* and null if collection id is not found.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="containsItems-method-2"></span><span class="type">bool</span> <span class="name">containsItems</span>(<span class="type">date</span> <em>start</em>, <span class="type">date</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if there is at least one [OrganizerItem](../QtOrganizer.OrganizerItem/index.html) between the given date range. Both the *start* and *end* parameters are optional, if no *end* parameter, returns true if there are item(s) after *start*, if neither start nor end date time provided, returns true if items in the current model is not empty, otherwise return false.

**See also** [itemIds()](index.html#itemIds-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="containsItems-method"></span><span class="type">list</span>&lt;<span class="type">bool</span>&gt; <span class="name">containsItems</span>(<span class="type">date</span> <em>start</em>, <span class="type">date</span> <em>end</em>, <span class="type">int</span> <em>interval</em>)</p></td>
</tr>
</tbody>
</table>

Returns a list of booleans telling if there is any item falling in the given time range.

For example, if the *start* time is 2011-12-08 14:00:00, the *end* time is 2011-12-08 20:00:00, and the *interval* is 3600 (seconds), a list of size 6 is returned, telling if there is any item falling in the range of 14:00:00 to 15:00:00, 15:00:00 to 16:00:00, ..., 19:00:00 to 20:00:00.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultCollection-method"></span><span class="type"><a href="../QtOrganizer.Collection/index.html">Collection</a></span> <span class="name">defaultCollection</span>()</p></td>
</tr>
</tbody>
</table>

Returns the default Collection object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exportItems-method"></span><span class="name">exportItems</span>(<span class="type">url</span> <em>url</em>, <span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>profiles</em>)</p></td>
</tr>
</tbody>
</table>

Export organizer items into a vcalendar file to the given *url* by optional *profiles*. At the moment only the local file url is supported in export method.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchCollections-method"></span><span class="name">fetchCollections</span>()</p></td>
</tr>
</tbody>
</table>

Fetch asynchronously a list of organizer collections from the organizer backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchItems-method-2"></span><span class="type">int</span> <span class="name">fetchItems</span>(<span class="type">stringlist</span> <em>itemIds</em>)</p></td>
</tr>
</tbody>
</table>

Starts a request to fetch items by the given *itemIds*, and returns the unique ID of this request. -1 is returned if the request can't be started.

Note that the items fetched won't be added to the model, but can be accessed through the [onItemsFetched](index.html#onItemsFetched-signal) handler.

**See also** [onItemsFetched](index.html#onItemsFetched-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchItems-method"></span><span class="type">int</span> <span class="name">fetchItems</span>(<span class="type">date</span> <em>start</em>, <span class="type">date</span> <em>end</em>, <span class="type"><a href="../QtOrganizer.Filter/index.html">Filter</a></span> <em>filter</em>, <span class="type">int</span> <em>maxCount</em>, <span class="type">list</span>&lt;<span class="type"><a href="../QtOrganizer.SortOrder/index.html">SortOrder</a></span>&gt; <em>sortOrders</em>, <span class="type"><a href="../QtOrganizer.FetchHint/index.html">FetchHint</a></span> <em>fetchHint</em>)</p></td>
</tr>
</tbody>
</table>

This method will start a request to fetch items between the given *start* and *end* dates. Optionally a *sort* order, *filter*, *fetchHint* and *maxCount* can be specified to narrow the search. If nothing is set for these optional paramenters then defaults are applied, essentially any sort order, default filter, default storage location and all items.

The unique ID of this request will be returned. If the request can't be started -1 is returned. The end date must be greater than the start date for this method to start a fetch request.

Note that the items fetched won't be added to the model, but can be accessed through the [onItemsFetched](index.html#onItemsFetched-signal) handler. No properties in the model are updated at all.

**See also** [onItemsFetched](index.html#onItemsFetched-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="importItems-method"></span><span class="name">importItems</span>(<span class="type">url</span> <em>url</em>, <span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>profiles</em>)</p></td>
</tr>
</tbody>
</table>

Import organizer items from a vcalendar by the given *url* and optional *profiles*. Only one import operation can be active at a time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="item-method"></span><span class="type"><a href="../QtOrganizer.OrganizerItem/index.html">OrganizerItem</a></span> <span class="name">item</span>(<span class="type">string</span> <em>itemId</em>)</p></td>
</tr>
</tbody>
</table>

Returns the [OrganizerItem](../QtOrganizer.OrganizerItem/index.html) object with the given *itemId*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemIds-method"></span><span class="type">list</span>&lt;<span class="type">string</span>&gt; <span class="name">itemIds</span>(<span class="type">date</span> <em>start</em>, <span class="type">date</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the list of organizer item ids between the given date range *start* and *end*, excluding generated occurrences. Both the *start* and *end* parameters are optional, if no *end* parameter, returns all item ids from *start*, if neither start nor end date time provided, returns all item ids in the current model.

**See also** [containsItems()](index.html#containsItems-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemsByTimePeriod-method"></span><span class="type">list</span>&lt;<span class="type"><a href="../QtOrganizer.OrganizerItem/index.html">OrganizerItem</a></span>&gt; <span class="name">itemsByTimePeriod</span>(<span class="type">date</span> <em>start</em>, <span class="type">date</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the list of organizer items between the given *start* and *end* period.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeCollection-method"></span><span class="name">removeCollection</span>(<span class="type">string</span> <em>collectionId</em>)</p></td>
</tr>
</tbody>
</table>

Removes asynchronously the organizer collection with the given *collectionId* from the backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItem-method-2"></span><span class="name">removeItem</span>(<span class="type"><a href="../QtOrganizer.OrganizerItem/index.html">OrganizerItem</a></span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Removes the given organizer *item* from the backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItem-method"></span><span class="name">removeItem</span>(<span class="type">string</span> <em>itemId</em>)</p></td>
</tr>
</tbody>
</table>

Removes the organizer item with the given *itemId* from the backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItems-method-2"></span><span class="name">removeItems</span>(<span class="type">list</span>&lt;<span class="type"><a href="../QtOrganizer.OrganizerItem/index.html">OrganizerItem</a></span>&gt; <em>items</em>)</p></td>
</tr>
</tbody>
</table>

Removes asynchronously the organizer items in the given *items* list from the backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItems-method"></span><span class="name">removeItems</span>(<span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>itemId</em>)</p></td>
</tr>
</tbody>
</table>

Removes asynchronously the organizer items with the given *ids* from the backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="saveCollection-method"></span><span class="name">saveCollection</span>(<span class="type"><a href="../QtOrganizer.Collection/index.html">Collection</a></span> <em>collection</em>)</p></td>
</tr>
</tbody>
</table>

Saves asynchronously the given *collection* into the organizer backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="saveItem-method"></span><span class="name">saveItem</span>(<span class="type"><a href="../QtOrganizer.OrganizerItem/index.html">OrganizerItem</a></span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Saves asynchronously the given *item* into the organizer backend.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="update-method"></span><span class="name">update</span>()</p></td>
</tr>
</tbody>
</table>

Manually update the organizer model content including both items and collections.

**See also** [OrganizerModel::updateItems](index.html#updateItems-method), [OrganizerModel::updateCollections](index.html#updateCollections-method), and [OrganizerModel::autoUpdate](index.html#autoUpdate-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateCollections-method"></span><span class="name">updateCollections</span>()</p></td>
</tr>
</tbody>
</table>

Manually update the organizer model collections.

**See also** [OrganizerModel::update](index.html#update-method), [OrganizerModel::updateItems](index.html#updateItems-method), and [OrganizerModel::autoUpdate](index.html#autoUpdate-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateItems-method"></span><span class="name">updateItems</span>()</p></td>
</tr>
</tbody>
</table>

Manually update the organizer model items.

**See also** [OrganizerModel::update](index.html#update-method), [OrganizerModel::updateCollections](index.html#updateCollections-method), and [OrganizerModel::autoUpdate](index.html#autoUpdate-prop).

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
