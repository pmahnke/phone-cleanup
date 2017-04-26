---
Title: U1db.tutorial
---
        
Tutorial
========

<span class="subtitle"></span>
details
1.0.0 Overview of U1Db-Qt
-------------------------

U1Db-Qt is a QML plugin written in Qt C++. It provides declarative, easy to use, local data storage for QML applications, and in the future will also include remote sync capabilities.

U1Db-Qt is based on a procedural implementation in Python, but has been designed and developed from the start with declarative programming in mind.

While U1Db-Qt makes use of SQLite in the back end, and relies heavily on JSON, these are largely invisible to a QML developer who makes use of the plugin. However, because U1Db-Qt does rely on both technologies it is possible to easily debug applications using existing programs. For example, a developer could make use of SQLiteBrowser to read U1Db database files, which contain human readable JSON objects representing content derived from a QML application.

<span id="1-0-1-how-to-make-u1db-qt-available-to-a-qml-application"></span>
1.0.1 How to Make U1Db-Qt Available to a QML Application
--------------------------------------------------------

Here is an example import statement:

``` cpp
import U1db 1.0 as U1db
```

<span id="2-0-0-database-element"></span>
2.0.0 Database Element
----------------------

In U1Db-Qt, the Database element is the the central figure that works in conjunction with Document elements, and in the future indexing (currently under development), and querying (currently under development) elements. It is the Database element that defines the location of the data repository.

A Database element is also a valuable tool for cases where specific data from a repository needs to be retrieved quickly, without indexing or querying ahead of time. The 'contents' object associated with the Database element can be used together with base items such as [TextField](../Ubuntu.Components.TextField.md) or [TextArea](../Ubuntu.Components.TextArea.md) and model-based items like ListView and [ListItems.Standard](../Ubuntu.Components.ListItems.Standard.md).

<span id="2-0-1-database-properties"></span>
2.0.1 Database Properties
-------------------------

``` cpp
QString path
QString error
```

<span id="2-1-0-creating-a-database"></span>
2.1.0 Creating a Database
-------------------------

A Database is very simple to create. It requires nothing more than an id and a path where the file will be created.

<span id="2-1-1-example-of-creating-a-database"></span>
### 2.1.1 Example of Creating a Database

``` cpp
import QtQuick 2.0
import U1db 1.0 as U1db
Item{
        U1db.Database {
                id: aDatabase
                path: "aU1DbDatabase"
        }
}
```

<span id="3-0-0-document-element"></span>
3.0.0 Document Element
----------------------

The Document element is the primary vehicle for entering data into a repository, and can be helpful in some cases for getting data out as well. Indexing and querying would normally provide more robust functionality for extracting data from a repository, but in the case of U1Db-Qt both are still under development at the time of writing (and therefore not available for developers to use).

However, the Document element together with Database can still help developers in many common situations, and will continue to be very useful even when the indexing and querying functionality becomes available. When a developer wants unfiltered results from a database, or the cost of working with unfiltered results is reasonable, the Document+Database combination is fast and easy to use. In quite a number of use cases this may be exactly what a developer needs.

<span id="3-0-1-document-properties"></span>
3.0.1 Document Properties
-------------------------

``` cpp
U1db.Database database
QString docId
bool create
QVariant defaults
QVariant contents
```

<span id="3-1-0-creating-a-basic-document"></span>
3.1.0 Creating a Basic Document
-------------------------------

A Document declaration should contain at least a unique 'docId' and 'database', but these alone won't do anything by themselves. Additionally, although the 'id' property is not mandatory, this property will need to be set in order to more easily reference it from elsewhere in the program (e.g. within a function call).

<span id="3-1-0-1-example-of-creating-a-basic-document"></span>
### 3.1.0.1 Example of Creating a Basic Document

``` cpp
import QtQuick 2.0
import U1db 1.0 as U1db
import Ubuntu.Components 0.1
Item{
        width: units.gu(45)
        height: units.gu(80)
        U1db.Database {
                id: aDatabase
                path: "aU1DbDatabase"
        }
}
```

<span id="3-1-1-creating-a-document-at-runtime"></span>
3.1.1 Creating a Document At Runtime
------------------------------------

A Document can be declared at runtime, and default data entered into the repository. This requires the same properties to be set as in the basic example ('id', 'database' and 'docId'), plus setting 'create' (to true) and a 'default' string.

<span id="3-1-1-1-example-of-creating-a-document-at-runtime"></span>
### 3.1.1.1 Example of Creating a Document At Runtime

``` cpp
import QtQuick 2.0
import U1db 1.0 as U1db
import Ubuntu.Components 0.1
Item{
        width: units.gu(45)
        height: units.gu(80)
        U1db.Database {
                id: aDatabase
                path: "aU1DbDatabase"
        }
        U1db.Document {
                id: aDocument
                database: aDatabase
                docId: 'helloworld'
                create: true
                defaults: { "hello": "Hello World!" }
        }
}
```

