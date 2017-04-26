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

-   ValueSliderLabels

ValueSliderLabels
=================

Labels used by a <a href="../unity.scopes.ValueSliderFilter/index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. [More...](index.html#details)

`#include <unity/scopes/ValueSliderLabels.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#aee36eeedc9ec3d756e4b093575a5431e" class="el">ValueSliderLabels</a> (std::string const &<a href="index.html#a199d67722ee50d4eec47c2f089670cf2" class="el">min_label</a>, std::string const &<a href="index.html#a5f471aecdaa04dbdf13112a74f524a86" class="el">max_label</a>)
 
Create a ValueSliderLabels instance with labels for minimum and maximum values only. More...
 
 
<a href="index.html#a6b31441606d8e090cad12908800fb409" class="el">ValueSliderLabels</a> (std::string const &<a href="index.html#a199d67722ee50d4eec47c2f089670cf2" class="el">min_label</a>, std::string const &<a href="index.html#a5f471aecdaa04dbdf13112a74f524a86" class="el">max_label</a>, <a href="../unity.scopes/index.html#aa2ccb5d7acadeb38f44e9405f1b55c6b" class="el">ValueLabelPairList</a> const &<a href="index.html#adcd0e3d956206f272b6fec704b87a386" class="el">extra_labels</a>)
 
Create a ValueSliderLabels instance with labels for minimum and maximum, as well as extra labels. More...
 
std::string 
<a href="index.html#a199d67722ee50d4eec47c2f089670cf2" class="el">min_label</a> () const
 
Get the label for the minimum value of the filter. More...
 
std::string 
<a href="index.html#a5f471aecdaa04dbdf13112a74f524a86" class="el">max_label</a> () const
 
Get the label for the maximum value of the filter. More...
 
<span id="adcd0e3d956206f272b6fec704b87a386" class="anchor"></span> <a href="../unity.scopes/index.html#aa2ccb5d7acadeb38f44e9405f1b55c6b" class="el">ValueLabelPairList</a> 
<a href="index.html#adcd0e3d956206f272b6fec704b87a386" class="el">extra_labels</a> () const
 
Get the labels for intermediate values of the filter.
 
Copy and assignment

Copy and assignment (move and non-move versions) have the usual value semantics.

<span id="a5f5df72206034763f06fc27bc948f148" class="anchor"></span>  
**ValueSliderLabels** (<a href="index.html" class="el">ValueSliderLabels</a> const &other)
 
<span id="a7547d9304f3556e909ccbba873028c70" class="anchor"></span>  
**ValueSliderLabels** (<a href="index.html" class="el">ValueSliderLabels</a> &&)
 
<span id="a2663d22111d07dd91d54e0b8e73fe939" class="anchor"></span> <a href="index.html" class="el">ValueSliderLabels</a> & 
**operator=** (<a href="index.html" class="el">ValueSliderLabels</a> const &other)
 
<span id="ab96f23678cef47269d0571bcefae3106" class="anchor"></span> <a href="index.html" class="el">ValueSliderLabels</a> & 
**operator=** (<a href="index.html" class="el">ValueSliderLabels</a> &&)
 
<span id="a583ed4b6a0b0e341c99385b82952ab43" class="anchor"></span>  
**~ValueSliderLabels** ()
 
<span id="details"></span>
Detailed Description
--------------------

Labels used by a <a href="../unity.scopes.ValueSliderFilter/index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>.

The <a href="index.html" class="el" title="Labels used by a ValueSliderFilter. ">ValueSliderLabels</a> class holds labels for a <a href="../unity.scopes.ValueSliderFilter/index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. Labels for the minimum and maximum values must be provided. In addition, an arbitrary number of extra labels can be defined; these labels mark intermediate values between the minimum and maximum value.

Constructor & Destructor Documentation
--------------------------------------

<span id="aee36eeedc9ec3d756e4b093575a5431e" class="anchor"></span>
|                                                     |     |                      |               |
|-----------------------------------------------------|-----|----------------------|---------------|
| unity::scopes::ValueSliderLabels::ValueSliderLabels | (   | std::string const &  | *min\_label*, |
|                                                     |     | std::string const &  | *max\_label*  |
|                                                     | )   |                      |               |

Create a <a href="index.html" class="el" title="Labels used by a ValueSliderFilter. ">ValueSliderLabels</a> instance with labels for minimum and maximum values only.

Exceptions  
|                                 |                                           |
|---------------------------------|-------------------------------------------|
| unity::InvalidArgumentException | for invalid (empty or duplicated) labels. |

<span id="a6b31441606d8e090cad12908800fb409" class="anchor"></span>
|                                                     |     |                                                                                                                   |                  |
|-----------------------------------------------------|-----|-------------------------------------------------------------------------------------------------------------------|------------------|
| unity::scopes::ValueSliderLabels::ValueSliderLabels | (   | std::string const &                                                                                               | *min\_label*,    |
|                                                     |     | std::string const &                                                                                               | *max\_label*,    |
|                                                     |     | <a href="../unity.scopes/index.html#aa2ccb5d7acadeb38f44e9405f1b55c6b" class="el">ValueLabelPairList</a> const &  | *extra\_labels*  |
|                                                     | )   |                                                                                                                   |                  |

Create a <a href="index.html" class="el" title="Labels used by a ValueSliderFilter. ">ValueSliderLabels</a> instance with labels for minimum and maximum, as well as extra labels.

Note that any extra labels act only as a guidance for the user (i.e. they do not limit the available choices). The Unity shell is free to omit some or all of the labels depending on the available screen space.

Parameters  
|               |                                                                                                                                                                                                                                      |
|---------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| min\_label    | The label for minimum value of the associated <a href="../unity.scopes.ValueSliderFilter/index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> filter. |
| max\_label    | The label for maximum value of the associated <a href="../unity.scopes.ValueSliderFilter/index.html" class="el" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> filter. |
| extra\_labels | Additional labels for values between minimum and maximum values.                                                                                                                                                                     |

<!-- -->

Exceptions  
|                                 |                                                                       |
|---------------------------------|-----------------------------------------------------------------------|
| unity::InvalidArgumentException | on invalid labels (empty or duplicate labels, non-increasing values). |

Member Function Documentation
-----------------------------

<span id="a5f471aecdaa04dbdf13112a74f524a86" class="anchor"></span>
|                                                          |     |     |     |       |
|----------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ValueSliderLabels::max\_label | (   |     | )   | const |

Get the label for the maximum value of the filter.

Returns  
The label for the maximum value

<span id="a199d67722ee50d4eec47c2f089670cf2" class="anchor"></span>
|                                                          |     |     |     |       |
|----------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ValueSliderLabels::min\_label | (   |     | )   | const |

Get the label for the minimum value of the filter.

Returns  
The label for the minimum value

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
