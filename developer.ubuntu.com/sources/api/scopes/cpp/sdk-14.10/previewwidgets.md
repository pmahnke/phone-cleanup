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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›

<!-- -->

-   Preview widget types

Preview widget types
====================

<span id="previewtypes" class="anchor"></span> Recognized preview widget types
==============================================================================

The following widget types are recognized by Unity:

-   `audio`
-   `video`
-   `image`
-   `gallery`
-   `header`
-   `actions`
-   `progress`
-   `text`
-   `rating-input`
-   `reviews`
-   `expandable`

<span id="audio" class="anchor"></span> audio widget
----------------------------------------------------

The audio widget displays a list of tracks with play/pause controls.

List of attributes:

-   `tracks` A composite attribute containing an array of tuples, where each tuple has up to four fields: `title` (mandatory string), `subtitle` (optional string), `source` (mandatory URI), and `length` (optional integer specifying the track length in seconds)

You can construct composite attributes with <a href="../unity.scopes.VariantBuilder/index.html" class="el" title="Helper class for creating and populating Variant containers. ">unity::scopes::VariantBuilder</a>:

{

PreviewWidget w1(<span class="stringliteral">"tracks"</span>, <span class="stringliteral">"audio"</span>);

VariantBuilder builder;

builder.add\_tuple({

{<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"Track \#1"</span>)},

{<span class="stringliteral">"source"</span>, Variant(<span class="stringliteral">"file:///tmp/song1.mp3"</span>)},

{<span class="stringliteral">"length"</span>, Variant(194)}

});

builder.add\_tuple({

{<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"Track \#2"</span>)},

{<span class="stringliteral">"source"</span>, Variant(<span class="stringliteral">"file:///tmp/song2.mp3"</span>)},

{<span class="stringliteral">"length"</span>, Variant(207)}

});

w1.add\_attribute\_value(<span class="stringliteral">"tracks"</span>, builder.end());

...

}

<span id="video" class="anchor"></span> video widget
----------------------------------------------------

The video widget displays a still from a video and allows playing the video.

List of attributes:

-   `source` A URI pointing to the video
-   `screenshot` A URI pointing to a screenshot of the video (optional)

{

PreviewWidget w1(<span class="stringliteral">"video1"</span>, <span class="stringliteral">"video"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"source"</span>, Variant(<span class="stringliteral">"file:///tmp/video1.mp4"</span>));

...

}

<span id="image" class="anchor"></span> image widget
----------------------------------------------------

The image widget displays a single image.

List of attributes:

-   `source` A URI pointing to the image
-   `zoomable` A boolean specifying whether the image is zoomable (default: `false`)

{

PreviewWidget w1(<span class="stringliteral">"img1"</span>, <span class="stringliteral">"image"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"source"</span>, Variant(<span class="stringliteral">"file:///tmp/image.jpg"</span>));

...

}

<span id="gallery" class="anchor"></span> gallery widget
--------------------------------------------------------

The gallery widget displays a set of images.

List of attributes:

-   `sources` An array of image URIs

