*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
DropdownTesting
    Open Browser    https://artoftesting.com/samplesiteforselenium      chrome
    Maximize Browser Window
    Set Selenium Speed    2 seconds
    Scroll Element Into View    xpath=//*[text()='Generate Alert Box']
    Select From List By Index    xpath=//*[@id='testingDropdown']   1
    Select From List By Label    xpath=//*[@id='testingDropdown']   Manual Testing
    Select From List By Value    xpath=//*[@id='testingDropdown']   Database
    Close Browser