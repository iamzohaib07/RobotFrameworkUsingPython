*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/register
${browser}      chrome


*** Test Cases ***
TC1
    ${Pagetitle}=   launch browser  ${url}      ${browser}
    log to console      ${Pagetitle}
    log     ${Pagetitle}
    set selenium speed      1
    input text      id:FirstName        kaif
    input text      id:LastName         shaikh
    input text      id:Email        kaifshaikh@gmail.com
    input text      id:Password     jonathan
    input text      id:ConfirmPassword      jonathan



*** Keywords ***
launch browser
    [Arguments]     ${appurl}   ${appbrowser}
    open browser    ${appurl}      ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]    ${title}