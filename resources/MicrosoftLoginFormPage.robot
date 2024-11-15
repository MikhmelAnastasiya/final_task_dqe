*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ACCOUNT_NAME_BUTTON}    xpath=//small[text()='Anastasiya_Lynko@epam.com']

*** Keywords ***
Select user account
    Wait Until Page Contains Element    ${ACCOUNT_NAME_BUTTON}
    Click Element    ${ACCOUNT_NAME_BUTTON}
