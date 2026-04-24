*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
AlertTest
    [Timeout]   2 minutes
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    wait until element is visible   xpath=//*[@id="confirmBtn"]     timeout=50 seconds
    click element   xpath=//*[@id="confirmBtn"]    #Alert Open
    sleep   3s
#    handle alert    accept           #close the alert by pressing ok button
#    handle alert    dismiss          #close the alert by pressing cancel button
#    handle alert    leave            #keep open alert for sometime
    alert should be present     Press a button!
#    alert should not be present     Press a button!
    close browser





