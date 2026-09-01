*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary

*** Variables ***
${url}          http://www.deadlinkcity.com/
${browser}      chrome

*** Test Cases ***
Check Broken Links
    [Tags]      regression
    Open Browser    ${url}    ${browser}

    ${links}=    Get WebElements    xpath=//a[@href]

    FOR    ${link}    IN    @{links}

        ${url}=    Get Element Attribute    ${link}    href

        IF    '${url}' != 'None' and '${url}' != ''
            Log To Console    Checking: ${url}

            TRY
                ${response}=    GET    ${url}    expected_status=any
                ${status}=    Convert To Integer    ${response.status_code}

                IF    ${status} >= 400
                    Log To Console    BROKEN LINK: ${url} - Status: ${status}
                ELSE
                    Log To Console    VALID LINK: ${url} - Status: ${status}
                END

            EXCEPT    AS    ${error}
                Log To Console    ERROR: ${url} - ${error}

            FINALLY
                Log To Console    Finished checking: ${url}
            END
        END

    END

    Close Browser