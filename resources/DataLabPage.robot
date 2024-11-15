*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EPAM_SSO_BUTTON}    xpath=//span[text()='EPAM SSO']

*** Keywords ***
Click on EPAM SSO button
    Wait Until Page Contains Element    ${EPAM_SSO_BUTTON}
    Click Element    ${EPAM_SSO_BUTTON}

