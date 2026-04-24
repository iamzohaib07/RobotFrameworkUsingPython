*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Login Scenarios
    [Template]    Login And Verify Message
    user1    pass1         #Welcome user1
    user1    wrongpass     #Invalid credentials
    wronguser    pass1     #Invalid credentials
    ${EMPTY}    ${EMPTY}   #Username is required

# Template basically tell us to use a custom keyword for all given data in test case separately
*** Keywords ***
Login And Verify Message
    [Arguments]    ${username}    ${password}    #${expected_message}
    Open Browser    https://www.facebook.com/    chrome
    Sleep    2s
    Input Text      xpath://*[@id="email"]      ${username}
    Input Text      xpath://*[@id="pass"]       ${password}
    Sleep    2s
#    Click Button    id=login
#    Page Should Contain    ${expected_message}
    Close Browser

