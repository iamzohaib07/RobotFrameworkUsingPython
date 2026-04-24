*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Handling Frames
    open browser    https://demo.automationtesting.in/Frames.html   chrome
    maximize browser window
    select frame    singleframe     # name , id or xpath of frame
    click element   xpath://body/section[1]/div[1]/div[1]/div[1]/input[1]
    input text      xpath://body/section[1]/div[1]/div[1]/div[1]/input[1]   welcome
    unselect frame
    sleep   2
    select frame    xpath:/html/body/section/div[1]/div/div/div/div[1]/div/ul/li[2]/a
    click element   /html/body/section/div
    input text  /html/body/section/div/div/div/input    hello
    unselect frame
    sleep   2
    close browser