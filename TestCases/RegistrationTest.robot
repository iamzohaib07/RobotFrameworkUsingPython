*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeyword.robot

*** Variables ***
${app_url}      https://demowebshop.tricentis.com
${app_browser}  headLesschrome

*** Test Cases ***
Registration Test
    [Tags]    regression
    Open My Browser     ${app_url}      ${app_browser}
    Click Link
    sleep   3
    Click Radio Button
    Enter Firstname     Demo
    Enter Lastname      Test
    Enter Email     demotest72890@gmail.com
    Enter Password      demo123
    Enter Confirm Password      demo123
    Click Register Button
    sleep   3
    Close My Browser
