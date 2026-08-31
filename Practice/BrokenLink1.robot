*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary

*** Test Cases ***
BrokenLinkTestCase
    Open Browser    http://www.deadlinkcity.com/    chrome
    Maximize Browser Window
    ${links}=    Get WebElements    xpath://a[@href]

    FOR    ${link}    IN    @{links}
        ${url}=     Get Element Attribute    ${link}    href
        TRY
            ${response}=    GET     ${url}      expected_status=any
            ${status}=      Convert To Integer    ${response.status_code}
            
            IF    ${status} >= 400
                Log To Console    Broken Link :${url} - Status:${status}
            ELSE
                Log To Console    Valid Link :${url} - Status:${status}
                 
            END
        EXCEPT    AS    ${error}
            Log To Console    Error:${url} - ${error}
            
        END

    END
