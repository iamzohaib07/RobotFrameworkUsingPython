*** Settings ***

Suite Setup     log to console      opening browser
Suite Teardown      log to console      closing browser

Test Setup  log to console      login to application
Test Teardown  log to console       logout from application

*** Test Cases ***

TC1 prepaid recharge
    log to console      this is prepaid recharge

TC2 postpaid recharge
    log to console      this is postpaid recharge

TC3 search
    log to console      this is serach case

TC4 advanced search
    log to console      this is adv search test case