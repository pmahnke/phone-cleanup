---
Title: QtLocation.location-places-cpp
---
        
Places (C++)
============

<span class="subtitle"></span>
details
Overview
--------

The Places API allows users to discover places/points of interest and view details about them such as address and contact information; some places may even have rich content such as images and reviews. The Places API also facilitates management of places and categories, allowing users to save and remove them.

<span id="place-definition"></span>
Place Definition
----------------

A place is a point of interest, it could be a favorite restaurant, a park or someone's home. A QPlace object represents a place by acting as a container for various information about that place.

This information can be divided into 2 broad classifications

-   Details
-   Rich content

The place details consist of properties of the place, such as the name, location, contact information and so on. When a place is returned during a search, these details are filled in. Sometimes in order to save bandwidth, there are further details about the place that can be retrieved on an individual place by place basis, if the user is interested. The QPlace::detailsFetched() function can be queried to see if all available details have been fetched, and if not, QPlaceManager::getPlaceDetails() can be used to retrieve them. Precisely which details are populated during a search and which need to be fetched individually may vary from provider to provider. See plugin documentation for more details.

The rich content of a place consists of items such as images, reviews and editorials. Potentially there may be many rich content items, so they are treated separately from the place details. They can be retrieved in a paged fashion via QPlaceManager::getPlaceContent(). If necessary, the content may be assigned to a place so it can act as a convenient container.

<span id="common-operations"></span>
Common Operations
-----------------

<span id="initializing-a-manager"></span>
### Initializing a Manager

All places functionality is facilitated by a QPlaceManager instance. One must specify a QGeoServiceProvider in order to create the QPlaceManager

``` cpp
//The "provider name" is used to select a particular provider
QGeoServiceProvider *provider = new QGeoServiceProvider("provider name");
QPlaceManager *manager = provider->placeManager();
```

<span id="discovery-search"></span>
### Discovery/Search

In order to perform a search operation we simply create a QPlaceSearchRequest and set the desired search parameters, such as a search term and search center.

``` cpp
//instantiate request and set parameters
QPlaceSearchRequest searchRequest;
searchRequest.setSearchTerm("ice cream");
searchRequest.setSearchArea(QGeoCircle(QGeoCoordinate(12.34, 56.78)));
//send off a search request
/*QPlaceSearchReply * */ searchReply = manager->search(searchRequest);
//connect a slot to handle the reply
connect(searchReply, SIGNAL(finished()), this, SLOT(handleSearchReply()));
```

The request is an asynchronous operation so we need a slot to handle the completion of the request. In the handler we check that there are no errors and that our search result type is a place. If so we can then retrieve some of the core details of the place. At the end of the slot, we delete the reply since they are for single use only.

``` cpp
void handleSearchReply() {
    if (searchReply->error() == QPlaceReply::NoError) {
        foreach (const QPlaceSearchResult &result, searchReply->results()) {
            if (result.type() == QPlaceSearchResult::PlaceResult) {
                QPlaceResult placeResult = result;
                qDebug() << "Name: " << placeResult.place().name();
                qDebug() << "Coordinate " << placeResult.place().location().coordinate().toString();
                qDebug() << "Street: " << placeResult.place().location().address().street();
                qDebug() << "Distance: " << placeResult.distance();
            }
        }
    }
    searchReply->deleteLater();  //discard reply
    searchReply = 0;
}
```

**Note:** Depending upon the plugin backend that was chosen, the search results may contain places which have further details that can be fetched on a place by place basis. To fetch these other details see Fetching Place Details.

<span id="recommendations"></span>
#### Recommendations

Recommendations can be retrieved by supplying a place id via QPlaceSearchRequest::setRecommendationId(). Any places similar to the given place are retrieved.

<span id="paging"></span>
#### Paging

If the plugin supports paging, the limit parameter may be provided to the search request.

``` cpp
QPlaceSearchRequest searchRequest;
searchRequest.setLimit(15); //specify how many results are to be retrieved.
```

<span id="fetching-place-details"></span>
### Fetching Place Details

A place that has been returned from a search request may have more details that can be fetched. The following demonstrates how to check if there are further details and if so how to request them.

