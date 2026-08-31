*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
AlertTestCases
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    ${url}=     Get Location
    Log To Console    ${url}
    Click Element    xpath=//*[@id='confirmBtn']
    Sleep    3s
#    Handle Alert    accept
#    Handle Alert    dismiss
    Handle Alert    leave
    Close Browser