{

PreviewWidget w1(<span class="stringliteral">"gal"</span>, <span class="stringliteral">"gallery"</span>);

<a href="../unity.scopes/index.html#aa3bf32d584efd902bca79698a07dd934" class="code">VariantArray</a> arr;

arr.push\_back(Variant(<span class="stringliteral">"file:///tmp/image1.jpg"</span>));

arr.push\_back(Variant(<span class="stringliteral">"file:///tmp/image2.jpg"</span>));

arr.push\_back(Variant(<span class="stringliteral">"file:///tmp/image3.jpg"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"sources"</span>, Variant(arr));

...

}

<span id="header" class="anchor"></span> header widget
------------------------------------------------------

The header widget displays basic infomation about the result.

List of attributes:

-   `title` A string specifying the title
-   `subtitle` A string specifying the subtitle
-   `mascot` A URI specifying the mascot
-   `emblem` A URI specifying the emblem

{

PreviewWidget w1(<span class="stringliteral">"hdr"</span>, <span class="stringliteral">"header"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"Result item"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"mascot"</span>, Variant(<span class="stringliteral">"file:///tmp/mascot.png"</span>));

...

}

<span id="actions" class="anchor"></span> actions widget
--------------------------------------------------------

The actions widget displays one or more buttons.

List of attributes:

-   `actions` A composite attribute containing an array of tuples, where each tuple has at least these fields: `id` (a mandatory string that is passed to unity::scopes::ScopeBase::activate\_preview\_action()), `label` (mandatory string), and `icon` (optional URI).

You can construct composite attributes with <a href="../unity.scopes.VariantBuilder/index.html" class="el" title="Helper class for creating and populating Variant containers. ">unity::scopes::VariantBuilder</a>:

{

PreviewWidget w1(<span class="stringliteral">"buttons"</span>, <span class="stringliteral">"actions"</span>);

VariantBuilder builder;

builder.add\_tuple({

{<span class="stringliteral">"id"</span>, Variant(<span class="stringliteral">"open"</span>)},

{<span class="stringliteral">"label"</span>, Variant(<span class="stringliteral">"Open"</span>)}

});

builder.add\_tuple({

{<span class="stringliteral">"id"</span>, Variant(<span class="stringliteral">"download"</span>)},

{<span class="stringliteral">"label"</span>, Variant(<span class="stringliteral">"Download"</span>)}

});

w1.add\_attribute\_value(<span class="stringliteral">"actions"</span>, builder.end());

...

}

<span id="progress" class="anchor"></span> progress widget
----------------------------------------------------------

The progress widget displays the progress of an action, such as download progress.

On completion, the scope receives a preview action activation with the id `"finished"` or `"failed"`, depending on the outcome of the operation.

List of attributes:

-   `source` A tuple with keys understood by a progress provider

{

PreviewWidget w1(<span class="stringliteral">"download"</span>, <span class="stringliteral">"progress"</span>);

<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="code">VariantMap</a> tuple;

tuple\[<span class="stringliteral">"dbus-name"</span>\] = <span class="stringliteral">"com.canonical.DownloadManager"</span>;

tuple\[<span class="stringliteral">"dbus-object"</span>\] = <span class="stringliteral">"/com/canonical/download/obj1"</span>;

w1.add\_attribute\_value(<span class="stringliteral">"source"</span>, Variant(tuple));

...

}

<span id="text" class="anchor"></span> text widget
--------------------------------------------------

A text widget can be used for text of any length (without formatting).

List of attributes:

-   `title` Optional string
-   `text` A string containing the text

{

PreviewWidget w1(<span class="stringliteral">"summary"</span>, <span class="stringliteral">"text"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"text"</span>, Variant(<span class="stringliteral">"Lorem Ipsum ..."</span>));

...

}

<span id="rating-input" class="anchor"></span> rating-input widget
------------------------------------------------------------------

The rating-input widget allows users to rate content. It consists of two types of widget: a star-based rating and an input field for the user to enter his/her review. It is possible to hide each widget as well as to require them to be filled in.

When a user presses the "Send" button, the scope receives a preview action activation with the id `"rated"`.

List of attributes:

-   `rating-label` String for the star-based rating (default: "Rate this")
-   `review-label` String for the review input (default: "Add a review")
-   `submit-label` String for the confirmation button (default: "Send")
-   `rating-icon-empty` URI for an empty rating icon
-   `rating-icon-full` URI for a full rating icon
-   `visible` String specifying which of the two widgets are visible (`"rating"`, `"review"` or default:`"both"`)
-   `required` String specifying which of the two widgets are required to be filled in (`"rating"`, `"review"` or default:`"both"`)

{

PreviewWidget w1(<span class="stringliteral">"rating"</span>, <span class="stringliteral">"rating-input"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"visible"</span>, Variant(<span class="stringliteral">"rating"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"required"</span>, Variant(<span class="stringliteral">"rating"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"rating-icon-empty"</span>, Variant(<span class="stringliteral">"file:///tmp/star-empty.svg"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"rating-icon-full"</span>, Variant(<span class="stringliteral">"file:///tmp/star-full.svg"</span>));

...

}

<span id="reviews" class="anchor"></span> reviews widget
--------------------------------------------------------

The reviews widget is used to display previously-rated content.

List of attributes:

-   `rating-icon-empty` URI for an empty rating icon
-   `rating-icon-half` URI for an half-full rating icon
-   `rating-icon-full` URI for a full rating icon
-   `reviews` A composite attribute containing an array of tuples, where each tuple has up to three fields: `rating` (optional integer specifying the number of stars), `author` (mandatory string) and `review` (optional string).

You can construct composite attributes with <a href="../unity.scopes.VariantBuilder/index.html" class="el" title="Helper class for creating and populating Variant containers. ">unity::scopes::VariantBuilder</a>:

{

PreviewWidget w1(<span class="stringliteral">"summary"</span>, <span class="stringliteral">"reviews"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"rating-icon-empty"</span>, Variant(<span class="stringliteral">"file:///tmp/star-empty.svg"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"rating-icon-full"</span>, Variant(<span class="stringliteral">"file:///tmp/star-full.svg"</span>));

VariantBuilder builder;

builder.add\_tuple({

{<span class="stringliteral">"author"</span>, Variant(<span class="stringliteral">"John Doe"</span>)},

{<span class="stringliteral">"rating"</span>, Variant(3)}

});

builder.add\_tuple({

{<span class="stringliteral">"author"</span>, Variant(<span class="stringliteral">"Mr. Smith"</span>)},

{<span class="stringliteral">"rating"</span>, Variant(5)}

});

w1.add\_attribute\_value(<span class="stringliteral">"reviews"</span>, builder.end());

...

}

<span id="expandable" class="anchor"></span> expandable widget
--------------------------------------------------------------

The expandable widget is used to group several widgets into an expandable pane.

List of attributes:

-   `title` A string specifying the title
-   `collapsed-widgets` Optional number of collapsed widgets (0 makes all of them visible)

PreviewWidget expandable(<span class="stringliteral">"exp"</span>, <span class="stringliteral">"expandable"</span>);

expandable.add\_attribute\_value(<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"This is an expandable widget"</span>));

expandable.add\_attribute\_value(<span class="stringliteral">"collapsed-widgets"</span>, Variant(0));

PreviewWidget w1(<span class="stringliteral">"w1"</span>, <span class="stringliteral">"text"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"Subwidget 1"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"text"</span>, Variant(<span class="stringliteral">"A text"</span>));

PreviewWidget w2(<span class="stringliteral">"w2"</span>, <span class="stringliteral">"text"</span>);

w2.add\_attribute\_value(<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"Subwidget 2"</span>));

w2.add\_attribute\_value(<span class="stringliteral">"text"</span>, Variant(<span class="stringliteral">"A text"</span>));

expandable.add\_widget(w1);

expandable.add\_widget(w2);

...

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
