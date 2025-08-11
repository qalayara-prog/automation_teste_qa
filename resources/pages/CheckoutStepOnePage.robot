*** Settings ***
Library                             Browser
Library                             OperatingSystem
Resource                            ../../resources/Base.robot
Library                             Collections

*** Variables ***
### <--- LOCATORS ---> 

${CAMPO_FIRST_NAME}                   xpath=//input[@id="first-name"]
${CAMPO_LAST_NAME}                    xpath=//input[@id="last-name"]
${CAMPO_POSTAL_CODE}                  xpath=//input[@id="postal-code"]
${BOTAO_CONTINUE}                     xpath=//*[@id="continue"]

*** Keywords *** 
E o usuario preenche os dados necessarios para o checkout
    [Arguments]    ${FIRST_NAME}          ${LAST_NAME}    ${POSTAL_CODE}
    Fill Text      ${CAMPO_FIRST_NAME}    ${FIRST_NAME}
    Fill Text      ${CAMPO_LAST_NAME}     ${LAST_NAME}
    Fill Text      ${CAMPO_POSTAL_CODE}   ${POSTAL_CODE}    
    Click          ${BOTAO_CONTINUE}  