``` cpp
if (!place.detailsFetched()) {
    /*QPlaceDetailsReply * */ detailsReply = manager->getPlaceDetails(place.placeId());
    connect(detailsReply, SIGNAL(finished()), this, SLOT(handleDetailsReply()));
}
    ...
    ...
void handleDetailsReply() {
    QPlace place;
    if (detailsReply->error() == QPlaceReply::NoError)
        place = detailsReply->place();
    detailsReply->deleteLater(); //discard reply
    detailsReply = 0;
}
```

<span id="fetching-rich-content"></span>
### Fetching Rich Content

Rich content such as images and reviews is retrieved through the manager and then if required assigned to a place.

``` cpp
QPlaceContentRequest request;
request.setContentType(QPlaceContent::ImageType);
request.setPlaceId(place.placeId());
request.setLimit(5);
/*QPlaceContentReply * */ contentReply = manager->getPlaceContent(request);
connect(contentReply, SIGNAL(finished()), this, SLOT(handleImagesReply()));
```

We can handle the content request as shown below.

``` cpp
void handleImagesReply() {
    if (contentReply->error() == QPlaceReply::NoError) {
        QMapIterator<int, QPlaceContent> iter(contentReply->content());
        while (iter.hasNext()) {
            qDebug() << "Index: " << iter.key();
            QPlaceImage image = iter.value();
            qDebug() << image.url();
            qDebug() << image.mimeType();
        }
        //alternatively if indexes are irrelevant
        foreach (const QPlaceImage &image, contentReply->content()) {
            qDebug() << image.url();
            qDebug() << image.mimeType();
        }
        //we can assign content to the place that it belongs to.
        //the place object serves as a container where we can retrieve
        //content that has already been fetched
        place.insertContent(contentReply->request().contentType(), contentReply->content());
        place.setTotalContentCount(contentReply->request().contentType(), contentReply->totalCount());
    }
    contentReply->deleteLater();
    contentReply = 0;
}
```

It is important to note that the results in the QPlaceContentReply, is a QPlaceContent::Collection which is essentially a QMap&lt;int, QPlaceContent&gt;. The key `int` in this case is the index of the content, and the value is the content itself. Due to the way Content is implemented it is possible to convert a content type as follows

``` cpp
QPlaceImage image = content; //provided that 'content' has a type QPlace::ImageType
```

The usage of the QPlaceContent::Collection and the conversion between content and its subtypes means that code for handling the mechanics of paging reviews, images and editorials can be easily shared.

<span id="search-suggestions"></span>
### Search Suggestions

The retrieval of search term suggestions is very similar to performing a place search. A QPlaceSearchRequest is used just like a place search, the only difference being that the search term is set to a partially completed string.

``` cpp
QPlaceSearchRequest request;
request.setSearchTerm("piz");
request.setSearchArea(QGeoCircle(QGeoCoordinate(12.34, 56.78)));
/* QPlaceSearchSuggestion * */suggestionReply = manager->searchSuggestions(request);
connect(suggestionReply, SIGNAL(finished()), this, SLOT(handleSuggestionReply()));
```

And when the request is done, we can use the reply to show the suggestions.

``` cpp
void handleSuggestionReply() {
    if (suggestionReply->error() == QPlaceReply::NoError) {
        foreach (const QString &suggestion, suggestionReply->suggestions())
            qDebug() << suggestion;
    }
    suggestionReply->deleteLater(); //discard reply
    suggestionReply = 0;
}
```

<span id="saving-a-place-cpp"></span><span id="saving-a-place"></span>
### Saving a Place

The saving of a new place is performed as follows, we create a QPlace instance and populate it with information such as a name, address and coordinate. Once done we can invoke QPlaceManager::savePlace() to begin a save operation.

``` cpp
QPlace  place;
place.setName( "Fred's Ice Cream Parlor" );
QGeoLocation location;
location.setCoordinate(QGeoCoordinate(12.34, 56.78));
QGeoAddress address;
address.setStreet("111 Nother Street");
    ...
location.setAddress(address);
place.setLocation(location);
/* QPlaceIdReply * */savePlaceReply = manager->savePlace(place);
connect(savePlaceReply, SIGNAL(finished()), this, SLOT(handleSavePlaceReply()));
```

