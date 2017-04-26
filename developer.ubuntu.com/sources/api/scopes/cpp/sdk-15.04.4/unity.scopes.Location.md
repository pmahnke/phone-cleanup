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

<!-- -->

-   Location

Location
========

Holds location attributes such as latitude, longitude, etc. [More...](index.html#details)

`#include <unity/scopes/Location.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#a29785026741614382c49237af463b134" class="el">Location</a> (double <a href="index.html#a50f5c02d7bab4a0d8dd57295a83d30a5" class="el">latitude</a>, double <a href="index.html#a29476cb6bb6134f775ced08f49653fbf" class="el">longitude</a>)
 
Construct a new Location with the specified latitude and longitude. More...
 
<span id="acd547c0fd175dc09af7f21c2510455d8" class="anchor"></span>  
<a href="index.html#acd547c0fd175dc09af7f21c2510455d8" class="el">Location</a> (<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> const &variant)
 
Construct a <a href="index.html" class="el" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> from a the given serialized VariantMap.
 
double 
<a href="index.html#a835ec1dcd3c73decf26efe07edde7de1" class="el">altitude</a> () const
 
Get the altitude. More...
 
bool 
<a href="index.html#acd12460c91fdfe505ca7c48c6d9ff8e0" class="el">has_altitude</a> () const
 
Is there an altitude property. More...
 
std::string 
<a href="index.html#a62e2b1a20fca9c7aa7e193d35fc0de1d" class="el">area_code</a> () const
 
Get the area code. More...
 
bool 
<a href="index.html#a8f50b410a669b84fabe6b2fb335322e9" class="el">has_area_code</a> () const
 
Is there an area code property. More...
 
std::string 
<a href="index.html#af57bae33c7f02bb3aae6f3afdd8751b4" class="el">city</a> () const
 
Get the city name. More...
 
bool 
<a href="index.html#ad87381d174720bdf4098ab073ad3036c" class="el">has_city</a> () const
 
Is there a city property. More...
 
std::string 
<a href="index.html#a12d1ffb8ebf540f09937f39bd93cf7a3" class="el">country_code</a> () const
 
Get the country code. More...
 
bool 
<a href="index.html#afa933efd7a44f0e28757d132c480091e" class="el">has_country_code</a> () const
 
Is there a country code property. More...
 
std::string 
<a href="index.html#a8545a7b5d50011c18068f2a90ae7440a" class="el">country_name</a> () const
 
Get the country name. More...
 
bool 
<a href="index.html#ade946afbcfe219ad046e35b9818bc6c2" class="el">has_country_name</a> () const
 
Is there a country name property. More...
 
double 
<a href="index.html#ab8cae20de2053fd966a895a72b4c4d23" class="el">horizontal_accuracy</a> () const
 
Get the horizontal accuracy. More...
 
bool 
<a href="index.html#a849365d5a0a161e282badac69aa38e40" class="el">has_horizontal_accuracy</a> () const
 
Is there a horizontal accuracy property. More...
 
double 
<a href="index.html#a50f5c02d7bab4a0d8dd57295a83d30a5" class="el">latitude</a> () const
 
Get the latitude. More...
 
double 
<a href="index.html#a29476cb6bb6134f775ced08f49653fbf" class="el">longitude</a> () const
 
Get the longitude. More...
 
<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> 
<a href="index.html#a2d17dfecd743f6777e39f9e06653b7cd" class="el">serialize</a> () const
 
Return a dictionary of all location attributes. More...
 
std::string 
<a href="index.html#a16f0fbcf4a0811506c64452289878539" class="el">region_code</a> () const
 
Get the region code. More...
 
bool 
<a href="index.html#a18aa845b15b710fb32fa65bb02fcc8ec" class="el">has_region_code</a> () const
 
Is there a region code property. More...
 
std::string 
<a href="index.html#a4d13ccb82265c0622092d78fb708578c" class="el">region_name</a> () const
 
Get the region name. More...
 
bool 
<a href="index.html#a244f6d61af0d09c6649ff352fd0da1e8" class="el">has_region_name</a> () const
 
Is there a region name property. More...
 
double 
<a href="index.html#a99f86caa4eecfeb278b1f8ec0ab640ed" class="el">vertical_accuracy</a> () const
 
Get the vertical accuracy. More...
 
bool 
<a href="index.html#a734214294d31266e581aceba1c43fa04" class="el">has_vertical_accuracy</a> () const
 
Is there a vertical accuracy property. More...
 
std::string 
<a href="index.html#a2b7a689928e29c415a894dbc1cf640af" class="el">zip_postal_code</a> () const
 
Get the zip or postal code. More...
 
bool 
<a href="index.html#aa49d5fcd4e67a86aea6a5354f01682a3" class="el">has_zip_postal_code</a> () const
 
Is there a zip / postal code property. More...
 
void 
<a href="index.html#a6fe5248e04481732f75e2f51625ebf23" class="el">set_altitude</a> (double <a href="index.html#a835ec1dcd3c73decf26efe07edde7de1" class="el">altitude</a>)
 
Set the altitude. More...
 
void 
<a href="index.html#aa2ae4c88a310152f375048fa9e109a70" class="el">set_area_code</a> (std::string const &<a href="index.html#a62e2b1a20fca9c7aa7e193d35fc0de1d" class="el">area_code</a>)
 
Set the area code. More...
 
void 
<a href="index.html#aa8518fd0a3eb35fbe6242fd3bdbe7635" class="el">set_city</a> (std::string const &<a href="index.html#af57bae33c7f02bb3aae6f3afdd8751b4" class="el">city</a>)
 
Set the city name. More...
 
void 
<a href="index.html#a458adf562171b91a27cb8402364bd505" class="el">set_country_code</a> (std::string const &<a href="index.html#a12d1ffb8ebf540f09937f39bd93cf7a3" class="el">country_code</a>)
 
Set the country code. More...
 
void 
<a href="index.html#a6848dccd62f563a2ed7f3afe7deed9bf" class="el">set_country_name</a> (std::string const &<a href="index.html#a8545a7b5d50011c18068f2a90ae7440a" class="el">country_name</a>)
 
Set the country name. More...
 
void 
<a href="index.html#a9874386c93fa5864fc459fc88e311ee5" class="el">set_horizontal_accuracy</a> (double <a href="index.html#ab8cae20de2053fd966a895a72b4c4d23" class="el">horizontal_accuracy</a>)
 
Set the horizontal accuracy. More...
 
void 
<a href="index.html#aef5aacbc207c4fff67c0fb5fbb3414be" class="el">set_latitude</a> (double <a href="index.html#a50f5c02d7bab4a0d8dd57295a83d30a5" class="el">latitude</a>)
 
Set the latitude. More...
 
void 
<a href="index.html#ae0fc9cc4e3d1fd8c2c0c9a7297c3e6b2" class="el">set_longitude</a> (double <a href="index.html#a29476cb6bb6134f775ced08f49653fbf" class="el">longitude</a>)
 
Set the longitude. More...
 
void 
<a href="index.html#a35ba30e0a576f416854f5962ae292a02" class="el">set_region_code</a> (std::string const &<a href="index.html#a16f0fbcf4a0811506c64452289878539" class="el">region_code</a>)
 
Set the region code. More...
 
void 
<a href="index.html#aeebff1a970e84a44f5f1cda7c8a9cdd9" class="el">set_region_name</a> (std::string const &<a href="index.html#a4d13ccb82265c0622092d78fb708578c" class="el">region_name</a>)
 
Set the region name. More...
 
void 
<a href="index.html#aa7e876729fdd07d5141203ad1a805e8c" class="el">set_vertical_accuracy</a> (double <a href="index.html#a99f86caa4eecfeb278b1f8ec0ab640ed" class="el">vertical_accuracy</a>)
 
Set the vertical\_accuracy. More...
 
void 
<a href="index.html#af0e7c149082d5d55ea6364b921fefcdf" class="el">set_zip_postal_code</a> (std::string const &<a href="index.html#a2b7a689928e29c415a894dbc1cf640af" class="el">zip_postal_code</a>)
 
Set the zip/postal code. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a9037622dec02d6e7753b3dfe56388c8c" class="anchor"></span>  
**Location** (<a href="index.html" class="el">Location</a> const &other)
 
<span id="a3305c9a52f796ffb5b94857b2fc56219" class="anchor"></span>  
**Location** (<a href="index.html" class="el">Location</a> &&)
 
<span id="aae47db2e5e4c0d028848e06c03d2199c" class="anchor"></span> <a href="index.html" class="el">Location</a> & 
**operator=** (<a href="index.html" class="el">Location</a> const &other)
 
<span id="aad4af210a13096a88d5ba03748ec60b0" class="anchor"></span> <a href="index.html" class="el">Location</a> & 
**operator=** (<a href="index.html" class="el">Location</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Holds location attributes such as latitude, longitude, etc.

Constructor & Destructor Documentation
--------------------------------------

<span id="a29785026741614382c49237af463b134" class="anchor"></span>
|                                   |     |         |              |
|-----------------------------------|-----|---------|--------------|
| unity::scopes::Location::Location | (   | double  | *latitude*,  |
|                                   |     | double  | *longitude*  |
|                                   | )   |         |              |

Construct a new <a href="index.html" class="el" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> with the specified latitude and longitude.

Parameters  
|           |           |
|-----------|-----------|
| latitude  | Latitude  |
| longitude | Longitude |

Member Function Documentation
-----------------------------

<span id="a835ec1dcd3c73decf26efe07edde7de1" class="anchor"></span>
|                                          |     |     |     |       |
|------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::Location::altitude | (   |     | )   | const |

Get the altitude.

Returns  
The altitude.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if altitude is not set. |

<span id="a62e2b1a20fca9c7aa7e193d35fc0de1d" class="anchor"></span>
|                                                 |     |     |     |       |
|-------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::area\_code | (   |     | )   | const |

Get the area code.

Returns  
The area code.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                          |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if area code is not set. |

<span id="af57bae33c7f02bb3aae6f3afdd8751b4" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::city | (   |     | )   | const |

Get the city name.

Returns  
The city name.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if city is not set. |

<span id="a12d1ffb8ebf540f09937f39bd93cf7a3" class="anchor"></span>
|                                                    |     |     |     |       |
|----------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::country\_code | (   |     | )   | const |

Get the country code.

Returns  
The country code.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                             |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if country code is not set. |

<span id="a8545a7b5d50011c18068f2a90ae7440a" class="anchor"></span>
|                                                    |     |     |     |       |
|----------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::country\_name | (   |     | )   | const |

Get the country name.

Returns  
The country name.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                             |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if country name is not set. |

<span id="acd12460c91fdfe505ca7c48c6d9ff8e0" class="anchor"></span>
|                                             |     |     |     |       |
|---------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_altitude | (   |     | )   | const |

Is there an altitude property.

Returns  
True if there is an altitude property.

<span id="a8f50b410a669b84fabe6b2fb335322e9" class="anchor"></span>
|                                               |     |     |     |       |
|-----------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_area\_code | (   |     | )   | const |

Is there an area code property.

Returns  
True if there is an area code property.

<span id="ad87381d174720bdf4098ab073ad3036c" class="anchor"></span>
|                                         |     |     |     |       |
|-----------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_city | (   |     | )   | const |

Is there a city property.

Returns  
True if there is a city property.

<span id="afa933efd7a44f0e28757d132c480091e" class="anchor"></span>
|                                                  |     |     |     |       |
|--------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_country\_code | (   |     | )   | const |

Is there a country code property.

Returns  
True if there is a country code property.

<span id="ade946afbcfe219ad046e35b9818bc6c2" class="anchor"></span>
|                                                  |     |     |     |       |
|--------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_country\_name | (   |     | )   | const |

Is there a country name property.

Returns  
True if there is a country name property.

<span id="a849365d5a0a161e282badac69aa38e40" class="anchor"></span>
|                                                         |     |     |     |       |
|---------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_horizontal\_accuracy | (   |     | )   | const |

Is there a horizontal accuracy property.

Returns  
True if there is a horizontal accuracy property.

<span id="a18aa845b15b710fb32fa65bb02fcc8ec" class="anchor"></span>
|                                                 |     |     |     |       |
|-------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_region\_code | (   |     | )   | const |

Is there a region code property.

Returns  
True if there is a region code property.

<span id="a244f6d61af0d09c6649ff352fd0da1e8" class="anchor"></span>
|                                                 |     |     |     |       |
|-------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_region\_name | (   |     | )   | const |

Is there a region name property.

Returns  
True if there is a region name property.

<span id="a734214294d31266e581aceba1c43fa04" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_vertical\_accuracy | (   |     | )   | const |

Is there a vertical accuracy property.

Returns  
True if there is a vertical accuracy property.

<span id="aa49d5fcd4e67a86aea6a5354f01682a3" class="anchor"></span>
|                                                      |     |     |     |       |
|------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_zip\_postal\_code | (   |     | )   | const |

Is there a zip / postal code property.

Returns  
True if there is a zip / postal code property.

<span id="ab8cae20de2053fd966a895a72b4c4d23" class="anchor"></span>
|                                                      |     |     |     |       |
|------------------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::Location::horizontal\_accuracy | (   |     | )   | const |

Get the horizontal accuracy.

Returns  
The horizontal accuracy.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                                    |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if horizontal accuracy is not set. |

<span id="a50f5c02d7bab4a0d8dd57295a83d30a5" class="anchor"></span>
|                                          |     |     |     |       |
|------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::Location::latitude | (   |     | )   | const |

Get the latitude.

Returns  
The latitude.

<span id="a29476cb6bb6134f775ced08f49653fbf" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::Location::longitude | (   |     | )   | const |

Get the longitude.

Returns  
The longitude.

<span id="a16f0fbcf4a0811506c64452289878539" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::region\_code | (   |     | )   | const |

Get the region code.

Returns  
The region code.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                            |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if region code is not set. |

<span id="a4d13ccb82265c0622092d78fb708578c" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::region\_name | (   |     | )   | const |

Get the region name.

Returns  
The region name.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                            |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if region name is not set. |

<span id="a2d17dfecd743f6777e39f9e06653b7cd" class="anchor"></span>
|                                                                                                                                     |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> unity::scopes::Location::serialize | (   |     | )   | const |

Return a dictionary of all location attributes.

Returns  
Dictionary of all location attributes.

<span id="a6fe5248e04481732f75e2f51625ebf23" class="anchor"></span>
|                                             |     |         |            |     |     |
|---------------------------------------------|-----|---------|------------|-----|-----|
| void unity::scopes::Location::set\_altitude | (   | double  | *altitude* | )   |     |

Set the altitude.

Parameters  
|          |            |
|----------|------------|
| altitude | In meters. |

<span id="aa2ae4c88a310152f375048fa9e109a70" class="anchor"></span>
|                                               |     |                      |              |     |     |
|-----------------------------------------------|-----|----------------------|--------------|-----|-----|
| void unity::scopes::Location::set\_area\_code | (   | std::string const &  | *area\_code* | )   |     |

Set the area code.

Parameters  
|            |                     |
|------------|---------------------|
| area\_code | FIPS10-4 area code. |

<span id="aa8518fd0a3eb35fbe6242fd3bdbe7635" class="anchor"></span>
|                                         |     |                      |        |     |     |
|-----------------------------------------|-----|----------------------|--------|-----|-----|
| void unity::scopes::Location::set\_city | (   | std::string const &  | *city* | )   |     |

Set the city name.

Parameters  
|      |                   |
|------|-------------------|
| city | Name of the city. |

<span id="a458adf562171b91a27cb8402364bd505" class="anchor"></span>
|                                                  |     |                      |                 |     |     |
|--------------------------------------------------|-----|----------------------|-----------------|-----|-----|
| void unity::scopes::Location::set\_country\_code | (   | std::string const &  | *country\_code* | )   |     |

Set the country code.

Parameters  
|               |                        |
|---------------|------------------------|
| country\_code | FIPS10-4 country code. |

<span id="a6848dccd62f563a2ed7f3afe7deed9bf" class="anchor"></span>
|                                                  |     |                      |                 |     |     |
|--------------------------------------------------|-----|----------------------|-----------------|-----|-----|
| void unity::scopes::Location::set\_country\_name | (   | std::string const &  | *country\_name* | )   |     |

Set the country name.

Parameters  
|               |                              |
|---------------|------------------------------|
| country\_name | Human readable country name. |

<span id="a9874386c93fa5864fc459fc88e311ee5" class="anchor"></span>
|                                                         |     |         |                        |     |     |
|---------------------------------------------------------|-----|---------|------------------------|-----|-----|
| void unity::scopes::Location::set\_horizontal\_accuracy | (   | double  | *horizontal\_accuracy* | )   |     |

Set the horizontal accuracy.

Parameters  
|                      |                       |
|----------------------|-----------------------|
| horizontal\_accuracy | Horizontal accouracy. |

<span id="aef5aacbc207c4fff67c0fb5fbb3414be" class="anchor"></span>
|                                             |     |         |            |     |     |
|---------------------------------------------|-----|---------|------------|-----|-----|
| void unity::scopes::Location::set\_latitude | (   | double  | *latitude* | )   |     |

Set the latitude.

Parameters  
|          |           |
|----------|-----------|
| latitude | Latitude. |

<span id="ae0fc9cc4e3d1fd8c2c0c9a7297c3e6b2" class="anchor"></span>
|                                              |     |         |             |     |     |
|----------------------------------------------|-----|---------|-------------|-----|-----|
| void unity::scopes::Location::set\_longitude | (   | double  | *longitude* | )   |     |

Set the longitude.

Parameters  
|           |           |
|-----------|-----------|
| longitude | Latitude. |

<span id="a35ba30e0a576f416854f5962ae292a02" class="anchor"></span>
|                                                 |     |                      |                |     |     |
|-------------------------------------------------|-----|----------------------|----------------|-----|-----|
| void unity::scopes::Location::set\_region\_code | (   | std::string const &  | *region\_code* | )   |     |

Set the region code.

Parameters  
|              |                       |
|--------------|-----------------------|
| region\_code | FIPS10-4 region code. |

<span id="aeebff1a970e84a44f5f1cda7c8a9cdd9" class="anchor"></span>
|                                                 |     |                      |                |     |     |
|-------------------------------------------------|-----|----------------------|----------------|-----|-----|
| void unity::scopes::Location::set\_region\_name | (   | std::string const &  | *region\_name* | )   |     |

Set the region name.

Parameters  
|              |                             |
|--------------|-----------------------------|
| region\_name | Human readable region name. |

<span id="aa7e876729fdd07d5141203ad1a805e8c" class="anchor"></span>
|                                                       |     |         |                      |     |     |
|-------------------------------------------------------|-----|---------|----------------------|-----|-----|
| void unity::scopes::Location::set\_vertical\_accuracy | (   | double  | *vertical\_accuracy* | )   |     |

Set the vertical\_accuracy.

Parameters  
|                    |                              |
|--------------------|------------------------------|
| vertical\_accuracy | Vertical accuracy in meters. |

<span id="af0e7c149082d5d55ea6364b921fefcdf" class="anchor"></span>
|                                                      |     |                      |                     |     |     |
|------------------------------------------------------|-----|----------------------|---------------------|-----|-----|
| void unity::scopes::Location::set\_zip\_postal\_code | (   | std::string const &  | *zip\_postal\_code* | )   |     |

Set the zip/postal code.

Parameters  
|                   |                              |
|-------------------|------------------------------|
| zip\_postal\_code | Either a zip or postal code. |

<span id="a99f86caa4eecfeb278b1f8ec0ab640ed" class="anchor"></span>
|                                                    |     |     |     |       |
|----------------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::Location::vertical\_accuracy | (   |     | )   | const |

Get the vertical accuracy.

Returns  
The vertical accuracy.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                                  |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if vertical accuracy is not set. |

<span id="a2b7a689928e29c415a894dbc1cf640af" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::zip\_postal\_code | (   |     | )   | const |

Get the zip or postal code.

Returns  
The zip or postal code.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                            |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if postal code is not set. |

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
