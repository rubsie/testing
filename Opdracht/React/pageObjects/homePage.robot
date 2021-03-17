*** Settings ***
Resource  basePage.robot

*** Variables ***
${MENULINK}=            css:#root > #top > div > div:nth-child(2) > a
${MENUHEADER}=          css:#root > #top > div:nth-child(4) > div:nth-child(1) > h1
${FIRSTBEER}=           xpath=//div[@id='top']/div[4]/div/div[3]/div/div
${ADDSHOPPINGCART}=     xpath=//div[@id='top']/div[4]/div/div/div[7]/button[2]
${ADDFAVORITES}=        css:[title='sla op als favoriet']
${CLOSEMODAL}=          xpath=//div[@id='top']/div[4]/button
${ERRORMESSAGE}=        xpath=//div[@id='top']/div[2]
${SHOPPINGBASKET}=      css=a:nth-child(2) svg
${ORDERBUTTON}=         xpath=//div[@id='top']/div[4]/div[3]/div/button
${FAVORITES}=           css=a:nth-child(1) path

*** Keywords ***
Go To Menu Page
    Click Element  ${MENULINK}
    Sleep  1s

Get First Header of Menu
    ${text}=  Get Text  ${MENUHEADER}
    [Return]  ${text}

Get Name of First Beer
    ${text}=  Get WebElement  ${FIRSTBEER}
    [Return]  ${text}

Click first beer
    ${el}=  Get WebElement  ${FIRSTBEER}
    Log  ${el}
    Click Element  ${el}

Click on shopping cart
    ${el}=  Get WebElement  ${ADDSHOPPINGCART}
    Log  ${el}
    Click Element  ${el}

Click on favorite button
    ${el}=  Get WebElement  ${ADDFAVORITES}
    Log  ${el}
    Click Element  ${el}

Close menu modal
    ${el}=  Get WebElement  ${CLOSEMODAL}
    Log  ${el}
    Click Element  ${el}

Read error message
    Sleep  3s
    ${text}=  Get Text  ${ERRORMESSAGE}
    [Return]  ${text}

Open shopping basket
    ${el}=  Get WebElement  ${SHOPPINGBASKET}
    Log  ${el}
    Click Element  ${el}

Place order
    ${el}=  Get WebElement  ${ORDERBUTTON}
    Log  ${el}
    Click Element  ${el}

Open favorites
    Click Element  ${FAVORITES}