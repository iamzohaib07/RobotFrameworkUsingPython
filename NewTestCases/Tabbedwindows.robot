*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
TabbedWindowsTest
    open browser    https://demo.automationtesting.in/Windows.html  chrome
    maximize browser window
    click element   xpath://*[@id="Tabbed"]/a/button
#    select window   title=Selenium logo green
#    click element   xpath://*[@id="main_navbar"]/ul/li[3]/a/span
    sleep   3
    close all browsers
