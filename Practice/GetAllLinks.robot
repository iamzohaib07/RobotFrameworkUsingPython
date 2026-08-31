*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
GetAllLinks
    Open Browser    https://demo.guru99.com/test/newtours/      chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    ${alllinkcount}=    Get Element Count    xpath://a
    Log To Console    ${alllinkcount}
    @{linkitem}     Create List
    FOR    ${i}    IN RANGE     1   ${alllinkcount}+1
        ${linktext}=    Get Text    xpath:(//a)[${i}]
        Append To List  ${linkitem}     ${linktext}
         
    END
    Log To Console    ${linkitem}