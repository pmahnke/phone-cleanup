---
Title: Ubuntu.Components.InverseMouse
---
        
InverseMouse
============

<span class="subtitle"></span>
Attached object filtering mouse events occured outside the owner. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import Ubuntu.Components 1.1` |

<span id="details"></span>
Detailed Description
--------------------

Similar to Mouse filter attached property, provides mouse event filtering capabilities but for events occurring outside of the owner's area, excluding the input method area.

Being derived from Mouse filter element, provides the same behavior as the Mouse filter, except that all the signals are emitted when the mouse event occurs outside the owner's area. Note that accepting composed mouse events does not have any effect on event propagation.

Altering *priority* property has no effect on inverse mouse filter as mouse events captured by the filter are not forwarded to the owner, hence forwarding those events first to the owner will not have any effect.

