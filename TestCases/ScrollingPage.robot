*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ScrollTest
    open browser    https://www.guru99.com/scroll-up-down-selenium-webdriver.html   chrome
#    maximize browser window
#    execute javascript  window.scrollTo(0,2500)               # Scroll till certain pixel
#    scroll element into view    xpath://*[@id="post-1227"]/div/div/p[22]/a/img       #Scroll till element
    execute javascript  window.scrollTo(0,document.body.scrollHeight)  # Bottom of the page
    sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)  # Starting point of the page
    sleep   2
    close browser