*** Settings ***
Library    SeleniumLibrary
Library    ../Libraries/FacebookKeywords.py

*** Variables ***
${USERNAME}    testuser@gmail.com
${PASSWORD}    testpassword123

*** Test Cases ***
Facebook Login Test
    Open Facebook
    Login To Facebook    ${USERNAME}    ${PASSWORD}
    Sleep    5s
    Close Facebook
