*** Settings ***
Resource  ../helpers/browser.robot

*** Keywords ***
Open Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}

Scan table
    [Arguments]  ${url}=${TABLE_URL}  ${browser}=${BROWSER}
    Go to  ${url}