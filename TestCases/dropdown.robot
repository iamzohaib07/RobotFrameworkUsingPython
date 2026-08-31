*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://artoftesting.com/samplesiteforselenium

*** Test Cases ***
TestingInputBox
    [Tags]    regression
    [Timeout]   2 minutes
    open browser    ${url}    ${browser}
    maximize browser window
#    set selenium speed      2 seconds
    scroll element into view    xpath=//p[contains(text(),'Drop down')]
#    sleep   5
#    select from list by label   id=testingDropdown     Performance Testing
    select from list by index   id=testingDropdown     3
#    select from list by value   id=testingDropdown     Manual
    Sleep    3 seconds

    close browser

*** Keywords ***