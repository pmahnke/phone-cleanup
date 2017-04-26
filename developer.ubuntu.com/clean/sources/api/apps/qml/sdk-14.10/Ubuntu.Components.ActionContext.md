---
Title: Ubuntu.Components.ActionContext
---
        
ActionContext
=============

<span class="subtitle"></span>
ActionContext groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The ActionManager then exposes the actions from these different contexts. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import Ubuntu.Components 1.1` |

<span id="properties"></span>
Properties
----------

-   ****[actions](#actions-prop)**** : list&lt;Action&gt;
-   ****[active](#active-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="qmldefault">default</span><span class="name">actions</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of Actions in this [ActionContext](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-prop"></span><span class="name">active</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

If true the context is active. If false the context is inactive. Defaults to false.

When context has been added to the [ActionManager](../Ubuntu.Components.ActionManager.md) setting this value controls whether or not the actions in a context are available to external components.

The [ActionManager](../Ubuntu.Components.ActionManager.md) monitors the active property of each of the local contexts that has been added to it. There can be only one active local context at a time. When one of the local contexts sets itself active the manager will notice this, export the actions from that given context and set the previously active local context as inactive. This way setting active to true on a local context is sufficient to manage the active local context of the manager and no additional calls are necessary to manually inactivate the other contexts.

