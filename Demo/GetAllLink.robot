*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
GetAllLink
    Open Browser    https://demo.guru99.com/test/newtours/  chrome
    Maximize Browser Window
    ${AllLinkCount}=    Get Element Count    xpath://a
    Log To Console    ${AllLinkCount}

    @{LinkItem}     Create List
    FOR    ${i}    IN RANGE    1    ${AllLinkCount}+1    
#        ${LinkText}=    Get Text    xpath:(//a)[${i}]
#         Log To Console    Link ${i}: ${LinkText}
         ${LinkUrl}=    Get Element Attribute    xpath:(//a)[${i}]    href
#         Log To Console    LinkUrl ${i}:${LinkUrl}
         Append To List     ${LinkItem}     ${LinkUrl}      
    END
    Log To Console    ${LinkItem}
#    Log Many    @{LinkItem}
    Close Browser