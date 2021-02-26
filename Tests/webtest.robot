*** Settings ***
Documentation               This is some basic info
Resource                    ../Resources/keywords.robot
Library                     SeleniumLibrary
Suite Setup                  Begin web test
Suite Teardown               End web test

*** Variables ***
${BROWSER}              chrome
${URL}                  https://www.willys.se/

*** Test Cases ***
User can access website
    [Documentation]             Willys
    [Tags]                      Test 1
    Go to web page

User can search for a product
    [Documentation]             Willys search for product
    [Tags]                      Test 2
    Go to web page
    Search for product          kiwi        kiwi

User can search for another product
    [Documentation]             Willys search for different product
    [Tags]                      Test 3
    Go to web page
    Search for product          hundgodis   hundgodis


