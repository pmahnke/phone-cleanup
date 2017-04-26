---
Title: U1db.u1db-qt-tutorial-6
---

# U1db.u1db-qt-tutorial-6

<span class="subtitle"></span>
<!-- $$$u1db-qt-tutorial-6.html-description -->
<p>This tutorial is designed to demonstrate a variety of essential U1Db-Qt functionality and usage, including:</p>
<ol class="1">
<li>Synchronizing two databases</li>
<li>Utilizing the U1db-Qt Index element</li>
<li>Various approaches to define U1db-Qt Document elements when using the Index element</li>
<li>Partnering the U1db-Qt Index element and a QML ListView element</li>
</ol>
<h2 id="storing-data">Storing Data</h2>
<h3 >The Database Element</h3>
<h4 >Creating a Database</h4>
<p>A Database is very simple to create. It only needs an id and a path where the file will be created. A Database is a model, which can be used by elements, such as the ListView further in this example.</p>
<pre class="cpp">U1db<span class="operator">.</span>Database {
id: aDatabase
path: <span class="string">&quot;aDatabase4&quot;</span>
}</pre>
<h2 id="the-document-element">The Document Element</h2>
<h3 >Declaring Documents (at Runtime)</h3>
<p>A Document can be instantiated at runtime, or generated dynamically. The examples below demonstrate the former.</p>
<p>A very basic Document could include its unique 'id' and 'docId' properties. While it is not mandatory to define these properties, in some cases they can be convenient references. More advanced applications would likely find these very useful, and in some cases may be an absolute necessity to achieve the objectives of the program.</p>
<p>This example of a very simple Document will not initially do anything, until more properties are added and defined:</p>
<pre class="cpp">U1db<span class="operator">.</span>Document {
id: aDocument1
docId: <span class="char">'helloworld1'</span>
}</pre>
<p>A basic but still practical Document definition contains several essential properties. In addition to 'id' and 'docId' (discussed above), the 'database', 'create', and 'defaults' properties are also very important, and are introduced below.</p>
<p>The 'database' property ensures that the Document is attached to an already defined (or possibly soon to be defined one) identified by its id (in this case 'aDatabase'). For example:</p>
<pre class="cpp">U1db<span class="operator">.</span>Document {
id: aDocument1
database: aDatabase
docId: <span class="char">'helloworld1'</span>
}</pre>
<p>Should the Database not already contain a Document with the same docId ('hellowworld1' in this example) when a 'create' property is present and set to true it will be generated. For example:</p>
<pre class="cpp">U1db<span class="operator">.</span>Document {
id: aDocument1
database: aDatabase
docId: <span class="char">'helloworld1'</span>
create: <span class="keyword">true</span>
}</pre>
<p>However, the Document still requires some data to be useful, which is what the 'defaults' property provides. The value of 'defaults' is a map of data that will be stored in the database (again when the create property is et to true). It contain key:value pairs, where the value can be a string, number, or nested object (e.g&#x2e; additional fields, lists). For example:</p>
<pre class="cpp">U1db<span class="operator">.</span>Document {
id: aDocument1
database: aDatabase
docId: <span class="char">'helloworld1'</span>
create: <span class="keyword">true</span>
defaults:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">1</span> } } }
}</pre>
<p>As mentioned above, lists can also be nested in Document data. Lists provide a convenient method for producing multiple instances of the same key (AKA 'field' or 'sub-field'). The example code below shows valid use of the 'message' and 'id' sub-fields multiple times within the same object.</p>
<pre class="cpp">U1db<span class="operator">.</span>Document {
id: aDocument2
database: aDatabase
docId: <span class="char">'helloworld2'</span>
create: <span class="keyword">true</span>
defaults:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: <span class="operator">[</span>
{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">2</span> }<span class="operator">,</span>
{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">2.5</span> }
<span class="operator">]</span> } }
}</pre>
<p>When the default Javascript Object Notation itself is formatted with appropriate line breaks and indentation, it becomes easier to visualize an embedded list, containing sub-fields 'message' and 'id' (and their respective values):</p>
<pre class="cpp">{<span class="string">&quot;hello&quot;</span>:
{ <span class="string">&quot;world&quot;</span>:
<span class="operator">[</span>
{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">2</span> }<span class="operator">,</span>
{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">2.5</span> }
<span class="operator">]</span>
}
}</pre>
<p>In dot notation these sub-fields are represented by 'hello.world.message' and 'hello.world.id' respectively. Later in this tutorial these will be utilized within the 'expression' property of U1Db-Qt's Index element, in close collaboration with a QML ListView's delegates.</p>
<p>Normally when a docId already exists in a database, and when the set flag is set to true, the value in 'defaults' will be ignored (and the existing data in the database will remain untouched). Sometimes a developer needs to easily overwrite the data in an existing document. The 'contents' property can be used for just that purpose. When 'contents' is defined, its value will replace existing data in the database, for the document identified by the docId. In addition, 'contents' can be used to add new documents, in the same way as the 'create: true' + 'defaults' combination does; in other words, if the document defined by 'docId' does not exist it will be created.</p>
<pre class="cpp">U1db<span class="operator">.</span>Document {
id: aDocument3
database: aDatabase
docId: <span class="char">'helloworld3'</span>
contents:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: <span class="operator">[</span>
{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3</span> }<span class="operator">,</span>
{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3.33</span> }<span class="operator">,</span>
{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3.66</span> }
<span class="operator">]</span> } }
}</pre>
<p>If 'defaults' exists, 'create' is set to 'true' (or 'false' for that matter) and 'contents' is also defined, it is the latter that takes precidence. In other words, 'create' and 'defaults' will be ignored. The following example demonstrates this scenario:</p>
<pre class="cpp">U1db<span class="operator">.</span>Document {
id: aDocument3
database: aDatabase
docId: <span class="char">'helloworld3'</span>
create: <span class="keyword">true</span>
<span class="keyword">default</span>:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: <span class="operator">[</span>{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3</span> }<span class="operator">]</span> } }
contents:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: <span class="operator">[</span>
{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3</span> }<span class="operator">,</span>
{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3.33</span> }<span class="operator">,</span>
{ <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">3.66</span> }
<span class="operator">]</span> } }
}</pre>
<p>This snippet simply represents the absence of the 'create' property, which is synonymous with 'create: false'. The Document can still be recognized within the application, but until applicable properties (such as those outlined above) are added and/or modified then nothing will be added or modified in the database, and this instance may have very little practical value.</p>
<pre class="cpp">U1db<span class="operator">.</span>Document {
id: aDocument4
database: aDatabase
docId: <span class="char">'helloworld4'</span>
defaults:{<span class="string">&quot;hello&quot;</span>: { <span class="string">&quot;world&quot;</span>: { <span class="string">&quot;message&quot;</span>:<span class="string">&quot;Hello World&quot;</span><span class="operator">,</span> <span class="string">&quot;id&quot;</span>: <span class="number">4</span> } } }
}</pre>
<h4 >Samples of Stored Documents</h4>
<p>The data stored in the database after defining the above Document elements (and then running the application, will consist of the following:</p>
<table class="generic">
<thead><tr class="qt-style"><th >docId</th><th >content</th></tr></thead>
<tr valign="top"><td >'helloworld1'</td><td ><pre class="cpp">{
<span class="string">&quot;hello&quot;</span>: {
<span class="string">&quot;world&quot;</span>: {
<span class="string">&quot;id&quot;</span>: <span class="number">1</span><span class="operator">,</span>
<span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
}
}
}</pre>
</td></tr>
<tr valign="top"><td >'helloworld2'</td><td ><pre class="cpp">{
<span class="string">&quot;hello&quot;</span>: {
<span class="string">&quot;world&quot;</span>: <span class="operator">[</span>
{
<span class="string">&quot;id&quot;</span>: <span class="number">2</span><span class="operator">,</span>
<span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
}<span class="operator">,</span>
{
<span class="string">&quot;id&quot;</span>: <span class="number">2.5</span><span class="operator">,</span>
<span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
}
<span class="operator">]</span>
}
}</pre>
</td></tr>
<tr valign="top"><td >'helloworld3'</td><td ><pre class="cpp">{
<span class="string">&quot;hello&quot;</span>: {
<span class="string">&quot;world&quot;</span>: <span class="operator">[</span>
{
<span class="string">&quot;id&quot;</span>: <span class="number">3</span><span class="operator">,</span>
<span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
}<span class="operator">,</span>
{
<span class="string">&quot;id&quot;</span>: <span class="number">3.33</span><span class="operator">,</span>
<span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
}<span class="operator">,</span>
{
<span class="string">&quot;id&quot;</span>: <span class="number">3.66</span><span class="operator">,</span>
<span class="string">&quot;message&quot;</span>: <span class="string">&quot;Hello World&quot;</span>
}
<span class="operator">]</span>
}
}</pre>
</td></tr>
</table>
<h2 id="retrieving-data">Retrieving Data</h2>
<p>To retrieve the Documents that were declared earlier requires two additional elements: Index and Query.</p>
<h3 >The Index Element</h3>
<h4 >Creating and Index Element</h4>
<p>The Index element requires both a unique 'id' and a pointer to a 'database' in order to begin becoming useful, as demonstrated here:</p>
<pre class="cpp">U1db<span class="operator">.</span>Index{
database: aDatabase
id: by_helloworld
}</pre>
<p>In the future, the Index element will support on disk storage of appropriate results / data. At the present time only in memory indexing is done, but once the storing capability is implemented, defining and identifying it is as simple as using the 'name' property (which will be stored in the database along with the relvent data that goes with it). The snippet below shows the use of the 'name' property:</p>
<pre class="cpp">U1db<span class="operator">.</span>Index{
database: aDatabase
id: by_helloworld
<span class="comment">//name: &quot;by-helloworld&quot;</span>
}</pre>
<p>The Index element describes, using dot notation, the fields and sub-fields where the developer expects to find information. That information is defined in a list, and added as the value for the 'expression' property. The list can contain one or more entries, as exemplified here (the property is commented out due to its current status):</p>
<pre class="cpp">U1db<span class="operator">.</span>Index{
database: aDatabase
id: by_helloworld
<span class="comment">//name: &quot;by-helloworld&quot;</span>
expression: <span class="operator">[</span><span class="string">&quot;hello.world.id&quot;</span><span class="operator">,</span><span class="string">&quot;hello.world.message&quot;</span><span class="operator">]</span>
}</pre>
<h3 >The QueryElement</h3>
<h4 >Creating a Query Element</h4>
<p>The Query element has two responsibilities: a bridge from Database+Index to other parts of the application, as well as further filtering of data in the database (in addition to what Index provides).</p>
<p>In order to fulfil its duties as a bridge to an Index (and Database), the 'index' property must point to an Index element, identified by its 'id'. For example:</p>
<pre class="cpp">U1db<span class="operator">.</span>Query{
id: aQuery
index: by_helloworld
}</pre>
<p>While Index helps to filter data based on 'where' it is located (e.g&#x2e; field.sub-field), Query helps determine the additional set of criteria for 'what' is being searched for. The intent of the 'query' property is to provide the mechanism for defnining the search criteria, but at the time of writing that functionality is not yet available. However, once the implementation is in place, using it is only requires defining the property's value (e.g&#x2e; &quot;Hello World&quot;). Wild card searches using '*' are supported, which is the default query (i.e&#x2e; if 'query' is not set it is assumed to be '*'). For example (the property is commented out due to its current status):</p>
<pre class="cpp">U1db<span class="operator">.</span>Query{
id: aQuery
index: by_helloworld
<span class="comment">//query: &quot;*&quot;</span>
}</pre>
<p>When the 'query' property becomes available, only wildcard search definitions for &quot;starts with&quot; will be suppoprted. Thus the following would be supported:</p>
<pre class="cpp">U1db<span class="operator">.</span>Query{
id: aQuery
index: by_helloworld
<span class="comment">//query: &quot;Hello*&quot;</span>
}</pre>
<p>But this would not:</p>
<pre class="cpp">U1db<span class="operator">.</span>Query{
id: aQuery
index: by_helloworld
<span class="comment">//query: &quot;*World&quot;</span>
}</pre>
<p>Note: again, the 'query' property is commented out in the above two snippets due to its current status</p>
<h2 id="using-data">Using Data</h2>
<h3 >Data and the Application UI</h3>
<h4 >Using Data With Models and Views</h4>
<p>This simple snippet represents how to attach a ListModel to a ListView. In this instance the model 'aQuery' is representative of the Query + Index combination defined earlier:</p>
<pre class="cpp">ListView {
width: units<span class="operator">.</span>gu(<span class="number">45</span>)
height: units<span class="operator">.</span>gu(<span class="number">80</span>)
model: aQuery
}</pre>
<h5 >Data and Delegates</h5>
<p>How a model and ListView + delegates work together is a common QML concept, and not specific to U1Db-Qt. However, the asynchronous nature of this relationship is important to understand. When using QML ListView, delegates will be created based on particular properties such as the size of the application window, ListView, and delegate itself (amongst other factors). Each delegate can then represent a Document retrieved from the Database based on the record's index. This example demonstrates some of the property definitions that contribute to determining the number of delegates a ListView will contain:</p>
<pre class="cpp">ListView {
width: units<span class="operator">.</span>gu(<span class="number">45</span>)
height: units<span class="operator">.</span>gu(<span class="number">80</span>)
model: aQuery
delegate: Text {
x: <span class="number">66</span>; y: <span class="number">77</span>
}
}</pre>
<p>When the number of Documents is less than or equal to the number of delegates then there is a one to one mapping of index to delegate (e.g&#x2e; the first delegate will represent the Document with an index = 0; the second, index = 1; and so on).</p>
<p>When there are more Documents than delegates the ListView will request a new index depending on the situation (e.g&#x2e; a user scrolls up or down). For example, if a ListView has 10 delegates, but 32 Documents to handle, when a user initially scrolls the first delegate will change from representing the Document with index = 0 to the Document that might have index = 8; the second, from index = 1 to index = 9; ..&#x2e;; the 10th delegate from index = 9 to index = 17. A second scrolling gesture the first index may change to 15, and the final index 24. And so on. Scrolling in the opposite direction will have a similar effect, but the Document index numbers for each delegate will obviously start to decline (towards their original values).</p>
<p>The following snippet, which modifies the above delegate definition, could demonstrate this effect if there were enough Documents to do so (i.e&#x2e; some number greater than the number of delegates):</p>
<pre class="cpp">ListView {
width: units<span class="operator">.</span>gu(<span class="number">45</span>)
height: units<span class="operator">.</span>gu(<span class="number">80</span>)
model: aQuery
delegate: Text {
x: <span class="number">66</span>; y: <span class="number">77</span>
text: index
}
}</pre>
<p>The object called 'contents' contains one or more properties. This example demonstrates the retrieval of data based on the U1db.Index defined earlier (id: by-helloworld). In this instance the Index contained two expressions simultaniously, &quot;hello.world.id&quot; and &quot;hello.world.message&quot;</p>
<pre class="cpp">ListView {
width: units<span class="operator">.</span>gu(<span class="number">45</span>)
height: units<span class="operator">.</span>gu(<span class="number">80</span>)
model: aQuery
delegate: Text {
x: <span class="number">66</span>; y: <span class="number">77</span>
text: <span class="string">&quot;(&quot;</span> <span class="operator">+</span> index <span class="operator">+</span> <span class="string">&quot;) '&quot;</span> <span class="operator">+</span> contents<span class="operator">.</span>message <span class="operator">+</span> <span class="string">&quot; &quot;</span> <span class="operator">+</span> contents<span class="operator">.</span>id <span class="operator">+</span> <span class="string">&quot;'&quot;</span>
}
}</pre>
<!-- @@@u1db-qt-tutorial-6.html -->
