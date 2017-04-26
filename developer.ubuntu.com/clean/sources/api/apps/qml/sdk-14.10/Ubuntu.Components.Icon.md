---
Title: Ubuntu.Components.Icon
---
        
Icon
====

<span class="subtitle"></span>
The Icon component displays an icon from the icon theme. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import Ubuntu.Components 1.1` |

<span id="properties"></span>
Properties
----------

-   ****[color](#color-prop)**** : color
-   ****[keyColor](#keyColor-prop)**** : color
-   ****[name](#name-prop)**** : string
-   ****[source](#source-prop)**** : url

<span id="details"></span>
Detailed Description
--------------------

The icon theme contains a set of standard icons referred to by their name. Using icons whenever possible enhances consistency accross applications. Each icon has a name and can have different visual representations depending on the size requested.

Icons can also be colorized. Setting the [color](#color-prop) property will make all pixels with the [keyColor](#keyColor-prop) (by default \#808080) colored.

Example:

``` qml
Icon {
    width: 64
    height: 64
    name: "search"
}
```

Example of colorization:

``` qml
Icon {
    width: 64
    height: 64
    name: "search"
    color: UbuntuColors.warmGrey
}
```

Icon themes are created following the [Freedesktop Icon Theme Specification](http://standards.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-color.html">color</a></span></p></td>
</tr>
</tbody>
</table>

The color that all pixels that originally are of color [keyColor](#keyColor-prop) should take.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keyColor-prop"></span><span class="name">keyColor</span> : <span class="type"><a href="#color-prop">color</a></span></p></td>
</tr>
</tbody>
</table>

The color of the pixels that should be colorized. By default it is set to \#808080.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The name of the icon to display.

If both name and source are set, name will be ignored.

**Note:** The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:

-   Ubuntu Touch: /usr/share/icons/suru
-   Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The source url of the icon to display. It has precedence over name.

If both name and source are set, name will be ignored.

This QML property was introduced in Ubuntu.Components 1.1.

