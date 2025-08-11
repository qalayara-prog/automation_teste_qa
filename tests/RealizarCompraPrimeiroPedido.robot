*** Settings ***
Documentation     Suite de testes para o projeto de automação SauceDemo

Resource          ../resources/Base.robot
Resource          ../resources/actions/Auth.robot
Suite Setup       Open Browser To Base URL
Test Teardown     Realizar Print da Tela

*** Variables ***
${VALOR_USERNAME}             standard_user
${VALOR_PASSWORD}             secret_sauce

*** Test Cases ***
Realizar Compra Primeiro Pedido
    [Documentation]    Teste para realizar a compra do primeiro pedido
    Dado que o usuário deseja acessa o portal SauceDemo
    E o usuario deseja realizar o login    ${VALOR_USERNAME}    ${VALOR_PASSWORD}
