*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
launchBrowser
    [arguments]     ${appurl}   ${appbrowser}
    open browser    ${appurl}   ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]    ${title}