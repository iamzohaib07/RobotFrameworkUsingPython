*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    open browser    https://admin-demo.nopcommerce.com/     chrome
    maximize browser window
    TRY
         click element   xpath://button[contains(text(),'Log in1')]
    EXCEPT  AS  ${error}
        Log To Console     Error handled: ${error}
    FINALLY
        close browser
    END



#ElementNotFound
#TimeoutError
#StaleElementReferenceException (mostly Selenium side)
#ElementClickInterceptedException