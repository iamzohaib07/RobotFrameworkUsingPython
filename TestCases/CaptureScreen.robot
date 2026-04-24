*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  chrome
    maximize browser window
    capture element screenshot  xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[1]   C:/Users/Admin/PycharmProjects/RobotFrameworkUsingPython/TestCases/logo.png
    capture page screenshot     C:/Users/Admin/PycharmProjects/RobotFrameworkUsingPython/TestCases/logoTC.png
    sleep   3
    close browser