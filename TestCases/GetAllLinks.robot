*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Test Cases ***
#GetAllLinksTest
#    open browser    https://demo.guru99.com/test/newtours/      chrome
#    maximize browser window
#    ${AllLinkCount}=    get element count   xpath://a
#    log to console      ${AllLinkCount}
#
#    @{LinkItems}    create list
#    FOR    ${i}     IN RANGE    1   ${AllLinkCount}+1
#    ${LinkText}=    get text    xpath:(//a)[${i}]
#    log to console  ${LinkText}
#    END
#    close browser

*** Test Cases ***
GetAllLinksTest
    Open Browser    https://demo.guru99.com/test/newtours/    chrome
    Maximize Browser Window

    ${AllLinkCount}=    Get Element Count    xpath://a
    Log To Console    Total Links Found: ${AllLinkCount}

    @{LinkItems}    Create List
    FOR    ${i}    IN RANGE    1    ${AllLinkCount}+1
        ${LinkText}=    Get Text    xpath:(//a)[${i}]
        Log To Console    Link ${i}: ${LinkText}
        Append To List    ${LinkItems}    ${LinkText}
    END

    Log To Console    ===== All Collected Links =====
    Log To Console    ${LinkItems}

    Close Browser
