*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}      chrome

*** Test Cases ***
GetAllLink
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    ${alllinkscount}=   Get Element Count    xpath://a
    Log To Console    ${alllinkscount}
    
    @{linkitem}     Create List
    FOR    ${index}    ${element}    IN ENUMERATE    @{LIST}
        Log    ${index}: ${element}
         
    END
