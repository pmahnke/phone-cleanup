---
Title: Ubuntu.Web.ubuntu-web-qmlmodule
---
        
Ubuntu Web module
=================

<span class="subtitle"></span>
<span id="details"></span>
This QML module exposes a [WebView](../Ubuntu.Web.WebView.md) component that can be used to render web content in an application, as well as related components.

This is the preferred way of rendering web content in an Ubuntu application. The rendering is performed by [Oxide](https://launchpad.net/oxide). The use of QtWebKit is deprecated and unsupported.

This is version 0.2 of the module.

Note that the module was previously named `Ubuntu.Components.Extras.Browser`, the old namespace has been kept around for backwards compatibility but its use is discouraged, please update your applications to import `Ubuntu.Web 0.2`.

Also note that importing both `com.canonical.Oxide` (or `QtWebKit`) and `Ubuntu.Web` in the same QML file results in an undefined behaviour, as both expose a `WebView` type.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Web.SharedWebContext.md">SharedWebContext</a></p></td>
<td><p>A singleton that exposes a shared WebContext that can be used by several WebView instances in the same application.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Web.WebContext.md">WebContext</a></p></td>
<td><p>A default context implementation for use with WebView.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Web.WebView.md">WebView</a></p></td>
<td><p>A webview that can be used to render web content in an application.</p></td>
</tr>
</tbody>
</table>

