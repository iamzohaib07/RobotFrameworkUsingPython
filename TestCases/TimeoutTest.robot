*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    ${time}=    get selenium timeout
    log to console  ${time}
    set selenium timeout    10seconds       # This is based on condition
    wait until page contains    Registration1     #5 Seconds
    select radio button     Gender  M
    input text  name:FirstName  Mohammad
    input text  name:LastName   Zohaib
    input text  name:Email  zohaibsheikh879@gmail.com
    input text  name:Password   zohaib123
    input text  name:ConfirmPassword    zohaib123
    close browser