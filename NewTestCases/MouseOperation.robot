*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MouseActions
#    right click/open context menu
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    open context menu   xpath:/html/body/div/section/div/div/div/p/span
    sleep   3

    #double action
    go to   https://testautomationpractice.blogspot.com/
    double click element    xpath://*[@id="HTML10"]/div[1]/button
    sleep   3

    #drag and drop
    

