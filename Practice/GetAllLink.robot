*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Test Cases ***
GetAllLinkOnWebPage
    Open Browser    https://demo.guru99.com/test/newtours/      chrome
    Maximize Browser Window
    ${TotalLink}=   Get Element Count    xpath=//a
    Log To Console    Total Number Of Link:${TotalLink}
    
    @{linkItem}     Create List
    FOR    ${i}    IN RANGE     1   ${TotalLink+1}
        ${linkText}=    Get Text    xpath=(//a)[${i}]
        Log To Console    Link ${i}:${linkText}
        Append To List      ${linkItem}     ${linkText}
    END
    
    Close Browser