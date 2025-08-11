# Projeto de Automação SauceDemo

Este projeto contém uma suíte de testes automatizados para o site [SauceDemo](https://www.saucedemo.com/), utilizando **Robot Framework** e a biblioteca **Browser**.

## Estrutura do Projeto

```
automation_teste_qa/
├── resources/
│   ├── actions/
│   │   
│   ├── pages/
│   │ 
│   │ 
│   │ 
│   └── Base.robot
├── tests/
│   
└── log/
```

## Pré-requisitos

- [Python 3.8+](https://www.python.org/)
- [Robot Framework](https://robotframework.org/)
- [robotframework-browser](https://github.com/MarketSquare/robotframework-browser)

## Instalação

1. Clone este repositório:
    ```
    git clone https://github.com/seu-usuario/automation_teste_qa.git
    cd automation_teste_qa
    ```
2. Instale as dependências:

    ```
    pip install robotframework
    pip install robotframework-browser
    rfbrowser init
    ```

## Como Executar os Testes

Execute a suíte principal:
```
robot -d ./log .\tests\RealizarCompra.robot
robot -d ./log -i 01 .\tests\RealizarCompra.robot - Para rodar teste utilizando as Tags.
```

- Os relatórios serão gerados na pasta `log/`.

## Estrutura dos Testes

- **Primeiro Cenario:** Compra com usuário padrão.
- **Segundo Cenario:** Compra com outro usuario
- **Terceiro Cenario:** Compra simples com usuário padrão.

## Relatórios

Após a execução, acesse os arquivos:
- `log/log.html` (log detalhado)
- `log/report.html` (relatório resumido)

**Desenvolvido por:**  
Laraya De Araujo - QA