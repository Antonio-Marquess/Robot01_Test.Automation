***Settings***
Library    SeleniumLibrary

***Test Cases***
Fazer o cadastro de um novo cliente
    Set Selenium Speed  0.4 seconds
    Open Browser  https://estivalet.github.io/robot-static-testing-site/cadastro/index.html    chrome
    Maximize browser Window
    Title Should Be    Cadastro de Clientes 
    Input Text    id=nome_cliente    Antonio Marques
    Input Text    id=cpf    89240388200 
    Input Text    id=dtnasc    16031980 
    Click Element    xpath=//input[@value='masculino']
    Input Text    id=cep    13178860
    Click Element    xpath=//button[text()='Pesquisar']
    Wait Until Keyword Succeeds  10s  200ms  Aguardar o valor "Rua José Rodrigues da Cunha Filho" no elemento "id=rua" estar presente
    Select From List By Value    id=estado-civil  Casado(a)
    Click Element    xpath=//span[contains(text(),'Testes Automatizados')]/preceding::input[1]
    Click Element    xpath=//span[contains(text(),'Desenvolvimento de Software')]/preceding::input[1]
    Click Element    id=cadastrar
    Wait Until Element Is Visible    id=msg
    Wait Until Page Contains    Cliente cadastrado com sucesso! 
    Close Browser

***Keywords***
Aguardar o valor "${valor_esperado}" no elemento "${elemento}" estar presente
    ${valor_atual}=    Get Element Attribute    ${elemento}    value
    Should Be Equal As Strings    ${valor_atual}    ${valor_esperado}      
