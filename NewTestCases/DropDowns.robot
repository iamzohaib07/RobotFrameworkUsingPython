*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://artoftesting.com/samplesiteforselenium

*** Test Cases ***
Handling dropdown and list
    open browser    ${url}      ${browser}
    maximize browser window
    select from list by label   testingDropdown     Automation Testing
    sleep   5
    select from list by index   testingDropdown     1
    sleep   5
    select from list by value   testingDropdown     Manual
    sleep   5
    close browser