*** Settings ***
Library                             Browser
Library                             OperatingSystem
Resource                            ../../resources/Base.robot
Library                             Collections

*** Variables ***
### <--- LOCATORS ---> 
${ICONE_CARRINHO_HOME}                   xpath=//*[@id="shopping_cart_container"]/a/span
${BOTAO_ADD_TO_CART}                     xpath=//div[text()="{PRODUTO_NAME}"]/ancestor::div[@class="inventory_item"]//button

*** Keywords ***
Quando o usuário deseja adicionar um produto ao carrinho
    [Arguments]       ${PRODUTO_NAME}
    ${PRODUTO_LOCATOR}=    Replace String    ${BOTAO_ADD_TO_CART}    {PRODUTO_NAME}    ${PRODUTO_NAME}
    Click    ${PRODUTO_LOCATOR}

E o usuario deseja adicionar outro produto ao carrinho
    [Arguments]       ${PRODUTO_NAME}
    ${PRODUTO_LOCATOR}=    Replace String    ${BOTAO_ADD_TO_CART}    {PRODUTO_NAME}    ${PRODUTO_NAME}
    Click    ${PRODUTO_LOCATOR}

Entao o usuario deseja verificar o carrinho
    [Documentation]    Verifica se os produtos foram adicionados ao carrinho
    ${ICONE_CARRINHO}=    Get Elements    ${ICONE_CARRINHO_HOME} 
    Should Not Be Empty    ${ICONE_CARRINHO}
    Log Many    ${ICONE_CARRINHO}    separator=,
    Wait For Elements State    ${ICONE_CARRINHO_HOME}     visible    timeout=5s
    Click    ${ICONE_CARRINHO_HOME} 