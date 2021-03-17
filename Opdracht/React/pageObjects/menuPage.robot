*** Settings ***
Resource  basePage.robot

*** Variables ***
${MENUHEADER}=       css:#root > #top > div:nth-child(4) > div:nth-child(1) > h1

*** Keywords ***
Get First Header of Menu
    ${text}=  Get Text  ${MENUHEADER}
    [Return]  ${text}