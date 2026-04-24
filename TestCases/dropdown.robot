*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://artoftesting.com/samplesiteforselenium

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
#    set selenium speed      2 seconds
#    scroll element into view    xpath=//p[contains(text(),'Drop down')]
#    sleep   5
    select from list by label   testingDropdown     Performance Testing
    select from list by index   testingDropdown     3
    select from list by value   testingDropdown     Manual

    close browser

*** Keywords ***