*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Reg test

    open browser    https://demowebshop.tricentis.com/register      chrome
    maximize browser window
    ${time}=     get selenium timeout
    log to console      ${time}

    set selenium timeout    10s
    wait until page contains    Registration

    Select radio button     Gender      M

    input text      name:FirstName      kaif
    sleep   2
    input text      name:LastName       shaikh
    sleep   2
    input text      name:Email      kaifshaikh@gamil.com
    sleep   2
    input text      name:Password       kaifskh@1234567
    sleep   2
    input text      name:ConfirmPassword        kaifskh@1234567
    sleep   2






*** Keywords ***
