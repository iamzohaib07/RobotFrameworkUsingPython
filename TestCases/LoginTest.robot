*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeyword.robot

*** Variables ***
${app_url}      https://demowebshop.tricentis.com/login
${app_browser}      headLesschrome
${email}    demotest72190@gmail.com
${password}     demo123

*** Test Cases ***
Login Application
    [Tags]    regression
    Open my browser     ${app_url}      ${app_browser}
    Enter Email     ${email}
    Enter Password      ${password}
    Click Login Button
    sleep   2
    Verify Successfull Login
    Close all browser