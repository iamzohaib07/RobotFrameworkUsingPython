*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/OrangeHRMKeywords.robot
Variables   ../Configurations/OrangeHRMConf.py

*** Test Cases ***
OrangeHRMPractice
    Open All Browser    ${url}      ${browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login Button
    PageValidation