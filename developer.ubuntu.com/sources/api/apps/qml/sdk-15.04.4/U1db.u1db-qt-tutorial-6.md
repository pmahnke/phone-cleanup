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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.4</a> ›
-   <a href="../U1db/index.html" class="sub-nav-item">U1db</a> ›

<!-- -->

-   U1Db-Qt Synchronizing Tutorial

U1Db-Qt Synchronizing Tutorial
==============================

<span class="subtitle"></span>
<span id="details"></span>
This tutorial is designed to demonstrate a variety of essential U1Db-Qt functionality and usage, including:

1.  Synchronizing two databases
2.  Utilizing the U1db-Qt Index element
3.  Various approaches to define U1db-Qt Document elements when using the Index element
4.  Partnering the U1db-Qt Index element and a QML ListView element

<span id="storing-data"></span>
Storing Data
------------

<span id="the-database-element"></span>
### The Database Element

<span id="creating-a-database"></span>
#### Creating a Database

A Database is very simple to create. It only needs an id and a path where the file will be created. A Database is a model, which can be used by elements, such as the ListView further in this example.

``` cpp
U1db.Database {
    id: aDatabase
    path: "aDatabase4"
}
```

<span id="the-document-element"></span>
The Document Element
--------------------

<span id="declaring-documents-at-runtime"></span>
### Declaring Documents (at Runtime)

A Document can be instantiated at runtime, or generated dynamically. The examples below demonstrate the former.

A very basic Document could include its unique 'id' and 'docId' properties. While it is not mandatory to define these properties, in some cases they can be convenient references. More advanced applications would likely find these very useful, and in some cases may be an absolute necessity to achieve the objectives of the program.

This example of a very simple Document will not initially do anything, until more properties are added and defined:

``` cpp
U1db.Document {
    id: aDocument1
    docId: 'helloworld1'
}
```

A basic but still practical Document definition contains several essential properties. In addition to 'id' and 'docId' (discussed above), the 'database', 'create', and 'defaults' properties are also very important, and are introduced below.

The 'database' property ensures that the Document is attached to an already defined (or possibly soon to be defined one) identified by its id (in this case 'aDatabase'). For example:

``` cpp
U1db.Document {
    id: aDocument1
    database: aDatabase
    docId: 'helloworld1'
}
```

Should the Database not already contain a Document with the same docId ('hellowworld1' in this example) when a 'create' property is present and set to true it will be generated. For example:

``` cpp
U1db.Document {
    id: aDocument1
    database: aDatabase
    docId: 'helloworld1'
    create: true
}
```

However, the Document still requires some data to be useful, which is what the 'defaults' property provides. The value of 'defaults' is a map of data that will be stored in the database (again when the create property is et to true). It contain key:value pairs, where the value can be a string, number, or nested object (e.g. additional fields, lists). For example:

``` cpp
U1db.Document {
    id: aDocument1
    database: aDatabase
    docId: 'helloworld1'
    create: true
    defaults:{"hello": { "world": { "message":"Hello World", "id": 1 } } }
}
```

As mentioned above, lists can also be nested in Document data. Lists provide a convenient method for producing multiple instances of the same key (AKA 'field' or 'sub-field'). The example code below shows valid use of the 'message' and 'id' sub-fields multiple times within the same object.

``` cpp
U1db.Document {
    id: aDocument2
    database: aDatabase
    docId: 'helloworld2'
    create: true
    defaults:{"hello": { "world": [
                            { "message":"Hello World", "id": 2 },
                            { "message":"Hello World", "id": 2.5 }
                        ] } }
}
```

When the default Javascript Object Notation itself is formatted with appropriate line breaks and indentation, it becomes easier to visualize an embedded list, containing sub-fields 'message' and 'id' (and their respective values):

``` cpp
{"hello":
    { "world":
        [
            { "message":"Hello World", "id": 2 },
            { "message":"Hello World", "id": 2.5 }
        ]
    }
}
```

In dot notation these sub-fields are represented by 'hello.world.message' and 'hello.world.id' respectively. Later in this tutorial these will be utilized within the 'expression' property of U1Db-Qt's Index element, in close collaboration with a QML ListView's delegates.

