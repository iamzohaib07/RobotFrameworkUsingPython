*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/LocatorsK.py

*** Keywords ***
open my browser
    [Arguments]     ${Siteurl}      ${Browser}
    open browser    ${Siteurl}      ${Browser}
    maximize browser window

Enter Email
    [Arguments]     ${Email}
    Input Text      ${txt_Email}    ${Email}

Enter Password
    [Arguments]     ${password}
    Input Text      ${txt_password}     ${password}

Click SignIn
    click button    ${btn_SignIn}

Verify Successful Login
    title should be     Demo Web Shop

Close my browser
    Close all browser