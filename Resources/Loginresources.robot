*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${login url}        https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      chrome

*** Keywords ***
open my browser
    open browser    ${login url}    ${browser}
    maximize browser window

Close Browsers
    close all browsers

open login page
    go to   ${login url}

input username
    [Agreements]    ${username}
    input text      id:Email    ${username}
input pwd
    [Agreements]    ${password}
    input text      id:Password     ${password}
click login button
    click element   xpath://*[@id="main"]/div/div/div/div[2]/div[1]/div/form/div[3]/button
click logout link
    click link  logout


Error message should be visible
    page should contain     login was unsuccesful

Dashboard page should be visible
    page should contain     Dashboard

