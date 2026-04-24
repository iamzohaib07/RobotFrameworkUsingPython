*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://artoftesting.com/samplesiteforselenium

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed  2seconds

# Selecting Radio Button
#    select radio button     gender      female       # name=gender   value=female
#    select radio button     gender      male

# Selecting Checkbox
    select checkbox     Automation
    select checkbox     Performance   #value=Performance

    unselect checkbox     Automation

    close browser

*** Keywords ***