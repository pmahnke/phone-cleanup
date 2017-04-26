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
-   [QtContacts](../QtContacts/index.html) ›

<!-- -->

-   RelationshipModel

RelationshipModel
=================

<span class="subtitle"></span>
The RelationshipModel provides a model of contact relationships from the contacts store. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[autoUpdate](index.html#autoUpdate-prop)**** : bool
-   ****[error](index.html#error-prop)**** : string
-   ****[manager](index.html#manager-prop)**** : string
-   ****[participantId](index.html#participantId-prop)**** : int
-   ****[relationshipType](index.html#relationshipType-prop)**** : variant
-   ****[relationships](index.html#relationships-prop)**** : list&lt;Relationship&gt;
-   ****[role](index.html#role-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[addRelationship](index.html#addRelationship-method)****(relationship)
-   ****[removeRelationship](index.html#removeRelationship-method)****(relationship)

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

The contents of the model can be specified with [participantId](index.html#participantId-prop), [role](index.html#role-prop) and [relationshipType](index.html#relationshipType-prop) properties. Whether the model is automatically updated when the store or filter changes, can be controlled with [RelationshipModel::autoUpdate](index.html#autoUpdate-prop) property.

There are two ways of accessing the relationship data: through model by using views and delegates, or alternatively via [relationships](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtContacts.qtcontacts-overview/#relationships) list property.

At the moment only data role provided by the model is `relationship` ([Relationship](../QtContacts.Relationship/index.html)). Through that one can access any data provided by the Relationship element.

**See also** Relationship and QContactRelationship.

Property Documentation
----------------------

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

This property indicates whether or not the relationship model should be updated automatically, default value is true.

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

This property holds the latest error code returned by the contact manager.

This property is read only.

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

This property holds the manager uri of the contact backend engine.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="participantId-prop"></span><span class="name">participantId</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the participant which the list of relationships returned by [RelationshipModel](index.html) should contain.

**See also** [RelationshipFilter::relatedContactId](../QtContacts.RelationshipFilter/index.html#relatedContactId-prop) and [RelationshipModel::role](index.html#role-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relationshipType-prop"></span><span class="name">relationshipType</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the relationship type which the list of relationships returned by [RelationshipModel](index.html) should contain.

**See also** [Relationship::type](../QtContacts.Relationship/index.html#type-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relationships-prop"></span><span class="name">relationships</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtContacts.Relationship/index.html">Relationship</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of relationships.

**See also** [Relationship](../QtContacts.Relationship/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="role-prop"></span><span class="name">role</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the relationship role which the list of relationships returned by [RelationshipModel](index.html) should contain.

**See also** [RelationshipFilter::relatedContactRole](../QtContacts.RelationshipFilter/index.html#relatedContactRole-prop).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addRelationship-method"></span><span class="name">addRelationship</span>(<span class="type">relationship</span>)</p></td>
</tr>
</tbody>
</table>

Addes the given *relationship* to the backend store.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeRelationship-method"></span><span class="name">removeRelationship</span>(<span class="type">relationship</span>)</p></td>
</tr>
</tbody>
</table>

Removes the given *relationship* from the backend store.

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
