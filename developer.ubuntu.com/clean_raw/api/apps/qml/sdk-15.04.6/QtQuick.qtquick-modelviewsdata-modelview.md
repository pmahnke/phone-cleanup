---
Title: QtQuick.qtquick-modelviewsdata-modelview
---

# QtQuick.qtquick-modelviewsdata-modelview

<span class="subtitle"></span>
<!-- $$$qtquick-modelviewsdata-modelview.html-description -->
<p>Simply put, applications need to form data and display the data. Qt Quick has the notion of <i>models</i>, <i>views</i>, and <i>delegates</i> to display data. They modularize the visualization of data in order to give the developer or designer control over the different aspects of the data. A developer can swap a list view with a grid view with little changes to the data. Similarly, encapsulating an instance of the data in a delegate allows the developer to dictate how to present or handle the data.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/f4bfb94c-3a3f-4c4c-999d-68bc32ae7e4b-../qtquick-modelviewsdata-modelview/images/modelview-overview.png" alt="" /></p><ul>
<li><b>Model</b> - contains the data and its structure. There are several QML types for creating models.</li>
<li><b>View</b> - a container that displays the data. The view might display the data in a list or a grid.</li>
<li><b>Delegate</b> - dictates how the data should appear in the view. The delegate takes each data in the model and encapsulates it. The data is accessible through the delegate.</li>
</ul>
<p>To visualize data, bind the view's <code>model</code> property to a model and the <code>delegate</code> property to a component or another compatible type.</p>
<h2 id="displaying-data-with-views">Displaying Data with Views</h2>
<p>Views are containers for collections of items. They are feature-rich and can be customizable to meet style or behavior requirements.</p>
<p>A set of standard views are provided in the basic set of Qt Quick graphical types:</p>
<ul>
<li><a href="QtQuick.ListView.md">ListView</a> - arranges items in a horizontal or vertical list</li>
<li><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview">GridView</a> - arranges items in a grid within the available space</li>
<li><a href="QtQuick.PathView.md">PathView</a> - arranges items on a path</li>
</ul>
<p>These types have properties and behaviors exclusive to each type. Visit their respective documentation for more information.</p>
<h3 >Decorating Views</h3>
<p>Views allow visual customization through <i>decoration</i> properties such as the <code>header</code>, <code>footer</code>, and <code>section</code> properties. By binding an object, usually another visual object, to these properties, the views are decoratable. A footer may include a <a href="QtQuick.Rectangle.md">Rectangle</a> type showcasing borders or a header that displays a logo on top of the list.</p>
<p>Suppose that a specific club wants to decorate its members list with its brand colors. A member list is in a <code>model</code> and the <code>delegate</code> will display the model's content.</p>
<pre class="qml"><span class="type">ListModel</span> {
<span class="name">id</span>: <span class="name">nameModel</span>
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Alice&quot;</span> }
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Bob&quot;</span> }
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Jane&quot;</span> }
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Harry&quot;</span> }
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Wendy&quot;</span> }
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">nameDelegate</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="name">name</span>;
<span class="name">font</span>.pixelSize: <span class="number">24</span>
}
}</pre>
<p>The club may decorate the members list by binding visual objects to the <code>header</code> and <code>footer</code> properties. The visual object may be defined inline, in another file, or in a Component type.</p>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">clip</span>: <span class="number">true</span>
<span class="name">model</span>: <span class="name">nameModel</span>
<span class="name">delegate</span>: <span class="name">nameDelegate</span>
<span class="name">header</span>: <span class="name">bannercomponent</span>
<span class="name">footer</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">30</span>;
<span class="name">gradient</span>: <span class="name">clubcolors</span>
}
<span class="name">highlight</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">color</span>: <span class="string">&quot;lightgray&quot;</span>
}
}
<span class="type">Component</span> {     <span class="comment">//instantiated when header is processed</span>
<span class="name">id</span>: <span class="name">bannercomponent</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">banner</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">gradient</span>: <span class="name">clubcolors</span>
<span class="type">border</span> {<span class="name">color</span>: <span class="string">&quot;#9EDDF2&quot;</span>; <span class="name">width</span>: <span class="number">2</span>}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Club Members&quot;</span>
<span class="name">font</span>.pixelSize: <span class="number">32</span>
}
}
}
<span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span> {
<span class="name">id</span>: <span class="name">clubcolors</span>
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;#8EE2FE&quot;</span>}
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> { <span class="name">position</span>: <span class="number">0.66</span>; <span class="name">color</span>: <span class="string">&quot;#7ED2EE&quot;</span>}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/66d9ad6f-ec45-48d5-9bb3-ed37f6ecef38-../qtquick-modelviewsdata-modelview/images/listview-decorations.png" alt="" /></p>
<h3 >Mouse and Touch Handling</h3>
<p>The views handle dragging and flicking of their content, however they do not handle touch interaction with the individual delegates. In order for the delegates to react to touch input, e.g&#x2e; to set the <code>currentIndex</code>, a <a href="QtQuick.MouseArea.md">MouseArea</a> with the appropriate touch handling logic must be provided by the delegate.</p>
<p>Note that if <code>highlightRangeMode</code> is set to <code>StrictlyEnforceRange</code> the currentIndex will be affected by dragging/flicking the view, since the view will always ensure that the <code>currentIndex</code> is within the highlight range specified.</p>
<h3 >ListView Sections</h3>
<p><a href="QtQuick.ListView.md">ListView</a> contents may be grouped into <i>sections</i>, where related list items are labeled according to their sections. Further, the sections may be decorated with <a href="#qml-view-delegate">delegates</a>.</p>
<p>A list may contain a list indicating people's names and the team on which team the person belongs.</p>
<pre class="qml"><span class="type">ListModel</span> {
<span class="name">id</span>: <span class="name">nameModel</span>
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Alice&quot;</span>; <span class="name">team</span>: <span class="string">&quot;Crypto&quot;</span> }
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Bob&quot;</span>; <span class="name">team</span>: <span class="string">&quot;Crypto&quot;</span> }
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Jane&quot;</span>; <span class="name">team</span>: <span class="string">&quot;QA&quot;</span> }
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Victor&quot;</span>; <span class="name">team</span>: <span class="string">&quot;QA&quot;</span> }
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Wendy&quot;</span>; <span class="name">team</span>: <span class="string">&quot;Graphics&quot;</span> }
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">nameDelegate</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="name">name</span>;
<span class="name">font</span>.pixelSize: <span class="number">24</span>
<span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">anchors</span>.leftMargin: <span class="number">2</span>
}
}</pre>
<p>The <a href="QtQuick.ListView.md">ListView</a> type has the <code>section</code> attached property that can combine adjacent and related types into a section. The <code>section.property</code> determines which list type property to use as sections. The <code>section.criteria</code> can dictate how the section names are displayed and the <code>section.delegate</code> is similar to the views' <a href="#qml-view-delegate">delegate</a> property.</p>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">nameModel</span>
<span class="name">delegate</span>: <span class="name">nameDelegate</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">highlight</span>: <span class="name">Rectangle</span> {
<span class="name">color</span>: <span class="string">&quot;lightblue&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
}
<span class="type">section</span> {
<span class="name">property</span>: <span class="string">&quot;team&quot;</span>
<span class="name">criteria</span>: <span class="name">ViewSection</span>.<span class="name">FullString</span>
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">color</span>: <span class="string">&quot;#b0dfb0&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span> <span class="operator">+</span> <span class="number">4</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
<span class="name">font</span>.pixelSize: <span class="number">16</span>
<span class="name">font</span>.bold: <span class="number">true</span>
<span class="name">text</span>: <span class="name">section</span>
}
}
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/bac01bf7-cd49-4142-abd7-bd6fe83842b1-../qtquick-modelviewsdata-modelview/images/listview-section.png" alt="" /></p>
<h2 id="view-delegates">View Delegates</h2>
<p>Views need a <i>delegate</i> to visually represent an item in a list. A view will visualize each item list according to the template defined by the delegate. Items in a model are accessible through the <code>index</code> property as well as the item's properties.</p>
<pre class="qml"><span class="type">Component</span> {
<span class="name">id</span>: <span class="name">petdelegate</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">label</span>
<span class="name">font</span>.pixelSize: <span class="number">24</span>
<span class="name">text</span>: <span class="keyword">if</span> (<span class="name">index</span> <span class="operator">==</span> <span class="number">0</span>)
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">type</span> <span class="operator">+</span> <span class="string">&quot; (default)&quot;</span>
<span class="keyword">else</span>
<span class="name">text</span>: <span class="name">type</span>
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/b7953ffe-e362-4d48-872b-715b512f2313-../qtquick-modelviewsdata-modelview/images/listview-setup.png" alt="" /></p>
<h3 >Accessing Views and Models from Delegates</h3>
<p>The list view to which the delegate is bound is accessible from the delegate through the <code>ListView.view</code> property. Likewise, the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview">GridView</a> <code>GridView.view</code> is available to delegates. The corresponding model and its properties, therefore, are available through <code>ListView.view.model</code>. In addition, any defined signals or methods in the model are also accessible.</p>
<p>This mechanism is useful when you want to use the same delegate for a number of views, for example, but you want decorations or other features to be different for each view, and you would like these different settings to be properties of each of the views. Similarly, it might be of interest to access or show some properties of the model.</p>
<p>In the following example, the delegate shows the property <i>language</i> of the model, and the color of one of the fields depends on the property <i>fruit_color</i> of the view.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">ListModel</span> {
<span class="name">id</span>: <span class="name">fruitModel</span>
property <span class="type">string</span> <span class="name">language</span>: <span class="string">&quot;en&quot;</span>
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Apple&quot;</span>
<span class="name">cost</span>: <span class="number">2.45</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Orange&quot;</span>
<span class="name">cost</span>: <span class="number">3.25</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Banana&quot;</span>
<span class="name">cost</span>: <span class="number">1.95</span>
}
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">fruitDelegate</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">id</span>: <span class="name">fruit</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot; Fruit: &quot;</span> <span class="operator">+</span> <span class="name">name</span>; <span class="name">color</span>: <span class="name">fruit</span>.<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">fruit_color</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot; Cost: $&quot;</span> <span class="operator">+</span> <span class="name">cost</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot; Language: &quot;</span> <span class="operator">+</span> <span class="name">fruit</span>.<span class="name">ListView</span>.<span class="name">view</span>.<span class="name">model</span>.<span class="name">language</span> }
}
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
property <span class="type">color</span> <span class="name">fruit_color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">model</span>: <span class="name">fruitModel</span>
<span class="name">delegate</span>: <span class="name">fruitDelegate</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
}</pre>
<h2 id="models">Models</h2>
<p>Data is provided to the delegate via named data roles which the delegate may bind to. Here is a <a href="#listmodel">ListModel</a> with two roles, <i>type</i> and <i>age</i>, and a <a href="QtQuick.ListView.md">ListView</a> with a delegate that binds to these roles to display their values:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">250</span>
<span class="type">ListModel</span> {
<span class="name">id</span>: <span class="name">myModel</span>
<span class="type">ListElement</span> { <span class="name">type</span>: <span class="string">&quot;Dog&quot;</span>; <span class="name">age</span>: <span class="number">8</span> }
<span class="type">ListElement</span> { <span class="name">type</span>: <span class="string">&quot;Cat&quot;</span>; <span class="name">age</span>: <span class="number">5</span> }
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">myDelegate</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">type</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">age</span> }
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">myModel</span>
<span class="name">delegate</span>: <span class="name">myDelegate</span>
}
}</pre>
<p>If there is a naming clash between the model's properties and the delegate's properties, the roles can be accessed with the qualified <i>model</i> name instead. For example, if a <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> type had <i>type</i> or <i>age</i> properties, the text in the above example would display those property values instead of the <i>type</i> and <i>age</i> values from the model item. In this case, the properties could have been referenced as <code>model.type</code> and <code>model.age</code> instead to ensure the delegate displays the property values from the model item.</p>
<p>A special <i>index</i> role containing the index of the item in the model is also available to the delegate. Note this index is set to -1 if the item is removed from the model. If you bind to the index role, be sure that the logic accounts for the possibility of index being -1, i.e&#x2e; that the item is no longer valid. (Usually the item will shortly be destroyed, but it is possible to delay delegate destruction in some views via a <code>delayRemove</code> attached property.)</p>
<p>Models that do not have named roles (such as the <a href="#listmodel">ListModel</a> shown below) will have the data provided via the <i>modelData</i> role. The <i>modelData</i> role is also provided for models that have only one role. In this case the <i>modelData</i> role contains the same data as the named role.</p>
<p>QML provides several types of data models among the built-in set of QML types. In addition, models can be created with Qt C++ and then made available to the QMLEngine for use by QML components. For information about creating these models, visit the <a href="QtQuick.qtquick-modelviewsdata-cppmodels.md">Using C++ Models with Qt Quick Views</a> and creating QML types articles.</p>
<p>Positioning of items from a model can be achieved using a <a href="QtQuick.Repeater.md">Repeater</a>.</p>
<h3 >ListModel</h3>
<p><a href="#listmodel">ListModel</a> is a simple hierarchy of types specified in QML. The available roles are specified by the ListElement properties.</p>
<pre class="qml"><span class="type">ListModel</span> {
<span class="name">id</span>: <span class="name">fruitModel</span>
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Apple&quot;</span>
<span class="name">cost</span>: <span class="number">2.45</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Orange&quot;</span>
<span class="name">cost</span>: <span class="number">3.25</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Banana&quot;</span>
<span class="name">cost</span>: <span class="number">1.95</span>
}
}</pre>
<p>The above model has two roles, <i>name</i> and <i>cost</i>. These can be bound to by a <a href="QtQuick.ListView.md">ListView</a> delegate, for example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">fruitModel</span>
<span class="name">delegate</span>: <span class="name">Row</span> {
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Fruit: &quot;</span> <span class="operator">+</span> <span class="name">name</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Cost: $&quot;</span> <span class="operator">+</span> <span class="name">cost</span> }
}
}</pre>
<p><a href="#listmodel">ListModel</a> provides methods to manipulate the <a href="#listmodel">ListModel</a> directly via JavaScript. In this case, the first item inserted determines the roles available to any views that are using the model. For example, if an empty <a href="#listmodel">ListModel</a> is created and populated via JavaScript, the roles provided by the first insertion are the only roles that will be shown in the view:</p>
<pre class="qml"><span class="type">ListModel</span> { <span class="name">id</span>: <span class="name">fruitModel</span> }
...
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">fruitModel</span>.<span class="name">append</span>({&quot;cost&quot;: <span class="number">5.95</span>, &quot;name&quot;:<span class="string">&quot;Pizza&quot;</span>})
}</pre>
<p>When the <a href="QtQuick.MouseArea.md">MouseArea</a> is clicked, <code>fruitModel</code> will have two roles, <i>cost</i> and <i>name</i>. Even if subsequent roles are added, only the first two will be handled by views using the model. To reset the roles available in the model, call ListModel::clear().</p>
<h3 >XmlListModel</h3>
<p><a href="#xmllistmodel">XmlListModel</a> allows construction of a model from an XML data source. The roles are specified via the <a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a> type. The type needs to be imported.</p>
<pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>XmlListModel <span class="number">2.0</span></pre>
<p>The following model has three roles, <i>title</i>, <i>link</i> and <i>description</i>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
<span class="name">id</span>: <span class="name">feedModel</span>
<span class="name">source</span>: <span class="string">&quot;http://rss.news.yahoo.com/rss/oceania&quot;</span>
<span class="name">query</span>: <span class="string">&quot;/rss/channel/item&quot;</span>
<span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
<span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;link&quot;</span>; <span class="name">query</span>: <span class="string">&quot;link/string()&quot;</span> }
<span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;description&quot;</span>; <span class="name">query</span>: <span class="string">&quot;description/string()&quot;</span> }
}</pre>
<p>The <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.demos-rssnews/">RSS News demo</a> shows how <a href="#xmllistmodel">XmlListModel</a> can be used to display an RSS feed.</p>
<h3 >VisualItemModel</h3>
<p><a href="#visualitemmodel">VisualItemModel</a> allows QML items to be provided as a model.</p>
<p>This model contains both the data and delegate; the child items of a <a href="#visualitemmodel">VisualItemModel</a> provide the contents of the delegate. The model does not provide any roles.</p>
<pre class="qml"><span class="type">VisualItemModel</span> {
<span class="name">id</span>: <span class="name">itemModel</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">height</span>: <span class="number">30</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">height</span>: <span class="number">30</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">height</span>: <span class="number">30</span>; <span class="name">width</span>: <span class="number">80</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">itemModel</span>
}</pre>
<p>Note that in the above example there is no delegate required. The items of the model itself provide the visual types that will be positioned by the view.</p>
<h3 >Integers as Models</h3>
<p>An integer can be used as a model that contains a certain number of types. In this case, the model does not have any data roles.</p>
<p>The following example creates a <a href="QtQuick.ListView.md">ListView</a> with five elements:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">250</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">itemDelegate</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;I am item number: &quot;</span> <span class="operator">+</span> <span class="name">index</span> }
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="number">5</span>
<span class="name">delegate</span>: <span class="name">itemDelegate</span>
}
}</pre>
<h3 >Object Instances as Models</h3>
<p>An object instance can be used to specify a model with a single object type. The properties of the object are provided as roles.</p>
<p>The example below creates a list with one item, showing the color of the <i>myText</i> text. Note the use of the fully qualified <i>model.color</i> property to avoid clashing with <i>color</i> property of the Text type in the delegate.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">250</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">myText</span>
<span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>
<span class="name">color</span>: <span class="string">&quot;#dd44ee&quot;</span>
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">myDelegate</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">model</span>.<span class="name">color</span> }
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">anchors</span>.topMargin: <span class="number">30</span>
<span class="name">model</span>: <span class="name">myText</span>
<span class="name">delegate</span>: <span class="name">myDelegate</span>
}
}</pre>
<h3 >C++ Data Models</h3>
<p>Models can be defined in C++ and then made available to QML. This mechanism is useful for exposing existing C++ data models or otherwise complex datasets to QML.</p>
<p>For information, visit the <a href="QtQuick.qtquick-modelviewsdata-cppmodels.md">Using C++ Models with Qt Quick Views</a> article.</p>
<h2 id="repeaters">Repeaters</h2>
<p><img src="https://developer.ubuntu.com/static/devportal_uploaded/41fa8717-fa13-4158-ab9f-99f38f8a9987-../qtquick-modelviewsdata-modelview/images/repeater-index.png" alt="" /></p>
<p>Repeaters create items from a template for use with positioners, using data from a model. Combining repeaters and positioners is an easy way to lay out lots of items. A <a href="QtQuick.Repeater.md">Repeater</a> item is placed inside a positioner, and generates items that the enclosing positioner arranges.</p>
<p>Each Repeater creates a number of items by combining each element of data from a model, specified using the <a href="QtQuick.Repeater.md#model-prop">model</a> property, with the template item, defined as a child item within the Repeater. The total number of items is determined by the amount of data in the model.</p>
<p>The following example shows a repeater used with a Grid item to arrange a set of Rectangle items. The Repeater item creates a series of 24 rectangles for the Grid item to position in a 5 by 5 arrangement.</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">400</span>; <span class="name">color</span>: <span class="string">&quot;black&quot;</span>
<span class="type"><a href="QtQuick.Grid.md">Grid</a></span> {
<span class="name">x</span>: <span class="number">5</span>; <span class="name">y</span>: <span class="number">5</span>
<span class="name">rows</span>: <span class="number">5</span>; <span class="name">columns</span>: <span class="number">5</span>; <span class="name">spacing</span>: <span class="number">10</span>
<span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> { <span class="name">model</span>: <span class="number">24</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">width</span>: <span class="number">70</span>; <span class="name">height</span>: <span class="number">70</span>
<span class="name">color</span>: <span class="string">&quot;lightgreen&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">index</span>
<span class="name">font</span>.pointSize: <span class="number">30</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span> } }
}
}
}</pre>
<p>The number of items created by a Repeater is held by its <a href="QtQuick.Repeater.md#count-prop">count</a> property. It is not possible to set this property to determine the number of items to be created. Instead, as in the above example, we use an integer as the model. This is explained in the <a href="#integers-as-models">QML Data Models</a> document.</p>
<p>It is also possible to use a delegate as the template for the items created by a Repeater. This is specified using the <a href="QtQuick.Repeater.md#delegate-prop">delegate</a> property.</p>
<h2 id="using-transitions">Using Transitions</h2>
<p>Transitions can be used to animate items that are added to, moved within, or removed from a positioner.</p>
<p>Transitions for adding items apply to items that are created as part of a positioner, as well as those that are reparented to become children of a positioner. Transitions for removing items apply to items within a positioner that are deleted, as well as those that are removed from a positioner and given new parents in a document.</p>
<p>Additionally, changing the opacity of items to zero will cause them to disappear using the remove transition, and making the opacity non-zero will cause them to appear using the add transition.</p>
<!-- @@@qtquick-modelviewsdata-modelview.html -->
