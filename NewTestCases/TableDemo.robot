*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TestValidation
        open browser    https://testautomationpractice.blogspot.com/    chrome
        maximize browser window
        ${rows}=        get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
        ${cols}=        get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/td

        log to console      ${rows}
        log to console      ${cols}