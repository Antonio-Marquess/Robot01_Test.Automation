*** Settings ***
Documentation  Exemplo de tipos veriáveis: ESCALARES, LISTAS, DICIONARIOS E AMBIENTE

*** Variables ***
${EXEMPLO_VAR_ESCALAR}      Essa é uma variável escalar!
@{EXEMPLO_VAR_LISTA}        azul  verde  amarelo  laranjar
&{EXEMPLO_VAR_DICIONARIO}   nome=Antonio  email=teste@robot.com

*** Test Cases ***
Exemplo de uso de variáveis
    log To console          ${EXEMPLO_VAR_ESCALAR}
    log To console          ${EXEMPLO_VAR_LISTA[0]}
    log To console          ${EXEMPLO_VAR_LISTA[1]}
    log To console          ${EXEMPLO_VAR_DICIONARIO.nome}
    log To console          ${EXEMPLO_VAR_DICIONARIO.email}
    log To console          Teste execultado por %{UserName}
    
    
    
    
    
   

    