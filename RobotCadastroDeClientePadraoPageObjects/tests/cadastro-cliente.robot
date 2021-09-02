***Settings***
Resource    ../page-objects/login-page-object.robot
Resource    ../page-objects/menu-page-object.robot
Resource    ../page-objects/cadastro-de-cliente-page-object.robot

Suite Setup       Abrir navegador no sistema de cadastro de clientes
Test Setup        Fazer o login no sistema de cadastro de clientes
Test Teardown     Fazer logout do sistema de cadastro de clientes  
Suite Teardown    Fechar o navegador    

***Test Cases***
Fazer o cadastro de um novo cliente
    Ir para a página de cadastro de clientes
    Verificar se o titulo da pagina de cadastro de clientes está correto 
    Preencher campos do formulario de clientes    
    Cadastar o cliente
    Verificar mensagem de cliente cadastrado com sucesso 

Não permitir cadastrar um cliente sem informar o nome
    Ir para a página de cadastro de clientes 
    Verificar se o titulo da pagina de cadastro de clientes está correto 
    Cadastar o cliente 
    Verificar a mensagem informando que o campo mome é obrigatório

Não permitir cadastrar um cliente sem informar o cpf
    Ir para a página de cadastro de clientes 
    Verificar se o titulo da pagina de cadastro de clientes está correto 
    Preencher o nome do cliente
    Cadastar o cliente
    Verificar a mensagem informando que o campo cpf é obrigatório      
             
   

