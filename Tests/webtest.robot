*** Settings ***
Documentation               This is some basic info
Library                     SeleniumLibrary

*** Keywords ***
Begin web test
    Open browser                about:blank     chrome
Go to web page
    Go to                       https://www.willys.se/
    wait until page contains    Handla billig mat online
Search for product
    input text                  id=selenium--search-items-input   kiwi
    press keys                  xpath://*[@id="selenium--search-items-input"]   RETURN
    wait until page contains    Sökord: kiwi
End web test
    close browser

*** Test Cases ***
User can access website and search for product
    [Documentation]             Willys
    [Tags]                      Test 1
    Begin web test
    Go to web page
    Search for product
    End web test