Normally when a docId already exists in a database, and when the set flag is set to true, the value in 'defaults' will be ignored (and the existing data in the database will remain untouched). Sometimes a developer needs to easily overwrite the data in an existing document. The 'contents' property can be used for just that purpose. When 'contents' is defined, its value will replace existing data in the database, for the document identified by the docId. In addition, 'contents' can be used to add new documents, in the same way as the 'create: true' + 'defaults' combination does; in other words, if the document defined by 'docId' does not exist it will be created.

``` cpp
U1db.Document {
    id: aDocument3
    database: aDatabase
    docId: 'helloworld3'
    contents:{"hello": { "world": [
                            { "message":"Hello World", "id": 3 },
                            { "message":"Hello World", "id": 3.33 },
                            { "message":"Hello World", "id": 3.66 }
                        ] } }
}
```

If 'defaults' exists, 'create' is set to 'true' (or 'false' for that matter) and 'contents' is also defined, it is the latter that takes precidence. In other words, 'create' and 'defaults' will be ignored. The following example demonstrates this scenario:

``` cpp
U1db.Document {
    id: aDocument3
    database: aDatabase
    docId: 'helloworld3'
    create: true
    default:{"hello": { "world": [{ "message":"Hello World", "id": 3 }] } }
    contents:{"hello": { "world": [
                                    { "message":"Hello World", "id": 3 },
                                    { "message":"Hello World", "id": 3.33 },
                                    { "message":"Hello World", "id": 3.66 }
                        ] } }
}
```

This snippet simply represents the absence of the 'create' property, which is synonymous with 'create: false'. The Document can still be recognized within the application, but until applicable properties (such as those outlined above) are added and/or modified then nothing will be added or modified in the database, and this instance may have very little practical value.

``` cpp
U1db.Document {
    id: aDocument4
    database: aDatabase
    docId: 'helloworld4'
    defaults:{"hello": { "world": { "message":"Hello World", "id": 4 } } }
}
```

<span id="samples-of-stored-documents"></span>
#### Samples of Stored Documents

