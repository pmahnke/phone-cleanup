---
Title: Ubuntu.Web.ubuntu-web-qmlmodule
---

# Ubuntu.Web.ubuntu-web-qmlmodule

<span class="subtitle"></span>
<!-- $$$Ubuntu.Web-description -->
<p>This QML module exposes a <a href="Ubuntu.Web.WebView.md">WebView</a> component that can be used to render web content in an application, as well as related components.</p>
<p>This is the preferred way of rendering web content in an Ubuntu application. The rendering is performed by <a href="https://launchpad.net/oxide">Oxide</a>. The use of QtWebKit is deprecated and unsupported.</p>
<p>This is version 0.2 of the module.</p>
<p>Note that the module was previously named <tt>Ubuntu.Components.Extras.Browser</tt>, the old namespace has been kept around for backwards compatibility but its use is discouraged, please update your applications to import <tt>Ubuntu.Web 0.2</tt>.</p>
<p>Also note that importing both <tt>com.canonical.Oxide</tt> (or <tt>QtWebKit</tt>) and <tt>Ubuntu.Web</tt> in the same QML file results in an undefined behaviour, as both expose a <tt>WebView</tt> type.</p>
<!-- @@@Ubuntu.Web -->
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="Ubuntu.Web.SharedWebContext.md">SharedWebContext</a></p></td><td class="tblDescr"><p>A singleton that exposes a shared WebContext that can be used by several WebView instances in the same application.</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="Ubuntu.Web.WebContext.md">WebContext</a></p></td><td class="tblDescr"><p>A default context implementation for use with WebView.</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="Ubuntu.Web.WebView.md">WebView</a></p></td><td class="tblDescr"><p>A webview that can be used to render web content in an application.</p></td></tr>
</table>
