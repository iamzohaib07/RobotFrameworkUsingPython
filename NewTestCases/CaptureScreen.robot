*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Logintc
    open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      chrome
    maximize browser window
    input text      id:oxd-input oxd-input--active oxd-input--error     admin
    input text      id:oxd-input oxd-input--active     admin@123

#    capture element screenshot      xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img       C:/Users/Admin/PycharmProjects/RobotFrameworkUsingPython/logo.png
#    capture page screenshot      C:/Users/Admin/PycharmProjects/RobotFrameworkUsingPython/logintc.png

     capture element screenshot     xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img   logo.png
     capture page screenshot    logintc.png