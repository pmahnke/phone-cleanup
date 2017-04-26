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
-   [SDK 15.04.4](../index.html) ›
-   [unity.scopes.qt](../unity.scopes.qt/index.html) ›

<!-- -->

-   QPreviewWidget

QPreviewWidget
==============

Widget used in Preview. [More...](index.html#details)

`#include <unity/scopes/qt/QPreviewWidget.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#aba81db48085e0528f1112941fb547c4a" class="el">QPreviewWidget</a> (QString const &<a href="index.html#a3b230204123aa720d925f85fd51425a0" class="el">id</a>, QString const &<a href="index.html#a600705e26341af0ef375830665462a47" class="el">widget_type</a>)
 
Create an empty widget definition with a specific id and type. More...
 
 
<a href="index.html#a3b1daf6806081a727875ce0f4384f612" class="el">QPreviewWidget</a> (QString const &definition)
 
Create a widget from a JSON definition. More...
 
void 
<a href="index.html#a708df5ca5097de8f6b81a71958cf9b75" class="el">add_attribute_value</a> (QString const &key, QVariant const &value)
 
Adds an attribute definition and its value. More...
 
void 
<a href="index.html#a7ebeecb9c8cc66f871692bd19eb8cfe6" class="el">add_attribute_mapping</a> (QString const &key, QString const &field\_name)
 
Adds an attribute definition using a component mapping. More...
 
void 
<a href="index.html#ae9d8c0c5d81c827b84cda80df49dc70e" class="el">add_widget</a> (<a href="index.html" class="el">QPreviewWidget</a> const &widget)
 
Adds a widget into expandable widget. More...
 
QString 
<a href="index.html#a3b230204123aa720d925f85fd51425a0" class="el">id</a> () const
 
Get the identifier of this widget. More...
 
QString 
<a href="index.html#a600705e26341af0ef375830665462a47" class="el">widget_type</a> () const
 
Get type name of this widget. More...
 
QMap&lt; QString, QString &gt; 
<a href="index.html#ae6d2278216cc638cc8869e12fdf619fc" class="el">attribute_mappings</a> () const
 
Get the components of this widget. More...
 
QVariantMap 
<a href="index.html#a1af3433d81deca2a1c5de44cec693412" class="el">attribute_values</a> () const
 
Get the attributes of this widget. More...
 
QPreviewWidgetList 
<a href="index.html#a5732c60c89fa86e08e86fd62f5649ce3" class="el">widgets</a> () const
 
Get widgets of 'expandable' widget. More...
 
QString 
<a href="index.html#a4be99753312de446095968767eb46bbe" class="el">data</a> () const
 
Get a JSON representation of this widget. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a228a3abdf00a12f5cac5029b205d02f7" class="anchor"></span>  
**QPreviewWidget** (<a href="index.html" class="el">QPreviewWidget</a> const &other)
 
<span id="a2a3fb53132bd8b95a940ca578884272f" class="anchor"></span>  
**QPreviewWidget** (<a href="index.html" class="el">QPreviewWidget</a> &&other)
 
<span id="a3afac99e8aaa19b3577207f63a8a49da" class="anchor"></span> virtual 
**~QPreviewWidget** ()
 
<span id="a9f487047c014f513991ec60646d6e022" class="anchor"></span> <a href="index.html" class="el">QPreviewWidget</a> & 
**operator=** (<a href="index.html" class="el">QPreviewWidget</a> const &other)
 
<span id="a3d62fdca3306ce911ad3507077b86b89" class="anchor"></span> <a href="index.html" class="el">QPreviewWidget</a> & 
**operator=** (<a href="index.html" class="el">QPreviewWidget</a> &&other)
 
<span id="details"></span>
Detailed Description
--------------------

Widget used in Preview.

Constructor & Destructor Documentation
--------------------------------------

<span id="aba81db48085e0528f1112941fb547c4a" class="anchor"></span>
|                                                   |     |                  |                 |
|---------------------------------------------------|-----|------------------|-----------------|
| unity::scopes::qt::QPreviewWidget::QPreviewWidget | (   | QString const &  | *id*,           |
|                                                   |     | QString const &  | *widget\_type*  |
|                                                   | )   |                  |                 |

Create an empty widget definition with a specific id and type.

Parameters  
|              |                               |
|--------------|-------------------------------|
| id           | The unique widget identifier. |
| widget\_type | The type of the widget.       |

<span id="a3b1daf6806081a727875ce0f4384f612" class="anchor"></span>
|                                                   |     |                  |              |     |     |
|---------------------------------------------------|-----|------------------|--------------|-----|-----|
| unity::scopes::qt::QPreviewWidget::QPreviewWidget | (   | QString const &  | *definition* | )   |     |

Create a widget from a JSON definition.

The JSON definition must be a dictionary that includes widget "id" and all the values of attributes required by desired <a href="index.html" class="el">widget type</a>. For example, a definition of image widget may look as follows:

PreviewWidget img(R<span class="stringliteral">"({"id": "img", "type": "image", "source": "http://imageuri"})");</span>

For cases where attribute mappings are to be used instead of direct values, they need to be enclosed in the "components" dictionary, e.g.

PreviewWidget img(R<span class="stringliteral">"({"id": "img", "type": "image", "components": { "source": "screenshot-url" } })");</span>

(this example assumes "screenshot-url" value is either available in the result object that's being previewed, or it will be pushed with <a href="../unity.scopes.PreviewReply/index.html#a9fc593618b83ec444fb6c9b2b298764a" class="el" title="Sends widget definitions to the sender of the preview query. ">unity::scopes::PreviewReply::push()</a> method)

Note  
It is recommended to create widgets via <a href="../unity.scopes.PreviewWidget/index.html" class="el" title="A widget for a preview. ">unity::scopes::PreviewWidget(QString const&amp;, QString const&amp;)</a> constructor and <a href="../unity.scopes.PreviewWidget/index.html#a42dd64704890d72bcc6ecbd7bccbfcd9" class="el" title="Adds an attribute definition and its value. ">unity::scopes::PreviewWidget::add_attribute_value()</a> / <a href="../unity.scopes.PreviewWidget/index.html#a8bb890267a69dd6bb5ca70b663c75e74" class="el" title="Adds an attribute definition using a component mapping. ">unity::scopes::PreviewWidget::add_attribute_mapping()</a> methods, rather than via JSON definition.

<!-- -->

Parameters  
|            |                      |
|------------|----------------------|
| definition | The JSON definition. |

Member Function Documentation
-----------------------------

<span id="a7ebeecb9c8cc66f871692bd19eb8cfe6" class="anchor"></span>
|                                                                 |     |                  |                |
|-----------------------------------------------------------------|-----|------------------|----------------|
| void unity::scopes::qt::QPreviewWidget::add\_attribute\_mapping | (   | QString const &  | *key*,         |
|                                                                 |     | QString const &  | *field\_name*  |
|                                                                 | )   |                  |                |

Adds an attribute definition using a component mapping.

If an attribute value is either not known, or the value is already present in a result field, this method creates a mapping between the attribute name and given the field name.

If an attribute value is not known, the scope is expected to push the attribute value using <a href="../unity.scopes.PreviewReply/index.html#a9fc593618b83ec444fb6c9b2b298764a" class="el" title="Sends widget definitions to the sender of the preview query. ">unity::scopes::PreviewReply::push()</a>; otherwise, the value is automatically mapped from the result.

<span id="a708df5ca5097de8f6b81a71958cf9b75" class="anchor"></span>
|                                                               |     |                   |          |
|---------------------------------------------------------------|-----|-------------------|----------|
| void unity::scopes::qt::QPreviewWidget::add\_attribute\_value | (   | QString const &   | *key*,   |
|                                                               |     | QVariant const &  | *value*  |
|                                                               | )   |                   |          |

Adds an attribute definition and its value.

Parameters  
|       |                             |
|-------|-----------------------------|
| key   | The name of the attribute.  |
| value | The value of the attribute. |

<span id="ae9d8c0c5d81c827b84cda80df49dc70e" class="anchor"></span>
|                                                     |     |                                                             |          |     |     |
|-----------------------------------------------------|-----|-------------------------------------------------------------|----------|-----|-----|
| void unity::scopes::qt::QPreviewWidget::add\_widget | (   | <a href="index.html" class="el">QPreviewWidget</a> const &  | *widget* | )   |     |

Adds a widget into expandable widget.

Adds a widget into this widget, which needs to be of 'expandable' type. This method throws if adding a widget into any other widget type. Also, adding an 'expandable' widget into another 'expandable' is not allowed.

Exceptions  
|                       |                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------|
| unity::LogicException | if type of this widget is other than 'expandable', or when adding 'expandable' to 'expandable'. |

<span id="ae6d2278216cc638cc8869e12fdf619fc" class="anchor"></span>
|                                                                                     |     |     |     |       |
|-------------------------------------------------------------------------------------|-----|-----|-----|-------|
| QMap&lt;QString, QString&gt; unity::scopes::qt::QPreviewWidget::attribute\_mappings | (   |     | )   | const |

Get the components of this widget.

The returned map is a dictionary of (key, field name) pairs, as defined by calls to <a href="index.html#a7ebeecb9c8cc66f871692bd19eb8cfe6" class="el" title="Adds an attribute definition using a component mapping. ">add_attribute_mapping()</a>.

Returns  
The components map.

<span id="a1af3433d81deca2a1c5de44cec693412" class="anchor"></span>
|                                                                  |     |     |     |       |
|------------------------------------------------------------------|-----|-----|-----|-------|
| QVariantMap unity::scopes::qt::QPreviewWidget::attribute\_values | (   |     | )   | const |

Get the attributes of this widget.

The returned map is a dictionary of (key, value) pairs, as defined by calls to <a href="index.html#a708df5ca5097de8f6b81a71958cf9b75" class="el" title="Adds an attribute definition and its value. ">add_attribute_value()</a>.

Returns  
The attribute map.

<span id="a4be99753312de446095968767eb46bbe" class="anchor"></span>
|                                                 |     |     |     |       |
|-------------------------------------------------|-----|-----|-----|-------|
| QString unity::scopes::qt::QPreviewWidget::data | (   |     | )   | const |

Get a JSON representation of this widget.

Returns  
The JSON string.

<span id="a3b230204123aa720d925f85fd51425a0" class="anchor"></span>
|                                               |     |     |     |       |
|-----------------------------------------------|-----|-----|-----|-------|
| QString unity::scopes::qt::QPreviewWidget::id | (   |     | )   | const |

Get the identifier of this widget.

Returns  
The widget identifier.

<span id="a600705e26341af0ef375830665462a47" class="anchor"></span>
|                                                         |     |     |     |       |
|---------------------------------------------------------|-----|-----|-----|-------|
| QString unity::scopes::qt::QPreviewWidget::widget\_type | (   |     | )   | const |

Get type name of this widget.

Returns  
The widget type.

<span id="a5732c60c89fa86e08e86fd62f5649ce3" class="anchor"></span>
|                                                               |     |     |     |       |
|---------------------------------------------------------------|-----|-----|-----|-------|
| QPreviewWidgetList unity::scopes::qt::QPreviewWidget::widgets | (   |     | )   | const |

Get widgets of 'expandable' widget.

Returns the list of widget attached to this widget, which must be of 'expandable' type. This list is always empty for other widget types.

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
