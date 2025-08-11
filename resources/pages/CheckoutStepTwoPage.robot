*** Settings ***
Library                             Browser
Library                             OperatingSystem
Resource                            ../../resources/Base.robot
Library                             Collections

*** Variables ***
### <--- LOCATORS ---> 

${BOTAO_FINISH}                   xpath=//*[@id="finish"]

*** Keywords *** 
Entao o usuario clica no botao de finalizar a compra
    [Documentation]    Finaliza o processo de checkout
    Wait For Elements State    ${BOTAO_FINISH}    visible    timeout=5s
    Click    ${BOTAO_FINISH}
    Log      Checkout finalizado com sucesso
    