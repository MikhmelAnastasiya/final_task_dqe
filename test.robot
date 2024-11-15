*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://dqelearn.trainings.dlabanalytics.com/alynko/tree/snap
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Jupyter notebook
    Run notebook
    [Teardown]    Close Browser

*** Keywords ***
Open Jupyter notebook
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Wait Until Page Contains Element    xpath=//span[text()='EPAM SSO']
    Click Element    xpath=//span[text()='EPAM SSO']

    Wait Until Page Contains Element    xpath=//a[@id='zocial-epam-microsoft']
    Click Element    xpath=//a[@id='zocial-epam-microsoft']

    Wait Until Page Contains Element    xpath=//small[text()='Anastasiya_Lynko@epam.com']
    Click Element    xpath=//small[text()='Anastasiya_Lynko@epam.com']

    Wait Until Page Contains Element    xpath=//span[text()='Final_task.ipynb']
    Click Element    xpath=//span[text()='Final_task.ipynb']

    ${window_handles}=    Get Window Handles
    Switch Window    ${window_handles}[1]
    Wait Until Page Contains Element    xpath=//span[@id='notebook_name'][text()='Final_task']

Run notebook
    Click Element    xpath=//a[@id='celllink'][text()='Cell']
    Click Element    xpath=//li[@id='run_all_cells'][@title='Run all cells in the notebook']
    Wait Until Page Contains Element    xpath=//div[@class='output_subarea output_html rendered_html']
    Sleep    3s