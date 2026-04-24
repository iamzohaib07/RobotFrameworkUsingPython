*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Handlingalerts
    open browser    https://testautomationpractice.blogspot.com/    headlesschrome
    click element   xpath://*[@id="alertBtn"]
    sleep   3
#    Handle alert    accept
#    Handle alert   dismiss
#    handle alert  leave
#    lert should be present   I am an alert box!
     alert should not be present      I am an alert box!