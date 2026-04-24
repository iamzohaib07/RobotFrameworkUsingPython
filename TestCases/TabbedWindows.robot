*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MultipleTab
    Open Browser    https://www.google.com/     chrome
    Maximize Browser Window
    Execute Javascript      window.open("https://www.bing.com/")
    Sleep    2s
    ${windowhandle}=    Get Window Handles
    Log To Console    ${windowhandle}

    ${firsttab}=    Set Variable    ${windowhandle}[0]
    ${secondtab}=    Set Variable    ${windowhandle}[1]

    Switch Window   ${firsttab}
    ${title1}=   Get Title
    Log To Console    ${title1}
    Sleep    2s

    Switch Window   ${secondtab}
    ${title2}=   Get Title
    Log To Console    ${title2}
    Sleep    2s

    Close Browser
