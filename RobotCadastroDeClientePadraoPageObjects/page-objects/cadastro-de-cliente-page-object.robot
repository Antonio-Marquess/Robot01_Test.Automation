***Settings***
Library    SeleniumLibrary

***Variables***
# Campos do forulario
${BUTTON_CADASTAR}     id=cadastrar
${BUTTON_PESQUISAR}    xpath=//button[text()='Pesquisar']

${CAMPO_MENSAGEM}      id=msg

${CHECK_TESTES_AUTOMATIZADOS}           xpath=//span[contains(text(),'Testes Automatizados')]/preceding::input[1]
${CHECK_DESENVOLVIMENTO_DE_SOFTWARE}    xpath=//span[contains(text(),'Desenvolvimento de Software')]/preceding::input[1]

${INPUT_NOME_DO_CLIENTE}               id=nome_cliente 
${INPUT_CPF_DO_CLIENTE}                id=cpf
${INPUT_DATA_NASCIMENTO_DO_CLIENTE}    id=dtnasc 
${INPUT_CEP_DO_CLIENTE}                id=cep 
${INPUT_NUMERO_END_CLIENTE}            id=numero  
${INPUT_RUA_DO_CLIENTE}                id=rua  

${RADIO_MASCULINO}    xpath=//input[@value='masculino']

${SELECT_ESTADO_CIVIL_DO_CLIENTE}    id=estado-civil

${URL_CADASTRO_DO_CLIENTE}    https://estivalet.github.io/robot-static-testing-site/cadastro/index.html
${NAVEGADOR_DO_TESTE}         chrome 

${TITULO_PAGINA_DE_CLIENTES}    Cadastro de Clientes
${MENSAGEM_SUCESSO_CADASTRO}    Cliente cadastrado com sucesso!
${MENSAGEM_NOME_OBRIGATORIO}    Nome é obrigatório 
${MENSAGEM_CPF_OBRIGATORIO}     CPF é obrigatório 

# Valores para preencher nos campos do formulario
${NOME_DO_CLIENTE}    Antonio Marques
${CPF_DO_CLIENTE}    89240388200
${DATA_NASCIMENTO_DO_CLIENTE}    16031980
${CEP_DO_CLIENTE}    13178860
${RUA_DO_CLIENTE}    Rua José Rodrigues da Cunha Filho
${NUMERO_END_CLIENTE}    100
${ESTADO_CIVIL_DO_CLIENTE}    Casado(a)

***Keywords***
Aguardar o valor "${valor_esperado}" no elemento "${elemento}" estar presente
    ${valor_atual}=    Get Element Attribute    ${elemento}    value
    Should Be Equal As Strings    ${valor_atual}    ${valor_esperado} 

Cadastar o cliente
    Click Element    ${BUTTON_CADASTAR} 
    Wait Until Element Is Visible    ${CAMPO_MENSAGEM}

Preencher campos do formulario de clientes 
    Input Text       ${INPUT_NOME_DO_CLIENTE}    ${NOME_DO_CLIENTE}
    Input Text       ${INPUT_CPF_DO_CLIENTE}   ${CPF_DO_CLIENTE} 
    Input Text       ${INPUT_DATA_NASCIMENTO_DO_CLIENTE}    ${DATA_NASCIMENTO_DO_CLIENTE}     
    Click Element    ${RADIO_MASCULINO}
    Input Text       ${INPUT_CEP_DO_CLIENTE}    ${CEP_DO_CLIENTE}
    Click Element    ${BUTTON_PESQUISAR}
    Wait Until Keyword Succeeds  10s  200ms  Aguardar o valor "${RUA_DO_CLIENTE}" no elemento "${INPUT_RUA_DO_CLIENTE}" estar presente
    Input Text      ${INPUT_NUMERO_END_CLIENTE}    ${NUMERO_END_CLIENTE}
    Select From List By Value    ${SELECT_ESTADO_CIVIL_DO_CLIENTE}    ${ESTADO_CIVIL_DO_CLIENTE}
    Click Element    ${CHECK_TESTES_AUTOMATIZADOS}
    Click Element    ${CHECK_DESENVOLVIMENTO_DE_SOFTWARE} 

Preencher o nome do cliente
    Input Text       ${INPUT_NOME_DO_CLIENTE}    ${NOME_DO_CLIENTE}    

Verificar mensagem de cliente cadastrado com sucesso 
    Wait Until Page Contains    ${MENSAGEM_SUCESSO_CADASTRO}

Verificar se o titulo da pagina de cadastro de clientes está correto           
     Title Should Be    ${TITULO_PAGINA_DE_CLIENTES} 

Verificar a mensagem informando que o campo mome é obrigatório
    Wait Until Page Contains    ${MENSAGEM_NOME_OBRIGATORIO} 

Verificar a mensagem informando que o campo cpf é obrigatório 
     Wait Until Page Contains    ${MENSAGEM_CPF_OBRIGATORIO}         