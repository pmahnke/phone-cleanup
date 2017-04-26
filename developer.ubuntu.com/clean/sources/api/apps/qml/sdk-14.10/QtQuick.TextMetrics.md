---
Title: QtQuick.TextMetrics
---
        
TextMetrics
===========

<span class="subtitle"></span>
Provides a Context2D TextMetrics interface More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | `import QtQuick 2.2` |
| Since:            | Qt 5.0               |

<span id="properties"></span>
Properties
----------

-   ****[width](#width-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The TextMetrics object can be created by [QtQuick::Context2D::measureText](../QtQuick.Context2D.md#measureText-method) method. See [W3C 2d context TexMetrics](http://www.w3.org/TR/2dcontext/#textmetrics) for more details.

**See also** [Context2D::measureText](../QtQuick.Context2D.md#measureText-method) and [width](#width-prop).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="width-prop"></span><span class="name">width</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Holds the advance width of the text that was passed to the [QtQuick::Context2D::measureText()](../QtQuick.Context2D.md#measureText-method) method. This property is read only.

