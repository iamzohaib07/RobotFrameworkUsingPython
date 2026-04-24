*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest
#    ${speed}=   get selenium speed       # It will provide default time speed
#    log to console  ${speed}

    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window

    set selenium speed  2 seconds      # This  is applicable for every statement
#    sleep   3
    select radio button     Gender  M
    input text  name:FirstName  Mohammad
    input text  name:LastName   Zohaib
    input text  name:Email  zohaibsheikh879@gmail.com
    input text  name:Password   zohaib123
    input text  name:ConfirmPassword    zohaib123

#    ${speed}=   get selenium speed
#    log to console  ${speed}

    close browser