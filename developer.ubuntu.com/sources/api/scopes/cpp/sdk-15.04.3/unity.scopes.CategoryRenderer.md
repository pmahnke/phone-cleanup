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
-   [SDK 15.04.3](../index.html) ›

<!-- -->

-   CategoryRenderer

CategoryRenderer
================

A category renderer template in JSON format. [More...](index.html#details)

`#include <unity/scopes/CategoryRenderer.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#a046414ae2092968686ee4ee00629054a" class="el">CategoryRenderer</a> (std::string const &json\_text=<a href="../unity.scopes/index.html#a697a8f21545922bcfc8345d83f5cc156" class="el">DEFAULT_RENDERER</a>)
 
Creates a CategoryRenderer from a JSON string. More...
 
std::string 
<a href="index.html#a3bc0a10ca63c2bb90c14207ca28b536d" class="el">data</a> () const
 
Returns complete renderer template definition in JSON format. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="aa63d8639781ef78f2e759612ca53807b" class="anchor"></span>  
**CategoryRenderer** (<a href="index.html" class="el">CategoryRenderer</a> const &)
 
<span id="acfc382058a6858628080feedef5b60fd" class="anchor"></span> <a href="index.html" class="el">CategoryRenderer</a> & 
**operator=** (<a href="index.html" class="el">CategoryRenderer</a> const &)
 
<span id="a275d2eba8660427bb62a4989086b489f" class="anchor"></span>  
**CategoryRenderer** (<a href="index.html" class="el">CategoryRenderer</a> &&)
 
<span id="ac9e54474fce3f2ab48a6ac73f5fc68ac" class="anchor"></span> <a href="index.html" class="el">CategoryRenderer</a> & 
**operator=** (<a href="index.html" class="el">CategoryRenderer</a> &&)
 
<span id="adfafdf0a7b0239b391868ccddd6376b0" class="anchor"></span> virtual 
**~CategoryRenderer** ()
 
<span id="pub-static-methods"></span> Static Public Member Functions
--------------------------------------------------------------------

static <a href="index.html" class="el">CategoryRenderer</a> 
<a href="index.html#a3236d422bffd659e9e5a8eaae418320c" class="el">from_file</a> (std::string const &path)
 
Creates a CategoryRenderer from a text file. More...
 
<span id="details"></span>
Detailed Description
--------------------

A category renderer template in JSON format.

This class specifies how is a particular category rendered by Unity. Note that the data is likely to change between major versions of Unity, and therefore the definition isn't strongly typed and provided by a scope author as a JSON string.

A <a href="../unity.scopes.Category/index.html" class="el" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a> contains all the information needed by Unity to render results provided by a scope author (by handling <a href="../unity.scopes.SearchQueryBase/index.html#afc4f15b2266838d7da75b05ea37d504b" class="el" title="Called by scopes runtime to start the query. ">unity::scopes::SearchQueryBase::run()</a>) in a way that gives the user as much useful information as possible. When pushing results to the query originator (<a href="../unity.scopes.SearchReply/index.html#a63d6de93152b3a972901c2d406ef5760" class="el" title="Sends a single result to the source of a query. ">unity::scopes::SearchReply::push()</a>), each result needs to have a category associated, and this association determines what will the result look like.

The most important part of a category definition is the <a href="index.html" class="el" title="A category renderer template in JSON format. ">unity::scopes::CategoryRenderer</a> instance. If you use the default constructor <a href="index.html#a046414ae2092968686ee4ee00629054a" class="el" title="Creates a CategoryRenderer from a JSON string. ">CategoryRenderer()</a>, the renderer will use the following definition:

``` fragment
{
  "schema-version" : 1,
  "template" : {
    "category-layout" : "grid"
  },
  "components" : {
    "title" : "title",
    "art" : "art"
  }
}
```

As specified by the `"category-layout"` key of the `"template"` dictionary, Unity will render results associated with this category in a grid layout. The `"components"` dictionary specifies which result fields are used by Unity. In case of this definition, each tile of the grid will map the "title" field from the result (set also by the call to <a href="../unity.scopes.Result/index.html#adf8cf3d863babb02107fb5ef35acc925" class="el" title="Set the &quot;title&quot; attribute of this result. ">unity::scopes::Result::set_title()</a>) as title for the grid tile, and "art" field from the result (see <a href="../unity.scopes.Result/index.html#a3f2e512b10dbf2ed867d260ec33a89a1" class="el" title="Set the &quot;art&quot; attribute of this result. ">unity::scopes::Result::set_art()</a>) as the icon for the grid tile.

To sum up, the `"template"` dictionary contains information to determine the correct renderer and its parameters, and the `"components"` dictionary contains a mapping that specifies which fields of the results are used by the renderer. The keys of the dictionary are understood by Unity and the values specify a field name of the results. For example, `{"title": "album_name"}` means that Unity will use `result["album_name"]` as a title for the grid tile.r

A value also can specify extra hints for the renderer, such as the result field name and a fallback image. For example, `{"art": {"field": "icon", "aspect-ratio": 1.3, "fallback": "file:///path_to_fallback_image}}`. The fallback image is shown by Unity if no image URL is provided by the result, but the card requires an image. The fallback image is also shown if the result provides an empty URL for an image, the image does not load due to an error, or if loading results in an empty image. If a result does not specify a fallback image and the actual image is empty or cannot be loaded, Unity substitutes a generic fallback image.

<span id="jsonschema1" class="anchor"></span> JSON structure (v1)
=================================================================

When using `{"schema-version": 1}`, the following keys are understood:

<span id="template1" class="anchor"></span> template keys
---------------------------------------------------------

-   `category-layout` Specifies renderer type; possible values: `"grid"` (default), `"carousel"`, `"vertical-journal"`, `"horizontal-list"`
-   `card-layout` Specifies layout of the individual result cards; possible values: `"vertical"` (default), `"horizontal"`
-   `card-size` Size of the result cards; possible values: `"small"`, `"medium"` (default), `"large"`; when using `"category-layout": "vertical-journal"` any integer between 12 and 38
-   `overlay` Overlay text data on top of the art; boolean, default false
-   `collapsed-rows` Number of result rows displayed while the category is collapsed; possible values: any non-negative integer, where 0 fully expands the category (only affects grid and vertical journal)
-   `card-background` Background color for the cards; string; URI in the format

    ``` fragment
    color:///#rrggbb 
    ```

    or

    ``` fragment
    color:///color_name
    ```

    or

    ``` fragment
    gradient:///#rrggbb/#rrggbb 
    ```

    or an image URI (will be stretched)

-   `quick-preview-type` The type of media content represented by result cards, for use with inline playback; the only currently supported type is "audio".

<span id="components1" class="anchor"></span> components keys
-------------------------------------------------------------

-   `title` String specifying card's title
-   `subtitle` String specifying subtitle of a card
-   `art` URI specifying card's art (primary graphics), can contain subkeys: `"aspect-ratio"` (double specifying the aspect ratio of the graphics, default: 1.0), `"field"` (specifying the result's field name that contains the URI), and `"fallback"` (fallback image to be used if the URI for a result's artwork cannot be retrieved).
-   `mascot` URI specifying card's mascot (secondary graphics), can contain subkeys: `"aspect-ratio"` (double specifying the aspect ratio of the graphics, default: 1.0), `"field"` (specifying the result's field name that contains the URI), and `"fallback"` (fallback image to be used if the URI for a result's mascot cannot be retrieved).
-   `emblem` URI specifying card's emblem
-   `summary` String specifying text summary
-   `background` Card background URI, can override the default specified in the card-background field of the template section (same format as for card-background)
-   `attributes` Array of dictionaries specifying text and an optional icon (keys: "value", "icon")
-   `overlay-color` Color of overlay for templates with overlay
-   `quick-preview-data` A dictionary with the following keys: `"uri"` (an uri of audio stream or file), `"duration"` (duration in seconds), `"playlist"` (an array of uris of additional songs to be played in sequence when the main song finishes).

<span id="example" class="anchor"></span> Example
=================================================

In the following example a category named "Recommended" containing three components is created (title, art, and subtitle), and a result providing values for these components is pushed.

Note that the scope is free to set any other extra result fields even if they are not used by the renderer (and therefore not specified in the `"components"` dictionary), such fields will be preserved and available to the scope when handling result-specific methods (for example <a href="../unity.scopes.ScopeBase/index.html#a154b9b4cfc0f40572cfec60dd819396f" class="el" title="Invoked when a scope is requested to create a preview for a particular result. ">unity::scopes::ScopeBase::preview()</a>).

<span class="comment">// use raw string literal, so we don't have to escape all the quotes</span>

std::string CATEGORY\_DEFINITION = R<span class="stringliteral">"(</span>

<span class="stringliteral">{</span>

<span class="stringliteral"> "schema-version" : 1,</span>

<span class="stringliteral"> "template" : {</span>

<span class="stringliteral"> "category-layout" : "carousel",</span>

<span class="stringliteral"> "card-size" : "small"</span>

<span class="stringliteral"> },</span>

<span class="stringliteral"> "components" : {</span>

<span class="stringliteral"> "title" : "title",</span>

<span class="stringliteral"> "art" : {</span>

<span class="stringliteral"> "field" : "art",</span>

<span class="stringliteral"> "aspect-ratio" : 1.3</span>

<span class="stringliteral"> "fallback" : "file:///path\_to\_fallback\_image",</span>

<span class="stringliteral"> },</span>

<span class="stringliteral"> "subtitle" : "publisher"</span>

<span class="stringliteral"> }</span>

<span class="stringliteral">}</span>

<span class="stringliteral">)";</span>

<span class="stringliteral"></span>

<span class="stringliteral"></span><span class="keywordtype">void</span> MyQuery::run(<a href="../unity.scopes/index.html#a9cd604d9b842ac3b2b8636c2165dec1f" class="code">SearchReplyProxy</a> <span class="keyword">const</span>& reply)

{

<span class="keyword">auto</span> category = reply-&gt;register\_category(<span class="stringliteral">"recommended"</span>, <span class="stringliteral">"Recommended"</span>, icon, <a href="index.html#a046414ae2092968686ee4ee00629054a" class="code">CategoryRenderer</a>(CATEGORY\_DEFINITION));

<span class="comment">// push a sample result</span>

CategorisedResult result(category); <span class="comment">// create a result item in "recommended" category</span>

result.set\_uri(<span class="stringliteral">"http://www.example.org"</span>);

result.set\_title(<span class="stringliteral">"Example Result"</span>);

result.set\_art(<span class="stringliteral">"http://www.example.org/graphics.png"</span>);

result.set\_dnd\_uri(<span class="stringliteral">"http://www.example.org"</span>);

result\[<span class="stringliteral">"publisher"</span>\] = <span class="stringliteral">"Example.org"</span>;

reply-&gt;push(result); <span class="comment">// send result to the client</span>

}

Constructor & Destructor Documentation
--------------------------------------

<span id="a046414ae2092968686ee4ee00629054a" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>unity::scopes::CategoryRenderer::CategoryRenderer</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>json_text</em> = <code>DEFAULT_RENDERER</code></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">explicit</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="index.html" class="el" title="A category renderer template in JSON format. ">CategoryRenderer</a> from a JSON string.

Parameters  
|            |                                  |
|------------|----------------------------------|
| json\_text | Renderer template in JSON format |

<!-- -->

Exceptions  
|                                 |                                |
|---------------------------------|--------------------------------|
| unity::InvalidArgumentException | if json\_text cannot be parsed |

Member Function Documentation
-----------------------------

<span id="a3bc0a10ca63c2bb90c14207ca28b536d" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::CategoryRenderer::data | (   |     | )   | const |

Returns complete renderer template definition in JSON format.

Returns  
The renderer template (JSON).

<span id="a3236d422bffd659e9e5a8eaae418320c" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>static <a href="index.html" class="el">CategoryRenderer</a> unity::scopes::CategoryRenderer::from_file</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>path</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="index.html" class="el" title="A category renderer template in JSON format. ">CategoryRenderer</a> from a text file.

Returns  
The <a href="index.html" class="el" title="A category renderer template in JSON format. ">CategoryRenderer</a> corresponding to the information in the file.

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
