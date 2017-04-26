---
Title: U1db.Synchronizer
---

# U1db.Synchronizer

<!-- $$$Synchronizer-brief -->
<p>The Synchronizer class handles synchronizing between two databases. More...</p>
<!-- @@@Synchronizer -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Header:</td><td class="memItemRight bottomAlign"> </b><tt><span class="preprocessor">#include &lt;Synchronizer&gt;</span>
</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<table class="propsummary">
<tr><td class="topAlign"><ul>
<li class="fn"><b><a href="#resolve_to_source-prop">resolve_to_source</a></b> : bool</li>
<li class="fn"><b><a href="#source-prop">source</a></b> : Database *</li>
<li class="fn"><b><a href="#sync_output-prop">sync_output</a></b> : const QList&lt;QVariant&gt;</li>
</ul></td><td class="topAlign"><ul>
<li class="fn"><b><a href="#synchronize-prop">synchronize</a></b> : bool</li>
<li class="fn"><b><a href="#targets-prop">targets</a></b> : QVariant</li>
</ul>
</td></tr>
</table>
<h2>Public Functions</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> </td><td class="memItemRight bottomAlign"><b><a href="#Synchronizer">Synchronizer</a></b>(QObject *<i> parent</i> = 0)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> bool </td><td class="memItemRight bottomAlign"><b><a href="#resolve_to_source-prop">getResolveToSource</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> Database * </td><td class="memItemRight bottomAlign"><b><a href="#source-prop">getSource</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> bool </td><td class="memItemRight bottomAlign"><b><a href="#synchronize-prop">getSync</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QList&lt;QVariant&gt; </td><td class="memItemRight bottomAlign"><b><a href="#sync_output-prop">getSyncOutput</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QVariant </td><td class="memItemRight bottomAlign"><b><a href="#targets-prop">getTargets</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#resolve_to_source-prop">setResolveToSource</a></b>(bool<i> resolve_to_source</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#source-prop">setSource</a></b>(Database *<i> source</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#synchronize-prop">setSync</a></b>(bool<i> synchronize</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setSyncOutput">setSyncOutput</a></b>(QList&lt;QVariant&gt;<i> sync_output</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#targets-prop">setTargets</a></b>(QVariant<i> targets</i>)</td></tr>
</table>
<!-- $$$Synchronizer-description -->
<h2>Detailed Description</h2>
<p>The Synchronizer class handles synchronizing between two databases.</p>
<!-- @@@Synchronizer -->
<h2>Property Documentation</h2>
<!-- $$$resolve_to_source-prop$$$getResolveToSource$$$setResolveToSourcebool -->
<h3 class="fn"><span class="name">resolve_to_source</span> : <span class="type">bool</span></h3>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> bool </td><td class="memItemRight bottomAlign"><span class="name"><b>getResolveToSource</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setResolveToSource</b></span>(bool<i> resolve_to_source</i>)</td></tr>
</table>
<!-- @@@resolve_to_source -->
<!-- $$$source-prop$$$getSource$$$setSourceDatabase* -->
<h3 class="fn"><span class="name">source</span> : <span class="type"><a href="U1db.Database.md">Database</a></span> *</h3>
<p>Returns a source Database.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> Database * </td><td class="memItemRight bottomAlign"><span class="name"><b>getSource</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setSource</b></span>(Database *<i> source</i>)</td></tr>
</table>
<!-- @@@source -->
<!-- $$$sync_output-prop$$$getSyncOutput -->
<h3 class="fn"><span class="name">sync_output</span> : const <span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt;</h3>
<p>This property holds synchronizer::getSyncOutput.</p>
<p>Returns the output from a sync session. The list should contain numerous QVariantMaps, each of which will have various meta-data with informative information about what happened in the background of the session.</p>
<p>In some cases the information will be about errors or warnings, and in other cases simple log messages. Also included would noramlly be associated properties, elements and other data.</p>
<p>The information can be used in any number of ways, such as on screen within an app, testing, console output, logs and more. This is designed to be flexible enough that the app developer can decide themselves how to best use the data.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QList&lt;QVariant&gt; </td><td class="memItemRight bottomAlign"><span class="name"><b>getSyncOutput</b></span>()</td></tr>
</table>
<!-- @@@sync_output -->
<!-- $$$synchronize-prop$$$getSync$$$setSyncbool -->
<h3 class="fn"><span class="name">synchronize</span> : <span class="type">bool</span></h3>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> bool </td><td class="memItemRight bottomAlign"><span class="name"><b>getSync</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setSync</b></span>(bool<i> synchronize</i>)</td></tr>
</table>
<!-- @@@synchronize -->
<!-- $$$targets-prop$$$getTargets$$$setTargetsQVariant -->
<h3 class="fn"><span class="name">targets</span> : <span class="type">QVariant</span></h3>
<p>Sets meta-data for databases to be used during a synchronization session.</p>
<p>The QVariant is a list that can contain definitions for more than one database to be used as a target. For example:</p>
<p>targets: [{remote:true}, {remote:true, ip:&quot;127.0&#x2e;0&#x2e;1&quot;, port: 7777, name:&quot;example1.u1db&quot;, <a href="#resolve_to_source-prop">resolve_to_source</a>:true}, {remote:&quot;OK&quot;}]</p>
<p>The above example defines three databases. Two of the three definitions in the example are invalid, the first ({remote:true}) and the third ({remote:&quot;OK&quot;}), because they are incomplete.</p>
<p>The second definition is a fully defined and valid definition for a local to remote synchronization of two databases:</p>
<p>{remote:true, ip:&quot;127.0&#x2e;0&#x2e;1&quot;, port: 7777, name:&quot;example1.u1db&quot;, <a href="#resolve_to_source-prop">resolve_to_source</a>:true}</p>
<p>'remote' determines whether the database is on disk or located on a server. 'ip' and 'port' for a server are used only when 'remote' is set to true 'name' is the name of the local (on disk) or remote database. Note: If 'remote' is false this is the relative/absolute file location. '<a href="#resolve_to_source-prop">resolve_to_source</a>' determines whether to resolve conflicts automatically in favor of the source (aka local) database's values or the target's.</p>
<p><b>Access functions:</b></p>
<table class="alignedsummary">
<tr><td class="memItemLeft topAlign rightAlign"> QVariant </td><td class="memItemRight bottomAlign"><span class="name"><b>getTargets</b></span>()</td></tr>
<tr><td class="memItemLeft topAlign rightAlign"> void </td><td class="memItemRight bottomAlign"><span class="name"><b>setTargets</b></span>(QVariant<i> targets</i>)</td></tr>
</table>
<!-- @@@targets -->
<h2>Member Function Documentation</h2>
<!-- $$$Synchronizer[overload1]$$$SynchronizerQObject* -->
<h3 class="fn">Synchronizer::<span class="name">Synchronizer</span>(<span class="type">QObject</span> *<i> parent</i> = 0)</h3>
<p>Create a new Synchronizer element, with an optional <i>parent</i>, usually by declaring it as a QML item.</p>
<p>Synchronizer elements sync two databases together, a 'source' database and a remote or local 'target' database.</p>
<p>Example use in a QML application:</p>
<p>U1db.Synchronizer{ id: aSynchronizer synchronize: false source: aDatabase targets: [{remote:true, ip:&quot;127.0&#x2e;0&#x2e;1&quot;, port: 7777, name:&quot;example1.u1db&quot;, <a href="#resolve_to_source-prop">resolve_to_source</a>:true}]</p>
<p>}</p>
<p>Short description of properties:</p>
<p>id: The element's identification.</p>
<p>bool synchronize: Is the element actively synching or not. Should be set to false.</p>
<p>U1DB::Database source: The id of a local database that will be used for synchronization.</p>
<p>QVariant targets: One or more target databases that will be synched with the local database.</p>
<p>bool targets.remote: Is the target database a remote or local database.</p>
<p>QString targets.ip: The ip address of a remote database (if applicable).</p>
<p>int targets.port: Port number of the remote server.</p>
<p>QString targets.name: The name of the database.</p>
<p>bool targets.<a href="#resolve_to_source-prop">resolve_to_source</a>: In case of conflict should the sync resolve to the source's data (if true).</p>
<p>Example use with u1db-serve:</p>
<p>1. In a terminal cd into a directory where the u1db Python reference implemented has been downloaded from lp:u1db. 2. Using Python create a database called 'example1.u1db' using u1db, and a document 'helloworld':</p>
<p># python</p>
<p>&gt;&gt;&gt; import u1db &gt;&gt;&gt; db = u1db.open(&quot;example1.u1db&quot;,create=True) &gt;&gt;&gt; content = {&quot;hello&quot;: { &quot;world&quot;: { &quot;message&quot;:&quot;Hello World Updated&quot; } } } &gt;&gt;&gt; db.create_doc(content, doc_id=&quot;helloworld&quot;)</p>
<p>ctrl+d</p>
<p>3. From the u1db directory above type './u1db-serve --port=7777' and hit enter. 4. Open another terminal tab. 5. Change into a directory containing u1db-qt (assuming this class is included in that directory and the installed version on the host computer). 6. Change into the directory where u1db-qt-example-6.qml is located. 7. Type 'qmlscene u1db-qt-example-6.qml' and hit enter. 8. Click the button labelled 'Sync'. 9. Check the terminal windows for output from either the client or server.</p>
<!-- @@@Synchronizer -->
<!-- $$$setSyncOutput[overload1]$$$setSyncOutputQList<QVariant> -->
<h3 class="fn"><span class="type">void</span> Synchronizer::<span class="name">setSyncOutput</span>(<span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt;<i> sync_output</i>)</h3>
<p>Sets the current value for the active session's <i>sync_output</i>.</p>
<!-- @@@setSyncOutput -->