The data stored in the database after defining the above Document elements (and then running the application, will consist of the following:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>docId</th>
<th>content</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>'helloworld1'</td>
<td><pre class="cpp"><code>{
    &quot;hello&quot;: {
        &quot;world&quot;: {
            &quot;id&quot;: 1,
            &quot;message&quot;: &quot;Hello World&quot;
        }
    }
}</code></pre></td>
</tr>
<tr class="even">
<td>'helloworld2'</td>
<td><pre class="cpp"><code>{
    &quot;hello&quot;: {
        &quot;world&quot;: [
            {
                &quot;id&quot;: 2,
                &quot;message&quot;: &quot;Hello World&quot;
            },
            {
                &quot;id&quot;: 2.5,
                &quot;message&quot;: &quot;Hello World&quot;
            }
        ]
    }
}</code></pre></td>
</tr>
<tr class="odd">
<td>'helloworld3'</td>
<td><pre class="cpp"><code>{
    &quot;hello&quot;: {
        &quot;world&quot;: [
            {
                &quot;id&quot;: 3,
                &quot;message&quot;: &quot;Hello World&quot;
            },
            {
                &quot;id&quot;: 3.33,
                &quot;message&quot;: &quot;Hello World&quot;
            },
            {
                &quot;id&quot;: 3.66,
                &quot;message&quot;: &quot;Hello World&quot;
            }
        ]
    }
}</code></pre></td>
</tr>
</tbody>
</table>

<span id="retrieving-data"></span>
Retrieving Data
---------------

To retrieve the Documents that were declared earlier requires two additional elements: Index and Query.

<span id="the-index-element"></span>
### The Index Element

<span id="creating-and-index-element"></span>
#### Creating and Index Element

The Index element requires both a unique 'id' and a pointer to a 'database' in order to begin becoming useful, as demonstrated here:

``` cpp
U1db.Index{
    database: aDatabase
    id: by_helloworld
}
```

In the future, the Index element will support on disk storage of appropriate results / data. At the present time only in memory indexing is done, but once the storing capability is implemented, defining and identifying it is as simple as using the 'name' property (which will be stored in the database along with the relvent data that goes with it). The snippet below shows the use of the 'name' property:

``` cpp
U1db.Index{
    database: aDatabase
    id: by_helloworld
    //name: "by-helloworld"
}
```

The Index element describes, using dot notation, the fields and sub-fields where the developer expects to find information. That information is defined in a list, and added as the value for the 'expression' property. The list can contain one or more entries, as exemplified here (the property is commented out due to its current status):

``` cpp
U1db.Index{
    database: aDatabase
    id: by_helloworld
    //name: "by-helloworld"
    expression: ["hello.world.id","hello.world.message"]
}
```

<span id="the-queryelement"></span>
### The QueryElement

<span id="creating-a-query-element"></span>
#### Creating a Query Element

The Query element has two responsibilities: a bridge from Database+Index to other parts of the application, as well as further filtering of data in the database (in addition to what Index provides).

In order to fulfil its duties as a bridge to an Index (and Database), the 'index' property must point to an Index element, identified by its 'id'. For example:

``` cpp
U1db.Query{
    id: aQuery
    index: by_helloworld
}
```

While Index helps to filter data based on 'where' it is located (e.g. field.sub-field), Query helps determine the additional set of criteria for 'what' is being searched for. The intent of the 'query' property is to provide the mechanism for defnining the search criteria, but at the time of writing that functionality is not yet available. However, once the implementation is in place, using it is only requires defining the property's value (e.g. "Hello World"). Wild card searches using '\*' are supported, which is the default query (i.e. if 'query' is not set it is assumed to be '\*'). For example (the property is commented out due to its current status):

``` cpp
U1db.Query{
    id: aQuery
    index: by_helloworld
    //query: "*"
}
```

When the 'query' property becomes available, only wildcard search definitions for "starts with" will be suppoprted. Thus the following would be supported:

``` cpp
U1db.Query{
    id: aQuery
    index: by_helloworld
    //query: "Hello*"
}
```

But this would not:

``` cpp
U1db.Query{
    id: aQuery
    index: by_helloworld
    //query: "*World"
}
```

Note: again, the 'query' property is commented out in the above two snippets due to its current status

<span id="using-data"></span>
Using Data
----------

<span id="data-and-the-application-ui"></span>
### Data and the Application UI

<span id="using-data-with-models-and-views"></span>
#### Using Data With Models and Views

This simple snippet represents how to attach a ListModel to a ListView. In this instance the model 'aQuery' is representative of the Query + Index combination defined earlier:

``` cpp
ListView {
    width: units.gu(45)
    height: units.gu(80)
    model: aQuery
}
```

<span id="data-and-delegates"></span>
##### Data and Delegates

How a model and ListView + delegates work together is a common QML concept, and not specific to U1Db-Qt. However, the asynchronous nature of this relationship is important to understand. When using QML ListView, delegates will be created based on particular properties such as the size of the application window, ListView, and delegate itself (amongst other factors). Each delegate can then represent a Document retrieved from the Database based on the record's index. This example demonstrates some of the property definitions that contribute to determining the number of delegates a ListView will contain:

``` cpp
ListView {
    width: units.gu(45)
    height: units.gu(80)
    model: aQuery
    delegate: Text {
        x: 66; y: 77
    }
}
```

When the number of Documents is less than or equal to the number of delegates then there is a one to one mapping of index to delegate (e.g. the first delegate will represent the Document with an index = 0; the second, index = 1; and so on).

When there are more Documents than delegates the ListView will request a new index depending on the situation (e.g. a user scrolls up or down). For example, if a ListView has 10 delegates, but 32 Documents to handle, when a user initially scrolls the first delegate will change from representing the Document with index = 0 to the Document that might have index = 8; the second, from index = 1 to index = 9; ...; the 10th delegate from index = 9 to index = 17. A second scrolling gesture the first index may change to 15, and the final index 24. And so on. Scrolling in the opposite direction will have a similar effect, but the Document index numbers for each delegate will obviously start to decline (towards their original values).

The following snippet, which modifies the above delegate definition, could demonstrate this effect if there were enough Documents to do so (i.e. some number greater than the number of delegates):

``` cpp
ListView {
    width: units.gu(45)
    height: units.gu(80)
    model: aQuery
    delegate: Text {
        x: 66; y: 77
        text: index
    }
}
```

The object called 'contents' contains one or more properties. This example demonstrates the retrieval of data based on the U1db.Index defined earlier (id: by-helloworld). In this instance the Index contained two expressions simultaniously, "hello.world.id" and "hello.world.message"

``` cpp
ListView {
    width: units.gu(45)
    height: units.gu(80)
    model: aQuery
    delegate: Text {
        x: 66; y: 77
        text: "(" + index + ") '" + contents.message + " " + contents.id + "'"
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
