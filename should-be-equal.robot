***Test Cases***  
Exemplo do should be equal
    ${msg_esperada}=    Set Variable    Robot cadastrado com sucesso!
    Should Be Equal    Erro desconhecido    ${msg_esperada}

Exemplo do should be equal com mensagem personalizada
    ${msg_esperada}=    Set Variable    Robot cadastrado com sucesso!
    Should Be Equal     Robot cadastrado com sucesso!    ${msg_esperada}