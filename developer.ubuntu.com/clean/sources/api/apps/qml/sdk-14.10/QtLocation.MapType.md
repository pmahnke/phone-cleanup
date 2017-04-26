---
Title: QtLocation.MapType
---
        
MapType
=======

<span class="subtitle"></span>
The MapType type holds information about a map type. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import QtLocation 5.3` |
| Since:            | Qt Location 5.0         |

<span id="properties"></span>
Properties
----------

-   ****[description](#description-prop)**** : string
-   ****[mobile](#mobile-prop)**** : bool
-   ****[name](#name-prop)**** : string
-   ****[style](#style-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

This includes the map type's [name](#name-prop) and [description](#description-prop), the [style](#style-prop) and a flag to indicate if the map type is optimized for mobile devices ([mobile](#mobile-prop)).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="description-prop"></span><span class="name">description</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the description of the map type as a single formatted string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mobile-prop"></span><span class="name">mobile</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the map type is optimized for the use on a mobile device.

Map types for mobile devices usually have higher constrast to counteract the effects of sunlight and a reduced color for improved readability.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This read-only property holds the name of the map type as a single formatted string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This read-only property gives access to the style of the map type.

-   [MapType](index.html).NoMap - No map.
-   [MapType](index.html).StreetMap - A street map.
-   [MapType](index.html).SatelliteMapDay - A map with day-time satellite imagery.
-   [MapType](index.html).SatelliteMapNight - A map with night-time satellite imagery.
-   [MapType](index.html).TerrainMap - A terrain map.
-   [MapType](index.html).HybridMap - A map with satellite imagery and street information.
-   [MapType](index.html).GrayStreetMap - A gray-shaded street map.
-   MapType::PedestrianMap - A street map suitable for pedestriants.
-   MapType::CarNavigationMap - A street map suitable for car navigation.
-   [MapType](index.html).CustomMap - A custom map type.

