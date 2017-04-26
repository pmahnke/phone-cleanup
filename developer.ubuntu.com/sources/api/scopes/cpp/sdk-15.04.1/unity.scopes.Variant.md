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

<!-- -->

-   Variant

Variant
=======

Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. [More...](index.html#details)

`#include <unity/scopes/Variant.h>`

<span id="pub-types"></span> Public Types
-----------------------------------------

<span id="a84e79f64156503599a549d86230a2cf5" class="anchor"></span>enum  
<a href="index.html#a84e79f64156503599a549d86230a2cf5" class="el">Type</a> {
  **Null**, **Int**, **Bool**, **String**,
  **Double**, **Dict**, **Array**, **Int64**
}
 
Type of value held by a <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance.
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a88075e23bac5f3e6cffa68425f82b92f" class="anchor"></span>  
**Variant** (<a href="index.html" class="el">Variant</a> const &)
 
<span id="aa1c818282bc22ccec1f32127a4b8eda8" class="anchor"></span>  
**Variant** (<a href="index.html" class="el">Variant</a> &&)
 
<span id="a0039129c79ca9c762c49950e8495c178" class="anchor"></span> <a href="index.html" class="el">Variant</a> & 
**operator=** (<a href="index.html" class="el">Variant</a> const &)
 
<span id="a1f29c80e9f2c0b768b992df6492e6e27" class="anchor"></span> <a href="index.html" class="el">Variant</a> & 
**operator=** (<a href="index.html" class="el">Variant</a> &&)
 
Value assignment

The assignment operators replace the value currently held by a <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> with the supplied value, potentially changing the type of the value held by the <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>. Assigning a `const char*` to a <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> stores the corresponding `std::string` value.

<span id="a3c8fd52c00ecf529f09bd79349587824" class="anchor"></span> <a href="index.html" class="el">Variant</a> & 
**operator=** (int val) noexcept
 
<span id="aaa3d729ae97d84cc20a97ecd8688d65d" class="anchor"></span> <a href="index.html" class="el">Variant</a> & 
**operator=** (int64\_t val) noexcept
 
<span id="a77c823e6017c38415bf57745285c2fee" class="anchor"></span> <a href="index.html" class="el">Variant</a> & 
**operator=** (double val) noexcept
 
<span id="af40496a8c192e4fecadc8e3531cb4735" class="anchor"></span> <a href="index.html" class="el">Variant</a> & 
**operator=** (bool val) noexcept
 
<span id="af477dc59fa9c181a4ceafbe71bfec9ed" class="anchor"></span> <a href="index.html" class="el">Variant</a> & 
**operator=** (std::string const &val)
 
<span id="a0e816393dd9cfc2851c0f2ecd9a5b29c" class="anchor"></span> <a href="index.html" class="el">Variant</a> & 
**operator=** (char const \*val)
 
<span id="a52371fcea776de20a73682022eee9614" class="anchor"></span> <a href="index.html" class="el">Variant</a> & 
**operator=** (<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> const &val)
 
<span id="a1cc6b40a50a9bef153d651f6d0e44ffb" class="anchor"></span> <a href="index.html" class="el">Variant</a> & 
**operator=** (<a href="../unity.scopes/index.html#aa3bf32d584efd902bca79698a07dd934" class="el">VariantArray</a> const &val)
 
Comparison operators

Two variants are considered equal if they both store values of the same type and equal value.

For Variants storing values of different type, ordering follows the types defined in the Type enum. For example, any integer value compares less than any boolean value. For Variants of the same type, the stored values determine order as usual.

<span id="a7e5ee7524e25bc5ab18fc164c584fb8f" class="anchor"></span> bool 
**operator==** (<a href="index.html" class="el">Variant</a> const &) const noexcept
 
<span id="aec73b890f6afbb1d72faa12e9a8bd913" class="anchor"></span> bool 
**operator&lt;** (<a href="index.html" class="el">Variant</a> const &) const noexcept
 
Value accessors

The accessor methods retrieve a value of the specified type.

If a <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> currently stores a value of different type, these methods throw `unity::LogicException`.

<span id="a96853808c0257b08a203c6222865083f" class="anchor"></span> int 
**get\_int** () const
 
<span id="a62ad848e4203e189b40d70fcda438ed8" class="anchor"></span> int64\_t 
**get\_int64\_t** () const
 
<span id="abd729790b187ccf8c32689c78a22f286" class="anchor"></span> double 
**get\_double** () const
 
<span id="aa9d6463eb83feef67888ce14d22fc9a2" class="anchor"></span> bool 
**get\_bool** () const
 
<span id="ada6e4905661dab460c5021f7a57bed28" class="anchor"></span> std::string 
**get\_string** () const
 
<span id="ade7909d9798c3ee98c4da4bc210a6c08" class="anchor"></span> <a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> 
**get\_dict** () const
 
<span id="a04950b07c204b40c5ed1a07fee0f981d" class="anchor"></span> <a href="../unity.scopes/index.html#aa3bf32d584efd902bca79698a07dd934" class="el">VariantArray</a> 
**get\_array** () const
 
bool 
<a href="index.html#abcbee9f21657da6ccabff844bb5f472f" class="el">is_null</a> () const
 
Test if variant holds null value. More...
 
Observers

<span id="a5d5234019ce1069df485d539852f23be" class="anchor"></span> <a href="index.html#a84e79f64156503599a549d86230a2cf5" class="el">Type</a> 
<a href="index.html#a5d5234019ce1069df485d539852f23be" class="el">which</a> () const noexcept
 
Returns the type of value currently stored by this <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>.
 
Modifiers

<span id="a84e3a3281dd078fc7a690e17104f0c07" class="anchor"></span> void 
<a href="index.html#a84e3a3281dd078fc7a690e17104f0c07" class="el">swap</a> (<a href="index.html" class="el">Variant</a> &other) noexcept
 
Swaps the contents of this <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> with `other`.
 
<span id="member-group"></span> Constructors and destructor
-----------------------------------------------------------

<span id="afb7dc4ba8297d82003009cd5e22a0056" class="anchor"></span>  
<a href="index.html#afb7dc4ba8297d82003009cd5e22a0056" class="el">Variant</a> () noexcept
 
The default constructor creates a <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance containing a null.
 
<span id="a4c011541041207fb0aac2455a004dd91" class="anchor"></span>  
<a href="index.html#a4c011541041207fb0aac2455a004dd91" class="el">Variant</a> (int val) noexcept
 
Creates a <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied integer.
 
<span id="a1b506516f565c8a28ceeba9e75922b9f" class="anchor"></span>  
**Variant** (int64\_t val) noexcept
 
<span id="aa0965c3cf5bf396709b90f88e9e84069" class="anchor"></span>  
<a href="index.html#aa0965c3cf5bf396709b90f88e9e84069" class="el">Variant</a> (double val) noexcept
 
Creates a <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied double.
 
<span id="a10b5eeaa5716be6e87878e9abfa4a54d" class="anchor"></span>  
<a href="index.html#a10b5eeaa5716be6e87878e9abfa4a54d" class="el">Variant</a> (bool val) noexcept
 
Creates a <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied boolean.
 
<span id="aeef78caa145819293d14672537f299f2" class="anchor"></span>  
<a href="index.html#aeef78caa145819293d14672537f299f2" class="el">Variant</a> (std::string const &val)
 
Creates a <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied string.
 
<span id="a5608d071cccb81fa5f6840210df332c9" class="anchor"></span>  
<a href="index.html#a5608d071cccb81fa5f6840210df332c9" class="el">Variant</a> (char const \*val)
 
Converts the supplied pointer to a string and stores the string in the <a href="index.html" class="el" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance.
 
<span id="a92e5f8e75066ce878e267d692a42fd23" class="anchor"></span>  
**Variant** (<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> const &val)
 
<span id="ad0ea8a32cdff0b810e0956e62ae4fa17" class="anchor"></span>  
**Variant** (<a href="../unity.scopes/index.html#aa3bf32d584efd902bca79698a07dd934" class="el">VariantArray</a> const &val)
 
<span id="ac03ed47f49e4c5f4ec4d4a663fdd3945" class="anchor"></span>  
<a href="index.html#ac03ed47f49e4c5f4ec4d4a663fdd3945" class="el">~Variant</a> ()
 
Destructor.
 
<span id="a2bd2d5425fdec9af9340c22e3b47ac1c" class="anchor"></span> static <a href="index.html" class="el">Variant</a> const & 
<a href="index.html#a2bd2d5425fdec9af9340c22e3b47ac1c" class="el">null</a> ()
 
Construct a null variant.
 
<span id="member-group"></span> Serialization
---------------------------------------------

<span id="a60d63bafa627e24f14c39790573b34db" class="anchor"></span> std::string 
<a href="index.html#a60d63bafa627e24f14c39790573b34db" class="el">serialize_json</a> () const
 
Serializes the variant to a JSON encoded string.
 
<span id="aa2defbe2d1601c38c2a2188eb547b44b" class="anchor"></span> static <a href="index.html" class="el">Variant</a> 
<a href="index.html#aa2defbe2d1601c38c2a2188eb547b44b" class="el">deserialize_json</a> (std::string const &json\_string)
 
Deserializes a JSON encoded string to a `Variant`.
 
<span id="details"></span>
Detailed Description
--------------------

Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value.

Member Function Documentation
-----------------------------

<span id="abcbee9f21657da6ccabff844bb5f472f" class="anchor"></span>
|                                       |     |     |     |       |
|---------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Variant::is\_null | (   |     | )   | const |

Test if variant holds null value.

Returns  
True if variant holds null.

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
