---
Title: QtQuick.Particles.Age
---
        
Age
===

<span class="subtitle"></span>
For altering particle ages More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick.Particles 2.0</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Particles.Affector.md">Affector</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[advancePosition](#advancePosition-prop)**** : bool
-   ****[lifeLeft](#lifeLeft-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The Age affector allows you to alter where the particle is in its lifecycle. Common uses are to expire particles prematurely, possibly giving them time to animate out.

The Age affector is also sometimes known as a 'Kill' affector, because with the default parameters it will immediately expire all particles which it affects.

The Age affector only applies to particles which are still alive.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="advancePosition-prop"></span><span class="name">advancePosition</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

advancePosition determines whether position, veclocity and acceleration are included in the simulated aging done by the affector. If advancePosition is false, then the position, velocity and acceleration will remain the same and only other attributes (such as opacity) will advance in the simulation to where it would normally be for that point in the particle's life. With advancePosition set to true the position, velocity and acceleration will also advance to where it would normally be by that point in the particle's life, making it advance its position on screen.

Default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lifeLeft-prop"></span><span class="name">lifeLeft</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The amount of life to set the particle to have. Affected particles will advance to a point in their life where they will have this many milliseconds left to live.

