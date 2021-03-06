---
Title: QtOrganizer.TodoOccurrence
---

# QtOrganizer.TodoOccurrence

<span class="subtitle"></span>
<!-- $$$TodoOccurrence-brief -->
<p>The TodoOccurrence element provides an occurrence of an event. More...</p>
<!-- @@@TodoOccurrence -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#allDay-prop">allDay</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#dueDateTime-prop">dueDateTime</a></b></b> : date</li>
<li class="fn"><b><b><a href="#finishedDateTime-prop">finishedDateTime</a></b></b> : date</li>
<li class="fn"><b><b><a href="#originalDate-prop">originalDate</a></b></b> : date</li>
<li class="fn"><b><b><a href="#parentId-prop">parentId</a></b></b> : int</li>
<li class="fn"><b><b><a href="#percentageComplete-prop">percentageComplete</a></b></b> : int</li>
<li class="fn"><b><b><a href="#priority-prop">priority</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#startDateTime-prop">startDateTime</a></b></b> : date</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onItemChanged-signal">onItemChanged</a></b></b>()</li>
</ul>
<!-- $$$TodoOccurrence-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>See also </b>OrganizerItem, Event, EventOccurrence, Journal, Todo, Note, and QOrganizerTodoOccurrence.</p>
<!-- @@@TodoOccurrence -->
<h2>Property Documentation</h2>
<!-- $$$allDay -->
<table class="qmlname"><tr valign="top" id="allDay-prop"><td class="tblQmlPropNode"><p><span class="name">allDay</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether the time-of-day component of the todo occurrence's start date-time or due date-time is insignificant. If allDay is true, the time-of-day component is considered insignificant, and the todo occurrence will be an all-day item.</p>
<!-- @@@allDay -->
<br/>
<!-- $$$dueDateTime -->
<table class="qmlname"><tr valign="top" id="dueDateTime-prop"><td class="tblQmlPropNode"><p><span class="name">dueDateTime</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the date time by which the task should be completed.</p>
<!-- @@@dueDateTime -->
<br/>
<!-- $$$finishedDateTime -->
<table class="qmlname"><tr valign="top" id="finishedDateTime-prop"><td class="tblQmlPropNode"><p><span class="name">finishedDateTime</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the date and time at which the task was completed, if known.</p>
<!-- @@@finishedDateTime -->
<br/>
<!-- $$$originalDate -->
<table class="qmlname"><tr valign="top" id="originalDate-prop"><td class="tblQmlPropNode"><p><span class="name">originalDate</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the date at which the occurrence was originally going to occur.</p>
<!-- @@@originalDate -->
<br/>
<!-- $$$parentId -->
<table class="qmlname"><tr valign="top" id="parentId-prop"><td class="tblQmlPropNode"><p><span class="name">parentId</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the id of the todo which is this occurrence's parent.</p>
<!-- @@@parentId -->
<br/>
<!-- $$$percentageComplete -->
<table class="qmlname"><tr valign="top" id="percentageComplete-prop"><td class="tblQmlPropNode"><p><span class="name">percentageComplete</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the percentage of progress completed on the task described by the todo item.</p>
<!-- @@@percentageComplete -->
<br/>
<!-- $$$priority -->
<table class="qmlname"><tr valign="top" id="priority-prop"><td class="tblQmlPropNode"><p><span class="name">priority</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the priority of the todo occurrence. The value can be one of:</p>
<ul>
<li>Priority.Unknown</li>
<li>Priority.Highest</li>
<li>Priority.ExtremelyHigh</li>
<li>Priority.VeryHigh</li>
<li>Priority.High</li>
<li>Priority.Medium</li>
<li>Priority.Low</li>
<li>Priority.VeryLow</li>
<li>Priority.ExtremelyLow</li>
<li>Priority.Lowest</li>
</ul>
<!-- @@@priority -->
<br/>
<!-- $$$startDateTime -->
<table class="qmlname"><tr valign="top" id="startDateTime-prop"><td class="tblQmlPropNode"><p><span class="name">startDateTime</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the date time at which the task should be started.</p>
<!-- @@@startDateTime -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the progress status of the task described by the todo occurrence. The value can be one of:</p>
<ul>
<li><a href="QtOrganizer.TodoProgress.md">TodoProgress</a>.NotStarted</li>
<li><a href="QtOrganizer.TodoProgress.md">TodoProgress</a>.InProgress</li>
<li><a href="QtOrganizer.TodoProgress.md">TodoProgress</a>.Complete</li>
</ul>
<!-- @@@status -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onItemChanged -->
<table class="qmlname"><tr valign="top" id="onItemChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onItemChanged</span>()</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.OrganizerItem.md#onItemChanged-signal">OrganizerItem::onItemChanged</a>.</p>
<!-- @@@onItemChanged -->
<br/>
