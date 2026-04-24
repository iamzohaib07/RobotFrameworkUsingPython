*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    open browser    https://admin-demo.nopcommerce.com/     chrome
    maximize browser window
    click element   xpath://button[contains(text(),'Log in')]
    sleep   2
    close browser