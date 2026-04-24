*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    ${implicitwait}=    get selenium implicit wait   # when locator unable to find element
    log to console  ${implicitwait}
    set selenium implicit wait  10 seconds
    select radio button     Gender  M
    input text  name:FirstName1  Mohammad
    input text  name:LastName   Zohaib
    input text  name:Email  zohaibsheikh879@gmail.com
    input text  name:Password   zohaib123
    input text  name:ConfirmPassword    zohaib123
    close browser