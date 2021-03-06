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
-   [Scopes](../../../index.html) ›
-   [C++](../../index.html) ›
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.3</a> ›
-   <a href="../U1db/index.html" class="sub-nav-item">U1db</a> ›

<!-- -->

-   Design Concepts

Design Concepts
===============

<span class="subtitle"></span>
<span id="details"></span>
This concept guide will describe a wide variety of U1Db-Qt functionality and usage. It will cover:

1.  Overview of U1Db Documents and Databases
2.  Creating Documents and Databases
3.  Database keys and Document contents
4.  Listing docId values in a Database
5.  Retrieving Documents
6.  Searching and retrieving Documents by docId
7.  Modifying Existing Documents
8.  Document Functions
9.  Index expressions
10. Querying an index
11. Index functions
12. Blending the U1Db-Qt plugin with QML and Javascript
13. U1Db-Qt with QML Elements and Components
14. Using U1Db-Qt with elements and components that support models
15. Using U1Db-Qt with elements and components that do not utilize models
16. Using a Document without a Database

<span id="brief-description-of-u1db"></span>
Brief Description of U1DB
-------------------------

U1DB is a database API for synchronised databases of JSON documents. Itâ€™s simple to use in applications, and allows apps to store documents and synchronise them between machines and devices. U1DB is the database designed to work everywhere, backed by the platformâ€™s native data storage capabilities. This means that you can use u1db on different platforms, from different languages, and backed on to different databases, and sync between all of them.

<span id="what-is-the-difference-between-u1db-and-u1db-qt"></span>
What is the difference between U1DB and U1Db-Qt
-----------------------------------------------

U1Db-Qt is the QML implementation of U1DB. It is a QML plugin written in C++ and allows for creating and manipulating U1DB databases via a more declarative approach within a QML application.

A Database is very simple to create. It only needs an id and a path where the file will be created. A Database is a model, which can be used by elements, such as the ListView further in this example.

``` qml
U1db.Database {
    id: aDatabase
    path: "aU1DbDSatabase2"
}
```

A Document can be declared at runtime. It requires at the very least a unique 'docId', but that alone won't do anything special. The snipet below snippet demonstrates the basic requirements.

In addition to this, this example displays text from the database for a specific docId and id key in a text area called 'documentContent. To update the text area at startup with either the default value or a value from the database the onCompleted function is utilized, which is also demonstrated below.

``` qml
U1db.Document {
    id: aDocument
    database: aDatabase
    docId: 'helloworld'
    create: true
    defaults: { "helloworld":"Hello World" }
    Component.onCompleted: {
        documentContent.text = aDocument.contents.helloworld
    }
}
```

It should be possible to use a document without a database, as demonstrated in this snippet. Additionally this document will use the concept of sub-keys, as exemplified by the "bookmarks" id key + contents. This example will attempt to use the bookmark document to store docId values from the database, which will be displayed in a ListView on the second tab of the application. The user will be able to select a value from the ListView and the first tab will be modified accordingly.

``` qml
U1db.Document {
     id: aBookmarkDocument
     docId: 'bookmarks'
     create: true
     defaults: { "bookmarks": [{}] }
}
```

The listDocs method retrieves all the docId values from the current database. In this demonstration the values are put into an array, which is then checked to locate the docId for the current and previous documents within the database.

``` cpp
        var documentIds = documentObject.database.listDocs()
        for(var i = 0; i < documentIds.length; i++){
            if(documentIds[i]===documentObject.docId && i > 0){
                return documentIds[i-1]
            }
            else if(documentIds[i]===documentObject.docId && i==0){
                return documentIds[documentIds.length-1]
            }
        }
```

These steps demonstrate the creation of a temporary document, based on a copy of the global document. This will then be used to determine if there is already a document in the database with the same docId as the address bar, and additionally with a key id with the same name.

``` cpp
         var tempFieldName = addressBarText;
         var tempDocument = aDocument
         tempDocument.docId = addressBarText;
         var tempContents = tempDocument.contents
```

**Note: For simplicity sake this example sometimes uses the same value for both the docId and the key id, as seen here. Real life implimentations can and will differ, and this will be demonstrated elsewhere in the example code.**

Here the contents of the temporary document are modified, which then replaces the global document.

``` cpp
             documentContent.text = 'More Hello World...';
             var tempContents = {}
             tempContents[tempFieldName] = documentContent.text
             tempDocument.contents = tempContents
             aDocument = tempDocument
```

In this instance the current document's content is updated from the text view. The unique key and docId are not modified because the database already contains a record with those properties.

``` cpp
         var tempContents = {}
         tempFieldName = getCurrentDocumentKey(aDocument.contents)
         tempContents[tempFieldName] = documentContent.text
         aDocument.contents = tempContents
```

Here a rectangle is defined that represents the lower portion of our application. It will contain all the main parts of the application.

``` qml
             Rectangle {
                  width: units.gu(45)
                  height: units.gu(70)
                  anchors.bottom: parent.bottom
                  color: "#00FFFFFF"
                  // The remainder of the main part of the application goes here ...
                  }
```

The following [TextArea](../../../../apps/qml/sdk-14.10/Ubuntu.Components.TextArea/index.html) is for displaying contents for the current state of the global document, as defined by the key / name in the address bar.

``` qml
                     TextArea{
                         id: documentContent
                         selectByMouse : false
                         x: units.gu(1)
                         y: units.gu(1)
                         width: units.gu(43)
                         height: units.gu(58)
                         color: "#000000"
                     }
```

There is an object within in the 'aDocument' model defined earlier called 'contents', which contains a key called 'hello', which represents a search string. In this example the key will represent the name of a document in the database, which will be displayed in the address bar. Displaying the key is demonstrated here:

``` qml
                     TextArea{
                             text: displayKey(aDocument.contents)
                             function displayKey(documentObject){
                                 var keys = Object.keys(documentObject);
                                 return keys[0]
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
