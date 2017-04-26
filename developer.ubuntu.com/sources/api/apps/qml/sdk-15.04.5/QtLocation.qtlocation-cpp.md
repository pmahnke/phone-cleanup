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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.5</a> ›
-   <a href="../QtLocation/index.html" class="sub-nav-item">QtLocation</a> ›

<!-- -->

-   Qt Location C++ API

Qt Location C++ API
===================

<span class="subtitle"></span>
<span id="details"></span>
The Location API provides a library for mapping, navigation and place information.

The Qt Location API provides the developer with a set of functions to interact with maps, navigational data and places of interest. This is particularly useful when associated with current position information which can be retrieved via the QtPositioning module.

With the Maps API we can associate a position with a map in various formats supplied by a backend. Then the Places API could be used to populate places on the Map or even specify the current position as a place of interest and associate it with an icon, contact details and other information.

The following table provides links to more detailed information on sections of the Qt Location C++ API.

|                                                                                                     |                                                    |
|-----------------------------------------------------------------------------------------------------|----------------------------------------------------|
| [Maps and Navigation](../../sdk-15.04.1/QtLocation.location-maps-cpp/index.html)                    | Displaying maps and finding routes.                |
| [Places](../../sdk-15.04.1/QtLocation.location-places-cpp/index.html)                               | Searching for and managing points of interest.     |
| [Geoservices Plugin Implementation](../../sdk-15.04.1/QtLocation.qtlocation-geoservices/index.html) | Implement new geoservices and positioning plugins. |

<span id="geoservice-provider-classes"></span>
Geoservice Provider Classes
---------------------------

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QGeoServiceProvider</p></td>
<td><p>Aggregates access to services which provide geographical information</p></td>
</tr>
</tbody>
</table>

<span id="maps-and-navigation-classes"></span>
Maps and Navigation Classes
---------------------------

Currently it is not possible to interact with maps data via C++. The only available interface is the [Maps and Navigation (QML)](../../sdk-15.04.1/QtLocation.location-maps-qml/index.html) API.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QGeoManeuver</p></td>
<td><p>Represents the information relevant to the point at which two QGeoRouteSegments meet</p></td>
</tr>
<tr class="even">
<td><p>QGeoRoute</p></td>
<td><p>Represents a route between two points</p></td>
</tr>
<tr class="odd">
<td><p>QGeoRouteReply</p></td>
<td><p>Manages an operation started by an instance of QGeoRoutingManager</p></td>
</tr>
<tr class="even">
<td><p>QGeoRouteRequest</p></td>
<td><p>Represents the parameters and restrictions which define a request for routing information</p></td>
</tr>
<tr class="odd">
<td><p>QGeoRouteSegment</p></td>
<td><p>Represents a segment of a route</p></td>
</tr>
<tr class="even">
<td><p>QGeoRoutingManager</p></td>
<td><p>Support for geographic routing operations</p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QGeoCodeReply</p></td>
<td><p>Manages an operation started by an instance of QGeoCodingManager</p></td>
</tr>
<tr class="even">
<td><p>QGeoCodingManager</p></td>
<td><p>Support for geocoding operations</p></td>
</tr>
</tbody>
</table>

<span id="places-classes"></span>
Places Classes
--------------

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
<td><p>QPlaceContentReply</p></td>
<td><p>Manages a content retrieval operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceContentRequest</p></td>
<td><p>Represents the parameters of a content request</p></td>
</tr>
<tr class="even">
<td><p>QPlaceDetailsReply</p></td>
<td><p>Manages a place details fetch operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceEditorial</p></td>
<td><p>Represents a publisher's article describing a place</p></td>
</tr>
<tr class="even">
<td><p>QPlaceIcon</p></td>
<td><p>Represents an icon</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceIdReply</p></td>
<td><p>Manages operations which return an identifier such as saving and removal operations of places and categories</p></td>
</tr>
<tr class="even">
<td><p>QPlaceImage</p></td>
<td><p>Represents a reference to an image</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceManager</p></td>
<td><p>The interface which allows clients to access places stored in a particular backend</p></td>
</tr>
<tr class="even">
<td><p>QPlaceManagerEngine</p></td>
<td><p>Interface for implementers of QGeoServiceProvider plugins who want to provide access to place functionality</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceMatchReply</p></td>
<td><p>Manages a place matching operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="even">
<td><p>QPlaceMatchRequest</p></td>
<td><p>Used to find places from one manager that match those from another. It represents a set of request parameters</p></td>
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
<td><p>QPlaceReply</p></td>
<td><p>Manages an operation started by an instance of QPlaceManager and serves as a base class for more specialized replies</p></td>
</tr>
<tr class="even">
<td><p>QPlaceResult</p></td>
<td><p>Represents a search result containing a place</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceReview</p></td>
<td><p>Represents a review of a place</p></td>
</tr>
<tr class="even">
<td><p>QPlaceSearchReply</p></td>
<td><p>Manages a place search operation started by an instance of QPlaceManager</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceSearchRequest</p></td>
<td><p>Represents the set of parameters for a search request</p></td>
</tr>
<tr class="even">
<td><p>QPlaceSearchResult</p></td>
<td><p>The base class for search results</p></td>
</tr>
<tr class="odd">
<td><p>QPlaceSearchSuggestionReply</p></td>
<td><p>Manages a search suggestion operation started by an instance of QPlaceManager</p></td>
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

<span id="geoservices-and-positioning-plugin-classes"></span>
Geoservices and Positioning Plugin Classes
------------------------------------------

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QGeoCodingManagerEngine</p></td>
<td><p>Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide support for geocoding operations</p></td>
</tr>
<tr class="even">
<td><p>QGeoRoutingManagerEngine</p></td>
<td><p>Interface and convenience methods to implementers of QGeoServiceProvider plugins who want to provide access to geographic routing information</p></td>
</tr>
<tr class="odd">
<td><p>QGeoServiceProviderFactory</p></td>
<td><p>Factory class used as the plugin interface for services related to geographical information</p></td>
</tr>
<tr class="even">
<td><p>QPlaceManagerEngine</p></td>
<td><p>Interface for implementers of QGeoServiceProvider plugins who want to provide access to place functionality</p></td>
</tr>
</tbody>
</table>

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
