---
Title: previewwidgets
---

# previewwidgets

<h1>
Recognized preview widget types</h1>
<p>The following widget types are recognized by Unity: </p><ul>
<li><code>audio</code> </li>
<li><code>video</code> </li>
<li><code>image</code> </li>
<li><code>gallery</code> </li>
<li><code>header</code> </li>
<li><code>actions</code> </li>
<li><code>progress</code> </li>
<li><code>text</code> </li>
<li><code>rating-input</code> </li>
<li><code>reviews</code> </li>
<li><code>expandable</code> </li>
</ul>
<h2>
audio widget</h2>
<p>The audio widget displays a list of tracks with play/pause controls.</p>
<p>List of attributes:</p>
<ul>
<li><code>tracks</code> A composite attribute containing an array of tuples, where each tuple has up to four fields: <code>title</code> (mandatory string), <code>subtitle</code> (optional string), <code>source</code> (mandatory URI), and <code>length</code> (optional integer specifying the track length in seconds)</li>
</ul>
<p>You can construct composite attributes with <a class="el" href="unity.scopes.VariantBuilder.md" title="Helper class for creating and populating Variant containers. ">unity::scopes::VariantBuilder</a>:</p>
```
{
PreviewWidget w1(<span class="stringliteral">&quot;tracks&quot;</span>, <span class="stringliteral">&quot;audio&quot;</span>);
VariantBuilder builder;
builder.add_tuple({
{<span class="stringliteral">&quot;title&quot;</span>, Variant(<span class="stringliteral">&quot;Track #1&quot;</span>)},
{<span class="stringliteral">&quot;source&quot;</span>, Variant(<span class="stringliteral">&quot;file:///tmp/song1.mp3&quot;</span>)},
{<span class="stringliteral">&quot;length&quot;</span>, Variant(194)}
});
builder.add_tuple({
{<span class="stringliteral">&quot;title&quot;</span>, Variant(<span class="stringliteral">&quot;Track #2&quot;</span>)},
{<span class="stringliteral">&quot;source&quot;</span>, Variant(<span class="stringliteral">&quot;file:///tmp/song2.mp3&quot;</span>)},
{<span class="stringliteral">&quot;length&quot;</span>, Variant(207)}
});
w1.add_attribute_value(<span class="stringliteral">&quot;tracks&quot;</span>, builder.end());
...
}
```
<h2>
video widget</h2>
<p>The video widget displays a still from a video and allows playing the video.</p>
<p>List of attributes:</p>
<ul>
<li><code>source</code> A URI pointing to the video </li>
<li><code>screenshot</code> A URI pointing to a screenshot of the video (optional)</li>
</ul>
```
{
PreviewWidget w1(<span class="stringliteral">&quot;video1&quot;</span>, <span class="stringliteral">&quot;video&quot;</span>);
w1.add_attribute_value(<span class="stringliteral">&quot;source&quot;</span>, Variant(<span class="stringliteral">&quot;file:///tmp/video1.mp4&quot;</span>));
...
}
```
<h2>
image widget</h2>
<p>The image widget displays a single image.</p>
<p>List of attributes:</p>
<ul>
<li><code>source</code> A URI pointing to the image </li>
<li><code>zoomable</code> A boolean specifying whether the image is zoomable (default: <code>false</code>) </li>
<li><code>fallback</code> A fallback image to be used if the image URI cannot be retrieved (default: none)</li>
</ul>
```
{
PreviewWidget w1(<span class="stringliteral">&quot;img1&quot;</span>, <span class="stringliteral">&quot;image&quot;</span>);
w1.add_attribute_value(<span class="stringliteral">&quot;source&quot;</span>, Variant(<span class="stringliteral">&quot;http://example.com/image.jpg&quot;</span>));
w1.add_attribute_value(<span class="stringliteral">&quot;fallback&quot;</span>, Variant(<span class="stringliteral">&quot;file:///tmp/image.jpg&quot;</span>));
...
}
```
<h2>
gallery widget</h2>
<p>The gallery widget displays a set of images.</p>
<p>List of attributes:</p>
<ul>
<li><code>sources</code> An array of image URIs </li>
<li><code>fallback</code> A fallback image to be used if an image URI cannot be resolved (default: none)</li>
</ul>
```
{
PreviewWidget w1(<span class="stringliteral">&quot;gal&quot;</span>, <span class="stringliteral">&quot;gallery&quot;</span>);
<a class="code" href="unity.scopes.md#aa3bf32d584efd902bca79698a07dd934">VariantArray</a> arr;
arr.push_back(Variant(<span class="stringliteral">&quot;http://example.com/image1.jpg&quot;</span>));
arr.push_back(Variant(<span class="stringliteral">&quot;file:///tmp/image2.jpg&quot;</span>));
arr.push_back(Variant(<span class="stringliteral">&quot;file:///tmp/image3.jpg&quot;</span>));
w1.add_attribute_value(<span class="stringliteral">&quot;sources&quot;</span>, Variant(arr));
w1.add_attribute_value(<span class="stringliteral">&quot;fallback&quot;</span>, Variant(<span class="stringliteral">&quot;file:///tmp/fallback.png&quot;</span>));
...
}
```
<h2>
header widget</h2>
<p>The header widget displays basic infomation about the result.</p>
<p>List of attributes:</p>
<ul>
<li><code>title</code> A string specifying the title </li>
<li><code>subtitle</code> A string specifying the subtitle </li>
<li><code>mascot</code> A URI specifying the mascot </li>
<li><code>fallback</code> A fallback image to be used if the mascot URI cannot be retrieved (default: none) </li>
<li><code>emblem</code> A URI specifying the emblem</li>
</ul>
```
{
PreviewWidget w1(<span class="stringliteral">&quot;hdr&quot;</span>, <span class="stringliteral">&quot;header&quot;</span>);
w1.add_attribute_value(<span class="stringliteral">&quot;title&quot;</span>, Variant(<span class="stringliteral">&quot;Result item&quot;</span>));
w1.add_attribute_value(<span class="stringliteral">&quot;mascot&quot;</span>, Variant(<span class="stringliteral">&quot;http://example.com/image.png&quot;</span>));
w1.add_attribute_value(<span class="stringliteral">&quot;fallback&quot;</span>, Variant(<span class="stringliteral">&quot;file:///tmp/fallback_mascot.png&quot;</span>));
...
}
```
<h2>
actions widget</h2>
<p>The actions widget displays one or more buttons.</p>
<p>List of attributes:</p>
<ul>
<li><code>actions</code> A composite attribute containing an array of tuples, where each tuple has at least these fields: <code>id</code> (a mandatory string that is passed to unity::scopes::ScopeBase::activate_preview_action()), <code>label</code> (mandatory string), and <code>icon</code> (optional URI).</li>
</ul>
<p>You can construct composite attributes with <a class="el" href="unity.scopes.VariantBuilder.md" title="Helper class for creating and populating Variant containers. ">unity::scopes::VariantBuilder</a>:</p>
```
{
PreviewWidget w1(<span class="stringliteral">&quot;buttons&quot;</span>, <span class="stringliteral">&quot;actions&quot;</span>);
VariantBuilder builder;
builder.add_tuple({
{<span class="stringliteral">&quot;id&quot;</span>, Variant(<span class="stringliteral">&quot;open&quot;</span>)},
{<span class="stringliteral">&quot;label&quot;</span>, Variant(<span class="stringliteral">&quot;Open&quot;</span>)}
});
builder.add_tuple({
{<span class="stringliteral">&quot;id&quot;</span>, Variant(<span class="stringliteral">&quot;download&quot;</span>)},
{<span class="stringliteral">&quot;label&quot;</span>, Variant(<span class="stringliteral">&quot;Download&quot;</span>)}
});
w1.add_attribute_value(<span class="stringliteral">&quot;actions&quot;</span>, builder.end());
...
}
```
<h2>
progress widget</h2>
<p>The progress widget displays the progress of an action, such as download progress.</p>
<p>On completion, the scope receives a preview action activation with the id <code>"finished"</code> or <code>"failed"</code>, depending on the outcome of the operation.</p>
<p>List of attributes:</p>
<ul>
<li><code>source</code> A tuple with keys understood by a progress provider</li>
</ul>
```
{
PreviewWidget w1(<span class="stringliteral">&quot;download&quot;</span>, <span class="stringliteral">&quot;progress&quot;</span>);
<a class="code" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> tuple;
tuple[<span class="stringliteral">&quot;dbus-name&quot;</span>] = <span class="stringliteral">&quot;com.canonical.DownloadManager&quot;</span>;
tuple[<span class="stringliteral">&quot;dbus-object&quot;</span>] = <span class="stringliteral">&quot;/com/canonical/download/obj1&quot;</span>;
w1.add_attribute_value(<span class="stringliteral">&quot;source&quot;</span>, Variant(tuple));
...
}
```
<h2>
text widget</h2>
<p>A text widget can be used for text of any length (without formatting).</p>
<p>List of attributes:</p>
<ul>
<li><code>title</code> Optional string </li>
<li><code>text</code> A string containing the text</li>
</ul>
```
{
PreviewWidget w1(<span class="stringliteral">&quot;summary&quot;</span>, <span class="stringliteral">&quot;text&quot;</span>);
w1.add_attribute_value(<span class="stringliteral">&quot;text&quot;</span>, Variant(<span class="stringliteral">&quot;Lorem Ipsum ...&quot;</span>));
...
}
```
<h2>
rating-input widget</h2>
<p>The rating-input widget allows users to rate content. It consists of two types of widget: a star-based rating and an input field for the user to enter his/her review. It is possible to hide each widget as well as to require them to be filled in.</p>
<p>When a user presses the "Send" button, the scope receives a preview action activation with the id <code>"rated"</code>. The actual rating and/or review can be accessed via <a class="el" href="unity.scopes.ActionMetadata.md#a34777e687ce700a7b6313f3dad6d3340" title="Get data attached to this ActionMetadata. ">unity::scopes::ActionMetadata::scope_data</a>. The scope data will be a VariantMap with the following keys:</p>
<ul>
<li><code>"rating"</code> - a double holding the number of stars the user selected (1 to 5)</li>
<li><code>"review"</code> - a string holding the free text review</li>
</ul>
<p>List of attributes:</p>
<ul>
<li><code>rating-label</code> String for the star-based rating (default: "Rate this") </li>
<li><code>review-label</code> String for the review input (default: "Add a review") </li>
<li><code>submit-label</code> String for the confirmation button (default: "Send") </li>
<li><code>rating-icon-empty</code> URI for an empty rating icon </li>
<li><code>rating-icon-full</code> URI for a full rating icon </li>
<li><code>visible</code> String specifying which of the two widgets are visible (<code>"rating"</code>, <code>"review"</code> or default:<code>"both"</code>) </li>
<li><code>required</code> String specifying which of the two widgets are required to be filled in (<code>"rating"</code>, <code>"review"</code> or default:<code>"both"</code>)</li>
</ul>
```
{
PreviewWidget w1(<span class="stringliteral">&quot;rating&quot;</span>, <span class="stringliteral">&quot;rating-input&quot;</span>);
w1.add_attribute_value(<span class="stringliteral">&quot;visible&quot;</span>, Variant(<span class="stringliteral">&quot;rating&quot;</span>));
w1.add_attribute_value(<span class="stringliteral">&quot;required&quot;</span>, Variant(<span class="stringliteral">&quot;rating&quot;</span>));
w1.add_attribute_value(<span class="stringliteral">&quot;rating-icon-empty&quot;</span>, Variant(<span class="stringliteral">&quot;file:///tmp/star-empty.svg&quot;</span>));
w1.add_attribute_value(<span class="stringliteral">&quot;rating-icon-full&quot;</span>, Variant(<span class="stringliteral">&quot;file:///tmp/star-full.svg&quot;</span>));
...
}
```
<h2>
reviews widget</h2>
<p>The reviews widget is used to display previously-rated content.</p>
<p>List of attributes:</p>
<ul>
<li><code>rating-icon-empty</code> URI for an empty rating icon </li>
<li><code>rating-icon-half</code> URI for an half-full rating icon </li>
<li><code>rating-icon-full</code> URI for a full rating icon </li>
<li><code>reviews</code> A composite attribute containing an array of tuples, where each tuple has up to three fields: <code>rating</code> (optional integer specifying the number of stars), <code>author</code> (mandatory string) and <code>review</code> (optional string).</li>
</ul>
<p>You can construct composite attributes with <a class="el" href="unity.scopes.VariantBuilder.md" title="Helper class for creating and populating Variant containers. ">unity::scopes::VariantBuilder</a>:</p>
```
{
PreviewWidget w1(<span class="stringliteral">&quot;summary&quot;</span>, <span class="stringliteral">&quot;reviews&quot;</span>);
w1.add_attribute_value(<span class="stringliteral">&quot;rating-icon-empty&quot;</span>, Variant(<span class="stringliteral">&quot;file:///tmp/star-empty.svg&quot;</span>));
w1.add_attribute_value(<span class="stringliteral">&quot;rating-icon-full&quot;</span>, Variant(<span class="stringliteral">&quot;file:///tmp/star-full.svg&quot;</span>));
VariantBuilder builder;
builder.add_tuple({
{<span class="stringliteral">&quot;author&quot;</span>, Variant(<span class="stringliteral">&quot;John Doe&quot;</span>)},
{<span class="stringliteral">&quot;rating&quot;</span>, Variant(3)}
});
builder.add_tuple({
{<span class="stringliteral">&quot;author&quot;</span>, Variant(<span class="stringliteral">&quot;Mr. Smith&quot;</span>)},
{<span class="stringliteral">&quot;rating&quot;</span>, Variant(5)}
});
w1.add_attribute_value(<span class="stringliteral">&quot;reviews&quot;</span>, builder.end());
...
}
```
<h2>
expandable widget</h2>
<p>The expandable widget is used to group several widgets into an expandable pane.</p>
<p>List of attributes: </p><ul>
<li><code>title</code> A string specifying the title </li>
<li><code>collapsed-widgets</code> Optional number of collapsed widgets (0 makes all of them visible)</li>
</ul>
```
PreviewWidget expandable(<span class="stringliteral">&quot;exp&quot;</span>, <span class="stringliteral">&quot;expandable&quot;</span>);
expandable.add_attribute_value(<span class="stringliteral">&quot;title&quot;</span>, Variant(<span class="stringliteral">&quot;This is an expandable widget&quot;</span>));
expandable.add_attribute_value(<span class="stringliteral">&quot;collapsed-widgets&quot;</span>, Variant(0));
PreviewWidget w1(<span class="stringliteral">&quot;w1&quot;</span>, <span class="stringliteral">&quot;text&quot;</span>);
w1.add_attribute_value(<span class="stringliteral">&quot;title&quot;</span>, Variant(<span class="stringliteral">&quot;Subwidget 1&quot;</span>));
w1.add_attribute_value(<span class="stringliteral">&quot;text&quot;</span>, Variant(<span class="stringliteral">&quot;A text&quot;</span>));
PreviewWidget w2(<span class="stringliteral">&quot;w2&quot;</span>, <span class="stringliteral">&quot;text&quot;</span>);
w2.add_attribute_value(<span class="stringliteral">&quot;title&quot;</span>, Variant(<span class="stringliteral">&quot;Subwidget 2&quot;</span>));
w2.add_attribute_value(<span class="stringliteral">&quot;text&quot;</span>, Variant(<span class="stringliteral">&quot;A text&quot;</span>));
expandable.add_widget(w1);
expandable.add_widget(w2);
...
