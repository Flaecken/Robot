*** Settings ***
Documentation               This is some basic info
Library                     SeleniumLibrary

*** Test Cases ***
User can access website
    [Documentation]             Willys
    [Tags]                      Test 1
    Open browser                about:blank     chrome
    Go to                       https://www.willys.se/
    wait until page contains    Handla billig mat online
    close browser