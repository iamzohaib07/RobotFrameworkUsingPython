*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/OrangeHRMLocators.py

*** Keywords ***
Open All Browser
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}
    Set Selenium Implicit Wait    10s
    Maximize Browser Window

Enter Username
    [Arguments]     ${username}
    Wait Until Element Is Visible    ${username_loc}
    Input Text    ${username_loc}    ${username}

Enter Password
    [Arguments]     ${password}
    Wait Until Element Is Visible    ${password_loc}
    Input Text    ${password_loc}    ${password}
    
Click Login Button
    Wait Until Element Is Visible    ${loginButton_loc}
    Click Element    ${loginButton_loc}
    
PageValidation
    Wait Until Page Contains Element    ${imagebanner_loc}
    Wait Until Page Contains    Dashboard

