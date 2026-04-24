*** Settings ***
Library    SeleniumLibrary
Library    ../Libraries/LoginKeywords.py

*** Test Cases ***
Login Facebook
    Open Site    facebook
    Login To Site    facebook    myfb@gmail.com    fbpass
    Close Site

Login Amazon
    Open Site    amazon
    Login To Site    amazon    myamz@gmail.com    amzpass
    Close Site
