***Settings***
Library    SeleniumLibrary

***Variables*** 
${URL_SISTEMA_DE_CADASTRO_DE_LOGIN}    https://estivalet.github.io/robot-static-testing-site/index.html
${NAVEGADOR_DO_TESTE}    chrome

${BUTTON_LOGIN}    id=login

${INPUT_USUARIO}    id=username
${INPUT_SENHA}      id=password

${USUARIO}    admin
${SENHA}      admin

***Keywords***  
Abrir navegador no sistema de cadastro de clientes
    Open Browser    ${URL_SISTEMA_DE_CADASTRO_DE_LOGIN}    ${NAVEGADOR_DO_TESTE} 
    Maximize Browser Window
    Set Selenium speed    0.4s

Fazer o login no sistema de cadastro de clientes
    Informar usuário e senha
    Realizar o login

Informar usuário e senha
    Input Text    ${INPUT_USUARIO}    ${USUARIO} 
    Input Text    ${INPUT_SENHA}      ${SENHA}    

Realizar o login
    Click Element    ${BUTTON_LOGIN}

Fechar o navegador
    Close Browser