---
Title: QtLocation.MapType
---

# QtLocation.MapType

<span class="subtitle"></span>
<!-- $$$MapType-brief -->
<p>The MapType type holds information about a map type. More...</p>
<!-- @@@MapType -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtLocation 5.3</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#description-prop">description</a></b></b> : string</li>
<li class="fn"><b><b><a href="#mobile-prop">mobile</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : enumeration</li>
</ul>
<!-- $$$MapType-description -->
<h2>Detailed Description</h2>
<p>This includes the map type's <a href="#name-prop">name</a> and <a href="#description-prop">description</a>, the <a href="#style-prop">style</a> and a flag to indicate if the map type is optimized for mobile devices (<a href="#mobile-prop">mobile</a>).</p>
<!-- @@@MapType -->
<h2>Property Documentation</h2>
<!-- $$$description -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">description</span> : <span class="type">string</span></p></td></tr></table><p>This read-only property holds the description of the map type as a single formatted string.</p>
<!-- @@@description -->
<br/>
<!-- $$$mobile -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">mobile</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the map type is optimized for the use on a mobile device.</p>
<p>Map types for mobile devices usually have higher constrast to counteract the effects of sunlight and a reduced color for improved readability.</p>
<!-- @@@mobile -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This read-only property holds the name of the map type as a single formatted string.</p>
<!-- @@@name -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type">enumeration</span></p></td></tr></table><p>This read-only property gives access to the style of the map type.</p>
<ul>
<li><a href="index.html">MapType</a>.NoMap - No map.</li>
<li><a href="index.html">MapType</a>.StreetMap - A street map.</li>
<li><a href="index.html">MapType</a>.SatelliteMapDay - A map with day-time satellite imagery.</li>
<li><a href="index.html">MapType</a>.SatelliteMapNight - A map with night-time satellite imagery.</li>
<li><a href="index.html">MapType</a>.TerrainMap - A terrain map.</li>
<li><a href="index.html">MapType</a>.HybridMap - A map with satellite imagery and street information.</li>
<li><a href="index.html">MapType</a>.GrayStreetMap - A gray-shaded street map.</li>
<li>MapType::PedestrianMap - A street map suitable for pedestriants.</li>
<li>MapType::CarNavigationMap - A street map suitable for car navigation.</li>
<li><a href="index.html">MapType</a>.CustomMap - A custom map type.</li>
</ul>
<!-- @@@style -->
<br/>
