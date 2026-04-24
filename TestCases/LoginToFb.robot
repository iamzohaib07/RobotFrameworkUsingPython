*** Settings ***
Library  SeleniumLibrary
Resource     ../Resources/LoginToFbKeywords.robot

*** Variables ***
${url}      https://www.facebook.com/
${browser}  chrome

*** Test Cases ***
Login To Facebook
    open my browser     ${url}   ${browser}
    Enter Email     abc@gmail.com
    Enter Password      abc@123
    close browser