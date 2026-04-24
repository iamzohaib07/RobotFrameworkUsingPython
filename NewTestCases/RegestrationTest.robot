*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/Regestrationkeywords.robot

*** Variables ***
${browser}      chrome
${siteurl}      https://demowebshop.tricentis.com/login

*** Test Cases ***
Registration
    open my browser     ${siteurl}      ${browser}
    click Register link
    Enter first name    john
    Enter last name     david
    Enter phone     1234567890
