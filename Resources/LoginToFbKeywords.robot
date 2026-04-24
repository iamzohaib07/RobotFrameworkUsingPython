*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/LoginToFbLocator.py

*** Keywords ***
open my browser
    [Arguments]  ${url}     ${browser}
    open browser    ${url}     ${browser}
    maximize browser window

Enter Email
    [Arguments]  ${email}
    input text      ${fb_email}    ${email}

Enter Password
    [Arguments]  ${pass}
    input text      ${fb_password}  ${pass}

