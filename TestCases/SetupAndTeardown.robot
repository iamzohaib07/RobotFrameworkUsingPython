*** Settings ***
Suite Setup     log to console  Opening Browser
Suite Teardown  log to console  Closing Broser
Test Setup  log to console  Login to application
Test Teardown   log to console    Logout from application

*** Test Cases ***
TC1 Prepaid Recharge
    [Tags]    regression
    log to console  This is prepaid recharge testcase
TC2 Postpaid Recharge
    [Tags]    regression
    log to console  This is postpaid recharge testcase
TC3 Search
    [Tags]    regression
    log to console  This is Search test case
TC4 Advanced Seearch
    [Tags]    regression
    log to console  This is Adv Search Test case