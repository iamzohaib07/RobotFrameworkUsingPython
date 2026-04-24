*** Settings ***
Library     SeleniumLibrary

*** Variables ***



*** Test Cases ***
ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
    sleep   3
#    execute javascript  window.scrollTo(0,2500)
#    scroll element into view    xpath://*[@id="ct-list"]/table[1]/tbody/tr[86]/td[1]/img
     execute javascript     window.scrollTo(0,document.body.scrollHeight)
     sleep  5
     execute javascript     window.scrollTo(0,-document.body.scrollHeight)
     sleep  3



*** Keywords ***



