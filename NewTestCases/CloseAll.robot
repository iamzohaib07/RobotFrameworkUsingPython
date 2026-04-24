*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
mytestcase
    open browser    https://www.youtube.com/    chrome
    maximize browser window

    open browser    https://demowebshop.tricentis.com/      chrome
    maximize browser window

    close all browsers