---
Title: QtMultimedia.SoundEffect
---

# QtMultimedia.SoundEffect

<span class="subtitle"></span>
<!-- $$$SoundEffect-brief -->
<p>The SoundEffect type provides a way to play sound effects in QML. More...</p>
<!-- @@@SoundEffect -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtMultimedia 5.0</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiates:</td><td class="memItemRight bottomAlign"> QSoundEffect</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#category-prop">category</a></b></b> : string</li>
<li class="fn"><b><b><a href="#loops-prop">loops</a></b></b> : int</li>
<li class="fn"><b><b><a href="#loopsRemaining-prop">loopsRemaining</a></b></b> : int</li>
<li class="fn"><b><b><a href="#muted-prop">muted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#playing-prop">playing</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#volume-prop">volume</a></b></b> : qreal</li>
</ul>
<h2>Signals</h2>
<ul>
<li class="fn"><b><b><a href="#categoryChanged-signal">categoryChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#loadedChanged-signal">loadedChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#loopCountChanged-signal">loopCountChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#loopsRemainingChanged-signal">loopsRemainingChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#mutedChanged-signal">mutedChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#playingChanged-signal">playingChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#sourceChanged-signal">sourceChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#statusChanged-signal">statusChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#volumeChanged-signal">volumeChanged</a></b></b>()</li>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="#isLoaded-method">isLoaded</a></b></b>()</li>
<li class="fn"><b><b><a href="#play-method">play</a></b></b>()</li>
<li class="fn"><b><b><a href="#stop-method">stop</a></b></b>()</li>
</ul>
<!-- $$$SoundEffect-description -->
<h2>Detailed Description</h2>
<p>SoundEffect is part of the <b>QtMultimedia 5.0</b> module.</p>
<p>This type allows you to play uncompressed audio files (typically WAV files) in a generally lower latency way, and is suitable for &quot;feedback&quot; type sounds in response to user actions (e.g&#x2e; virtual keyboard sounds, positive or negative feedback for popup dialogs, or game sounds). If low latency is not important, consider using the <a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a> or Audio types instead, since they support a wider variety of media formats and are less resource intensive.</p>
<p>Typically the sound effect should be reused, which allows all the parsing and preparation to be done ahead of time, and only triggered when necessary. This is easy to achieve with QML, since you can declare your SoundEffect instance and refer to it elsewhere.</p>
<p>The following example plays a WAV file on mouse click.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type">Text</span> {
<span class="name">text</span>: <span class="string">&quot;Click Me!&quot;</span>;
<span class="name">font</span>.pointSize: <span class="number">24</span>;
<span class="name">width</span>: <span class="number">150</span>; <span class="name">height</span>: <span class="number">50</span>;
<span class="type">SoundEffect</span> {
<span class="name">id</span>: <span class="name">playSound</span>
<span class="name">source</span>: <span class="string">&quot;soundeffect.wav&quot;</span>
}
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">playArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: { <span class="name">playSound</span>.<span class="name">play</span>() }
}
}</pre>
<p>Since SoundEffect requires slightly more resources to achieve lower latency playback, the platform may limit the number of simultaneously playing sound effects.</p>
<!-- @@@SoundEffect -->
<h2>Property Documentation</h2>
<!-- $$$category -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">category</span> : <span class="type">string</span></p></td></tr></table><p>This property contains the <i>category</i> of this sound effect.</p>
<p>Some platforms can perform different audio routing for different categories, or may allow the user to set different volume levels for different categories.</p>
<p>This setting will be ignored on platforms that do not support audio categories.</p>
<!-- @@@category -->
<br/>
<!-- $$$loops -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">loops</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of times the sound is played. A value of 0 or 1 means the sound will be played only once; set to <a href="index.html">SoundEffect</a>.Infinite to enable infinite looping.</p>
<p>The value can be changed while the sound effect is playing, in which case it will update the remaining loops to the new value.</p>
<!-- @@@loops -->
<br/>
<!-- $$$loopsRemaining -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">loopsRemaining</span> : <span class="type">int</span></p></td></tr></table><p>This property contains the number of loops remaining before the sound effect stops by itself, or <a href="index.html">SoundEffect</a>.Infinite if that's what has been set in <a href="#loops-prop">loops</a>.</p>
<!-- @@@loopsRemaining -->
<br/>
<!-- $$$muted -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">muted</span> : <span class="type">bool</span></p></td></tr></table><p>This property provides a way to control muting. A value of <tt>true</tt> will mute this effect. Otherwise, playback will occur with the currently specified <a href="#volume-prop">volume</a>.</p>
<!-- @@@muted -->
<br/>
<!-- $$$playing -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">playing</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether the sound effect is playing or not.</p>
<!-- @@@playing -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>This property holds the url for the sound to play. For the <a href="index.html">SoundEffect</a> to attempt to load the source, the URL must exist and the application must have read permission in the specified directory. If the desired source is a local file the URL may be specified using either absolute or relative (to the file that declared the <a href="index.html">SoundEffect</a>) pathing.</p>
<!-- @@@source -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property indicates the current status of the <a href="index.html">SoundEffect</a> as enumerated within <a href="index.html">SoundEffect</a>. Possible statuses are listed below.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td ><a href="index.html">SoundEffect</a>.Null</td><td >No source has been set or the source is null.</td></tr>
<tr valign="top"><td ><a href="index.html">SoundEffect</a>.Loading</td><td >The <a href="index.html">SoundEffect</a> is trying to load the source.</td></tr>
<tr valign="top"><td ><a href="index.html">SoundEffect</a>.Ready</td><td >The source is loaded and ready for play.</td></tr>
<tr valign="top"><td ><a href="index.html">SoundEffect</a>.Error</td><td >An error occurred during operation, such as failure of loading the source.</td></tr>
</table>
<!-- @@@status -->
<br/>
<!-- $$$volume -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">volume</span> : <span class="type">qreal</span></p></td></tr></table><p>This property holds the volume of the sound effect playback, from 0.0 (silent) to 1.0 (maximum volume).</p>
<!-- @@@volume -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$categoryChanged -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">categoryChanged</span>()</p></td></tr></table><p>The <tt>categoryChanged</tt> signal is emitted when the category property has changed.</p>
<p>The corresponding handler is <tt>onCategoryChanged</tt>.</p>
<!-- @@@categoryChanged -->
<br/>
<!-- $$$loadedChanged -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">loadedChanged</span>()</p></td></tr></table><p>The <tt>loadedChanged</tt> signal is emitted when the loading state has changed.</p>
<p>The corresponding handler is <tt>onLoadedChanged</tt>.</p>
<!-- @@@loadedChanged -->
<br/>
<!-- $$$loopCountChanged -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">loopCountChanged</span>()</p></td></tr></table><p>The <tt>loopCountChanged</tt> signal is emitted when the initial number of loops has changed.</p>
<p>The corresponding handler is <tt>onLoopCountChanged</tt>.</p>
<!-- @@@loopCountChanged -->
<br/>
<!-- $$$loopsRemainingChanged -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">loopsRemainingChanged</span>()</p></td></tr></table><p>The <tt>loopsRemainingChanged</tt> signal is emitted when the remaining number of loops has changed.</p>
<p>The corresponding handler is <tt>onLoopsRemainingChanged</tt>.</p>
<!-- @@@loopsRemainingChanged -->
<br/>
<!-- $$$mutedChanged -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">mutedChanged</span>()</p></td></tr></table><p>The <tt>mutedChanged</tt> signal is emitted when the mute state has changed.</p>
<p>The corresponding handler is <tt>onMutedChanged</tt>.</p>
<!-- @@@mutedChanged -->
<br/>
<!-- $$$playingChanged -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">playingChanged</span>()</p></td></tr></table><p>The <tt>playingChanged</tt> signal is emitted when the playing property has changed.</p>
<p>The corresponding handler is <tt>onPlayingChanged</tt>.</p>
<!-- @@@playingChanged -->
<br/>
<!-- $$$sourceChanged -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">sourceChanged</span>()</p></td></tr></table><p>The <tt>sourceChanged</tt> signal is emitted when the source has been changed.</p>
<p>The corresponding handler is <tt>onSourceChanged</tt>.</p>
<!-- @@@sourceChanged -->
<br/>
<!-- $$$statusChanged -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">statusChanged</span>()</p></td></tr></table><p>The <tt>statusChanged</tt> signal is emitted when the status property has changed.</p>
<p>The corresponding handler is <tt>onStatusChanged</tt>.</p>
<!-- @@@statusChanged -->
<br/>
<!-- $$$volumeChanged -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">volumeChanged</span>()</p></td></tr></table><p>The <tt>volumeChanged</tt> signal is emitted when the volume has changed.</p>
<p>The corresponding handler is <tt>onVolumeChanged</tt>.</p>
<!-- @@@volumeChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$isLoaded -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">isLoaded</span>()</p></td></tr></table><p>Returns whether the sound effect has finished loading the <a href="#source-prop">source</a>.</p>
<!-- @@@isLoaded -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">play</span>()</p></td></tr></table><p>Start playback of the sound effect, looping the effect for the number of times as specified in the loops property.</p>
<p>This is the default method for <a href="index.html">SoundEffect</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">SoundEffect</a></span> {
<span class="name">id</span>: <span class="name">playSound</span>
<span class="name">source</span>: <span class="string">&quot;soundeffect.wav&quot;</span>
}
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">playArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: { <span class="name">playSound</span>.<span class="name">play</span>() }
}</pre>
<!-- @@@play -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">stop</span>()</p></td></tr></table><p>Stop current playback.</p>
<!-- @@@stop -->
<br/>
