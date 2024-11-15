*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NOTEBOOK_NAME_TO_SELECT}    xpath=//span[text()='Final_task.ipynb']

*** Keywords ***
Select notebook
    Wait Until Page Contains Element    ${NOTEBOOK_NAME_TO_SELECT}
    Click Element    ${NOTEBOOK_NAME_TO_SELECT}
