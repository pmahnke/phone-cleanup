---
Title: QtQuick.ScaleAnimator
---
        
ScaleAnimator
=============

<span class="subtitle"></span>
The ScaleAnimator type animates the scale factor of an Item. More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | `import QtQuick 2.2` |
| Since:            | Qt 5.2               |

<span id="details"></span>
Detailed Description
--------------------

[Animator](../QtQuick.Animator.md) types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of [Item::scale](../QtQuick.Item.md#scale-prop) is updated after the animation has finished.

The following snippet shows how to use a ScaleAnimator together with a Rectangle item.

``` qml
Rectangle {
    id: scalingBox
    width: 50
    height: 50
    color: "lightsteelblue"
    ScaleAnimator {
        target: scalingBox;
        from: 0.5;
        to: 1;
        duration: 1000
        running: true
    }
}
```

It is also possible to use the `on` keyword to tie the ScaleAnimator directly to an Item instance.

``` qml
Rectangle {
    width: 50
    height: 50
    color: "lightsteelblue"
    ScaleAnimator on scale {
        from: 0.5;
        to: 1;
        duration: 1000
    }
}
```

**See also** [Item::transformOrigin](../QtQuick.Item.md#transformOrigin-prop) and [RotationAnimator](../QtQuick.RotationAnimator.md).

