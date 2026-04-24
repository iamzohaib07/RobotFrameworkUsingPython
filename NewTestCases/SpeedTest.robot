*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Reg test
    ${spead}=    get selenium speed
    log to console  ${spead}
    open browser    https://demowebshop.tricentis.com/register      chrome
    maximize browser window
    sleep   3

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

    ${spead}=    get selenium speed
    log to console  ${spead}





*** Keywords ***
