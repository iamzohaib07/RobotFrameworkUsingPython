*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
CloseAllBrowser
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window

    open browser    https://demo.nopcommerce.com/   chrome
    maximize browser window

#    close browser
    close all browsers