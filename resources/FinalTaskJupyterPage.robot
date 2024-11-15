*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NOTEBOOK_NAME}    xpath=//span[@id='notebook_name'][text()='Final_task']
${CELL_BUTTON}    xpath=//a[@id='celllink'][text()='Cell']
${RUN_ALL_BUTTON}    xpath=//li[@id='run_all_cells'][@title='Run all cells in the notebook']
${OUTPUT_AREA}    xpath=//div[@class='output_subarea output_html rendered_html']

*** Keywords ***
Wait for Final_task notebook to be opened
    Wait Until Page Contains Element    ${NOTEBOOK_NAME}
    
Run notebook
    Click Element    ${CELL_BUTTON}
    Click Element    ${RUN_ALL_BUTTON}

Output is present
    Wait Until Page Contains Element    ${OUTPUT_AREA}
