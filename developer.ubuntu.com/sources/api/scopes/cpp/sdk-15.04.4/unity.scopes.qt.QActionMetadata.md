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

-   QActionMetadata

QActionMetadata
===============

Metadata passed to scopes for preview and activation. [More...](index.html#details)

`#include <unity/scopes/qt/QActionMetadata.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#acc36c52fac186af3571cb29745d3981c" class="el">QActionMetadata</a> (QString const &locale, QString const &form\_factor)
 
Create ActionMetadata with the given locale and form factor. More...
 
void 
<a href="index.html#a5913d97d109db7b2e4596bc1b3f53ed1" class="el">set_scope_data</a> (QVariant const &data)
 
Attach arbitrary data to this ActionMetadata. More...
 
QVariant 
<a href="index.html#ae1103e2a369e300f05f8fd3dea8020f7" class="el">scope_data</a> () const
 
Get data attached to this ActionMetadata. More...
 
void 
<a href="index.html#ab2b595bf273926b0bc5a00df98ff38e1" class="el">set_hint</a> (QString const &key, QVariant const &value)
 
Sets a hint. More...
 
QVariantMap 
<a href="index.html#a62be4635a002af1c69cb9a105009a6c2" class="el">hints</a> () const
 
Get all hints. More...
 
bool 
<a href="index.html#a9016175d5f8ffe9725d95a68b1939553" class="el">contains_hint</a> (QString const &key) const
 
Check if this SearchMetadata has a hint. More...
 
QVariant & 
<a href="index.html#a666efb6091fba93a007736ffe1487c82" class="el">operator[]</a> (QString const &key)
 
Returns a reference to a hint. More...
 
QVariant const & 
<a href="index.html#a607f33913139706424e925dac02a1a3d" class="el">operator[]</a> (QString const &key) const
 
Returns a const reference to a hint. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="adade9077f0b4e743c2e7957bd9cd0db9" class="anchor"></span>  
**QActionMetadata** (<a href="index.html" class="el">QActionMetadata</a> const &other)
 
<span id="aedce73cfd65302010d9c37e0c000bfb4" class="anchor"></span>  
**QActionMetadata** (<a href="index.html" class="el">QActionMetadata</a> &&)
 
<span id="aa8404f8833727972865690847ab36a30" class="anchor"></span> <a href="index.html" class="el">QActionMetadata</a> & 
**operator=** (<a href="index.html" class="el">QActionMetadata</a> const &other)
 
<span id="aacb5234146595bcec30a5e42e2590baf" class="anchor"></span> <a href="index.html" class="el">QActionMetadata</a> & 
**operator=** (<a href="index.html" class="el">QActionMetadata</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Metadata passed to scopes for preview and activation.

See also  
<a href="../unity.scopes.qt.QScopeBase/index.html#afdedf1ba41623c1ac060ecc4b014f67f" class="el">unity::scopes::qt::QScopeBase::preview</a>, <a href="../unity.scopes.ScopeBase/index.html#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" class="el" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a>, <a href="../unity.scopes.ScopeBase/index.html#a2f4d476fa790349c9a7de52be3232d11" class="el" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a>

Constructor & Destructor Documentation
--------------------------------------

<span id="acc36c52fac186af3571cb29745d3981c" class="anchor"></span>
|                                                     |     |                  |                 |
|-----------------------------------------------------|-----|------------------|-----------------|
| unity::scopes::qt::QActionMetadata::QActionMetadata | (   | QString const &  | *locale*,       |
|                                                     |     | QString const &  | *form\_factor*  |
|                                                     | )   |                  |                 |

Create <a href="../unity.scopes.ActionMetadata/index.html" class="el" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a> with the given locale and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

Member Function Documentation
-----------------------------

<span id="a9016175d5f8ffe9725d95a68b1939553" class="anchor"></span>
|                                                         |     |                  |       |     |       |
|---------------------------------------------------------|-----|------------------|-------|-----|-------|
| bool unity::scopes::qt::QActionMetadata::contains\_hint | (   | QString const &  | *key* | )   | const |

Check if this <a href="../unity.scopes.SearchMetadata/index.html" class="el" title="Metadata passed with search requests. ">SearchMetadata</a> has a hint.

Parameters  
|     |                |
|-----|----------------|
| key | The hint name. |

<!-- -->

Returns  
True if the hint is set.

<span id="a62be4635a002af1c69cb9a105009a6c2" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| QVariantMap unity::scopes::qt::QActionMetadata::hints | (   |     | )   | const |

Get all hints.

Returns  
Hints dictionary.

<!-- -->

Exceptions  
|                          |                            |
|--------------------------|----------------------------|
| unity::NotFoundException | if no hints are available. |

<span id="a666efb6091fba93a007736ffe1487c82" class="anchor"></span>
|                                                            |     |                  |       |     |     |
|------------------------------------------------------------|-----|------------------|-------|-----|-----|
| QVariant& unity::scopes::qt::QActionMetadata::operator\[\] | (   | QString const &  | *key* | )   |     |

Returns a reference to a hint.

This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of QVariant::Type::Null.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A reference to the hint.

<span id="a607f33913139706424e925dac02a1a3d" class="anchor"></span>
|                                                                  |     |                  |       |     |       |
|------------------------------------------------------------------|-----|------------------|-------|-----|-------|
| QVariant const& unity::scopes::qt::QActionMetadata::operator\[\] | (   | QString const &  | *key* | )   | const |

Returns a const reference to a hint.

This method can be used for read-only access to hints. Referencing a non-existing hint throws unity::InvalidArgumentException.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A const reference to the hint.

<!-- -->

Exceptions  
|                          |                                        |
|--------------------------|----------------------------------------|
| unity::NotFoundException | if no hint with the given name exists. |

<span id="ae1103e2a369e300f05f8fd3dea8020f7" class="anchor"></span>
|                                                          |     |     |     |       |
|----------------------------------------------------------|-----|-----|-----|-------|
| QVariant unity::scopes::qt::QActionMetadata::scope\_data | (   |     | )   | const |

Get data attached to this <a href="../unity.scopes.ActionMetadata/index.html" class="el" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>.

Returns  
The attached data, or QVariant::null.

<span id="ab2b595bf273926b0bc5a00df98ff38e1" class="anchor"></span>
|                                                    |     |                   |          |
|----------------------------------------------------|-----|-------------------|----------|
| void unity::scopes::qt::QActionMetadata::set\_hint | (   | QString const &   | *key*,   |
|                                                    |     | QVariant const &  | *value*  |
|                                                    | )   |                   |          |

Sets a hint.

Parameters  
|       |                       |
|-------|-----------------------|
| key   | The name of the hint. |
| value | Hint value            |

<span id="a5913d97d109db7b2e4596bc1b3f53ed1" class="anchor"></span>
|                                                           |     |                   |        |     |     |
|-----------------------------------------------------------|-----|-------------------|--------|-----|-----|
| void unity::scopes::qt::QActionMetadata::set\_scope\_data | (   | QVariant const &  | *data* | )   |     |

Attach arbitrary data to this <a href="../unity.scopes.ActionMetadata/index.html" class="el" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>.

Parameters  
|      |                           |
|------|---------------------------|
| data | The data value to attach. |

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
