*** Settings ***
Library     SeleniumLibrary
Variables  ../PageObjects/LocatorsK.py

*** Keywords ***
pen My Browser
    [arguments]  ${app_url}      ${app_browser}
    open browser    ${app_url}      ${app_browser}
    maximize browser window

Click Link
    click element      ${link_reg}

Click Radio Button
    click element     ${rd_btn}

Enter Firstname
    [arguments]  ${firstname}
    input text  ${txt_firstname}    ${firstname}

Enter Lastname
    [arguments]  ${lastname}
    input text  ${txt_lastname}    ${lastname}

Enter Email
    [arguments]  ${email}
    input text  ${txt_reg_email}    ${email}

Enter Password
    [arguments]  ${password}
    input text  ${txt_reg_password}     ${password}

Enter Confirm Password
    [arguments]  ${confpassword}
    input text  ${txt_reg_confpassword}     ${confpassword}

Click Register Button
    click element   ${reg_btn}

Close My Browser
    close browser