<span id="3-1-2-creating-a-document-dynamically"></span>
3.1.2 Creating a Document Dynamically
-------------------------------------

Creating a Document in a dynamic fashion is the most common way of putting data into a data repository based on UI activity (e.g. when a user presses a button).

<span id="3-1-2-1-example-1-of-creating-a-document-dynamically"></span>
### 3.1.2.1 Example 1 of Creating a Document Dynamically

Another way of creating a new Document is to copy an existing Document:

``` cpp
import QtQuick 2.0
import U1db 1.0 as U1db
import Ubuntu.Components 0.1
Item{
        width: units.gu(45)
        height: units.gu(80)
        U1db.Database {
                id: aDatabase
                path: "aU1DbDatabase"
        }
        U1db.Document {
                id: aDocument
                database: aDatabase
                docId: 'helloworld'
        }
        function someFunction() {
                var tempDocument = {}
                tempDocument = aDocument
        }
}
```

<span id="3-1-2-2-example-2-of-creating-a-document-dynamically"></span>
### 3.1.2.2 Example 2 of Creating a Document Dynamically

One way of creating a new Document dynamically is to make use of Qt.createQmlObject:

``` cpp
import QtQuick 2.0
import U1db 1.0 as U1db
import Ubuntu.Components 0.1
Item{
        width: units.gu(45)
        height: units.gu(80)
        U1db.Database {
                id: aDatabase
                path: "aU1DbDatabase"
                Component.onCompleted: { newDocumentObject() }
                function newDocumentObject() {
                        var qmlString = "import QtQuick 2.0; import U1db 1.0 as U1db; U1db.Document {id: aDcoument; database: aDatabase; docId: 'helloworld'; create: true; defaults: { 'hello': 'Hello New Document!' }}"
                        Qt.createQmlObject(qmlString, aDatabase);
                }
        }
}
```

<span id="4-0-0-u1db-qt-and-qml-elements-and-models"></span>
4.0.0 U1Db-Qt and QML Elements and Models
-----------------------------------------

<span id="4-1-0-u1db-qt-and-standard-elements"></span>
4.1.0 U1Db-Qt and Standard Elements
-----------------------------------

<span id="4-1-1-u1db-qt-and-textfield-textarea"></span>
### 4.1.1 U1Db-Qt and TextField & TextArea

<span id="4-1-2-example-of-using-u1db-qt-with-standard-elements"></span>
#### 4.1.2 Example of Using U1Db-Qt with Standard Elements

``` cpp
import QtQuick 2.0
import U1db 1.0 as U1db
import Ubuntu.Components 0.1
Item{
        width: units.gu(45)
        height: units.gu(80)
        function getContent(fieldName){
                var tempContents = {};
                tempContents = aDocument.contents
                return tempContents[fieldName]
        }
        U1db.Database {
                id: aDatabase
                path: "aU1DbDatabase"
        }
        U1db.Document {
                id: aDocument
                database: aDatabase
                docId: 'helloworld'
                create: true
                defaults: { "hello": "Hello World 1!" }
        }
        TextField {
                id: addressBar
                width: units.gu(45)
                text: getContent('hello')
        }
}
```

<span id="4-2-0-u1db-qt-and-model-based-elements"></span>
4.2.0 U1Db-Qt and Model-Based Elements
--------------------------------------

<span id="4-2-1-u1db-qt-and-listview"></span>
### 4.2.1 U1Db-Qt and ListView

<span id="4-2-2-example-of-using-u1db-qt-with-model-based-elements"></span>
#### 4.2.2 Example of Using U1Db-Qt with Model-Based Elements

``` cpp
import QtQuick 2.0
import U1db 1.0 as U1db
import Ubuntu.Components 0.1
Item{
        width: units.gu(45)
        height: units.gu(80)
        U1db.Database {
                id: aDatabase
                path: "aU1DbDatabase"
        }
        U1db.Document {
                id: aDocument1
                database: aDatabase
                docId: 'helloworld'
                create: true
                defaults: { "hello": "Hello World 1!" }
        }
        U1db.Document {
                id: aDocument2
                database: aDatabase
                docId: 'helloworld'
                create: true
                defaults: { "hello": "Hello World 2!" }
        }
        ListView {
                model: aDatabase
                width: units.gu(45)
                height: units.gu(80)
                delegate: Text {
                x: 66; y: 77
                text: contents.hello
                }
        }
}
```

<span id="5-0-0-resources"></span>
5.0.0 Resources
---------------

<span id="5-0-1-examples"></span>
5.0.1 Examples
--------------

One can find several examples in the bzr branch of U1Db-Qt (bzr branch lp:u1db-qt) either in the subdirectory "examples" or from the following url:

http://bazaar.launchpad.net/~uonedb-qt/u1db-qt/trunk/files/head:/examples/

These examples are currently under development (as is U1Db-Qt in general), but should still be able to demonstrate the fundamentals discussed within this document.

