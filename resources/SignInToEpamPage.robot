*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CONTINUE_WITH_EPAM_BUTTON}    xpath=//a[@id='zocial-epam-microsoft']

*** Keywords ***
Click on Continue with EPAM button
    Wait Until Page Contains Element    ${CONTINUE_WITH_EPAM_BUTTON}
    Click Element    ${CONTINUE_WITH_EPAM_BUTTON}
