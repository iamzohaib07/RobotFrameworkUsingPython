*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot

*** Variables ***
${url}      https://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
TC1
    [Tags]    regression
    ${PageTitle}=    launchBrowser   ${url}      ${browser}
    log to console      ${PageTitle}
    log     ${PageTitle}
    select radio button     Gender  M
    input text  name:FirstName  Mohammad
    input text  name:LastName   Zohaib
    input text  name:Email  zohaibsheikh879@gmail.com
    input text  name:Password   zohaib123
    input text  name:ConfirmPassword    zohaib123
    sleep   3
    close browser
