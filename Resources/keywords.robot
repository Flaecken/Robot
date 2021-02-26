*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Begin web test
    Open browser                about:blank     ${BROWSER}

Go to web page
    Load page
    Verify page loaded

Load page
    Go to                               ${URL}

Verify page loaded
    ${LINK_TEXT}                        Get Title
    Should be equal                     ${LINK_TEXT}    Handla billig mat online | Willys

Search for product
    [Arguments]                         ${SEARCH_TERM}  ${SEARCH_RESULT}
    Enter search term                   ${SEARCH_TERM}
    Submit search
    Verify search completed             ${SEARCH_RESULT}

Enter search term
    [Arguments]                         ${SEARCH_TERM}
    input text                          id:selenium--search-items-input   ${SEARCH_TERM}

Submit search
    press keys                          xpath://*[@id="selenium--search-items-input"]   RETURN

Verify search completed
    [Arguments]                         ${SEARCH_TERM}
    wait until page contains element    xpath://*[@id="selenium--product-grid-header"]
    ${ACTUAL_TERM}                      Get Text    xpath://*[@id="selenium--product-grid-header"]
    Should be equal                     "Sökord: ${SEARCH_TERM}"    "${ACTUAL_TERM}"

End web test
    close browser
