*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://www.google.com/
${browser}      chrome

*** Test Cases ***
TabbedWindow
    Open Browser    ${url}     ${browser}
    Maximize Browser Window
    Execute Javascript      window.open("https://www.bing.com/")
    Sleep    2s
    ${windowHandle}=    Get Window Handles
    Log To Console    ${windowHandle}

    ${firstWindow}=     Set Variable    ${windowHandle}[0]
    ${secondWindow}=    Set Variable    ${windowHandle}[1]

    Switch Window   ${firstWindow}
    ${title1}=   Get Title
    Log To Console    ${title1}
    Sleep    2s

    Switch Window   ${secondWindow}
    ${title2}=   Get Title
    Log To Console    ${title2}
    Sleep    2s

    Close Browser