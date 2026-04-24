*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TableValidation
    Open Browser     https://testautomationpractice.blogspot.com/   chrome
    Maximize Browser Window
    Scroll Element Into View    xpath=//*[contains(text(),'Dynamic Web Table')]
    Sleep    2s
    ${rows}=    Get Element Count    xpath=//*[@name='BookTable']/tbody/tr
    Log To Console    ${rows}
    ${columns}=     Get Element Count    xpath=//*[@name='BookTable']/tbody/tr[1]/th
    Log To Console    ${columns}
    
    ${data}=    Get Text    xpath=//*[@name='BookTable']/tbody/tr[2]/td[3]
    Log To Console    ${data}
    
    Table Header Should Contain    xpath://table[@name='BookTable']     Author
    Table Row Should Contain    xpath://table[@name='BookTable']    2    Amit
    Table Column Should Contain    xpath://table[@name='BookTable']    2    Mukesh
    Table Cell Should Contain    xpath://table[@name='BookTable']    2    3    Selenium

    Close Browser
