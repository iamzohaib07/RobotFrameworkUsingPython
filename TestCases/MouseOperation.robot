*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MouseOperation
# Right Click
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    open context menu   xpath://span[contains(text(),'right click me')]
    sleep   2

# Double Click
    go to   https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[contains(text(),'Copy Text')]
    sleep   2

# Drag and Drop
    go to   http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop   id:box6     id:box106
    sleep   2

    close browser

