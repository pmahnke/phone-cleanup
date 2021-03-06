---
Title: Ubuntu.Components.UriHandler
---
        
UriHandler
==========

<span class="subtitle"></span>
Singleton signalling for opened URIs. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import Ubuntu.Components 1.1` |

<span id="signals"></span>
Signals
-------

-   ****[onOpened](#onOpened-signal)****(list&lt;string&gt; *uris*)

<span id="details"></span>
Detailed Description
--------------------

UriHandler is a singleton handling opened URIs. The application can be signalled of opened URIs through the opened signal. The content of the "APP\_ID" environment variable is used to determine the object path. If the D-Bus session bus is not connected or the "APP\_ID" variable is not set or empty, the handler stays uninitialized.

Example of use:

``` qml
Connections {
    target: UriHandler
    onOpened: print(uris)
}
```

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onOpened-signal"></span><span class="name">onOpened</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span>&gt; <em>uris</em>)</p></td>
</tr>
</tbody>
</table>

The signal is triggered when URIs are opened.

