*** Settings ***
Documentation     Suite de testes para o projeto de automação SauceDemo

Resource          ../resources/Base.robot
Resource          ../resources/actions/Auth.robot
Resource          ../resources/pages/HomePage.robot
Resource          ../resources/pages/CartPage.robot
Suite Setup       Iniciar Sessao
Test Teardown     Realizar Print da Tela e finalizar Sessao

*** Variables ***
&{STANDARD_USER}                       username=standard_user    password=secret_sauce
&{GLITCH_USER}                         username=performance_glitch_user    password=secret_sauce
${VALOR_PRODUTO_NOME}                  Sauce Labs Bike Light
${VALOR_SEGUNDO_PRODUTO_NOME}          Sauce Labs Bolt T-Shirt
${FIRST_NAME}                          LayaraQA
${LAST_NAME}                           AraujoQA
${POSTAL_CODE}                         01153-000

*** Test Cases ***
Primeiro Cenario: Realizar Compra Primeiro Pedido
    [Documentation]    Teste para realizar a compra do primeiro pedido
    [Tags]             01
    Dado que o usuário deseja acessa o portal SauceDemo
    E o usuario deseja realizar o login                         ${STANDARD_USER.username}    ${STANDARD_USER.password}
    Quando o usuário deseja adicionar um produto ao carrinho    ${VALOR_PRODUTO_NOME}
    E o usuario deseja adicionar outro produto ao carrinho      ${VALOR_SEGUNDO_PRODUTO_NOME}
    Entao o usuario deseja verificar o carrinho
    E o usuario deseja remover o primeiro item adicionado       ${VALOR_SEGUNDO_PRODUTO_NOME}
    Entao o usuario realiza o checkout do carrinho
    E o usuario preenche os dados necessarios para o checkout   ${FIRST_NAME}    ${LAST_NAME}      ${POSTAL_CODE}
    Entao o usuario clica no botao de finalizar a compra
    Entao o usuario valida a mensagem de sucesso do pedido

Segundo Cenario: Realizar Compra Com Outro Usuario
    [Documentation]    Teste para realizar a compra do segundo pedido
    [Tags]             02
    Dado que o usuário deseja acessa o portal SauceDemo
    E o usuario deseja realizar o login          ${GLITCH_USER.username}    ${GLITCH_USER.password}
    Quando o usuário deseja adicionar um produto ao carrinho    ${VALOR_PRODUTO_NOME}
    E o usuario deseja adicionar outro produto ao carrinho      ${VALOR_SEGUNDO_PRODUTO_NOME}
    Entao o usuario deseja verificar o carrinho
    E o usuario deseja remover o primeiro item adicionado       ${VALOR_SEGUNDO_PRODUTO_NOME}
    Entao o usuario realiza o checkout do carrinho
    E o usuario preenche os dados necessarios para o checkout   ${FIRST_NAME}    ${LAST_NAME}      ${POSTAL_CODE}
    Entao o usuario clica no botao de finalizar a compra
    Entao o usuario valida a mensagem de sucesso do pedido

Terceiro Cenario: Realizar Compra Simples com o Usuario Padrao
    [Documentation]    Teste para realizar a compra do primeiro pedido
    [Tags]             03
    Dado que o usuário deseja acessa o portal SauceDemo
    E o usuario deseja realizar o login                         ${STANDARD_USER.username}    ${STANDARD_USER.password}
    Quando o usuário deseja adicionar um produto ao carrinho    ${VALOR_PRODUTO_NOME}
    Entao o usuario deseja verificar o carrinho
    Entao o usuario realiza o checkout do carrinho
    E o usuario preenche os dados necessarios para o checkout   ${FIRST_NAME}    ${LAST_NAME}      ${POSTAL_CODE}
    Entao o usuario clica no botao de finalizar a compra
    Entao o usuario valida a mensagem de sucesso do pedido