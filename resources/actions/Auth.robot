*** Settings ***
Library                       Browser
Library                       OperatingSystem
Resource                      ../../resources/Base.robot

*** Variables ***
### <--- LOCATORS --->
${CAMPO_USERNAME}             id=user-name
${CAMPO_PASSWORD}             id=password 
${BOTAO_LOGIN}                xpath=//*[@id="login-button"]

# <--- INPUT LOCATORS --->



*** Keywords ***
Dado que o usuário deseja acessa o portal SauceDemo
    Go To                     ${BASE_URL} 

E o usuario deseja realizar o login
    [Arguments]               ${username}
    ...                       ${password}
    Fill Text                 ${CAMPO_USERNAME}    ${VALOR_USERNAME}
    Fill Text                 ${CAMPO_PASSWORD}    ${VALOR_PASSWORD}
    Click                     ${BOTAO_LOGIN}
