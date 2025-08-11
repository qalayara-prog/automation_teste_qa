*** Settings ***
Library                             Browser
Library                             OperatingSystem
Resource                            ../../resources/Base.robot
Library                             Collections

*** Variables ***
### <--- LOCATORS ---> 

${REMOVE_CART}                      xpath=//div[@class="cart_item" and .//div[@class="inventory_item_name" and normalize-space(text())="{PRODUTO_NAME}"]]//button[starts-with(@id, 'remove-')]
${BOTAO_CHECKOUT}                   xpath=//*[@id="checkout"]

*** Keywords *** 
E o usuario deseja remover o primeiro item adicionado
    [Arguments]    ${PRODUTO_NAME}
    ${PRODUTO_LOCATOR_REMOVE}=    Replace String    ${REMOVE_CART}    {PRODUTO_NAME}    ${PRODUTO_NAME}
    Click    ${PRODUTO_LOCATOR_REMOVE}
    Log      Removendo o primeiro item adicionado ao carrinho

Entao o usuario realiza o checkout do carrinho
    [Documentation]    Realiza o checkout do carrinho
    Wait For Elements State    ${BOTAO_CHECKOUT}    visible    timeout=5s
    Click    ${BOTAO_CHECKOUT}
    Log      Checkout realizado com sucesso
