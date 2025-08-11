*** Settings ***

Documentation     Arquivo Base do Projeto de Automação 

Library           OperatingSystem
Library           String
Library           Browser
Resource          actions/Auth.robot
Resource          pages/HomePage.robot
Resource          pages/CartPage.robot
Resource          pages/CheckoutStepOnePage.robot
Resource          pages/CheckoutStepTwoPage.robot
Resource          pages/CheckoutCompletePage.robot

*** Variables ***
${BROWSER}       Chromium
${BASE_URL}      https://www.saucedemo.com/
${LOCALE}        en-US


*** Keywords **
Iniciar Sessao
    [Documentation]    Abre o navegador na URL base do projeto
    New Browser        ${BROWSER}
    ...                False
    New Page           about:blank

Realizar Print da Tela e finalizar Sessao
    [Documentation]    Realiza um print da tela atual
    Take Screenshot    