Once a place is saved the reply contains the new identifier for that place.

``` cpp
void handleSavePlaceReply() {
    if (savePlaceReply->error() == QPlaceReply::NoError)
        qDebug() << savePlaceReply->id();
    savePlaceReply->deleteLater(); //discard reply
    savePlaceReply = 0;
}
```

Note that to save an already *existing* place, the QPlace::placeId() must be filled in with the correct identifier. Otherwise a new place will be created if empty or the wrong place overwritten if the identifier is incorrect.

When a place is saved, the QPlaceManager may emit QPlaceManager::placedAdded() or QPlaceManager::placeUpdated() signals. However whether a manager does so or not is provider specific, managers accessing places from a web service will typically not emit these signals while managers accessing places locally stored generally will.

<span id="caveats"></span>
#### Caveats

The Places API is currently designed for only saving *core* details. Saving rich content like images and reviews or details like supplier and rating is not a supported use case. Typically a manager will generally ignore these fields upon save and may produce a warning message if they are populated.

The Places API only supports saving of the following *core details*:

-   name
-   place id
-   location
-   contact details
-   icon
-   categories (tag-like names to describe a place)
-   visibility scope

It is possible that providers may only support a subset of these. See the [plugin documentation](../QtLocation.qtlocation-index.md#plugin-references-and-parameters) for more details.

Saving of properties such as the rating, extended attributes, images, reviews, editorials and supplier is explicitly not supported by the Places API.

<span id="saving-between-managers"></span>
#### Saving Between Managers

When saving places between managers, there are a few things to be aware of. Some fields of a place such as the id, categories and icons are manager specific entities for example the categories in one manager may not be recognized in another. Therefore trying to save a place directly from one manager to another is not possible.

The typical approach is to use the QPlaceManager::compatiblePlace() function, it creates a copy of a place, but only copies data that the manager supports. Manager specific data such as the place identifier is not copied over. The new copy is now suitable for saving into the manager. If the manager supports matching by alternative identifiers, an alternative identifier attribute is assigned to the copy (see Matching places between managers)

``` cpp
//result retrieved from a different manager)
QPlace place = manager->compatiblePlace(result.place());
saveReply = manager->savePlace(place);
```

<span id="removing-a-place-cpp"></span><span id="removing-a-place"></span>
### Removing a Place

The removal of a place is performed as follows:

``` cpp
/* QPlaceIdReply * */removePlaceReply = manager->removePlace(place.placeId());
connect(removePlaceReply, SIGNAL(finished()), this, SLOT(handleRemovePlaceReply()));
    ...
    ...
void handleRemovePlaceReply() {
    if (removePlaceReply->error() == QPlaceReply::NoError)
        qDebug() << "Removal of place identified by"
                 << removePlaceReply->id() << "was successful";
    removePlaceReply->deleteLater(); //discard reply
    removePlaceReply = 0;
}
```

When a place is removed, the QPlaceManager may emit the QPlaceManager::placeRemoved() signal. Whether a manager does so is provider specific. Managers accessing places from a web service will typically not emit these signals, while managers accessing places stored locally generally will.

<span id="using-categories"></span>
### Using Categories

Categories are keywords that can describe a place. For example, 'park', 'theater', 'restaurant'. A place could be described by many categories, it could be a park and a music venue and a ferry or bus stop.

To use categories they must first be initialized.

``` cpp
/* QPlaceReply * */initCatReply = manager->initializeCategories();
connect(initCatReply, SIGNAL(finished()), this, SLOT(handleInitCatReply()));
    ...
    ...
void handleInitCatReply() {
    if (initCatReply->error() == QPlaceReply::NoError)
        qDebug() << "Categories initialized";
    else
        qDebug() << "Failed to initialize categories";
    initCatReply->deleteLater();
    initCatReply = 0;
}
```

After the categories have been initialized we can then use these category functions.

-   QPlaceManager::childCategories()
-   QPlaceManager::category()
-   QPlaceManager::parentCategoryId()
-   QPlaceManager::childCategoryIds();

To retrieve the top level categories we use the QPlaceManager::childCategories() function but do not provide a category identifier.

``` cpp
QList<QPlaceCategory> topLevelCategories = manager->childCategories();
foreach (const QPlaceCategory &category, topLevelCategories)
    qDebug() << category.name();
```

If we did provide an identifier then we could retrieve a category's children.

``` cpp
QList<QPlaceCategory> childCategories = manager->childCategories(pizza.categoryId());
```

<span id="saving-a-category"></span>
### Saving a Category

The following shows how to save a category

``` cpp
QPlaceCategory fastFood;
QPlaceCategory category;
category.setName("pizza");
/*QPlaceIdReply */ saveCategoryReply = manager->saveCategory(category);
connect(saveCategoryReply, SIGNAL(finished()), this, SLOT(handleSaveCategoryReply()));
//we could have saved a category as a child by supplying a parent identifier.
saveCategoryReply = manager->saveCategory(category, fastFood.categoryId());
    ...
    ...
void handleSaveCategoryReply() {
    if (saveCategoryReply->error() == QPlaceReply::NoError) {
        qDebug() << "Saved category id =" << saveCategoryReply->id();
    }
    saveCategoryReply->deleteLater();
    saveCategoryReply = 0;
}
```

When a category is saved, the QPlaceManager may emit QPlaceManager::categoryAdded() or QPlaceManager::categoryUpdated() signals. However whether a manager does so or not is provider specific, managers accessing places from a web service will typically not emit these signals while managers accessing places locally stored generally will.

<span id="removing-a-category"></span>
### Removing a Category

Category removal is very similar to removing a place

``` cpp
/* QPlaceIdReply * */removeCategoryReply = manager->removeCategory(place.placeId());
connect(removeCategoryReply, SIGNAL(finished()), this, SLOT(handleRemoveCategoryReply()));
    ...
    ...
void handleRemoveCategoryReply() {
    if (removeCategoryReply->error() == QPlaceReply::NoError)
        qDebug() << "Removal of category identified by"
                 << removeCategoryReply->id() << "was successful";
    removeCategoryReply->deleteLater(); //discard reply
    removeCategoryReply = 0;
}
```

When a category is removed, the QPlaceManager may emit the QPlaceManager::categoryRemoved() signal. Whether a manager does so is provider specific. Managers accessing places from a web service will typically not emit these signals, while managers accessing places stored locally generally will.

<span id="matching-places-between-managers"></span>
### Matching Places Between Managers

Sometimes you may want to cross reference whether places from one manager match those from another manager. Such a situation may arise where one manager provides read-only access to places (origin manager) while another second r/w manager (destination manager) is used to save selected favorites from the first. During a search of the origin manager we may want to know which ones have been 'favorited' into the destination manager and perhaps display a customized favorite name rather than the original name.

The matching mechanism can vary between managers, but is typically accomplished through an alternative identifier. As part of the save process, the place identifier from the origin manager is saved as an alternative identifier attribute in the destination manager (which can have its own place identifier scheme). In the following example, the origin manager is from the 'nokia' QGeoServiceProider, therefore as part of the saving process an alternative identifier attribute, x\_id\_nokia, is set for the place saved into the destination manager (when QPlaceManager::compatiblePlace() is called)

``` cpp
origin R/O manager(nokia)       destination R/W manager (places_jsondb)
                        Save
Place id: ae246         --->    Place id: 0001
Attribute type: x_provider      Attribute type: x_id_nokia
Attribute value: nokia          Attribute text value: ae246
```

In order to perform the matching, we create a QPlaceMatchRequest and assign it the search results from the origin manager. The QPlaceMatchRequest will be used on the destination manager to return corresponding places. We also specify matching parameters which are key value pairs. As mentioned previously, this can vary depending on the manager but typically the key is QPlaceMatchRequest::AlternativeId to indicate we are matching by alternative id, the value in this case would be x\_id\_nokia which specifies which alternative identifier attribute we are using to do the matching.

``` cpp
QPlaceMatchRequest request;
request.setResults(results);
QVariantMap parameters;
parameters.insert(QPlaceMatchRequest::AlternativeId, "x_id_nokia");
request.setParameters(parameters);
matchReply = manager->matchingPlaces(request);
    ...
    ...
void matchHandler() {
    if (matchReply->error() == QPlaceReply::NoError) {
        foreach (const QPlace place, matchReply->places()) {
            if (place != QPlace())
                qDebug() << "Place is a favorite with name" << place.name();
            else
                qDebug() << "Place is not a favorite";
        }
    }
    matchReply->deleteLater();
    matchReply = 0;
}
```

<span id="classes-in-places"></span>
Classes in Places
-----------------

<span id="data-classes"></span>
### Data Classes

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QPlace</p></td>
<td><p>Represents a set of data about a place</p></td>
</tr>
<tr class="even">
<td><p>QPlaceAttribute</p></td>
<td><p>Represents generic attribute information about a place</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceCategory</p></td>
<td><p>Represents a category that a QPlace can be associated with</p></td>
</tr>
<tr class="even">
<td><p>QPlaceContactDetail</p></td>
<td><p>Represents a contact detail such as a phone number or website url</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceContent</p></td>
<td><p>Serves as the base class for rich content types</p></td>
</tr>
<tr class="even">
<td><p>QPlaceEditorial</p></td>
<td><p>Represents a publisher's article describing a place</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceIcon</p></td>
<td><p>Represents an icon</p></td>
</tr>
<tr class="even">
<td><p>QPlaceImage</p></td>
<td><p>Represents a reference to an image</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceProposedSearchResult</p></td>
<td><p>Represents a search result containing a proposed search</p></td>
</tr>
<tr class="even">
<td><p>QPlaceRatings</p></td>
<td><p>Holds rating information about a place</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceResult</p></td>
<td><p>Represents a search result containing a place</p></td>
</tr>
<tr class="even">
<td><p>QPlaceReview</p></td>
<td><p>Represents a review of a place</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceSearchResult</p></td>
<td><p>The base class for search results</p></td>
</tr>
<tr class="even">
<td><p>QPlaceSupplier</p></td>
<td><p>Represents a supplier of a place or content associated with a place</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceUser</p></td>
<td><p>Represents an individual user</p></td>
</tr>
</tbody>
</table>

<span id="request-classes"></span>
### Request Classes

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QPlaceContentRequest</p></td>
<td><p>Represents the parameters of a content request</p></td>
</tr>
<tr class="even">
<td><p>QPlaceMatchRequest</p></td>
<td><p>Used to find places from one manager that match those from another. It represents a set of request parameters</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceSearchRequest</p></td>
<td><p>Represents the set of parameters for a search request</p></td>
</tr>
</tbody>
</table>

<span id="places-reply-classes"></span><span id="reply-classes"></span>
### Reply classes

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QPlaceContentReply</p></td>
<td><p>Manages a content retrieval operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="even">
<td><p>QPlaceDetailsReply</p></td>
<td><p>Manages a place details fetch operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceIdReply</p></td>
<td><p>Manages operations which return an identifier such as saving and removal operations of places and categories</p></td>
</tr>
<tr class="even">
<td><p>QPlaceMatchReply</p></td>
<td><p>Manages a place matching operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceReply</p></td>
<td><p>Manages an operation started by an instance of QPlaceManager and serves as a base class for more specialized replies</p></td>
</tr>
<tr class="even">
<td><p>QPlaceSearchReply</p></td>
<td><p>Manages a place search operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceSearchSuggestionReply</p></td>
<td><p>Manages a search suggestion operation started by an instance of QPlaceManager</p></td>
</tr>
</tbody>
</table>

<span id="manager-classes"></span>
### Manager Classes

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QPlaceManager</p></td>
<td><p>The interface which allows clients to access places stored in a particular backend</p></td>
</tr>
<tr class="even">
<td><p>QPlaceManagerEngine</p></td>
<td><p>Interface for implementers of QGeoServiceProvider plugins who want to provide access to place functionality</p></td>
</tr>
</tbody>
</table>

