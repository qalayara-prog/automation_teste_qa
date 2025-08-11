*** Settings ***
Library                             Browser
Library                             OperatingSystem
Resource                            ../../resources/Base.robot
Library                             Collections

*** Variables ***
${MENSAGEM_CONFIRMACAO}       xpath=//h2[text()="Thank you for your order!"]
${MENSAGEM_CONFIRMACAO_2}     xpath=//*[text()="Your order has been dispatched, and will arrive just as fast as the pony can get there!"]

*** Keywords ***
Entao o usuario valida a mensagem de sucesso do pedido
    Wait For Elements State    ${MENSAGEM_CONFIRMACAO}    visible    timeout=5s
    ${mensagem}=    Get Text    ${MENSAGEM_CONFIRMACAO}
    Should Be Equal    ${mensagem}    Thank you for your order!

    Wait For Elements State    ${MENSAGEM_CONFIRMACAO_2}    visible    timeout=5s
    ${mensagem}=    Get Text    ${MENSAGEM_CONFIRMACAO_2}
    Should Be Equal    ${mensagem}    Your order has been dispatched, and will arrive just as fast as the pony can get there!
    