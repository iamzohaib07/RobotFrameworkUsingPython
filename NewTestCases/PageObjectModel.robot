*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
AlertTest
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click element   xpath://*[@id="HTML9"]/div[1]/button[2]    #Alert Open
    sleep   3
    handle alert    accept           #close the alert by pressing ok button
#    handle alert    dismiss          #close the alert by pressing cancel button
#    handle alert    leave            #keep open alert for sometime
#    alert should be present     Press a button!
#    alert should not be present     Press a button!
    close browser