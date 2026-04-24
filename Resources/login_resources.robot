*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com
${BROWSER}      chrome

*** Keywords ***
Open my Browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
    Set Selenium Speed    2 seconds

Close Browsers
    close all browsers

Open Login Page
    go to  ${LOGIN URL}

Input username
    [Arguments]     ${username}
    clear element text  id:Email
    input text  id:Email    ${username}

Input pwd
    [Arguments]  ${password}
    clear element text  id:Password
    input text  id:Password     ${password}

click login button
    click element  xpath://*[@class='button-1 login-button']

click logout link
    click link  Logout

Error message should be visible
    page should contain  Login was unsuccessful

Dashboard page should be visible
    page should contain  Dashboard



