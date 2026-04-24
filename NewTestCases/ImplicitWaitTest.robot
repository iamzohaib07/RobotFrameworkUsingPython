*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
Reg test
    open browser    https://demowebshop.tricentis.com/register      chrome
    maximize browser window
    ${Implicitime}=     get selenium implicit wait
    log to console      ${Implicitime}
    set selenium implicit wait  10s
    ${Implicitime}=     get selenium implicit wait
    log to console      ${Implicitime}

    Select radio button     Gender      M

    input text      name:FirstName1      kaif
    input text      name:LastName       shaikh
    input text      name:Email      kaifshaikh@gamil.com
    input text      name:Password       kaifskh@1234567
    input text      name:ConfirmPassword        kaifskh@1234567



*** Keywords ***
