*** Settings ***

Documentation     Arquivo Base do Projeto de Automação 

Library           OperatingSystem
Library           String
Library           Browser
Resource          actions/Auth.robot

*** Variables ***
${BROWSER}       Chromium
${BASE_URL}      https://www.saucedemo.com/
${LOCALE}        en-US


*** Keywords **
Open Browser To Base URL
    [Documentation]    Abre o navegador na URL base do projeto
    New Browser        ${BROWSER}
    ...                False
    New Page           about:blank

Realizar Print da Tela
    [Documentation]    Realiza um print da tela atual
    Take Screenshot    
