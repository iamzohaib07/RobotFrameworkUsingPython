*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://testautomationpractice.blogspot.com/
${browser}      chrome

*** Test Cases ***
AlertTestCases
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    ${url}=     Get Location
    Log To Console    ${url}
    Click Element    xpath=//*[@id='confirmBtn']
    Sleep    3s
#    Handle Alert    accept
#    Handle Alert    dismiss
    Handle Alert    leave
    Close Browser