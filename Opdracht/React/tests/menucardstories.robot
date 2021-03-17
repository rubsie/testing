*** Settings ***
Resource  ../pageObjects/homePage.robot

Suite Setup  Open Website
Suite Teardown  Close browser


*** Test Cases ***
Verify Menu Link
    Go To Menu Page
    ${text}=  Get First Header of Menu
    Should Contain  ${text}  Onze Bierkaart

Order first beer in menu
    Go To Menu Page
    Click first beer
    Click on shopping cart
    Wait until element contains  ${ERRORMESSAGE}  Scan QR code op je tafel om te bestellen.  2s
    Close menu modal

Order a beer
    Scan table
    Go To Menu Page
    Click first beer
    Click on shopping cart
    Close menu modal
    Open shopping basket
    Page Should Contain  Je bestelling

Place order
    Open shopping basket
    Place order
    Wait until element contains  ${ERRORMESSAGE}  Je bestelling is doorgestuurd.  2s

Check favorites
    Reload Page
    Open favorites
    Page Should Contain  Je hebt nog geen favorieten





