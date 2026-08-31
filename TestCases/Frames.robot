*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Handling Frames
    open browser    https://demo.automationtesting.in/Frames.html   chrome
    maximize browser window
    select frame    singleframe     # name , id or xpath of frame
    Wait Until Element Is Visible    xpath://input[@type='text']    20s
    click element   //input[@type='text']
    input text      //input[@type='text']   welcome
    unselect frame
    close browser

InnerFrame
    open browser    https://demo.automationtesting.in/Frames.html   chrome
    maximize browser window
    Wait Until Element Is Visible    xpath://*[contains(text(),'Iframe with in an Iframe')]     20s
    Click Element    xpath://*[contains(text(),'Iframe with in an Iframe')]
    select frame    xpath://iframe[@src='MultipleFrames.html']     # name , id or xpath of frame
    Select Frame    xpath://iframe[@src='SingleFrame.html']
    Wait Until Element Is Visible    xpath://input[@type='text']    20s
    click element   //input[@type='text']
    input text      //input[@type='text']   welcome
    unselect frame
    close browser
