---
Title: QtQuick.qtquick-quick-accessibility-example
---
        
Qt Quick Examples - Accessibility
=================================

<span class="subtitle"></span>
<span id="details"></span>
This example has accessible buttons.

Types in this example are augmented with meta-data for accessiblity systems.

For example, the button identifies itself and its functionality to the accessibility system:

``` qml
Accessible.name: text
Accessible.description: "This button does " + text
Accessible.role: Accessible.Button
function accessiblePressAction() {
    button.clicked()
}
```

As do Text types inside the example:

``` qml
Accessible.role: Accessible.StaticText
Accessible.name: text
```

Files:

-   quick-accessibility/accessibility.qml
-   quick-accessibility/content/Button.qml
-   quick-accessibility/content/Checkbox.qml
-   quick-accessibility/content/Slider.qml
-   quick-accessibility/main.cpp
-   quick-accessibility/accessibility.qmlproject
-   quick-accessibility/accessibility.qrc
-   quick-accessibility/quick-accessibility.pro

