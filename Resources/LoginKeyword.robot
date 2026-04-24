*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [arguments]  ${app_url}     ${app_browser}
    open browser    ${app_url}     ${app_browser}
    maximize browser window

Enter Email
    [arguments]  ${email}
    input text  ${txt_email}    ${email}

Enter Password
    [arguments]  ${password}
    input text  ${txt_password}    ${password}

Click Login Button
    click button    ${btn_login}

Verify Successfull Login
    title should be     Demo Web Shop

Close all browser
    close browser







