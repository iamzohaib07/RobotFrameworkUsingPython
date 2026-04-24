*** Settings ***

*** Variables ***

#*** Test Cases ***
#Addition Test
#    [Template]    Add Two Numbers And Verify
#    1    2    3
#    5    7    12
#    10   -2   8
#
#*** Keywords ***
#Add Two Numbers And Verify
#    [Arguments]    ${a}    ${b}    ${expected}
#    ${result}    Evaluate    ${a} + ${b}
#    Should Be Equal As Integers    ${result}    ${expected}


*** Test Cases ***
Login Test
    [Tags]    regression
    [Template]    Login With Credentials
    user1    pass1
    user2    pass2
    user3    pass3

*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password}
    Log    Username: ${username}
    Log    Password: ${password}