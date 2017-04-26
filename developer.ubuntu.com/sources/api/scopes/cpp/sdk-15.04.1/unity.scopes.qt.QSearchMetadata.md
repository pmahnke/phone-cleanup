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
-   [SDK 15.04.1](../index.html) ›
-   [unity.scopes.qt](../unity.scopes.qt/index.html) ›

<!-- -->

-   QSearchMetadata

QSearchMetadata
===============

Metadata passed with search requests. [More...](index.html#details)

`#include <unity/scopes/qt/QSearchMetadata.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#a92db05ea573b0c55c5b73c5c1576e51e" class="el">QSearchMetadata</a> (QString const &locale, QString const &form\_factor)
 
Create SearchMetadata with the given locale and form factor. More...
 
 
<a href="index.html#aac638e4b40c119cd9b6f43f693cda2af" class="el">QSearchMetadata</a> (int <a href="index.html#ac560e26fbc8376625de16031c863afe8" class="el">cardinality</a>, QString const &locale, QString const &form\_factor)
 
Create SearchMetadata with the given cardinality, locale, and form factor. More...
 
void 
<a href="index.html#ab0dcad3fa29fb7553ede65ef20b0255d" class="el">set_cardinality</a> (int <a href="index.html#ac560e26fbc8376625de16031c863afe8" class="el">cardinality</a>)
 
Set cardinality. More...
 
int 
<a href="index.html#ac560e26fbc8376625de16031c863afe8" class="el">cardinality</a> () const
 
Get cardinality. More...
 
void 
<a href="index.html#a4479bd25415f2c9e0bdd4e80e9c8a9e2" class="el">set_location</a> (<a href="../unity.scopes.Location/index.html" class="el">Location</a> const &<a href="index.html#a844f3a8b081df7482120acd39725a7f9" class="el">location</a>)
 
Set location. More...
 
<a href="../unity.scopes.Location/index.html" class="el">Location</a> 
<a href="index.html#a844f3a8b081df7482120acd39725a7f9" class="el">location</a> () const
 
Get location. More...
 
bool 
<a href="index.html#ab61ff7b56a2c6a2f5b951c2d317180a8" class="el">has_location</a> () const
 
Does the SearchMetadata have a location. More...
 
void 
<a href="index.html#a7268b98c17357bbcba30d2bd85a5f0b3" class="el">remove_location</a> ()
 
Remove location data entirely. More...
 
void 
<a href="index.html#adb6bfe57d0d7a421fa2b19c498728d50" class="el">set_hint</a> (QString const &key, QVariant const &value)
 
Sets a hint. More...
 
QVariantMap 
<a href="index.html#a10ea65002ca32ec982be76758c5d951b" class="el">hints</a> () const
 
Get all hints. More...
 
bool 
<a href="index.html#acfdb14b65570a7d83a0c477dc7fb7d2c" class="el">contains_hint</a> (QString const &key) const
 
Check if this SearchMetadata has a hint. More...
 
QVariant & 
<a href="index.html#a10eac0fb5b37277479a6953f52314560" class="el">operator[]</a> (QString const &key)
 
Returns a reference to a hint. More...
 
QVariant const & 
<a href="index.html#a04baf06aa57a85811dae85093d688911" class="el">operator[]</a> (QString const &key) const
 
Returns a const reference to a hint. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a09f91d1ab17be053866d25dfb06642c2" class="anchor"></span>  
**QSearchMetadata** (<a href="index.html" class="el">QSearchMetadata</a> const &other)
 
<span id="addd79d46fbb9875f4e7a71892d89b719" class="anchor"></span>  
**QSearchMetadata** (<a href="index.html" class="el">QSearchMetadata</a> &&)
 
<span id="a25bd995a07fcd6a18c8c798d59a792d1" class="anchor"></span> <a href="index.html" class="el">QSearchMetadata</a> & 
**operator=** (<a href="index.html" class="el">QSearchMetadata</a> const &other)
 
<span id="a0515708db6c259f94c057c352d8de77d" class="anchor"></span> <a href="index.html" class="el">QSearchMetadata</a> & 
**operator=** (<a href="index.html" class="el">QSearchMetadata</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Metadata passed with search requests.

Constructor & Destructor Documentation
--------------------------------------

<span id="a92db05ea573b0c55c5b73c5c1576e51e" class="anchor"></span>
|                                                     |     |                  |                 |
|-----------------------------------------------------|-----|------------------|-----------------|
| unity::scopes::qt::QSearchMetadata::QSearchMetadata | (   | QString const &  | *locale*,       |
|                                                     |     | QString const &  | *form\_factor*  |
|                                                     | )   |                  |                 |

Create <a href="../unity.scopes.SearchMetadata/index.html" class="el" title="Metadata passed with search requests. ">SearchMetadata</a> with the given locale and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

<span id="aac638e4b40c119cd9b6f43f693cda2af" class="anchor"></span>
|                                                     |     |                  |                 |
|-----------------------------------------------------|-----|------------------|-----------------|
| unity::scopes::qt::QSearchMetadata::QSearchMetadata | (   | int              | *cardinality*,  |
|                                                     |     | QString const &  | *locale*,       |
|                                                     |     | QString const &  | *form\_factor*  |
|                                                     | )   |                  |                 |

Create <a href="../unity.scopes.SearchMetadata/index.html" class="el" title="Metadata passed with search requests. ">SearchMetadata</a> with the given cardinality, locale, and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| cardinality  | maximum number of search results                          |
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

Member Function Documentation
-----------------------------

<span id="ac560e26fbc8376625de16031c863afe8" class="anchor"></span>
|                                                     |     |     |     |       |
|-----------------------------------------------------|-----|-----|-----|-------|
| int unity::scopes::qt::QSearchMetadata::cardinality | (   |     | )   | const |

Get cardinality.

Returns  
The maxmium number of search results, or 0 for no limit.

<span id="acfdb14b65570a7d83a0c477dc7fb7d2c" class="anchor"></span>
|                                                         |     |                  |       |     |       |
|---------------------------------------------------------|-----|------------------|-------|-----|-------|
| bool unity::scopes::qt::QSearchMetadata::contains\_hint | (   | QString const &  | *key* | )   | const |

Check if this <a href="../unity.scopes.SearchMetadata/index.html" class="el" title="Metadata passed with search requests. ">SearchMetadata</a> has a hint.

Parameters  
|     |                |
|-----|----------------|
| key | The hint name. |

<!-- -->

Returns  
True if the hint is set.

<span id="ab61ff7b56a2c6a2f5b951c2d317180a8" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::qt::QSearchMetadata::has\_location | (   |     | )   | const |

Does the <a href="../unity.scopes.SearchMetadata/index.html" class="el" title="Metadata passed with search requests. ">SearchMetadata</a> have a location.

Returns  
True if there is a location property.

<span id="a10ea65002ca32ec982be76758c5d951b" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| QVariantMap unity::scopes::qt::QSearchMetadata::hints | (   |     | )   | const |

Get all hints.

Returns  
Hints dictionary.

<!-- -->

Exceptions  
|                          |                            |
|--------------------------|----------------------------|
| unity::NotFoundException | if no hints are available. |

<span id="a844f3a8b081df7482120acd39725a7f9" class="anchor"></span>
|                                                                                                                    |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.Location/index.html" class="el">Location</a> unity::scopes::qt::QSearchMetadata::location | (   |     | )   | const |

Get location.

Returns  
<a href="../unity.scopes.Location/index.html" class="el" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data representing the current location, including attributes such as city and country.

<!-- -->

Exceptions  
|                          |                                   |
|--------------------------|-----------------------------------|
| unity::NotFoundException | if no location data is available. |

<span id="a10eac0fb5b37277479a6953f52314560" class="anchor"></span>
|                                                            |     |                  |       |     |     |
|------------------------------------------------------------|-----|------------------|-------|-----|-----|
| QVariant& unity::scopes::qt::QSearchMetadata::operator\[\] | (   | QString const &  | *key* | )   |     |

Returns a reference to a hint.

This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of Variant::Type::Null.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A reference to the hint.

<span id="a04baf06aa57a85811dae85093d688911" class="anchor"></span>
|                                                                  |     |                  |       |     |       |
|------------------------------------------------------------------|-----|------------------|-------|-----|-------|
| QVariant const& unity::scopes::qt::QSearchMetadata::operator\[\] | (   | QString const &  | *key* | )   | const |

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

<span id="a7268b98c17357bbcba30d2bd85a5f0b3" class="anchor"></span>
|                                                           |     |     |     |     |
|-----------------------------------------------------------|-----|-----|-----|-----|
| void unity::scopes::qt::QSearchMetadata::remove\_location | (   |     | )   |     |

Remove location data entirely.

This method does nothing if no location data is present.

<span id="ab0dcad3fa29fb7553ede65ef20b0255d" class="anchor"></span>
|                                                           |     |      |               |     |     |
|-----------------------------------------------------------|-----|------|---------------|-----|-----|
| void unity::scopes::qt::QSearchMetadata::set\_cardinality | (   | int  | *cardinality* | )   |     |

Set cardinality.

Parameters  
|             |                                       |
|-------------|---------------------------------------|
| cardinality | The maximum number of search results. |

<span id="adb6bfe57d0d7a421fa2b19c498728d50" class="anchor"></span>
|                                                    |     |                   |          |
|----------------------------------------------------|-----|-------------------|----------|
| void unity::scopes::qt::QSearchMetadata::set\_hint | (   | QString const &   | *key*,   |
|                                                    |     | QVariant const &  | *value*  |
|                                                    | )   |                   |          |

Sets a hint.

Parameters  
|       |                       |
|-------|-----------------------|
| key   | The name of the hint. |
| value | Hint value            |

<span id="a4479bd25415f2c9e0bdd4e80e9c8a9e2" class="anchor"></span>
|                                                        |     |                                                                                |            |     |     |
|--------------------------------------------------------|-----|--------------------------------------------------------------------------------|------------|-----|-----|
| void unity::scopes::qt::QSearchMetadata::set\_location | (   | <a href="../unity.scopes.Location/index.html" class="el">Location</a> const &  | *location* | )   |     |

Set location.

Parameters  
|          |                                                                                                                                                  |
|----------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| location | <a href="../unity.scopes.Location/index.html" class="el" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data. |

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
