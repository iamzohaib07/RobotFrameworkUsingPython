*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/Loginkeyword.robot

*** Variables ***
${browser}      chrome
${site_url}      https://demowebshop.tricentis.com/login
${email}    demotest72190@gmail.com
${password}     demo123

*** Test Cases ***
Login Application
    Open my browser     ${site_url}      ${browser}
    Enter Email     ${email}
    Enter Password      ${password}
    Click Login Button
    sleep   2
    Verify Successfull Login
    Close all browser