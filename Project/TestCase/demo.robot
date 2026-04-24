*** Settings ***
Library    ../Libraries/MyLibrary.py

*** Test Cases ***
Python Integration Demo
    Say Hello    Zohaib
    ${result}=    Add Two Numbers    10    20
    Log To Console    Sum is: ${result}
