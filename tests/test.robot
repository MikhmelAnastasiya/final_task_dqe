*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource    ../resources/DataLabPage.robot
Resource    ../resources/SignInToEpamPage.robot
Resource    ../resources/MicrosoftLoginFormPage.robot
Resource    ../resources/JupyterHomePage.robot
Resource    ../resources/FinalTaskJupyterPage.robot

*** Variables ***
${LOGIN URL}      https://dqelearn.trainings.dlabanalytics.com/alynko/tree/snap
${BROWSER}        Chrome

*** Test Cases ***
Run Pandas tests
    Sign in user
    Open Jupyter Notebook
    Run Jupyter Notebook
    [Teardown]    Close Browser

*** Keywords ***
Sign in user
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Click on EPAM SSO button
    Click on Continue with EPAM button
    Select user account

Open Jupyter Notebook
    Select notebook

    ${window_handles}=    Get Window Handles
    Switch Window    ${window_handles}[1]

    Wait for Final_task notebook to be opened

Run Jupyter Notebook
    Run notebook
    Output is present
    Sleep    3s