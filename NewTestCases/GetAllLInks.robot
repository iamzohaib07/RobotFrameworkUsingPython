*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
GetAllLinksTests
        open browser        https://demo.guru99.com/test/newtours/register.php      headlesschrome
        maximize browser window
        ${alllinkscount}=     get element count   xpath://a
        log to console      ${alllinkscount}

        @{linkitems}    create list

        FOR     ${i}    IN RANGE    1     ${alllinkscount}+1
        ${linktext}=   get text    xpath:(//a)[${i}]
        log to console      ${linktext}
        END